@interface RefineMapItemAction
- (RefineMapItemAction)initWithMapItem:(id)a3;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation RefineMapItemAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RefineMapItemAction *)self originalMapItem];
  v9 = +[MKMapService sharedService];
  v10 = [v9 ticketForMapItemToRefine:v8 traits:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FC370C;
  v13[3] = &unk_1016601F0;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  [v10 submitWithHandler:v13 networkActivity:0];
}

- (RefineMapItemAction)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RefineMapItemAction;
  v6 = [(RefineMapItemAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, a3);
  }

  return v7;
}

@end