@interface PlaceRefinementAction
- (PlaceRefinementAction)initWithLabel:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4 address:(id)a5;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation PlaceRefinementAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ReverseGeocodeAction *)self coordinate];
  v9 = v8;
  v11 = v10;
  v23 = CLLocationCoordinate2DMake(v8, v10);
  v12 = [(ReverseGeocodeAction *)self label];
  v13 = +[MKMapService sharedService];
  v14 = [(PlaceRefinementAction *)self address];
  v15 = [v13 ticketForPlaceRefinementRequestWithCoordinate:&v23 addressLine:v14 placeName:v12 traits:v7];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E1EF6C;
  v18[3] = &unk_101655A80;
  v21 = v9;
  v22 = v11;
  v19 = v12;
  v20 = v6;
  v16 = v6;
  v17 = v12;
  [v15 submitWithHandler:v18 networkActivity:0];
}

- (PlaceRefinementAction)initWithLabel:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4 address:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PlaceRefinementAction;
  v10 = [(ReverseGeocodeAction *)&v14 initWithLabel:a3 atCoordinate:latitude, longitude];
  if (v10)
  {
    v11 = [v9 copy];
    address = v10->_address;
    v10->_address = v11;
  }

  return v10;
}

@end