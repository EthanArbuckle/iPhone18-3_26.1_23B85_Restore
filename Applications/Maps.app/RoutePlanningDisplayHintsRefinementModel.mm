@interface RoutePlanningDisplayHintsRefinementModel
+ (id)requirementFieldsForDisplayHints:(id)a3;
- (BOOL)shouldShowHighlighted;
- (RoutePlanningDisplayHintsRefinementModel)initWithDelegate:(id)a3 transitPreferences:(id)a4 displayHints:(id)a5 refinementField:(unint64_t)a6;
- (id)_localizedCashFaresLabel;
- (id)_localizedICFaresLabel;
- (id)_localizedNameForPrioritizationOption:(int)a3;
- (id)identifier;
- (id)menuOptions;
- (id)titleText;
- (id)value;
- (int)menuPressUsageAction;
- (void)_assertValidValue;
- (void)setValue:(id)a3;
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

- (id)_localizedNameForPrioritizationOption:(int)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1016506D8[a3];
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
  v2 = self;
  menuOptions = self->super._menuOptions;
  if (!menuOptions)
  {
    v4 = objc_opt_new();
    refinementField = v2->_refinementField;
    switch(refinementField)
    {
      case 2uLL:
        v33 = [(GEORouteDisplayHints *)v2->_displayHints surchargeOptions];
        v34 = [v33 selectedSurchargeType];
        v35 = [v34 value];

        v36 = [(RoutePlanningDisplayHintsRefinementModel *)v2 preferences];
        v37 = [v36 surchargeOption];

        v60 = v2;
        if (v37)
        {
          v38 = [(RoutePlanningDisplayHintsRefinementModel *)v2 preferences];
          v39 = [v38 surchargeOption];
          v35 = [v39 intValue];
        }

        v61 = v4;
        v40 = [v33 surchargeTypes];
        v41 = [v40 count];

        if (v41)
        {
          v42 = 0;
          obja = v33;
          do
          {
            v43 = [v33 surchargeTypes];
            v44 = [v43 objectAtIndexedSubscript:v42];

            v45 = [v44 value];
            v46 = [NSNumber numberWithInt:v45];
            v47 = [v44 formattedName];
            v48 = [NSString _navigation_stringForServerFormattedString:v47];

            v49 = [[NSAttributedString alloc] initWithString:v48];
            v50 = v41;
            v51 = [RoutePlanningMenuOptionModel alloc];
            v52 = [v46 stringValue];
            v53 = [(RoutePlanningMenuOptionModel *)v51 initWithIdentifier:v52 title:v49 selected:v45 == v35];
            [(NSArray *)v61 addObject:v53];

            v41 = v50;
            v33 = obja;

            ++v42;
          }

          while (v41 != v42);
        }

        v2 = v60;
        v4 = v61;
        break;
      case 1uLL:
        v21 = [NSAttributedString alloc];
        v22 = [(RoutePlanningDisplayHintsRefinementModel *)v2 _localizedICFaresLabel];
        v23 = [v21 initWithString:v22];

        v24 = [RoutePlanningMenuOptionModel alloc];
        v25 = [(RoutePlanningDisplayHintsRefinementModel *)v2 preferences];
        v26 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v24, "initWithIdentifier:title:selected:", @"EnableIC", v23, [v25 showICFares]);
        [(NSArray *)v4 addObject:v26];

        v27 = [NSAttributedString alloc];
        v28 = [(RoutePlanningDisplayHintsRefinementModel *)v2 _localizedCashFaresLabel];
        v29 = [v27 initWithString:v28];

        v30 = [RoutePlanningMenuOptionModel alloc];
        v31 = [(RoutePlanningDisplayHintsRefinementModel *)v2 preferences];
        v32 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v30, "initWithIdentifier:title:selected:", @"DisableIC", v29, [v31 showICFares] ^ 1);
        [(NSArray *)v4 addObject:v32];

        break;
      case 0uLL:
        v6 = [(GEORouteDisplayHints *)v2->_displayHints prioritizationOptions];
        if (![v6 count])
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
        obj = v6;
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

              v12 = [*(*(&v64 + 1) + 8 * i) intValue];
              v13 = [NSAttributedString alloc];
              v14 = [(RoutePlanningDisplayHintsRefinementModel *)v2 _localizedNameForPrioritizationOption:v12];
              v15 = [v13 initWithString:v14];

              v16 = [RoutePlanningMenuOptionModel alloc];
              if (v12 >= 4)
              {
                v17 = [NSString stringWithFormat:@"(unknown: %i)", v12];
              }

              else
              {
                v17 = off_1016506B8[v12];
              }

              [(RoutePlanningDisplayHintsRefinementModel *)v2 preferences];
              v19 = v18 = v2;
              v20 = -[RoutePlanningMenuOptionModel initWithIdentifier:title:selected:](v16, "initWithIdentifier:title:selected:", v17, v15, [v19 sortOption] == v12);
              v4 = v11;
              [(NSArray *)v11 addObject:v20];

              v2 = v18;
            }

            v8 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
          }

          while (v8);
        }

        break;
    }

    v54 = v2->super._menuOptions;
    v2->super._menuOptions = v4;

    menuOptions = v2->super._menuOptions;
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
    v3 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    v5 = [v3 surchargeOption];
    LOBYTE(v4) = v5 != 0;
  }

  else if (refinementField == 1)
  {
    v3 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    v4 = [v3 showICFares] ^ 1;
  }

  else
  {
    if (refinementField)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    v3 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
    LOBYTE(v4) = [v3 sortOption] != 0;
  }

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
  v3 = [(RoutePlanningDisplayHintsRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(RoutePlanningDisplayHintsRefinementModel *)self value];
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
      v4 = [(GEORouteDisplayHints *)self->_displayHints surchargeOptions];
      v8 = [v4 selectedSurchargeType];
      v9 = [v8 value];

      v10 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      v11 = [v10 surchargeOption];

      if (v11)
      {
        v12 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
        v13 = [v12 surchargeOption];
        v9 = [v13 intValue];
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [v4 surchargeTypes];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            if ([v19 value] == v9)
            {
              v23 = [v19 formattedName];
              v5 = [NSString _navigation_stringForServerFormattedString:v23];

              goto LABEL_26;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v14 = +[NSBundle mainBundle];
      v5 = [v14 localizedStringForKey:@"[Transit Filter Picker] Surcharge" value:@"localized string not found" table:0];
LABEL_26:

      goto LABEL_27;
    case 1uLL:
      v6 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      v7 = [v6 showICFares];

      if (v7)
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
      v4 = [(RoutePlanningDisplayHintsRefinementModel *)self preferences];
      v5 = -[RoutePlanningDisplayHintsRefinementModel _localizedNameForPrioritizationOption:](self, "_localizedNameForPrioritizationOption:", [v4 sortOption]);
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

- (RoutePlanningDisplayHintsRefinementModel)initWithDelegate:(id)a3 transitPreferences:(id)a4 displayHints:(id)a5 refinementField:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 mutableCopy];
  v26.receiver = self;
  v26.super_class = RoutePlanningDisplayHintsRefinementModel;
  v13 = [(RoutePlanningRefinementModel *)&v26 initWithDelegate:v10 value:v12];

  if (!v13)
  {
    goto LABEL_17;
  }

  v13->_refinementField = a6;
  objc_storeStrong(&v13->_displayHints, a5);
  if (!a6)
  {
    v19 = [v11 prioritizationOptions];
    v20 = [(RoutePlanningDisplayHintsRefinementModel *)v13 preferences];
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v20 sortOption]);
    v22 = [v19 containsObject:v21];

    if (v22)
    {
      goto LABEL_17;
    }

    v17 = [v11 prioritizationOptions];
    v18 = [v17 firstObject];
    v23 = [v18 integerValue];
    v24 = [(RoutePlanningDisplayHintsRefinementModel *)v13 preferences];
    [v24 setSortOption:v23];

    goto LABEL_15;
  }

  if (a6 != 1)
  {
    goto LABEL_17;
  }

  if (![v11 availablePaymentTypesCount])
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

    v17 = sub_10006D178();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      goto LABEL_17;
    }

    v18 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_15:

    goto LABEL_16;
  }

  v14 = 0;
  while ([v11 availablePaymentTypeAtIndex:v14] != 1)
  {
    if (++v14 >= [v11 availablePaymentTypesCount])
    {
      goto LABEL_8;
    }
  }

LABEL_17:

  return v13;
}

+ (id)requirementFieldsForDisplayHints:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableIndexSet);
  v5 = [v3 surchargeOptions];
  v6 = [v5 surchargeTypes];
  v7 = [v6 count];

  if (v7)
  {
    [v4 addIndex:2];
  }

  if ([v3 availablePaymentTypesCount] && objc_msgSend(v3, "availablePaymentTypesCount"))
  {
    v8 = 0;
    while ([v3 availablePaymentTypeAtIndex:v8] != 1)
    {
      if (++v8 >= [v3 availablePaymentTypesCount])
      {
        goto LABEL_10;
      }
    }

    [v4 addIndex:1];
  }

LABEL_10:
  if ([v3 availablePrioritizationsCount])
  {
    [v4 addIndex:0];
  }

  v9 = [v4 copy];

  return v9;
}

@end