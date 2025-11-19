@interface RoutePlanningVehicleCheckmarkRow
+ (void)registerCellsInCollectionView:(id)a3;
- (RoutePlanningVehicleCheckmarkRow)initWithVehicle:(id)a3;
- (id)cellForTableView:(id)a3;
- (void)_configureCell:(id)a3;
@end

@implementation RoutePlanningVehicleCheckmarkRow

- (id)cellForTableView:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() reuseIdentifier];
  v6 = [v4 dequeueReusableCellWithIdentifier:v5];

  if (!v6)
  {
    v6 = [[RoutePlanningVehicleSelectionTableViewCell alloc] initWithStyle:[(MapsDebugTableRow *)self cellStyle] reuseIdentifier:v5];
  }

  [(RoutePlanningVehicleCheckmarkRow *)self configureCell:v6];

  return v6;
}

- (void)_configureCell:(id)a3
{
  v4 = a3;
  v5 = &protocolRef_RouteAnnotationsProviding;
  if (([v4 conformsToProtocol:&OBJC_PROTOCOL___RoutePlanningVehicleSelectionCell] & 1) == 0)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[RoutePlanningVehicleCheckmarkRow _configureCell:]";
      v14 = 2080;
      v15 = "RoutePlanningVehicleCheckmarkRow.m";
      v16 = 1024;
      v17 = 45;
      v18 = 2080;
      v19 = "[cell conformsToProtocol:@protocol(RoutePlanningVehicleSelectionCell)]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);

        v5 = &protocolRef_RouteAnnotationsProviding;
      }
    }
  }

  if ([v4 conformsToProtocol:v5[129]])
  {
    [v4 setupWithVehicle:self->_vehicle];
  }

  else
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "RoutePlanningVehicleCheckmarkRow can't configure a cell of class: %@.", &v12, 0xCu);
    }
  }
}

- (RoutePlanningVehicleCheckmarkRow)initWithVehicle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RoutePlanningVehicleCheckmarkRow;
  v6 = [(MapsDebugCheckmarkRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, a3);
  }

  return v7;
}

+ (void)registerCellsInCollectionView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [objc_opt_class() reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];
}

@end