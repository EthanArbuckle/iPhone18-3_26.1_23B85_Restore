@interface ReservationAnalyticsCaptor
- (id)_createActionDetails;
- (void)_captureAction:(int)a3 target:(int)a4;
@end

@implementation ReservationAnalyticsCaptor

- (void)_captureAction:(int)a3 target:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v8 = +[MKMapService sharedService];
  v7 = [(ReservationAnalyticsCaptor *)self _createActionDetails];
  [v8 captureUserAction:v5 onTarget:v4 eventValue:0 placeActionDetails:v7];
}

- (id)_createActionDetails
{
  v2 = [(ReservationAnalyticsCaptor *)self mapItem];
  v3 = [v2 _geoMapItem];
  v4 = [GEOPlaceActionDetails actionDetailsWithMapItem:v3 timestamp:0xFFFFFFFFLL resultIndex:0.0];

  return v4;
}

@end