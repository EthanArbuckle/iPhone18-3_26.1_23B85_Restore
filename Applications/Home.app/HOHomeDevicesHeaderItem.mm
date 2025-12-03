@interface HOHomeDevicesHeaderItem
- (HOHomeDevicesHeaderItem)init;
- (HOHomeDevicesHeaderItem)initWithHome:(id)home room:(id)room;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HOHomeDevicesHeaderItem

- (HOHomeDevicesHeaderItem)initWithHome:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  v12.receiver = self;
  v12.super_class = HOHomeDevicesHeaderItem;
  v9 = [(HOHomeDevicesHeaderItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_room, room);
  }

  return v10;
}

- (HOHomeDevicesHeaderItem)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HOHomeDevicesHeaderItem.m" lineNumber:29 description:@"Use -initWithHome:room:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(NAFuture);
  v5 = [HFServiceItemProvider alloc];
  home = [(HOHomeDevicesHeaderItem *)self home];
  v7 = [v5 initWithHome:home serviceTypes:0];

  room = [(HOHomeDevicesHeaderItem *)self room];

  if (room)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001E568;
    v21[3] = &unk_1000C2A28;
    v21[4] = self;
    [v7 setFilter:v21];
  }

  reloadItems = [v7 reloadItems];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001E66C;
  v19[3] = &unk_1000C1F28;
  v10 = v4;
  v20 = v10;
  v11 = [reloadItems addFailureBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E678;
  v17[3] = &unk_1000C2A50;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [reloadItems addSuccessBlock:v17];
  v14 = v18;
  v15 = v12;

  return v12;
}

@end