@interface GEOConfigKeysDebugController
- (GEOConfigKeysDebugController)initWithName:(id)a3 geoConfigDebugClass:(Class)a4;
- (id)addGenericRowFor:(id)a3 withName:(id)a4 keyStr:(id)a5 keyType:(unint64_t)a6 defaultValue:(id)a7 configOptions:(unint64_t)a8 inSection:(id)a9;
- (id)addRowForArray:(id)a3 withName:(id)a4 inSection:(id)a5;
- (id)addRowForDictionary:(id)a3 withName:(id)a4 inSection:(id)a5;
- (id)addRowForSet:(id)a3 withName:(id)a4 inSection:(id)a5;
- (id)addRowNamed:(id)a3 forValue:(id)a4 inSection:(id)a5;
- (id)addSelectionRowFor:(id)a3 withName:(id)a4 keyType:(unint64_t)a5 defaultValue:(id)a6 inSection:(id)a7;
- (id)addSliderRowFor:(id)a3 withName:(id)a4 keyType:(unint64_t)a5 defaultValue:(id)a6 inSection:(id)a7;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)addGEOConfigRowsInSection:(id)a3;
@end

@implementation GEOConfigKeysDebugController

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  configClass = self->_configClass;
  v8 = a4;
  v9 = [(objc_class *)configClass configKeyInfos];
  v10 = [v8 row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1009FCFD0;
  v21 = &unk_101631C00;
  v22 = v11;
  v23 = v6;
  v12 = v6;
  v13 = v11;
  v14 = [UIContextualAction contextualActionWithStyle:1 title:@"Reset" handler:&v18];
  v24 = v14;
  v15 = [NSArray arrayWithObjects:&v24 count:1, v18, v19, v20, v21];
  v16 = [UISwipeActionsConfiguration configurationWithActions:v15];

  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = GEOConfigKeysDebugController;
  v4 = [(GEOConfigKeysDebugController *)&v8 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:2];

  v6 = [v4 textLabel];
  [v6 setLineBreakMode:0];

  return v4;
}

- (id)addRowForDictionary:(id)a3 withName:(id)a4 inSection:(id)a5
{
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD1D8;
  v13[3] = &unk_101631B88;
  v14 = a4;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v14;
  v11 = [a5 addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowForSet:(id)a3 withName:(id)a4 inSection:(id)a5
{
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD430;
  v13[3] = &unk_101631B88;
  v14 = a4;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v14;
  v11 = [a5 addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowForArray:(id)a3 withName:(id)a4 inSection:(id)a5
{
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD6AC;
  v13[3] = &unk_101631B88;
  v14 = a4;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v14;
  v11 = [a5 addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowNamed:(id)a3 forValue:(id)a4 inSection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForArray:v9 withName:v8 inSection:v10];
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForSet:v9 withName:v8 inSection:v10];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForDictionary:v9 withName:v8 inSection:v10];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }
    }

    v14 = [v9 description];
  }

  v15 = v14;
  v12 = [v10 addReadOnlyRowWithTitle:v8 value:v14];

LABEL_8:

  return v12;
}

- (id)addGenericRowFor:(id)a3 withName:(id)a4 keyStr:(id)a5 keyType:(unint64_t)a6 defaultValue:(id)a7 configOptions:(unint64_t)a8 inSection:(id)a9
{
  v13 = a4;
  v14 = a7;
  v15 = a9;
  v16 = [a3 key];
  v18 = v17;
  v19 = [v14 description];
  if (v14)
  {
    v20 = [v14 description];
  }

  else
  {
    v20 = @"(nil)";
  }

  v21 = 0;
  if (a6 > 5)
  {
    if (a6 <= 7)
    {
      if (a6 == 6)
      {
        v22 = [v15 addGEOTextFieldRowWithTitle:v13 placeholderText:v19 inputType:3 geoConfigKeyDouble:{v16, v18}];
        goto LABEL_27;
      }

      v26 = GEOConfigGetArray();
      v27 = [(GEOConfigKeysDebugController *)self addRowForArray:v26 withName:v13 inSection:v15];
    }

    else
    {
      switch(a6)
      {
        case 8uLL:
          v26 = GEOConfigGetSet();
          v27 = [(GEOConfigKeysDebugController *)self addRowForSet:v26 withName:v13 inSection:v15];
          break;
        case 9uLL:
          v26 = GEOConfigGetDictionary();
          v27 = [(GEOConfigKeysDebugController *)self addRowForDictionary:v26 withName:v13 inSection:v15];
          break;
        case 0xAuLL:
          v22 = [v15 addGEODateFieldRowWithTitle:v13 placeholderText:v19 geoConfigKeyDate:{v16, v18}];
          goto LABEL_27;
        default:
          goto LABEL_30;
      }
    }

    v21 = v27;

    goto LABEL_30;
  }

  if (a6 > 2)
  {
    if (a6 == 3)
    {
      v22 = [v15 addGEOTextFieldRowWithTitle:v13 placeholderText:v19 inputType:1 geoConfigKeyInteger:{v16, v18}];
    }

    else
    {
      if (a6 == 4)
      {
        [v15 addGEOTextFieldRowWithTitle:v13 placeholderText:v19 inputType:1 geoConfigKeyUInteger:{v16, v18}];
      }

      else
      {
        [v15 addGEOTextFieldRowWithTitle:v13 placeholderText:v19 inputType:1 geoConfigKeyUint64:{v16, v18}];
      }
      v22 = ;
    }

    goto LABEL_27;
  }

  if (a6 == 1)
  {
    v22 = [v15 addGEOTextFieldRowWithTitle:v13 placeholderText:v19 inputType:4 geoConfigKeyString:{v16, v18}];
LABEL_27:
    v21 = v22;
    goto LABEL_30;
  }

  if (a6 == 2)
  {
    v21 = [v15 addSwitchRowWithTitle:v13 geoConfigKey:{v16, v18}];
    v23 = [v14 BOOLValue];
    v24 = @"NO";
    if (v23)
    {
      v24 = @"YES";
    }

    v25 = v24;

    v20 = v25;
  }

LABEL_30:
  v28 = [NSString stringWithFormat:@"(default: %@)", v20];
  [v21 setSubtitle:v28];

  return v21;
}

- (id)addSliderRowFor:(id)a3 withName:(id)a4 keyType:(unint64_t)a5 defaultValue:(id)a6 inSection:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = a3;
  v15 = [v14 key];
  v17 = v16;
  v18 = [v14 debugControlOptions];
  v19 = [v18 objectForKeyedSubscript:@"subtitle_format"];

  v20 = [v14 debugControlOptions];
  v21 = [v20 objectForKeyedSubscript:@"min"];

  v22 = [v14 debugControlOptions];

  v23 = [v22 objectForKeyedSubscript:@"max"];

  v24 = 0;
  if (a5 > 4)
  {
    if (a5 == 5)
    {
      if (v19)
      {
        v32 = v19;
      }

      else
      {
        v32 = @"%.0f";
      }

      v26 = [v13 addSliderRowWithTitle:v11 subtitleStringFormat:v32 min:objc_msgSend(v21 max:"unsignedLongLongValue") geoConfigKeyUint64:objc_msgSend(v23 changeHandler:"unsignedLongLongValue"), v15, v17, 0];
    }

    else
    {
      if (a5 != 6)
      {
        goto LABEL_23;
      }

      if (v19)
      {
        v27 = v19;
      }

      else
      {
        v27 = @"%.2f";
      }

      [v21 doubleValue];
      v29 = v28;
      [v23 doubleValue];
      v26 = [v13 addSliderRowWithTitle:v11 subtitleStringFormat:v27 min:v15 max:v17 geoConfigKeyDouble:0 changeHandler:v29, v30];
    }
  }

  else if (a5 == 3)
  {
    if (v19)
    {
      v31 = v19;
    }

    else
    {
      v31 = @"%.0f";
    }

    v26 = [v13 addSliderRowWithTitle:v11 subtitleStringFormat:v31 min:objc_msgSend(v21 max:"integerValue") geoConfigKeyInteger:objc_msgSend(v23 changeHandler:"integerValue"), v15, v17, 0];
  }

  else
  {
    if (a5 != 4)
    {
      goto LABEL_23;
    }

    if (v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = @"%.0f";
    }

    v26 = [v13 addSliderRowWithTitle:v11 subtitleStringFormat:v25 min:objc_msgSend(v21 max:"unsignedIntegerValue") geoConfigKeyUInteger:objc_msgSend(v23 changeHandler:"unsignedIntegerValue"), v15, v17, 0];
  }

  v24 = v26;
LABEL_23:
  v33 = [NSString stringWithFormat:@"(default: %@)", v12];
  [v24 setSubtitle:v33];

  return v24;
}

- (id)addSelectionRowFor:(id)a3 withName:(id)a4 keyType:(unint64_t)a5 defaultValue:(id)a6 inSection:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1009FE1EC;
  v27 = &unk_101631B88;
  v14 = v12;
  v28 = v14;
  v15 = v11;
  v29 = v15;
  v16 = v13;
  v30 = v16;
  v17 = [a7 addNavigationRowWithTitle:v14 viewControllerContent:&v24];
  [v15 key];
  v18 = _GEOConfigGetDecodedValueWithSource();
  v19 = v18;
  if (a5 == 2)
  {
    v20 = [v18 BOOLValue];
    v21 = "NO";
    if (v20)
    {
      v21 = "YES";
    }

    [NSString stringWithFormat:@"current: %s", v21, v24, v25, v26, v27];
  }

  else
  {
    [NSString stringWithFormat:@"current: %@", v18, v24, v25, v26, v27];
  }
  v22 = ;
  [v17 setSubtitle:v22];

  return v17;
}

- (void)addGEOConfigRowsInSection:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)self->_configClass configKeyInfos];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009FE5A8;
  v7[3] = &unk_101631B38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (GEOConfigKeysDebugController)initWithName:(id)a3 geoConfigDebugClass:(Class)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = GEOConfigKeysDebugController;
  v7 = [(MapsDebugValuesViewController *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_configClass = a4;
    objc_initWeak(&location, v7);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009FE920;
    v10[3] = &unk_101658DA0;
    v11 = v6;
    objc_copyWeak(&v12, &location);
    [(MapsDebugValuesViewController *)v8 setPrepareContentBlock:v10];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return v8;
}

@end