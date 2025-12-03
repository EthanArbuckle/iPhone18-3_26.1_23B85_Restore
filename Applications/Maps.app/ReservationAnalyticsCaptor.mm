@interface ReservationAnalyticsCaptor
- (id)_createActionDetails;
- (void)_captureAction:(int)action target:(int)target;
@end

@implementation ReservationAnalyticsCaptor

- (void)_captureAction:(int)action target:(int)target
{
  v4 = *&target;
  v5 = *&action;
  v8 = +[MKMapService sharedService];
  _createActionDetails = [(ReservationAnalyticsCaptor *)self _createActionDetails];
  [v8 captureUserAction:v5 onTarget:v4 eventValue:0 placeActionDetails:_createActionDetails];
}

- (id)_createActionDetails
{
  mapItem = [(ReservationAnalyticsCaptor *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  v4 = [GEOPlaceActionDetails actionDetailsWithMapItem:_geoMapItem timestamp:0xFFFFFFFFLL resultIndex:0.0];

  return v4;
}

@end