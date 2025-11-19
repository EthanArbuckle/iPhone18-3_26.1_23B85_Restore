@interface MKMapItemRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (MKMapFeatureAnnotation)featureAnnotation;
- (MKMapItemRequest)initWithInternalSwiftExtensions:(id)a3 descriptorResolutionParameters:(id)a4;
- (MKMapItemRequest)initWithInternalSwiftExtensions:(id)a3 mapItemIdentifier:(id)a4;
- (MKMapItemRequest)initWithMapFeatureAnnotation:(MKMapFeatureAnnotation *)mapFeatureAnnotation;
- (MKMapItemRequest)initWithMapItemIdentifier:(id)a3;
- (void)_handleMapItems:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_performLookupRequestWithTicket:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)cancel;
- (void)getMapItemWithQueue:(id)a3 completionHandler:(id)a4;
@end

@implementation MKMapItemRequest

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_loading && !self->_cancelled)
  {
    self->_cancelled = 1;
    [(MKMapServiceTicket *)self->_ticket cancel];
    ticket = self->_ticket;
    self->_ticket = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)isLoading
{
  os_unfair_lock_lock_with_options();
  loading = self->_loading;
  os_unfair_lock_unlock(&self->_stateLock);
  return loading;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock_with_options();
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_stateLock);
  return cancelled;
}

- (MKMapFeatureAnnotation)featureAnnotation
{
  featureAnnotation = self->_featureAnnotation;
  if (!featureAnnotation)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This request was not created using an MKMapFeatureAnnotation. Use the mapFeatureAnnotation property to avoid this exception."];
    featureAnnotation = self->_featureAnnotation;
  }

  return featureAnnotation;
}

- (void)_handleMapItems:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_stateLock);
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_stateLock);
  if (v9 && !cancelled)
  {
    if (v8)
    {
      v11 = [v8 _mapkit_error];
      v9[2](v9, 0, v11);
    }

    else if ([v13 count])
    {
      v11 = [v13 firstObject];
      (v9)[2](v9, v11, 0);
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = [v12 initWithDomain:MKErrorDomain code:1 userInfo:0];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)_performLookupRequestWithTicket:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = __76__MKMapItemRequest__performLookupRequestWithTicket_queue_completionHandler___block_invoke;
  v17 = &unk_1E76C7B40;
  v20 = v8;
  v21 = v10;
  v18 = self;
  v19 = v9;
  v11 = MEMORY[0x1E696AF00];
  v12 = v9;
  v13 = v10;
  v14 = v8;
  if ([v11 isMainThread])
  {
    v16(&v15);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v15);
  }
}

void __76__MKMapItemRequest__performLookupRequestWithTicket_queue_completionHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*(v2 + 21) == 1)
  {

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    v3 = +[MKMapService sharedService];
    v4 = [v3 defaultTraits];

    v5 = (*(*(a1 + 48) + 16))();
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    os_unfair_lock_unlock((v8 + 16));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__MKMapItemRequest__performLookupRequestWithTicket_queue_completionHandler___block_invoke_2;
    v10[3] = &unk_1E76CA920;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 56);
    [v9 submitWithHandler:v10 queue:*(a1 + 40) networkActivity:0];
  }
}

void __76__MKMapItemRequest__performLookupRequestWithTicket_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  os_unfair_lock_lock_with_options();
  *(*(a1 + 32) + 20) = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [*(a1 + 32) _handleMapItems:v8 error:v5 completionHandler:*(a1 + 40)];
}

- (void)getMapItemWithQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v8 = MKGetMapItemRequestLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = [v10 initWithDomain:MKErrorDomain code:1 userInfo:0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke;
      block[3] = &unk_1E76CDA20;
      v29 = v11;
      v30 = v7;
      v12 = v11;
      dispatch_async(v6, block);

      v13 = v30;
LABEL_17:

      goto LABEL_18;
    }

    *buf = 0;
    v9 = "Cannot call [MKMapItemRequest getMapItemWithCompletionHandler:] on a request which is already loading";
LABEL_4:
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    goto LABEL_5;
  }

  self->_loading = 1;
  os_unfair_lock_unlock(&self->_stateLock);
  featureAnnotation = self->_featureAnnotation;
  if (featureAnnotation)
  {
    v15 = [(MKMapFeatureAnnotation *)featureAnnotation marker];
    v16 = [v15 identifier];

    if (!v16)
    {
      v8 = MKGetMapItemRequestLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      *buf = 0;
      v9 = "Invalid MKMapFeatureAnnotation provided to MKMapItemRequest initializer";
      goto LABEL_4;
    }
  }

  mapItemIdentifier = self->_mapItemIdentifier;
  if (mapItemIdentifier)
  {
    v18 = mapItemIdentifier;
  }

  else
  {
    v19 = [(MKMapFeatureAnnotation *)self->_featureAnnotation marker];
    v18 = [v19 identifier];
  }

  if (self->_descriptorResolutionParameters)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_2;
    v25[3] = &unk_1E76CAA70;
    v25[4] = self;
    v26 = v6;
    v27 = v7;
    v13 = MEMORY[0x1A58E9F30](v25);

    if (!v18)
    {
      if (!v13)
      {
        v12 = 0;
        goto LABEL_18;
      }

      v13[2](v13);
      v12 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = 0;
  v12 = 0;
  if (v18)
  {
LABEL_16:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_4;
    v23[3] = &unk_1E76C7AF0;
    v12 = v18;
    v24 = v12;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_5;
    v20[3] = &unk_1E76C7B18;
    v21 = v13;
    v22 = v7;
    v13 = v13;
    [(MKMapItemRequest *)self _performLookupRequestWithTicket:v23 queue:v6 completionHandler:v20];

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_3;
  v4[3] = &unk_1E76C7AF0;
  v4[4] = v2;
  return [v2 _performLookupRequestWithTicket:v4 queue:v1 completionHandler:a1[6]];
}

id __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MKMapService sharedService];
  v8[0] = *(a1 + 32);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v4 ticketForIdentifiers:v5 traits:v3];

  return v6;
}

void __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 || (v6 = *(a1 + 32)) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(v6 + 16))();
  }
}

id __58__MKMapItemRequest_getMapItemWithQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MKMapService sharedService];
  v5 = [v4 ticketForPlaceDescriptorResolution:*(*(a1 + 32) + 48) traits:v3];

  return v5;
}

- (MKMapItemRequest)initWithInternalSwiftExtensions:(id)a3 descriptorResolutionParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKMapItemRequest;
  v9 = [(MKMapItemRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internalSwiftExtensions, a3);
    objc_storeStrong(&v10->_descriptorResolutionParameters, a4);
    v10->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (MKMapItemRequest)initWithInternalSwiftExtensions:(id)a3 mapItemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKMapItemRequest;
  v9 = [(MKMapItemRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internalSwiftExtensions, a3);
    objc_storeStrong(&v10->_mapItemIdentifier, a4);
    v10->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (MKMapItemRequest)initWithMapItemIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKMapItemRequest;
  v6 = [(MKMapItemRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItemIdentifier, a3);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (MKMapItemRequest)initWithMapFeatureAnnotation:(MKMapFeatureAnnotation *)mapFeatureAnnotation
{
  v5 = mapFeatureAnnotation;
  v9.receiver = self;
  v9.super_class = MKMapItemRequest;
  v6 = [(MKMapItemRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureAnnotation, mapFeatureAnnotation);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end