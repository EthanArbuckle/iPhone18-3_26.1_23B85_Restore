@interface RoutePlanningVehicleRefinementModel
+ (BOOL)_isGarage:(id)garage significantlyDifferentFromGarage:(id)fromGarage;
- (BOOL)_shouldDefaultToNoSelection;
- (BOOL)shouldShowHighlighted;
- (RoutePlanningVehicleRefinementModel)initWithDelegate:(id)delegate value:(id)value;
- (id)_attributedTitleForVehicle:(id)vehicle;
- (id)_subtitleForVehicle:(id)vehicle;
- (id)_titleForDifferentCar;
- (id)menuOptions;
- (id)titleText;
- (id)virtualGarage;
- (void)_assertValidValue;
- (void)offlineMapsStateChanged;
- (void)selectVehicleWithIdentifier:(id)identifier;
- (void)setSelectedVehicle:(id)vehicle;
- (void)setValue:(id)value;
@end

@implementation RoutePlanningVehicleRefinementModel

- (void)offlineMapsStateChanged
{
  menuOptions = self->super._menuOptions;
  self->super._menuOptions = 0;
}

- (id)_subtitleForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if (!vehicleCopy)
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

  if (([vehicleCopy isPureElectricVehicle] & 1) == 0)
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

  if (![vehicleCopy isPureElectricVehicle])
  {
    v6 = 0;
    goto LABEL_25;
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  if (GEOConfigGetBOOL())
  {
    if (vehicleCopy)
    {
      displayedBatteryPercentage = [vehicleCopy displayedBatteryPercentage];
    }

    else
    {
      displayedBatteryPercentage = 65;
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
    v9 = [NSString localizedStringWithFormat:v8, displayedBatteryPercentage];
    [v4 addObject:v9];
  }

  if (vehicleCopy)
  {
    [vehicleCopy lastStateUpdateDate];
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
    layoutDirection = [v18 layoutDirection];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

    if (layoutDirection == 1)
    {
      reverseObjectEnumerator = [v4 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v6 = [allObjects componentsJoinedByString:v21];
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

- (id)_attributedTitleForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = objc_alloc_init(NSMutableAttributedString);
  if (vehicleCopy)
  {
    [vehicleCopy combinedDisplayName];
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

  if (vehicleCopy)
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
      if (![vehicleCopy isPureElectricVehicle])
      {
        goto LABEL_13;
      }

      v19 = [[NSAttributedString alloc] initWithString:@"\n"];
      [v5 appendAttributedString:v19];

      v15 = +[BatteryIconView batteryIconWithLevel:](BatteryIconView, "batteryIconWithLevel:", [vehicleCopy displayedBatteryPercentage]);
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

      v18 = [(RoutePlanningVehicleRefinementModel *)self _subtitleForVehicle:vehicleCopy];
      if ([v18 length])
      {
        v28 = [[NSAttributedString alloc] initWithString:@" "];
        [v5 appendAttributedString:v28];

        v29 = +[VehicleBatteryView colorForBatteryLevel:](VehicleBatteryView, "colorForBatteryLevel:", [vehicleCopy displayedBatteryPercentage]);
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

- (void)selectVehicleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Options] Selected vehicle identifier: %@", buf, 0xCu);
  }

  if ([identifierCopy isEqual:@"DifferentCar"])
  {
    [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:0];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    virtualGarage = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
    vehicles = [virtualGarage vehicles];

    v8 = [vehicles countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(vehicles);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqual:identifierCopy];

          if (v14)
          {
            [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:v12];
            goto LABEL_15;
          }
        }

        v9 = [vehicles countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    virtualGarage = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
    if (!virtualGarage)
    {
      goto LABEL_15;
    }

    v5 = virtualGarage;
    vehicles = [(NSArray *)virtualGarage vehicles];
    v24 = v5;
    selfCopy = self;
    if ([(RoutePlanningVehicleRefinementModel *)self _shouldDefaultToNoSelection])
    {
      selectedVehicle = 0;
    }

    else
    {
      selectedVehicle = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
    }

    v9 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = vehicles;
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
          identifier = [v14 identifier];
          v17 = [(RoutePlanningVehicleRefinementModel *)selfCopy _attributedTitleForVehicle:v14];
          v18 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v15, "initWithIdentifier:title:selected:", identifier, v17, [v14 isEqual:selectedVehicle]);
          [(NSArray *)v9 addObject:v18];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v19 = [RoutePlanningMenuOptionModel alloc];
    v20 = [(RoutePlanningVehicleRefinementModel *)selfCopy _attributedTitleForVehicle:0];
    v21 = [(RoutePlanningMenuOptionModel *)v19 initWithIdentifier:@"DifferentCar" title:v20 selected:selectedVehicle == 0];
    [(NSArray *)v9 addObject:v21];

    v22 = selfCopy->super._menuOptions;
    selfCopy->super._menuOptions = v9;

    menuOptions = selfCopy->super._menuOptions;
  }

  virtualGarage = menuOptions;
LABEL_15:

  return virtualGarage;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  virtualGarage = [(RoutePlanningVehicleRefinementModel *)self virtualGarage];
  v8 = [objc_opt_class() _isGarage:virtualGarage significantlyDifferentFromGarage:v6];
  selectedVehicle = sub_100798A3C();
  v10 = os_log_type_enabled(selectedVehicle, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, selectedVehicle, OS_LOG_TYPE_INFO, "[Options] Using updated garage: %@", &v12, 0xCu);
    }

    objc_storeStrong(&self->super._value, v5);
    menuOptions = self->super._menuOptions;
    self->super._menuOptions = 0;

    selectedVehicle = [v6 selectedVehicle];
    [(RoutePlanningVehicleRefinementModel *)self setSelectedVehicle:selectedVehicle];
  }

  else if (v10)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, selectedVehicle, OS_LOG_TYPE_INFO, "[Options] Garage has not changed; will not update menu", &v12, 2u);
  }
}

- (void)setSelectedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  selectedVehicle = self->_selectedVehicle;
  v7 = vehicleCopy;
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

      objc_storeStrong(&self->_selectedVehicle, vehicle);
      delegate = [(RoutePlanningRefinementModel *)self delegate];
      [delegate updatedRefinementModel:self];
    }
  }
}

- (id)virtualGarage
{
  value = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = value;
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
  value = [(RoutePlanningRefinementModel *)self value];
  if (value)
  {
    v4 = value;
    value2 = [(RoutePlanningRefinementModel *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        value3 = [(RoutePlanningRefinementModel *)self value];
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
  isUsingOfflineMaps = [v2 isUsingOfflineMaps];

  return isUsingOfflineMaps;
}

- (BOOL)shouldShowHighlighted
{
  selectedVehicle = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
  if (selectedVehicle)
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
    _titleForDifferentCar = [(RoutePlanningVehicleRefinementModel *)self _titleForDifferentCar];
  }

  else
  {
    selectedVehicle = [(RoutePlanningVehicleRefinementModel *)self selectedVehicle];
    combinedDisplayName = [selectedVehicle combinedDisplayName];
    v6 = combinedDisplayName;
    if (combinedDisplayName)
    {
      _titleForDifferentCar2 = combinedDisplayName;
    }

    else
    {
      _titleForDifferentCar2 = [(RoutePlanningVehicleRefinementModel *)self _titleForDifferentCar];
    }

    _titleForDifferentCar = _titleForDifferentCar2;
  }

  return _titleForDifferentCar;
}

- (RoutePlanningVehicleRefinementModel)initWithDelegate:(id)delegate value:(id)value
{
  v10.receiver = self;
  v10.super_class = RoutePlanningVehicleRefinementModel;
  v4 = [(RoutePlanningRefinementModel *)&v10 initWithDelegate:delegate value:value];
  v5 = v4;
  if (v4)
  {
    virtualGarage = [(RoutePlanningVehicleRefinementModel *)v4 virtualGarage];
    selectedVehicle = [virtualGarage selectedVehicle];
    [(RoutePlanningVehicleRefinementModel *)v5 setSelectedVehicle:selectedVehicle];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"offlineMapsStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v5;
}

+ (BOOL)_isGarage:(id)garage significantlyDifferentFromGarage:(id)fromGarage
{
  garageCopy = garage;
  fromGarageCopy = fromGarage;
  if (garageCopy | fromGarageCopy)
  {
    selectedVehicle = [garageCopy selectedVehicle];
    identifier = [selectedVehicle identifier];
    selectedVehicle2 = [fromGarageCopy selectedVehicle];
    identifier2 = [selectedVehicle2 identifier];
    v11 = identifier;
    v12 = identifier2;
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

    vehicles = [garageCopy vehicles];
    v17 = [vehicles count];
    vehicles2 = [fromGarageCopy vehicles];
    v19 = [vehicles2 count];

    if (v17 == v19)
    {
      selectedVehicle3 = [garageCopy selectedVehicle];
      currentVehicleState = [selectedVehicle3 currentVehicleState];
      selectedVehicle4 = [fromGarageCopy selectedVehicle];
      currentVehicleState2 = [selectedVehicle4 currentVehicleState];
      v13 = [currentVehicleState isSignificantlyDifferentFromVehicleState:currentVehicleState2];

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