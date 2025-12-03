@interface GEOConfigKeysDebugController
- (GEOConfigKeysDebugController)initWithName:(id)name geoConfigDebugClass:(Class)class;
- (id)addGenericRowFor:(id)for withName:(id)name keyStr:(id)str keyType:(unint64_t)type defaultValue:(id)value configOptions:(unint64_t)options inSection:(id)section;
- (id)addRowForArray:(id)array withName:(id)name inSection:(id)section;
- (id)addRowForDictionary:(id)dictionary withName:(id)name inSection:(id)section;
- (id)addRowForSet:(id)set withName:(id)name inSection:(id)section;
- (id)addRowNamed:(id)named forValue:(id)value inSection:(id)section;
- (id)addSelectionRowFor:(id)for withName:(id)name keyType:(unint64_t)type defaultValue:(id)value inSection:(id)section;
- (id)addSliderRowFor:(id)for withName:(id)name keyType:(unint64_t)type defaultValue:(id)value inSection:(id)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)addGEOConfigRowsInSection:(id)section;
@end

@implementation GEOConfigKeysDebugController

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  configClass = self->_configClass;
  pathCopy = path;
  configKeyInfos = [(objc_class *)configClass configKeyInfos];
  v10 = [pathCopy row];

  v11 = [configKeyInfos objectAtIndexedSubscript:v10];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1009FCFD0;
  v21 = &unk_101631C00;
  v22 = v11;
  v23 = viewCopy;
  v12 = viewCopy;
  v13 = v11;
  v14 = [UIContextualAction contextualActionWithStyle:1 title:@"Reset" handler:&v18];
  v24 = v14;
  v15 = [NSArray arrayWithObjects:&v24 count:1, v18, v19, v20, v21];
  v16 = [UISwipeActionsConfiguration configurationWithActions:v15];

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = GEOConfigKeysDebugController;
  v4 = [(GEOConfigKeysDebugController *)&v8 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:2];

  textLabel2 = [v4 textLabel];
  [textLabel2 setLineBreakMode:0];

  return v4;
}

- (id)addRowForDictionary:(id)dictionary withName:(id)name inSection:(id)section
{
  dictionaryCopy = dictionary;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD1D8;
  v13[3] = &unk_101631B88;
  nameCopy = name;
  v15 = dictionaryCopy;
  selfCopy = self;
  v9 = dictionaryCopy;
  v10 = nameCopy;
  v11 = [section addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowForSet:(id)set withName:(id)name inSection:(id)section
{
  setCopy = set;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD430;
  v13[3] = &unk_101631B88;
  nameCopy = name;
  v15 = setCopy;
  selfCopy = self;
  v9 = setCopy;
  v10 = nameCopy;
  v11 = [section addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowForArray:(id)array withName:(id)name inSection:(id)section
{
  arrayCopy = array;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009FD6AC;
  v13[3] = &unk_101631B88;
  nameCopy = name;
  v15 = arrayCopy;
  selfCopy = self;
  v9 = arrayCopy;
  v10 = nameCopy;
  v11 = [section addNavigationRowWithTitle:v10 viewControllerContent:v13];

  return v11;
}

- (id)addRowNamed:(id)named forValue:(id)value inSection:(id)section
{
  namedCopy = named;
  valueCopy = value;
  sectionCopy = section;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForArray:valueCopy withName:namedCopy inSection:sectionCopy];
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForSet:valueCopy withName:namedCopy inSection:sectionCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(GEOConfigKeysDebugController *)self addRowForDictionary:valueCopy withName:namedCopy inSection:sectionCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = valueCopy;
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

    v14 = [valueCopy description];
  }

  v15 = v14;
  v12 = [sectionCopy addReadOnlyRowWithTitle:namedCopy value:v14];

LABEL_8:

  return v12;
}

- (id)addGenericRowFor:(id)for withName:(id)name keyStr:(id)str keyType:(unint64_t)type defaultValue:(id)value configOptions:(unint64_t)options inSection:(id)section
{
  nameCopy = name;
  valueCopy = value;
  sectionCopy = section;
  v16 = [for key];
  v18 = v17;
  v19 = [valueCopy description];
  if (valueCopy)
  {
    v20 = [valueCopy description];
  }

  else
  {
    v20 = @"(nil)";
  }

  v21 = 0;
  if (type > 5)
  {
    if (type <= 7)
    {
      if (type == 6)
      {
        v22 = [sectionCopy addGEOTextFieldRowWithTitle:nameCopy placeholderText:v19 inputType:3 geoConfigKeyDouble:{v16, v18}];
        goto LABEL_27;
      }

      v26 = GEOConfigGetArray();
      v27 = [(GEOConfigKeysDebugController *)self addRowForArray:v26 withName:nameCopy inSection:sectionCopy];
    }

    else
    {
      switch(type)
      {
        case 8uLL:
          v26 = GEOConfigGetSet();
          v27 = [(GEOConfigKeysDebugController *)self addRowForSet:v26 withName:nameCopy inSection:sectionCopy];
          break;
        case 9uLL:
          v26 = GEOConfigGetDictionary();
          v27 = [(GEOConfigKeysDebugController *)self addRowForDictionary:v26 withName:nameCopy inSection:sectionCopy];
          break;
        case 0xAuLL:
          v22 = [sectionCopy addGEODateFieldRowWithTitle:nameCopy placeholderText:v19 geoConfigKeyDate:{v16, v18}];
          goto LABEL_27;
        default:
          goto LABEL_30;
      }
    }

    v21 = v27;

    goto LABEL_30;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      v22 = [sectionCopy addGEOTextFieldRowWithTitle:nameCopy placeholderText:v19 inputType:1 geoConfigKeyInteger:{v16, v18}];
    }

    else
    {
      if (type == 4)
      {
        [sectionCopy addGEOTextFieldRowWithTitle:nameCopy placeholderText:v19 inputType:1 geoConfigKeyUInteger:{v16, v18}];
      }

      else
      {
        [sectionCopy addGEOTextFieldRowWithTitle:nameCopy placeholderText:v19 inputType:1 geoConfigKeyUint64:{v16, v18}];
      }
      v22 = ;
    }

    goto LABEL_27;
  }

  if (type == 1)
  {
    v22 = [sectionCopy addGEOTextFieldRowWithTitle:nameCopy placeholderText:v19 inputType:4 geoConfigKeyString:{v16, v18}];
LABEL_27:
    v21 = v22;
    goto LABEL_30;
  }

  if (type == 2)
  {
    v21 = [sectionCopy addSwitchRowWithTitle:nameCopy geoConfigKey:{v16, v18}];
    bOOLValue = [valueCopy BOOLValue];
    v24 = @"NO";
    if (bOOLValue)
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

- (id)addSliderRowFor:(id)for withName:(id)name keyType:(unint64_t)type defaultValue:(id)value inSection:(id)section
{
  nameCopy = name;
  valueCopy = value;
  sectionCopy = section;
  forCopy = for;
  v15 = [forCopy key];
  v17 = v16;
  debugControlOptions = [forCopy debugControlOptions];
  v19 = [debugControlOptions objectForKeyedSubscript:@"subtitle_format"];

  debugControlOptions2 = [forCopy debugControlOptions];
  v21 = [debugControlOptions2 objectForKeyedSubscript:@"min"];

  debugControlOptions3 = [forCopy debugControlOptions];

  v23 = [debugControlOptions3 objectForKeyedSubscript:@"max"];

  v24 = 0;
  if (type > 4)
  {
    if (type == 5)
    {
      if (v19)
      {
        v32 = v19;
      }

      else
      {
        v32 = @"%.0f";
      }

      v26 = [sectionCopy addSliderRowWithTitle:nameCopy subtitleStringFormat:v32 min:objc_msgSend(v21 max:"unsignedLongLongValue") geoConfigKeyUint64:objc_msgSend(v23 changeHandler:"unsignedLongLongValue"), v15, v17, 0];
    }

    else
    {
      if (type != 6)
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
      v26 = [sectionCopy addSliderRowWithTitle:nameCopy subtitleStringFormat:v27 min:v15 max:v17 geoConfigKeyDouble:0 changeHandler:v29, v30];
    }
  }

  else if (type == 3)
  {
    if (v19)
    {
      v31 = v19;
    }

    else
    {
      v31 = @"%.0f";
    }

    v26 = [sectionCopy addSliderRowWithTitle:nameCopy subtitleStringFormat:v31 min:objc_msgSend(v21 max:"integerValue") geoConfigKeyInteger:objc_msgSend(v23 changeHandler:"integerValue"), v15, v17, 0];
  }

  else
  {
    if (type != 4)
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

    v26 = [sectionCopy addSliderRowWithTitle:nameCopy subtitleStringFormat:v25 min:objc_msgSend(v21 max:"unsignedIntegerValue") geoConfigKeyUInteger:objc_msgSend(v23 changeHandler:"unsignedIntegerValue"), v15, v17, 0];
  }

  v24 = v26;
LABEL_23:
  valueCopy = [NSString stringWithFormat:@"(default: %@)", valueCopy];
  [v24 setSubtitle:valueCopy];

  return v24;
}

- (id)addSelectionRowFor:(id)for withName:(id)name keyType:(unint64_t)type defaultValue:(id)value inSection:(id)section
{
  forCopy = for;
  nameCopy = name;
  valueCopy = value;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1009FE1EC;
  v27 = &unk_101631B88;
  v14 = nameCopy;
  v28 = v14;
  v15 = forCopy;
  v29 = v15;
  v16 = valueCopy;
  v30 = v16;
  v17 = [section addNavigationRowWithTitle:v14 viewControllerContent:&v24];
  [v15 key];
  v18 = _GEOConfigGetDecodedValueWithSource();
  v19 = v18;
  if (type == 2)
  {
    bOOLValue = [v18 BOOLValue];
    v21 = "NO";
    if (bOOLValue)
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

- (void)addGEOConfigRowsInSection:(id)section
{
  sectionCopy = section;
  configKeyInfos = [(objc_class *)self->_configClass configKeyInfos];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009FE5A8;
  v7[3] = &unk_101631B38;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  [configKeyInfos enumerateObjectsUsingBlock:v7];
}

- (GEOConfigKeysDebugController)initWithName:(id)name geoConfigDebugClass:(Class)class
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = GEOConfigKeysDebugController;
  v7 = [(MapsDebugValuesViewController *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_configClass = class;
    objc_initWeak(&location, v7);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009FE920;
    v10[3] = &unk_101658DA0;
    v11 = nameCopy;
    objc_copyWeak(&v12, &location);
    [(MapsDebugValuesViewController *)v8 setPrepareContentBlock:v10];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return v8;
}

@end