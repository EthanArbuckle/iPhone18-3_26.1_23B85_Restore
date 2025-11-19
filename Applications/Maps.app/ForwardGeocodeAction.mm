@interface ForwardGeocodeAction
- (ForwardGeocodeAction)initWithMapItem:(id)a3;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation ForwardGeocodeAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ForwardGeocodeAction *)self originalMapItem];
  v9 = +[MKMapService sharedService];
  v10 = [v8 _geoAddress];
  v11 = [v10 singleLineAddress];
  v12 = [v9 ticketForForwardGeocodeString:v11 traits:v7];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F63CF4;
  v15[3] = &unk_1016601F0;
  v16 = v8;
  v17 = v6;
  v13 = v6;
  v14 = v8;
  [v12 submitWithHandler:v15 networkActivity:0];
}

- (ForwardGeocodeAction)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ForwardGeocodeAction;
  v6 = [(ForwardGeocodeAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, a3);
  }

  return v7;
}

@end