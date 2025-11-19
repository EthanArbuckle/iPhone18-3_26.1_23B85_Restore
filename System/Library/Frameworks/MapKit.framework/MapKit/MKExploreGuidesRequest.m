@interface MKExploreGuidesRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (CLLocationCoordinate2D)referenceLocation;
- (MKExploreGuidesRequest)initWithReferenceLocation:(CLLocationCoordinate2D)a3 airportCode:(id)a4 cityName:(id)a5 supportedPunchoutType:(unint64_t)a6;
- (unint64_t)geoSupportedPunchoutType;
- (void)cancel;
- (void)dealloc;
- (void)getResponseWithCompletionHandler:(id)a3;
@end

@implementation MKExploreGuidesRequest

- (CLLocationCoordinate2D)referenceLocation
{
  latitude = self->_referenceLocation.latitude;
  longitude = self->_referenceLocation.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (unint64_t)geoSupportedPunchoutType
{
  result = [(MKExploreGuidesRequest *)self supportedPunchoutType];
  if (result)
  {
    v4 = [(MKExploreGuidesRequest *)self supportedPunchoutType];
    return [(MKExploreGuidesRequest *)self supportedPunchoutType]& 2 | v4 & 1;
  }

  return result;
}

- (void)getResponseWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v5 = MKGetMKExploreGuidesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "Cannot call [MKExploreGuidesRequest getResponseWithCompletionHandler:] on a request which is already loading", buf, 2u);
    }

    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v6 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__MKExploreGuidesRequest_getResponseWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E76CDA20;
    v13 = v7;
    v14 = v4;
    v8 = v4;
    v9 = v7;
    _performBlockOnMainThreadIfNeeded(v12);
  }

  else
  {
    self->_loading = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MKExploreGuidesRequest_getResponseWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E76CDA20;
    v10[4] = self;
    v11 = v4;
    v9 = v4;
    _performBlockOnMainThreadIfNeeded(v10);
  }
}

void __59__MKExploreGuidesRequest_getResponseWithCompletionHandler___block_invoke_2(uint64_t a1)
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

    v5 = objc_alloc_init(MEMORY[0x1E69A1DA8]);
    [*(a1 + 32) referenceLocation];
    if (fabs(v7) <= 180.0 && fabs(v6) <= 90.0)
    {
      v8 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithLatitude:v6 longitude:v7];
      [v5 setReferenceLocation:v8];
    }

    v9 = [*(a1 + 32) airportCode];
    [v5 setAirportCode:v9];

    v10 = [*(a1 + 32) cityName];
    [v5 setCityName:v10];

    v11 = [*(a1 + 32) mapItemIdentifier];

    if (v11)
    {
      v12 = [*(a1 + 32) mapItemIdentifier];
      v13 = [v12 geoMapItemIdentifier];
      [v5 setMapItemIdentifier:v13];
    }

    if ([*(a1 + 32) supportedPunchoutType])
    {
      [v5 setSupportedPunchoutType:{objc_msgSend(*(a1 + 32), "geoSupportedPunchoutType")}];
    }

    v14 = +[MKMapService sharedService];
    v15 = [v14 ticketForExploreGuidesLookupParameters:v5 traits:v4];
    v16 = *(a1 + 32);
    v17 = *(v16 + 8);
    *(v16 + 8) = v15;

    v18 = *(a1 + 32);
    v19 = *(v18 + 8);
    os_unfair_lock_unlock((v18 + 16));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MKExploreGuidesRequest_getResponseWithCompletionHandler___block_invoke_3;
    v21[3] = &unk_1E76C8670;
    v20 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v20;
    [v19 submitWithHandler:v21 networkActivity:0];
  }
}

void __59__MKExploreGuidesRequest_getResponseWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock_with_options();
  *(*(a1 + 32) + 20) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if (v5)
  {
    v9 = [[MKExploreGuidesResponse alloc] initWithExploreGuidesLookupResult:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = MKGetMKExploreGuidesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *(*(a1 + 32) + 64), *(*(a1 + 32) + 72)];
      v12 = *(a1 + 32);
      v13 = v12[4];
      v14 = v12[5];
      v15 = v12[6];
      *buf = 138478851;
      v17 = v11;
      v18 = 2113;
      v19 = v13;
      v20 = 2113;
      v21 = v14;
      v22 = 2113;
      v23 = v15;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_ERROR, "Error: ticketForExploreGuidesLookupParameters with coordinate:%{private}@ airportCode:%{private}@ cityName:%{private}@ identifier:%{private}@ failed: %{public}@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_loading && !self->_cancelled)
  {
    self->_cancelled = 1;
    [(MKMapServiceExploreGuidesTicket *)self->_ticket cancel];
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

- (void)dealloc
{
  [(MKExploreGuidesRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = MKExploreGuidesRequest;
  [(MKExploreGuidesRequest *)&v3 dealloc];
}

- (MKExploreGuidesRequest)initWithReferenceLocation:(CLLocationCoordinate2D)a3 airportCode:(id)a4 cityName:(id)a5 supportedPunchoutType:(unint64_t)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MKExploreGuidesRequest;
  v14 = [(MKExploreGuidesRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_referenceLocation.latitude = latitude;
    v14->_referenceLocation.longitude = longitude;
    objc_storeStrong(&v14->_airportCode, a4);
    objc_storeStrong(&v15->_cityName, a5);
    v15->_supportedPunchoutType = a6;
  }

  return v15;
}

@end