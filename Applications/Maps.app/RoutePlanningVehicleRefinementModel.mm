@interface RoutePlanningVehicleRefinementModel
+ (BOOL)_isGarage:(id)a3 significantlyDifferentFromGarage:(id)a4;
- (BOOL)_shouldDefaultToNoSelection;
- (BOOL)shouldShowHighlighted;
- (RoutePlanningVehicleRefinementModel)initWithDelegate:(id)a3 value:(id)a4;
- (id)_attributedTitleForVehicle:(id)a3;
- (id)_subtitleForVehicle:(id)a3;
- (id)_titleForDifferentCar;
- (id)menuOptions;
- (id)titleText;
- (id)virtualGarage;
- (void)_assertValidValue;
- (void)offlineMapsStateChanged;
- (void)selectVehicleWithIdentifier:(id)a3;
- (void)setSelectedVehicle:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation RoutePlanningVehicleRefinementModel

- (void)offlineMapsStateChanged
{
  menuOptions = self->super._menuOptions;
  self->super._menuOptions = 0;
}

- (id)_subtitleForVehicle:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[RoutePlanningVehicleRefinementModel _subtitleForVehicle:]";
      v33 = 2080;
      v34 = "RoutePlanningVehicleRefinementModel.m";
      v35 = 1024;
      v36 = 228;
      v37 = 2080;
      v38 = "vehicle != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (([v3 isPureElectricVehicle] & 1) == 0)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[RoutePlanningVehicleRefinementModel _subtitleForVehicle:]";
      v33 = 2080;
      v34 = "RoutePlanningVehicleRefinementModel.m";
      v35 = 1024;
      v36 = 229;
      v37 = 2080;
      v38 = "vehicle.isPureElectricVehicle";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v32 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (![v3 isPureElectricVehicle])
  {
    v6 = 0;
    goto LABEL_25;
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  if (GEOConfigGetBOOL())
  {
    if (v3)
    {
      v5 = [v3 displayedBatteryPercentage];
    }

    else
    {
      v5 = 65;
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
    v9 = [NSString localizedStringWithFormat:v8, v5];
    [v4 addObject:v9];
  }

  if (v3)
  {
    [v3 lastStateUpdateDate];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceNow:-7200.0];
  }
  v10 = ;
  v11 = +[NSDate date];
  [v11 timeIntervalSinceDate:v10];
  v13 = v12;
  GEOConfigGetDouble();
  if (v13 >= v14)
  {
  }

  else
  {
    BOOL = GEOConfigGetBOOL();

    if ((BOOL & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = +[NSDate date];
  v17 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v10 referenceDate:v16 smallestUnit:128];

  [v4 addObject:v17];
LABEL_18:
  if ([v4 count])
  {
    v18 = +[UITraitCollection currentTraitCollection];
    v19 = [v18 layoutDirection];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

    if (v19 == 1)
    {
      v22 = [v4 reverseObjectEnumerator];
      v23 = [v22 allObjects];
      v6 = [v23 componentsJoinedByString:v21];
    }

    else
    {
      v6 = [v4 componentsJoinedByString:v21];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_25:

  return v6;
}

- (id)_attributedTitleForVehicle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableAttributedString);
  if (v4)
  {
    [v4 combinedDisplayName];
  }

  else
  {
    [(RoutePlanningVehicleRefinementModel *)self _titleForDifferentCar];
  }
  v6 = ;
  v7 = [[NSAttributedString alloc] initWithString:v6];
  [v5 appendAttributedString:v7];

  +[UIFont systemFontSize];
  v8 = [UIFont systemFontOfSize:?];
  v9 = +[NSParagraphStyle defaultParagraphStyle];
  v10 = [v9 mutableCopy];

  [v10 setLineSpacing:0.0];
  [v10 setParagraphSpacing:0.0];
  [v10 setParagraphSpacingBefore:0.0];
  v35[0] = NSFontAttributeName;
  v35[1] = NSParagraphStyleAttributeName;
  v36[0] = v8;
  v36[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (v4)
  {
    if ([(RoutePlanningVehicleRefinementModel *)self _shouldDefaultToNoSelection])
    {
      v13 = [[NSAttributedString alloc] initWithString:@"\n"];
      [v5 appendAttributedString:v13];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"[Transport Type Picker] Not Available Offline" value:@"localized string not found" table:0];

      v16 = [[NSAttributedString alloc] initWithString:v15 attributes:v12];
      [v5 appendAttributedString:v16];

      v33 = NSForegroundColorAttributeName;
      v17 = +[UIColor placeholderTextColor];
      v34 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [v5 addAttributes:v18 range:{0, objc_msgSend(v5, "length")}];
    }

    else
    {
      if (![v4 isPureElectricVehicle])
      {
        goto LABEL_13;
      }

      v19 = [[NSAttributedString alloc] initWithString:@"\n"];
      [v5 appendAttributedString:v19];

      v15 = +[BatteryIconView batteryIconWithLevel:](BatteryIconView, "batteryIconWithLevel:", [v4 displayedBatteryPercentage]);
      v17 = objc_alloc_init(NSTextAttachment);
      [v17 setImage:v15];
      [v15 size];
      v21 = v20;
      v23 = v22;
      [v8 capHeight];
      v25 = (v24 - v23) * 0.5;
      v26 = 0.0;
      if (v8)
      {
        v26 = v25;
      }

      [v17 setBounds:{0.0, v26, v21, v23}];
      v27 = [NSAttributedString attributedStringWithAttachment:v17];
      [v5 appendAttributedString:v27];

      v18 = [(RoutePlanningVehicleRefinementModel *)self _subtitleForVehicle:v4];
      if ([v18 length])
      {
        v28 = [[NSAttributedString alloc] initWithString:@" "];
        [v5 appendAttributedString:v28];

        v29 = +[VehicleBatteryView colorForBatteryLevel:](VehicleBatteryView, "colorForBatteryLevel:", [v4 displayedBatteryPercentage]);
        [v12 setObject:v29 forKeyedSubscript:NSForegroundColorAttributeName];

        v30 = [[NSAttributedString alloc] initWithString:v18 attributes:v12];
        [v5 appendAttributedString:v30];
      }
    }
  }

LABEL_13:
  v31 = [v5 copy];

  return v31;
}

- (void)selectVehicleWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] Selected vehicle identifier: %@", buf, 0xCu);
  }

  if ([v4 isEqual:@"DifferentCar"])
  {
    [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:0];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
    v7 = [v6 vehicles];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:v12];
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

- (id)menuOptions
{
  menuOptions = self->super._menuOptions;
  if (!menuOptions)
  {
    v4 = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = v4;
    v6 = [(NSArray *)v4 vehicles];
    v24 = v5;
    v7 = self;
    if ([(RoutePlanningVehicleRefinementModel *)self _shouldDefaultToNoSelection])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
    }

    v9 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [RoutePlanningMenuOptionModel alloc];
          v16 = [v14 identifier];
          v17 = [(RoutePlanningVehicleRefinementModel *)v7 _attributedTitleForVehicle:v14];
          v18 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v15, "initWithIdentifier:title:selected:", v16, v17, [v14 isEqual:v8]);
          [(NSArray *)v9 addObject:v18];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v19 = [RoutePlanningMenuOptionModel alloc];
    v20 = [(RoutePlanningVehicleRefinementModel *)v7 _attributedTitleForVehicle:0];
    v21 = [(RoutePlanningMenuOptionModel *)v19 initWithIdentifier:@"DifferentCar" title:v20 selected:v8 == 0];
    [(NSArray *)v9 addObject:v21];

    v22 = v7->super._menuOptions;
    v7->super._menuOptions = v9;

    menuOptions = v7->super._menuOptions;
  }

  v4 = menuOptions;
LABEL_15:

  return v4;
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

  v6 = v5;
  v7 = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
  v8 = [objc_opt_class() _isGarage:v7 significantlyDifferentFromGarage:v6];
  v9 = sub_100798A3C();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[Options] Using updated garage: %@", &v12, 0xCu);
    }

    objc_storeStrong(&self->super._value, v5);
    menuOptions = self->super._menuOptions;
    self->super._menuOptions = 0;

    v9 = [v6 selectedVehicle];
    [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:v9];
  }

  else if (v10)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[Options] Garage has not changed; will not update menu", &v12, 2u);
  }
}

- (void)setSelectedVehicle:(id)a3
{
  v5 = a3;
  selectedVehicle = self->_selectedVehicle;
  v7 = v5;
  v8 = selectedVehicle;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100798A3C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_selectedVehicle;
        v14 = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Options] updating selected vehicle from: %@ to: %@", &v14, 0x16u);
      }

      objc_storeStrong(&self->_selectedVehicle, a3);
      v13 = [(RoutePlanningRefinementModel *)self delegate];
      [v13 updatedRefinementModel:self];
    }
  }
}

- (id)virtualGarage
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
        v15 = "[RoutePlanningVehicleRefinementModel _assertValidValue]";
        v16 = 2080;
        v17 = "RoutePlanningVehicleRefinementModel.m";
        v18 = 1024;
        v19 = 93;
        v20 = 2080;
        v21 = "!self.value || [self.value isKindOfClass:VGVirtualGarage.class]";
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

- (BOOL)_shouldDefaultToNoSelection
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  v3 = [v2 isUsingOfflineMaps];

  return v3;
}

- (BOOL)shouldShowHighlighted
{
  v3 = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
  if (v3)
  {
    v4 = ![(RoutePlanningVehicleRefinementModel *)self _shouldDefaultToNoSelection];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_titleForDifferentCar
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Transport Type Picker] Different Car" value:@"localized string not found" table:0];

  return v3;
}

- (id)titleText
{
  if ([(RoutePlanningVehicleRefinementModel *)self _shouldDefaultToNoSelection])
  {
    v3 = [(RoutePlanningVehicleRefinementModel *)self _titleForDifferentCar];
  }

  else
  {
    v4 = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
    v5 = [v4 combinedDisplayName];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(RoutePlanningVehicleRefinementModel *)self _titleForDifferentCar];
    }

    v3 = v7;
  }

  return v3;
}

- (RoutePlanningVehicleRefinementModel)initWithDelegate:(id)a3 value:(id)a4
{
  v10.receiver = self;
  v10.super_class = RoutePlanningVehicleRefinementModel;
  v4 = [(RoutePlanningRefinementModel *)&v10 initWithDelegate:a3 value:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RoutePlanningVehicleRefinementModel *)v4 virtualGarage];
    v7 = [v6 selectedVehicle];
    [(RoutePlanningVehicleRefinementModel *)v5 setSelectedVehicle:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"offlineMapsStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v5;
}

+ (BOOL)_isGarage:(id)a3 significantlyDifferentFromGarage:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = [v5 selectedVehicle];
    v8 = [v7 identifier];
    v9 = [v6 selectedVehicle];
    v10 = [v9 identifier];
    v11 = v8;
    v12 = v10;
    if (v11 | v12)
    {
      v14 = v12;
      v15 = [v11 isEqual:v12];

      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v16 = [v5 vehicles];
    v17 = [v16 count];
    v18 = [v6 vehicles];
    v19 = [v18 count];

    if (v17 == v19)
    {
      v20 = [v5 selectedVehicle];
      v21 = [v20 currentVehicleState];
      v22 = [v6 selectedVehicle];
      v23 = [v22 currentVehicleState];
      v13 = [v21 isSignificantlyDifferentFromVehicleState:v23];

      goto LABEL_9;
    }

LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

@end