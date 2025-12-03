@interface MKLookAroundSceneRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (CLLocationCoordinate2D)coordinate;
- (MKLookAroundSceneRequest)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (MKLookAroundSceneRequest)initWithMapItem:(MKMapItem *)mapItem;
- (void)_handleMapItems:(id)items requestType:(unint64_t)type error:(id)error completionHandler:(id)handler;
- (void)_performLookupRequestWithMapItem:(id)item orCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)getSceneWithCompletionHandler:(void *)completionHandler;
@end

@implementation MKLookAroundSceneRequest

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_handleMapItems:(id)items requestType:(unint64_t)type error:(id)error completionHandler:(id)handler
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
    }

    else
    {
      if ([itemsCopy count])
      {
        firstObject = [itemsCopy firstObject];
        if ([firstObject _hasLookAroundStorefront])
        {
          v15 = [[MKLookAroundScene alloc] initWithMapItem:firstObject];
          handlerCopy[2](handlerCopy, v15, 0);
        }

        else if (type == 1)
        {
          [firstObject _coordinate];
          [(MKLookAroundSceneRequest *)self _performLookupRequestWithMapItem:0 orCoordinate:handlerCopy completionHandler:?];
        }

        else
        {
          handlerCopy[2](handlerCopy, 0, 0);
        }

        goto LABEL_6;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      _mapkit_error = [v16 initWithDomain:MKErrorDomain code:1 userInfo:0];
    }

    firstObject = _mapkit_error;
    handlerCopy[2](handlerCopy, 0, _mapkit_error);
LABEL_6:
  }
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_loading && !self->_cancelled)
  {
    self->_cancelled = 1;
    [(MKLocationManagerOperation *)self->_singleLocationUpdate cancel];
    singleLocationUpdate = self->_singleLocationUpdate;
    self->_singleLocationUpdate = 0;

    [(MKMapServiceTicket *)self->_ticket cancel];
    ticket = self->_ticket;
    self->_ticket = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_performLookupRequestWithMapItem:(id)item orCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  itemCopy = item;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v15 = __92__MKLookAroundSceneRequest__performLookupRequestWithMapItem_orCoordinate_completionHandler___block_invoke;
  v16 = &unk_1E76CDA98;
  selfCopy = self;
  v18 = itemCopy;
  v20 = latitude;
  v21 = longitude;
  v19 = handlerCopy;
  v11 = MEMORY[0x1E696AF00];
  v12 = handlerCopy;
  v13 = itemCopy;
  if ([v11 isMainThread])
  {
    v15(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __92__MKLookAroundSceneRequest__performLookupRequestWithMapItem_orCoordinate_completionHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  if (*(v2 + 29) == 1)
  {

    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    v3 = +[MKMapService sharedService];
    v4 = [v3 defaultTraits];

    v5 = *(a1 + 40);
    if (v5 && (([v5 _hasLookAroundStorefront] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_identifier"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6)))
    {
      if ([*(a1 + 40) _hasLookAroundStorefront])
      {
        v7 = *(a1 + 40);
      }

      else
      {
        v7 = 0;
      }

      v10 = v7;
      v8 = +[MKMapService sharedService];
      v9 = [v8 ticketForMapItemToRefine:*(a1 + 40) traits:v4];
      v11 = 1;
    }

    else
    {
      v8 = +[MKMapService sharedService];
      v9 = [v8 ticketForReverseGeocodeCoordinate:v4 traits:{*(a1 + 56), *(a1 + 64)}];
      v10 = 0;
      v11 = 0;
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = v9;

    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__MKLookAroundSceneRequest__performLookupRequestWithMapItem_orCoordinate_completionHandler___block_invoke_2;
    v18[3] = &unk_1E76CDA70;
    v16 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v10;
    v20 = v16;
    v22 = v11;
    v21 = *(a1 + 48);
    v17 = v10;
    [v15 submitWithHandler:v18 queue:MEMORY[0x1E69E96A0] networkActivity:0];
  }
}

void __92__MKLookAroundSceneRequest__performLookupRequestWithMapItem_orCoordinate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock_with_options();
  *(*(a1 + 32) + 28) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (![v5 count] && *(a1 + 40))
  {
    v10[0] = *(a1 + 48);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    v6 = 0;
    v5 = v9;
  }

  [*(a1 + 32) _handleMapItems:v5 requestType:*(a1 + 64) error:v6 completionHandler:*(a1 + 56)];
}

- (void)getSceneWithCompletionHandler:(void *)completionHandler
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v7 = MKGetMKLookAroundLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = [v26 initWithDomain:MKErrorDomain code:1 userInfo:0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MKLookAroundSceneRequest_getSceneWithCompletionHandler___block_invoke;
      block[3] = &unk_1E76CDA20;
      v33 = v27;
      v34 = v4;
      v28 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_31;
    }

    *buf = 0;
    v8 = "Cannot call [MKLookAroundSceneRequest getSceneWithCompletionHandler:] on a scene request which is already loading";
LABEL_4:
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
    goto LABEL_26;
  }

  self->_loading = 1;
  os_unfair_lock_unlock(&self->_stateLock);
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    goto LABEL_10;
  }

  _identifier = [(MKMapItem *)mapItem _identifier];
  if (_identifier)
  {
  }

  else
  {
    [(MKMapItem *)self->_mapItem _coordinate];
    if (!CLLocationCoordinate2DIsValid(v38))
    {
      v7 = MKGetMKLookAroundLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v8 = "MKMapItem with missing identifier or invalid coordinate provided to MKLookAroundSceneRequest's initWithMapItem: initializer";
      goto LABEL_4;
    }
  }

  v11 = self->_mapItem;
  if (!v11)
  {
LABEL_10:
    if (!CLLocationCoordinate2DIsValid(self->_coordinate))
    {
      v7 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Invalid CLLocationCoordinate2D provided to MKLookAroundSceneRequest's initWithCoordinate: initializer: %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v11 = self->_mapItem;
  }

  if (!-[MKMapItem isCurrentLocation](v11, "isCurrentLocation") || self->_singleLocationUpdate || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isLocationServicesAvailable], v12, !v13))
  {
    v18 = self->_mapItem;
    if (v18)
    {
      _hasLookAroundStorefront = [(MKMapItem *)v18 _hasLookAroundStorefront];
      v20 = self->_mapItem;
      if (_hasLookAroundStorefront)
      {
        v21 = v20;
        if (v21)
        {
LABEL_19:
          [(MKMapItem *)v21 _coordinate];
LABEL_30:
          [(MKLookAroundSceneRequest *)self _performLookupRequestWithMapItem:v21 orCoordinate:v4 completionHandler:latitude, longitude];

          goto LABEL_31;
        }
      }

      else
      {
        _identifier2 = [(MKMapItem *)v20 _identifier];
        if (_identifier2)
        {
          v21 = self->_mapItem;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = 0;
    latitude = self->_coordinate.latitude;
    longitude = self->_coordinate.longitude;
    goto LABEL_30;
  }

  v14 = +[MKLocationManager sharedLocationManager];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__MKLookAroundSceneRequest_getSceneWithCompletionHandler___block_invoke_2;
  v29[3] = &unk_1E76CDA48;
  v29[4] = self;
  v31 = v4;
  v15 = v5;
  v30 = v5;
  v16 = [v14 singleLocationUpdateWithHandler:v29];
  singleLocationUpdate = self->_singleLocationUpdate;
  self->_singleLocationUpdate = v16;

  [(MKLocationManagerOperation *)self->_singleLocationUpdate start];
LABEL_31:
}

void __58__MKLookAroundSceneRequest_getSceneWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    [a2 coordinate];
    [v3 _performLookupRequestWithMapItem:0 orCoordinate:*(a1 + 48) completionHandler:?];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__MKLookAroundSceneRequest_getSceneWithCompletionHandler___block_invoke_3;
    v7[3] = &unk_1E76CDA20;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    dispatch_async(v4, v7);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
}

void __58__MKLookAroundSceneRequest_getSceneWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [v3 initWithDomain:MKErrorDomain code:1 userInfo:0];
  [v2 _handleMapItems:MEMORY[0x1E695E0F0] requestType:0 error:v4 completionHandler:*(a1 + 40)];
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

- (void)dealloc
{
  [(MKLookAroundSceneRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = MKLookAroundSceneRequest;
  [(MKLookAroundSceneRequest *)&v3 dealloc];
}

- (MKLookAroundSceneRequest)initWithMapItem:(MKMapItem *)mapItem
{
  v5 = mapItem;
  v9.receiver = self;
  v9.super_class = MKLookAroundSceneRequest;
  v6 = [(MKLookAroundSceneRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 40) = MKCoordinateInvalid;
    objc_storeStrong(v6 + 4, mapItem);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (MKLookAroundSceneRequest)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v6.receiver = self;
  v6.super_class = MKLookAroundSceneRequest;
  result = [(MKLookAroundSceneRequest *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
    result->_stateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end