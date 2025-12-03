@interface MKGeocodingRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (MKGeocodingRequest)initWithAddressString:(id)string;
- (id)_geoMapRegion;
- (void)_handleMapItems:(id)items error:(id)error completionHandler:(id)handler;
- (void)_performRequestWithQueue:(id)queue completionHandler:(id)handler;
- (void)cancel;
- (void)getMapItemsWithQueue:(id)queue completionHandler:(id)handler;
- (void)setPreferredLocale:(id)locale;
- (void)setRegion:(id *)region;
@end

@implementation MKGeocodingRequest

- (void)setPreferredLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock_with_options();
  preferredLocale = self->_preferredLocale;
  self->_preferredLocale = localeCopy;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)setRegion:(id *)region
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  os_unfair_lock_lock_with_options();
  self->_region.center.latitude = v10;
  self->_region.center.longitude = v9;
  self->_region.span.latitudeDelta = v8;
  self->_region.span.longitudeDelta = v7;

  os_unfair_lock_unlock(&self->_stateLock);
}

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

- (void)_handleMapItems:(id)items error:(id)error completionHandler:(id)handler
{
  itemsCopy = items;
  errorCopy = error;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_stateLock);
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_stateLock);
  if (handlerCopy && !cancelled)
  {
    if (errorCopy)
    {
      _mapkit_error = [errorCopy _mapkit_error];
      handlerCopy[2](handlerCopy, 0, _mapkit_error);
LABEL_5:

      goto LABEL_8;
    }

    if (![itemsCopy count])
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      _mapkit_error = [v12 initWithDomain:MKErrorDomain code:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, _mapkit_error);
      goto LABEL_5;
    }

    (handlerCopy)[2](handlerCopy, itemsCopy, 0);
  }

LABEL_8:
}

- (id)_geoMapRegion
{
  latitude = self->_region.center.latitude;
  if (latitude == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{self->_region.center.longitude, latitude, self->_region.span.latitudeDelta, self->_region.span.longitudeDelta}];
  }

  return v3;
}

- (void)_performRequestWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v12 = __65__MKGeocodingRequest__performRequestWithQueue_completionHandler___block_invoke;
  v13 = &unk_1E76CAA70;
  v15 = queueCopy;
  v16 = handlerCopy;
  selfCopy = self;
  v8 = MEMORY[0x1E696AF00];
  v9 = queueCopy;
  v10 = handlerCopy;
  if ([v8 isMainThread])
  {
    v12(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__MKGeocodingRequest__performRequestWithQueue_completionHandler___block_invoke(uint64_t a1)
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

    v5 = [*(a1 + 32) _geoMapRegion];
    [v4 setMapRegion:v5];

    v6 = MEMORY[0x1E695DF58];
    v7 = [*(*(a1 + 32) + 32) localeIdentifier];
    v8 = [v6 canonicalLanguageIdentifierFromString:v7];

    if (v8)
    {
      [v4 clearDeviceDisplayLanguages];
      [v4 addDeviceDisplayLanguage:v8];
    }

    v9 = +[MKMapService sharedService];
    v10 = [v9 ticketForForwardGeocodeString:*(*(a1 + 32) + 24) traits:v4];
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = v10;

    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    os_unfair_lock_unlock((v13 + 16));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__MKGeocodingRequest__performRequestWithQueue_completionHandler___block_invoke_2;
    v15[3] = &unk_1E76CA920;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    [v14 submitWithHandler:v15 queue:*(a1 + 40) networkActivity:0];
  }
}

void __65__MKGeocodingRequest__performRequestWithQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)getMapItemsWithQueue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v8 = MKGetMapItemRequestLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "Cannot call [MKGeocodingRequest getMapItemsWithCompletionHandler:] on a request which is already loading", buf, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = [v9 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__MKGeocodingRequest_getMapItemsWithQueue_completionHandler___block_invoke;
    v12[3] = &unk_1E76CDA20;
    v13 = v10;
    v14 = handlerCopy;
    v11 = v10;
    dispatch_async(queueCopy, v12);

    queueCopy = v11;
  }

  else
  {
    self->_loading = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    [(MKGeocodingRequest *)self _performRequestWithQueue:queueCopy completionHandler:handlerCopy];
  }
}

- (MKGeocodingRequest)initWithAddressString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v11.receiver = self;
    v11.super_class = MKGeocodingRequest;
    v5 = [(MKGeocodingRequest *)&v11 init];
    if (v5)
    {
      v6 = [stringCopy copy];
      v7 = *(v5 + 3);
      *(v5 + 3) = v6;

      *(v5 + 40) = MKCoordinateRegionWorld;
      *(v5 + 56) = unk_1A30F7CD8;
      *(v5 + 4) = 0;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v9 = MKGetMapItemRequestLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "Empty address string provided to MKGeocodingRequest initializer", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end