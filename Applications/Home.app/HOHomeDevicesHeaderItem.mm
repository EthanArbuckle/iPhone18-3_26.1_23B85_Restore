@interface HOHomeDevicesHeaderItem
- (HOHomeDevicesHeaderItem)init;
- (HOHomeDevicesHeaderItem)initWithHome:(id)a3 room:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HOHomeDevicesHeaderItem

- (HOHomeDevicesHeaderItem)initWithHome:(id)a3 room:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HOHomeDevicesHeaderItem;
  v9 = [(HOHomeDevicesHeaderItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_room, a4);
  }

  return v10;
}

- (HOHomeDevicesHeaderItem)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HOHomeDevicesHeaderItem.m" lineNumber:29 description:@"Use -initWithHome:room:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(NAFuture);
  v5 = [HFServiceItemProvider alloc];
  v6 = [(HOHomeDevicesHeaderItem *)self home];
  v7 = [v5 initWithHome:v6 serviceTypes:0];

  v8 = [(HOHomeDevicesHeaderItem *)self room];

  if (v8)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001E568;
    v21[3] = &unk_1000C2A28;
    v21[4] = self;
    [v7 setFilter:v21];
  }

  v9 = [v7 reloadItems];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001E66C;
  v19[3] = &unk_1000C1F28;
  v10 = v4;
  v20 = v10;
  v11 = [v9 addFailureBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E678;
  v17[3] = &unk_1000C2A50;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [v9 addSuccessBlock:v17];
  v14 = v18;
  v15 = v12;

  return v12;
}

@end