@interface RoutePlanningPreferredNetworksRefinementModel
- (RoutePlanningPreferredNetworksRefinementModel)initWithDelegate:(id)a3 value:(id)a4;
- (id)_titleForAllNetworks;
- (id)_titleForPreferredNetworks;
- (id)menuOptions;
- (id)titleText;
- (id)vehicle;
- (void)_assertValidValue;
- (void)setShouldUsePreferredNetworks:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation RoutePlanningPreferredNetworksRefinementModel

- (id)menuOptions
{
  menuOptions = self->super._menuOptions;
  if (!menuOptions)
  {
    v4 = objc_opt_new();
    v5 = [NSAttributedString alloc];
    v6 = [(RoutePlanningPreferredNetworksRefinementModel *)self _titleForPreferredNetworks];
    v7 = [v5 initWithString:v6];

    v8 = [[RoutePlanningMenuOptionModel alloc] initWithIdentifier:@"PreferredNetworks" title:v7 selected:self->_shouldUsePreferredNetworks];
    [(NSArray *)v4 addObject:v8];

    v9 = [NSAttributedString alloc];
    v10 = [(RoutePlanningPreferredNetworksRefinementModel *)self _titleForAllNetworks];
    v11 = [v9 initWithString:v10];

    v12 = [[RoutePlanningMenuOptionModel alloc] initWithIdentifier:@"AllNetworks" title:v11 selected:!self->_shouldUsePreferredNetworks];
    [(NSArray *)v4 addObject:v12];

    v13 = self->super._menuOptions;
    self->super._menuOptions = v4;

    menuOptions = self->super._menuOptions;
  }

  return menuOptions;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  obj = v5;
  v6 = v5;
  v7 = [(RoutePlanningPreferredNetworksRefinementModel *)self vehicle];
  shouldUsePreferredNetworks = self->_shouldUsePreferredNetworks;
  v9 = [v6 usesPreferredNetworksForRouting];
  v10 = [v6 preferredChargingNetworks];
  v11 = [v7 preferredChargingNetworks];
  v12 = [v10 isEqualToSet:v11];

  if (shouldUsePreferredNetworks != v9 || (v12 & 1) == 0)
  {
    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[Options] Using updated vehicle for networks picker: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->super._value, obj);
    self->_shouldUsePreferredNetworks = [v6 usesPreferredNetworksForRouting];
    menuOptions = self->super._menuOptions;
    self->super._menuOptions = 0;

    v15 = [(RoutePlanningRefinementModel *)self delegate];
    [v15 updatedRefinementModel:self];
  }
}

- (id)vehicle
{
  v2 = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setShouldUsePreferredNetworks:(BOOL)a3
{
  if (self->_shouldUsePreferredNetworks != a3)
  {
    self->_shouldUsePreferredNetworks = a3;
    if (a3)
    {
      v4 = 450;
    }

    else
    {
      v4 = 444;
    }

    self->super._lastUpdateUsageAction = v4;
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_shouldUsePreferredNetworks)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] shouldUsePreferredNetworks changed to: %@", &v9, 0xCu);
    }

    v8 = [(RoutePlanningRefinementModel *)self delegate];
    [v8 updatedRefinementModel:self];
  }
}

- (void)_assertValidValue
{
  v3 = [(RoutePlanningRefinementModel *)self value];
  if (v3)
  {
    v4 = v3;
    v5 = [(RoutePlanningRefinementModel *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(RoutePlanningRefinementModel *)self value];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [NSString stringWithFormat:@"Wrong type: %@", v10];
        *buf = 136316162;
        v15 = "[RoutePlanningPreferredNetworksRefinementModel _assertValidValue]";
        v16 = 2080;
        v17 = "RoutePlanningPreferredNetworksRefinementModel.m";
        v18 = 1024;
        v19 = 81;
        v20 = 2080;
        v21 = "!self.value || [self.value isKindOfClass:VGVehicle.class]";
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)_titleForPreferredNetworks
{
  v2 = [(RoutePlanningPreferredNetworksRefinementModel *)self vehicle];
  v3 = [v2 preferredChargingNetworks];

  if ([v3 count])
  {
    if ([v3 count] < 2)
    {
      v4 = [v3 allObjects];
      v5 = [v4 firstObject];
      [v5 name];
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"[Preferred Networks Picker] %lu Networks" value:@"localized string not found" table:0];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", v5, [v3 count]);
    }
    v10 = ;
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[RoutePlanningPreferredNetworksRefinementModel _titleForPreferredNetworks]";
      v14 = 2080;
      v15 = "RoutePlanningPreferredNetworksRefinementModel.m";
      v16 = 1024;
      v17 = 57;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "[Options] RoutePlanningPreferredNetworksRefinementModel was made without any networks", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_titleForAllNetworks
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Preferred Networks Picker] All Networks" value:@"localized string not found" table:0];

  return v3;
}

- (id)titleText
{
  if (self->_shouldUsePreferredNetworks)
  {
    [(RoutePlanningPreferredNetworksRefinementModel *)self _titleForPreferredNetworks];
  }

  else
  {
    [(RoutePlanningPreferredNetworksRefinementModel *)self _titleForAllNetworks];
  }
  v2 = ;

  return v2;
}

- (RoutePlanningPreferredNetworksRefinementModel)initWithDelegate:(id)a3 value:(id)a4
{
  v8.receiver = self;
  v8.super_class = RoutePlanningPreferredNetworksRefinementModel;
  v4 = [(RoutePlanningRefinementModel *)&v8 initWithDelegate:a3 value:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RoutePlanningPreferredNetworksRefinementModel *)v4 vehicle];
    v5->_shouldUsePreferredNetworks = [v6 usesPreferredNetworksForRouting];
  }

  return v5;
}

@end