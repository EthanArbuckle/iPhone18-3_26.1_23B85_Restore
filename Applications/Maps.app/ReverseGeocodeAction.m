@interface ReverseGeocodeAction
- (CLLocationCoordinate2D)coordinate;
- (ReverseGeocodeAction)initWithLabel:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation ReverseGeocodeAction

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ReverseGeocodeAction *)self coordinate];
  v9 = v8;
  v11 = v10;
  v12 = [(ReverseGeocodeAction *)self label];
  v13 = +[MKMapService sharedService];
  v14 = CLLocationCoordinate2DMake(v9, v11);
  v15 = [v13 ticketForReverseGeocodeCoordinate:v7 traits:{v14.latitude, v14.longitude}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DAC230;
  v18[3] = &unk_101655A80;
  v21 = v9;
  v22 = v11;
  v19 = v12;
  v20 = v6;
  v16 = v6;
  v17 = v12;
  [v15 submitWithHandler:v18 networkActivity:0];
}

- (ReverseGeocodeAction)initWithLabel:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = ReverseGeocodeAction;
  v9 = [(ReverseGeocodeAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
  }

  return v10;
}

@end