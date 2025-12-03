@interface MKReverseGeocoder
- (CLLocationCoordinate2D)coordinate;
- (MKReverseGeocoder)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_notifyError:(id)error;
- (void)_notifyNoResults;
- (void)_notifyResult:(id)result;
- (void)start;
@end

@implementation MKReverseGeocoder

- (void)start
{
  if (![(MKReverseGeocoder *)self isQuerying])
  {
    v3 = +[MKMapService sharedService];
    v4 = [v3 ticketForReverseGeocodeCoordinate:0 traits:{self->_internal->coordinate.latitude, self->_internal->coordinate.longitude}];
    internal = self->_internal;
    ticket = internal->ticket;
    internal->ticket = v4;

    v7 = self->_internal->ticket;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__MKReverseGeocoder_start__block_invoke;
    v8[3] = &unk_1E76C71C8;
    v8[4] = self;
    [(MKMapServiceTicket *)v7 submitWithHandler:v8 networkActivity:0];
    self->_internal->querying = 1;
  }
}

void __26__MKReverseGeocoder_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 48) = 0;
  if (v5 || ![v13 count] && (objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", MKErrorDomain, 4, 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    if ([v5 code] != -2 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      [*(a1 + 32) _notifyError:v6];
    }
  }

  else
  {
    v10 = [v13 firstObject];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    [*(a1 + 32) _notifyResult:*(*(*(a1 + 32) + 8) + 32)];
    v6 = 0;
  }
}

- (void)_notifyResult:(id)result
{
  resultCopy = result;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;
    placemark = [resultCopy placemark];
    [(MKReverseGeocoderDelegate *)delegate reverseGeocoder:self didFindPlacemark:placemark];
  }
}

- (void)_notifyNoResults
{
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [v3 initWithDomain:MKErrorDomain code:4 userInfo:0];
  [(MKReverseGeocoder *)self _notifyError:v4];
}

- (void)_notifyError:(id)error
{
  errorCopy = error;
  if (objc_opt_respondsToSelector())
  {
    [(MKReverseGeocoderDelegate *)self->_internal->delegate reverseGeocoder:self didFailWithError:errorCopy];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  internal = self->_internal;
  latitude = internal->coordinate.latitude;
  longitude = internal->coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKReverseGeocoder)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v10.receiver = self;
  v10.super_class = MKReverseGeocoder;
  v5 = [(MKReverseGeocoder *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MKReverseGeocoderInternal);
    internal = v5->_internal;
    v5->_internal = v6;

    v8 = v5->_internal;
    v8->coordinate.latitude = latitude;
    v8->coordinate.longitude = longitude;
  }

  return v5;
}

@end