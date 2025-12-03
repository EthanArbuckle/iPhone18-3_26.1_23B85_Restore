@interface VNRequestPerformingContext
- (BOOL)cacheObservationsOfRequest:(id)request;
- (VNRequestPerformingContext)initWithSession:(id)session requestPerformer:(id)performer imageBuffer:(id)buffer forensics:(id)forensics observationsCache:(id)cache;
- (VNRequestPerformingContext)initWithSession:(id)session requestPerformer:(id)performer imageBuffer:(id)buffer forensics:(id)forensics observationsCache:(id)cache qosClass:(unsigned int)class;
- (id)_observationsCacheKeyForRequest:(id)request;
- (id)cachedObservationsAcceptedByRequest:(id)request;
- (id)imageBufferAndReturnError:(id *)error;
- (id)previousSequencedObservationsAcceptedByRequest:(id)request;
- (id)requestPerformerAndReturnError:(id *)error;
- (void)recordSequencedObservationsOfRequest:(id)request;
@end

@implementation VNRequestPerformingContext

- (id)previousSequencedObservationsAcceptedByRequest:(id)request
{
  requestCopy = request;
  v5 = [(VNRequestPerformingContext *)self requestPerformerAndReturnError:0];
  v6 = [v5 previousSequencedObservationsForRequest:requestCopy];

  return v6;
}

- (void)recordSequencedObservationsOfRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy wantsSequencedRequestObservationsRecording])
  {
    v4 = [(VNRequestPerformingContext *)self requestPerformerAndReturnError:0];
    [v4 recordSequencedObservationsForRequest:requestCopy];
  }
}

- (id)cachedObservationsAcceptedByRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  if (self->_requestForensics)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __66__VNRequestPerformingContext_cachedObservationsAcceptedByRequest___block_invoke;
    v11 = &unk_1E77B6678;
    selfCopy = self;
    v13 = requestCopy;
    v5 = _Block_copy(&v8);
  }

  else
  {
    v5 = 0;
  }

  selfCopy = [(VNObservationsCache *)self->_observationsCache observationsAcceptedByRequest:requestCopy testedKeyHandler:v5, v8, v9, v10, v11, selfCopy];

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return selfCopy;
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

- (BOOL)cacheObservationsOfRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_observationsCacheLock);
  allowsCachingOfResults = [requestCopy allowsCachingOfResults];
  if (allowsCachingOfResults)
  {
    v6 = [(VNRequestPerformingContext *)self _observationsCacheKeyForRequest:requestCopy];
    observationsCache = self->_observationsCache;
    results = [requestCopy results];
    [(VNObservationsCache *)observationsCache setObservations:results forKey:v6];

    [(VNRequestPerformingContext *)self serialNumber];
    [requestCopy resolvedRevision];
    [objc_opt_class() VNClassCode];
    kdebug_trace();
    requestForensics = self->_requestForensics;
    if (requestForensics)
    {
      [(VNRequestForensics *)requestForensics request:requestCopy cachedResultsWithObservationsCacheKey:v6];
    }
  }

  os_unfair_lock_unlock(&self->_observationsCacheLock);

  return allowsCachingOfResults;
}

- (id)imageBufferAndReturnError:(id *)error
{
  imageBuffer_DO_NOT_DIRECTLY_ACCESS = self->_imageBuffer_DO_NOT_DIRECTLY_ACCESS;
  if (imageBuffer_DO_NOT_DIRECTLY_ACCESS)
  {
    v4 = imageBuffer_DO_NOT_DIRECTLY_ACCESS;
  }

  else if (error)
  {
    *error = [VNError errorForInvalidOperationWithLocalizedDescription:@"no image is available"];
  }

  return imageBuffer_DO_NOT_DIRECTLY_ACCESS;
}

- (id)requestPerformerAndReturnError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_weakRequestPerformer);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"no request performer available"];
  }

  return v5;
}

- (id)_observationsCacheKeyForRequest:(id)request
{
  requestCopy = request;
  v5 = [(NSMapTable *)self->_requestToObservationsCacheKeyMap objectForKey:requestCopy];
  if (!v5)
  {
    configuration = [requestCopy configuration];
    v5 = [configuration copy];
    [(NSMapTable *)self->_requestToObservationsCacheKeyMap setObject:v5 forKey:requestCopy];
  }

  return v5;
}

- (VNRequestPerformingContext)initWithSession:(id)session requestPerformer:(id)performer imageBuffer:(id)buffer forensics:(id)forensics observationsCache:(id)cache qosClass:(unsigned int)class
{
  sessionCopy = session;
  performerCopy = performer;
  bufferCopy = buffer;
  forensicsCopy = forensics;
  cacheCopy = cache;
  v25.receiver = self;
  v25.super_class = VNRequestPerformingContext;
  v19 = [(VNRequestPerformingContext *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_serialNumber = atomic_fetch_add_explicit(&initWithSession_requestPerformer_imageBuffer_forensics_observationsCache_qosClass__ourNextSerialNumber, 1uLL, memory_order_relaxed) + 1;
    objc_storeStrong(&v19->_session, session);
    v20->_qosClass = class;
    objc_storeWeak(&v20->_weakRequestPerformer, performerCopy);
    objc_storeStrong(&v20->_imageBuffer_DO_NOT_DIRECTLY_ACCESS, buffer);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    requestToObservationsCacheKeyMap = v20->_requestToObservationsCacheKeyMap;
    v20->_requestToObservationsCacheKeyMap = strongToStrongObjectsMapTable;

    objc_storeStrong(&v20->_observationsCache, cache);
    v20->_observationsCacheLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_requestForensics, forensics);
  }

  return v20;
}

- (VNRequestPerformingContext)initWithSession:(id)session requestPerformer:(id)performer imageBuffer:(id)buffer forensics:(id)forensics observationsCache:(id)cache
{
  sessionCopy = session;
  performerCopy = performer;
  bufferCopy = buffer;
  forensicsCopy = forensics;
  cacheCopy = cache;
  v17 = qos_class_self();
  if (+[VNControlledCapacityTasksQueue requiresHighQoS])
  {
    v18 = 25;
  }

  else
  {
    v18 = v17;
  }

  v19 = [(VNRequestPerformingContext *)self initWithSession:sessionCopy requestPerformer:performerCopy imageBuffer:bufferCopy forensics:forensicsCopy observationsCache:cacheCopy qosClass:v18];

  return v19;
}

@end