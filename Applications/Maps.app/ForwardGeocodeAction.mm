@interface ForwardGeocodeAction
- (ForwardGeocodeAction)initWithMapItem:(id)item;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation ForwardGeocodeAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  originalMapItem = [(ForwardGeocodeAction *)self originalMapItem];
  v9 = +[MKMapService sharedService];
  _geoAddress = [originalMapItem _geoAddress];
  singleLineAddress = [_geoAddress singleLineAddress];
  v12 = [v9 ticketForForwardGeocodeString:singleLineAddress traits:traitsCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F63CF4;
  v15[3] = &unk_1016601F0;
  v16 = originalMapItem;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = originalMapItem;
  [v12 submitWithHandler:v15 networkActivity:0];
}

- (ForwardGeocodeAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ForwardGeocodeAction;
  v6 = [(ForwardGeocodeAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, item);
  }

  return v7;
}

@end