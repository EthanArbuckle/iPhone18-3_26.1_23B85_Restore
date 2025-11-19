@interface VNRequestPerformingContext
- (BOOL)cacheObservationsOfRequest:(id)a3;
- (VNRequestPerformingContext)initWithSession:(id)a3 requestPerformer:(id)a4 imageBuffer:(id)a5 forensics:(id)a6 observationsCache:(id)a7;
- (VNRequestPerformingContext)initWithSession:(id)a3 requestPerformer:(id)a4 imageBuffer:(id)a5 forensics:(id)a6 observationsCache:(id)a7 qosClass:(unsigned int)a8;
- (id)_observationsCacheKeyForRequest:(id)a3;
- (id)cachedObservationsAcceptedByRequest:(id)a3;
- (id)imageBufferAndReturnError:(id *)a3;
- (id)previousSequencedObservationsAcceptedByRequest:(id)a3;
- (id)requestPerformerAndReturnError:(id *)a3;
- (void)recordSequencedObservationsOfRequest:(id)a3;
@end

@implementation VNRequestPerformingContext

- (id)previousSequencedObservationsAcceptedByRequest:(id)a3
{
  v4 = a3;
  v5 = [(VNRequestPerformingContext *)self requestPerformerAndReturnError:0];
  v6 = [v5 previousSequencedObservationsForRequest:v4];

  return v6;
}

- (void)recordSequencedObservationsOfRequest:(id)a3
{
  v5 = a3;
  if ([v5 wantsSequencedRequestObservationsRecording])
  {
    v4 = [(VNRequestPerformingContext *)self requestPerformerAndReturnError:0];
    [v4 recordSequencedObservationsForRequest:v5];
  }
}

- (id)cachedObservationsAcceptedByRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  if (self->_requestForensics)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __66__VNRequestPerformingContext_cachedObservationsAcceptedByRequest___block_invoke;
    v11 = &unk_1E77B6678;
    v12 = self;
    v13 = v4;
    v5 = _Block_copy(&v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(VNObservationsCache *)self->_observationsCache observationsAcceptedByRequest:v4 testedKeyHandler:v5, v8, v9, v10, v11, v12];

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return v6;
}

uint64_t __66__VNRequestPerformingContext_cachedObservationsAcceptedByRequest___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 72);
  if (a3)
  {
    return [v4 cachedObservationsWithKey:a2 wereLocatedOnBehalfOfRequest:v3];
  }

  else
  {
    return [v4 cachedObservationsWithKey:a2 wereCheckedOnBehalfOfRequest:v3];
  }
}

- (BOOL)cacheObservationsOfRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  v5 = [v4 allowsCachingOfResults];
  if (v5)
  {
    v6 = [(VNRequestPerformingContext *)self _observationsCacheKeyForRequest:v4];
    observationsCache = self->_observationsCache;
    v8 = [v4 results];
    [(VNObservationsCache *)observationsCache setObservations:v8 forKey:v6];

    [(VNRequestPerformingContext *)self serialNumber];
    [v4 resolvedRevision];
    [objc_opt_class() VNClassCode];
    kdebug_trace();
    requestForensics = self->_requestForensics;
    if (requestForensics)
    {
      [(VNRequestForensics *)requestForensics request:v4 cachedResultsWithObservationsCacheKey:v6];
    }
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return v5;
}

- (id)imageBufferAndReturnError:(id *)a3
{
  imageBuffer_DO_NOT_DIRECTLY_ACCESS = self->_imageBuffer_DO_NOT_DIRECTLY_ACCESS;
  if (imageBuffer_DO_NOT_DIRECTLY_ACCESS)
  {
    v4 = imageBuffer_DO_NOT_DIRECTLY_ACCESS;
  }

  else if (a3)
  {
    *a3 = [VNError errorForInvalidOperationWithLocalizedDescription:@"no image is available"];
  }

  return imageBuffer_DO_NOT_DIRECTLY_ACCESS;
}

- (id)requestPerformerAndReturnError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_weakRequestPerformer);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else if (a3)
  {
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:@"no request performer available"];
  }

  return v5;
}

- (id)_observationsCacheKeyForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_requestToObservationsCacheKeyMap objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 configuration];
    v5 = [v6 copy];
    [(NSMapTable *)self->_requestToObservationsCacheKeyMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (VNRequestPerformingContext)initWithSession:(id)a3 requestPerformer:(id)a4 imageBuffer:(id)a5 forensics:(id)a6 observationsCache:(id)a7 qosClass:(unsigned int)a8
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25.receiver = self;
  v25.super_class = VNRequestPerformingContext;
  v19 = [(VNRequestPerformingContext *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_serialNumber = atomic_fetch_add_explicit(&initWithSession_requestPerformer_imageBuffer_forensics_observationsCache_qosClass__ourNextSerialNumber, 1uLL, memory_order_relaxed) + 1;
    objc_storeStrong(&v19->_session, a3);
    v20->_qosClass = a8;
    objc_storeWeak(&v20->_weakRequestPerformer, v15);
    objc_storeStrong(&v20->_imageBuffer_DO_NOT_DIRECTLY_ACCESS, a5);
    v21 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestToObservationsCacheKeyMap = v20->_requestToObservationsCacheKeyMap;
    v20->_requestToObservationsCacheKeyMap = v21;

    objc_storeStrong(&v20->_observationsCache, a7);
    v20->_observationsCacheLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_requestForensics, a6);
  }

  return v20;
}

- (VNRequestPerformingContext)initWithSession:(id)a3 requestPerformer:(id)a4 imageBuffer:(id)a5 forensics:(id)a6 observationsCache:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = qos_class_self();
  if (+[VNControlledCapacityTasksQueue requiresHighQoS])
  {
    v18 = 25;
  }

  else
  {
    v18 = v17;
  }

  v19 = [(VNRequestPerformingContext *)self initWithSession:v12 requestPerformer:v13 imageBuffer:v14 forensics:v15 observationsCache:v16 qosClass:v18];

  return v19;
}

@end