@interface RoutePlanningDisplayHintsRefinementModel
+ (id)requirementFieldsForDisplayHints:(id)hints;
- (BOOL)shouldShowHighlighted;
- (RoutePlanningDisplayHintsRefinementModel)initWithDelegate:(id)delegate transitPreferences:(id)preferences displayHints:(id)hints refinementField:(unint64_t)field;
- (id)_localizedCashFaresLabel;
- (id)_localizedICFaresLabel;
- (id)_localizedNameForPrioritizationOption:(int)option;
- (id)identifier;
- (id)menuOptions;
- (id)titleText;
- (id)value;
- (int)menuPressUsageAction;
- (void)_assertValidValue;
- (void)setValue:(id)value;
@end

@implementation RoutePlanningDisplayHintsRefinementModel

- (id)_localizedCashFaresLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Transit Filter Picker value:Fares] Cash Fares" table:{@"localized string not found", 0}];

  return v3;
}

- (id)_localizedICFaresLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Transit Filter Picker value:Fares] Transit Card Fares" table:{@"localized string not found", 0}];

  return v3;
}

- (id)_localizedNameForPrioritizationOption:(int)option
{
  if (option > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1016506D8[option];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (int)menuPressUsageAction
{
  refinementField = self->_refinementField;
  if (refinementField < 3)
  {
    return dword_101215AD8[refinementField];
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = RoutePlanningDisplayHintsRefinementModel;
  return [(RoutePlanningRefinementModel *)&v6 menuPressUsageAction];
}

- (id)menuOptions
{
  selfCopy = self;
  menuOptions = self->super._menuOptions;
  if (!menuOptions)
  {
    v4 = objc_opt_new();
    refinementField = selfCopy->_refinementField;
    switch(refinementField)
    {
      case 2uLL:
        surchargeOptions = [(GEORouteDisplayHints *)selfCopy->_displayHints surchargeOptions];
        selectedSurchargeType = [surchargeOptions selectedSurchargeType];
        value = [selectedSurchargeType value];

        preferences = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy preferences];
        surchargeOption = [preferences surchargeOption];

        v60 = selfCopy;
        if (surchargeOption)
        {
          preferences2 = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy preferences];
          surchargeOption2 = [preferences2 surchargeOption];
          value = [surchargeOption2 intValue];
        }

        v61 = v4;
        surchargeTypes = [surchargeOptions surchargeTypes];
        v41 = [surchargeTypes count];

        if (v41)
        {
          v42 = 0;
          obja = surchargeOptions;
          do
          {
            surchargeTypes2 = [surchargeOptions surchargeTypes];
            v44 = [surchargeTypes2 objectAtIndexedSubscript:v42];

            value2 = [v44 value];
            v46 = [NSNumber numberWithInt:value2];
            formattedName = [v44 formattedName];
            v48 = [NSString _navigation_stringForServerFormattedString:formattedName];

            v49 = [[NSAttributedString alloc] initWithString:v48];
            v50 = v41;
            v51 = [RoutePlanningMenuOptionModel alloc];
            stringValue = [v46 stringValue];
            v53 = [(RoutePlanningMenuOptionModel *)v51 initWithIdentifier:stringValue title:v49 selected:value2 == value];
            [(NSArray *)v61 addObject:v53];

            v41 = v50;
            surchargeOptions = obja;

            ++v42;
          }

          while (v41 != v42);
        }

        selfCopy = v60;
        v4 = v61;
        break;
      case 1uLL:
        v21 = [NSAttributedString alloc];
        _localizedICFaresLabel = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy _localizedICFaresLabel];
        v23 = [v21 initWithString:_localizedICFaresLabel];

        v24 = [RoutePlanningMenuOptionModel alloc];
        preferences3 = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy preferences];
        v26 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v24, "initWithIdentifier:title:selected:", @"EnableIC", v23, [preferences3 showICFares]);
        [(NSArray *)v4 addObject:v26];

        v27 = [NSAttributedString alloc];
        _localizedCashFaresLabel = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy _localizedCashFaresLabel];
        v29 = [v27 initWithString:_localizedCashFaresLabel];

        v30 = [RoutePlanningMenuOptionModel alloc];
        preferences4 = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy preferences];
        v32 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v30, "initWithIdentifier:title:selected:", @"DisableIC", v29, [preferences4 showICFares] ^ 1);
        [(NSArray *)v4 addObject:v32];

        break;
      case 0uLL:
        prioritizationOptions = [(GEORouteDisplayHints *)selfCopy->_displayHints prioritizationOptions];
        if (![prioritizationOptions count])
        {
          v56 = sub_10006D178();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = [NSString stringWithFormat:@"Should not be trying to display prioritization options if there are none."];
            *buf = 136316162;
            v70 = "[RoutePlanningDisplayHintsRefinementModel menuOptions]";
            v71 = 2080;
            v72 = "RoutePlanningDisplayHintsRefinementModel.m";
            v73 = 1024;
            v74 = 189;
            v75 = 2080;
            v76 = "prioritizationOptions.count > 0";
            v77 = 2112;
            v78 = v57;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
          }

          if (sub_100E03634())
          {
            v58 = sub_10006D178();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v70 = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = prioritizationOptions;
        v7 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v65;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              v11 = v4;
              if (*v65 != v9)
              {
                objc_enumerationMutation(obj);
              }

              intValue = [*(*(&v64 + 1) + 8 * i) intValue];
              v13 = [NSAttributedString alloc];
              v14 = [(RoutePlanningDisplayHintsRefinementModel *)selfCopy _localizedNameForPrioritizationOption:intValue];
              v15 = [v13 initWithString:v14];

              v16 = [RoutePlanningMenuOptionModel alloc];
              if (intValue >= 4)
              {
                v17 = [NSString stringWithFormat:@"(unknown: %i)", intValue];
              }

              else
              {
                v17 = off_1016506B8[intValue];
              }

              [(RoutePlanningDisplayHintsRefinementModel *)selfCopy preferences];
              v19 = v18 = selfCopy;
              v20 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v16, "initWithIdentifier:title:selected:", v17, v15, [v19 sortOption] == intValue);
              v4 = v11;
              [(NSArray *)v11 addObject:v20];

              selfCopy = v18;
            }

            v8 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
          }

          while (v8);
        }

        break;
    }

    v54 = selfCopy->super._menuOptions;
    selfCopy->super._menuOptions = v4;

    menuOptions = selfCopy->super._menuOptions;
  }

  return menuOptions;
}

- (id)identifier
{
  refinementField = self->_refinementField;
  v3 = @"RoutePlanningDisplayHintsRefinementFieldPrioritization";
  if (refinementField == 1)
  {
    v3 = @"RoutePlanningDisplayHintsRefinementFieldICFares";
  }

  if (refinementField == 2)
  {
    return @"RoutePlanningDisplayHintsRefinementFieldSurchargeOptions";
  }

  else
  {
    return v3;
  }
}

- (BOOL)shouldShowHighlighted
{
  refinementField = self->_refinementField;
  if (refinementField == 2)
  {
    preferences = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    surchargeOption = [preferences surchargeOption];
    LOBYTE(v4) = surchargeOption != 0;
  }

  else if (refinementField == 1)
  {
    preferences = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    v4 = [preferences showICFares] ^ 1;
  }

  else
  {
    if (refinementField)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    preferences = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    LOBYTE(v4) = [preferences sortOption] != 0;
  }

  return v4;
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

  v7 = [v6 mutableCopy];
  v9.receiver = self;
  v9.super_class = RoutePlanningDisplayHintsRefinementModel;
  [(RoutePlanningRefinementModel *)&v9 setValue:v7];
  menuOptions = self->super._menuOptions;
  self->super._menuOptions = 0;
}

- (id)value
{
  v2 = [self->super._value copy];

  return v2;
}

- (void)_assertValidValue
{
  value = [(RoutePlanningDisplayHintsRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      value2 = [(RoutePlanningDisplayHintsRefinementModel *)self value];
      v7 = [NSString stringWithFormat:@"Tried to set bad object for value: %@", objc_opt_class()];
      *buf = 136316162;
      v11 = "[RoutePlanningDisplayHintsRefinementModel _assertValidValue]";
      v12 = 2080;
      v13 = "RoutePlanningDisplayHintsRefinementModel.m";
      v14 = 1024;
      v15 = 131;
      v16 = 2080;
      v17 = "[self.value isKindOfClass:TransitPreferences.class]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (id)titleText
{
  refinementField = self->_refinementField;
  switch(refinementField)
  {
    case 2uLL:
      surchargeOptions = [(GEORouteDisplayHints *)self->_displayHints surchargeOptions];
      selectedSurchargeType = [surchargeOptions selectedSurchargeType];
      value = [selectedSurchargeType value];

      preferences = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      surchargeOption = [preferences surchargeOption];

      if (surchargeOption)
      {
        preferences2 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
        surchargeOption2 = [preferences2 surchargeOption];
        value = [surchargeOption2 intValue];
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      surchargeTypes = [surchargeOptions surchargeTypes];
      v15 = [surchargeTypes countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(surchargeTypes);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            if ([v19 value] == value)
            {
              formattedName = [v19 formattedName];
              v5 = [NSString _navigation_stringForServerFormattedString:formattedName];

              goto LABEL_26;
            }
          }

          v16 = [surchargeTypes countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      surchargeTypes = +[NSBundle mainBundle];
      v5 = [surchargeTypes localizedStringForKey:@"[Transit Filter Picker] Surcharge" value:@"localized string not found" table:0];
LABEL_26:

      goto LABEL_27;
    case 1uLL:
      preferences3 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      showICFares = [preferences3 showICFares];

      if (showICFares)
      {
        [(RoutePlanningDisplayHintsRefinementModel *)self _localizedICFaresLabel];
      }

      else
      {
        [(RoutePlanningDisplayHintsRefinementModel *)self _localizedCashFaresLabel];
      }
      v5 = ;
      goto LABEL_30;
    case 0uLL:
      surchargeOptions = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      v5 = -[RoutePlanningDisplayHintsRefinementModel _localizedNameForPrioritizationOption:](self, "_localizedNameForPrioritizationOption:", [surchargeOptions sortOption]);
LABEL_27:

      goto LABEL_30;
  }

  v20 = sub_10006D178();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v30 = "[RoutePlanningDisplayHintsRefinementModel titleText]";
    v31 = 2080;
    v32 = "RoutePlanningDisplayHintsRefinementModel.m";
    v33 = 1024;
    v34 = 120;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v5 = 0;
LABEL_30:

  return v5;
}

- (RoutePlanningDisplayHintsRefinementModel)initWithDelegate:(id)delegate transitPreferences:(id)preferences displayHints:(id)hints refinementField:(unint64_t)field
{
  delegateCopy = delegate;
  hintsCopy = hints;
  v12 = [preferences mutableCopy];
  v26.receiver = self;
  v26.super_class = RoutePlanningDisplayHintsRefinementModel;
  v13 = [(RoutePlanningRefinementModel *)&v26 initWithDelegate:delegateCopy value:v12];

  if (!v13)
  {
    goto LABEL_17;
  }

  v13->_refinementField = field;
  objc_storeStrong(&v13->_displayHints, hints);
  if (!field)
  {
    prioritizationOptions = [hintsCopy prioritizationOptions];
    preferences = [(RoutePlanningDisplayHintsRefinementModel *)v13 preferences];
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [preferences sortOption]);
    v22 = [prioritizationOptions containsObject:v21];

    if (v22)
    {
      goto LABEL_17;
    }

    prioritizationOptions2 = [hintsCopy prioritizationOptions];
    firstObject = [prioritizationOptions2 firstObject];
    integerValue = [firstObject integerValue];
    preferences2 = [(RoutePlanningDisplayHintsRefinementModel *)v13 preferences];
    [preferences2 setSortOption:integerValue];

    goto LABEL_15;
  }

  if (field != 1)
  {
    goto LABEL_17;
  }

  if (![hintsCopy availablePaymentTypesCount])
  {
LABEL_8:
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [NSString stringWithFormat:@"Trying to display IC Fares refinement but no such option in display hints"];
      *buf = 136316162;
      v28 = "[RoutePlanningDisplayHintsRefinementModel initWithDelegate:transitPreferences:displayHints:refinementField:]";
      v29 = 2080;
      v30 = "RoutePlanningDisplayHintsRefinementModel.m";
      v31 = 1024;
      v32 = 84;
      v33 = 2080;
      v34 = "foundICFareOption";
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (!sub_100E03634())
    {
      goto LABEL_17;
    }

    prioritizationOptions2 = sub_10006D178();
    if (!os_log_type_enabled(prioritizationOptions2, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      goto LABEL_17;
    }

    firstObject = +[NSThread callStackSymbols];
    *buf = 138412290;
    v28 = firstObject;
    _os_log_impl(&_mh_execute_header, prioritizationOptions2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_15:

    goto LABEL_16;
  }

  v14 = 0;
  while ([hintsCopy availablePaymentTypeAtIndex:v14] != 1)
  {
    if (++v14 >= [hintsCopy availablePaymentTypesCount])
    {
      goto LABEL_8;
    }
  }

LABEL_17:

  return v13;
}

+ (id)requirementFieldsForDisplayHints:(id)hints
{
  hintsCopy = hints;
  v4 = objc_alloc_init(NSMutableIndexSet);
  surchargeOptions = [hintsCopy surchargeOptions];
  surchargeTypes = [surchargeOptions surchargeTypes];
  v7 = [surchargeTypes count];

  if (v7)
  {
    [v4 addIndex:2];
  }

  if ([hintsCopy availablePaymentTypesCount] && objc_msgSend(hintsCopy, "availablePaymentTypesCount"))
  {
    v8 = 0;
    while ([hintsCopy availablePaymentTypeAtIndex:v8] != 1)
    {
      if (++v8 >= [hintsCopy availablePaymentTypesCount])
      {
        goto LABEL_10;
      }
    }

    [v4 addIndex:1];
  }

LABEL_10:
  if ([hintsCopy availablePrioritizationsCount])
  {
    [v4 addIndex:0];
  }

  v9 = [v4 copy];

  return v9;
}

@end