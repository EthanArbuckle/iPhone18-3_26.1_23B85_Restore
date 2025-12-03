@interface PlaceRefinementAction
- (PlaceRefinementAction)initWithLabel:(id)label atCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation PlaceRefinementAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  [(ReverseGeocodeAction *)self coordinate];
  v9 = v8;
  v11 = v10;
  v23 = CLLocationCoordinate2DMake(v8, v10);
  label = [(ReverseGeocodeAction *)self label];
  v13 = +[MKMapService sharedService];
  address = [(PlaceRefinementAction *)self address];
  v15 = [v13 ticketForPlaceRefinementRequestWithCoordinate:&v23 addressLine:address placeName:label traits:traitsCopy];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E1EF6C;
  v18[3] = &unk_101655A80;
  v21 = v9;
  v22 = v11;
  v19 = label;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = label;
  [v15 submitWithHandler:v18 networkActivity:0];
}

- (PlaceRefinementAction)initWithLabel:(id)label atCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  addressCopy = address;
  v14.receiver = self;
  v14.super_class = PlaceRefinementAction;
  longitude = [(ReverseGeocodeAction *)&v14 initWithLabel:label atCoordinate:latitude, longitude];
  if (longitude)
  {
    v11 = [addressCopy copy];
    address = longitude->_address;
    longitude->_address = v11;
  }

  return longitude;
}

@end