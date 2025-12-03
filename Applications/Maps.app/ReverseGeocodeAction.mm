@interface ReverseGeocodeAction
- (CLLocationCoordinate2D)coordinate;
- (ReverseGeocodeAction)initWithLabel:(id)label atCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
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

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  [(ReverseGeocodeAction *)self coordinate];
  v9 = v8;
  v11 = v10;
  label = [(ReverseGeocodeAction *)self label];
  v13 = +[MKMapService sharedService];
  v14 = CLLocationCoordinate2DMake(v9, v11);
  v15 = [v13 ticketForReverseGeocodeCoordinate:traitsCopy traits:{v14.latitude, v14.longitude}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DAC230;
  v18[3] = &unk_101655A80;
  v21 = v9;
  v22 = v11;
  v19 = label;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = label;
  [v15 submitWithHandler:v18 networkActivity:0];
}

- (ReverseGeocodeAction)initWithLabel:(id)label atCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = ReverseGeocodeAction;
  v9 = [(ReverseGeocodeAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
  }

  return v10;
}

@end