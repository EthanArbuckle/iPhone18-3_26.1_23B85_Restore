@interface BatteryUISuggestion
- (BatteryUISuggestion)init;
- (BatteryUISuggestion)initWithSuggestionType:(int)type andData:(id)data;
- (void)enableOptionForTip:(id)tip;
@end

@implementation BatteryUISuggestion

- (BatteryUISuggestion)init
{
  v7.receiver = self;
  v7.super_class = BatteryUISuggestion;
  v2 = [(BatteryUISuggestion *)&v7 init];
  if (v2)
  {
    if (+[PLModelingUtilities isiPhone])
    {
      platformString = v2->_platformString;
      v4 = @"iPhone";
    }

    else if (+[PLModelingUtilities isiPod])
    {
      platformString = v2->_platformString;
      v4 = @"iPod";
    }

    else
    {
      v5 = +[PLModelingUtilities isiPad];
      platformString = v2->_platformString;
      if (v5)
      {
        v4 = @"iPad";
      }

      else
      {
        v4 = @"Device";
      }
    }

    v2->_platformString = &v4->isa;
  }

  return v2;
}

- (BatteryUISuggestion)initWithSuggestionType:(int)type andData:(id)data
{
  dataCopy = data;
  v6 = [(BatteryUISuggestion *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_58;
  }

  v6->_suggestionType = type;
  v6->_isInsight = 0;
  v8 = [dataCopy objectForKeyedSubscript:@"PLBatteryUILocationDictKey"];
  locationDict = v7->_locationDict;
  v7->_locationDict = v8;

  objc_storeStrong(&v7->_dataDict, data);
  if ((type & 0xFFFFFFFE) == 6)
  {
    v7->_isInsight = 1;
    v10 = @"BACKGROUNDLOCATION";
    if (type == 7)
    {
      v10 = @"BACKGROUNDCPU";
    }

    v11 = v10;
    [(BatteryUISuggestion *)v7 setIdentifier:v11];
    buttonName = v7->_buttonName;
    v7->_buttonName = @"DISABLE";

    specifier = [(BatteryUISuggestion *)v7 specifier];
    v14 = +[BatteryUIResourceClass inDemoMode];
    v15 = v7->_buttonName;
    if (v14)
    {
      +[BatteryUIResourceClass containerPath];
      v16 = _CFPreferencesCopyValueWithContainer();
      if (v16)
      {
        goto LABEL_9;
      }

      v15 = v7->_buttonName;
    }

    v16 = BatteryUILocalization(v15);
LABEL_9:
    [specifier setProperty:v16 forKey:STStorageTipEnableButtonTitleKey];

    v17 = [dataCopy objectForKeyedSubscript:@"PLBatteryUIInsightAppNameKey"];
    v18 = [dataCopy objectForKeyedSubscript:@"PLBatteryUISuggestionPercentKey"];
    [v18 doubleValue];
    v19 = [PLBatteryUIUtilities localizedStringWithPercentage:?];
    v20 = [NSString stringWithFormat:@"%@_INFO_TEXT", v11, v19];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v21 = BatteryUILocalization(v20);
    }

    v22 = [NSString stringWithFormat:v21, v17];
    [(BatteryUISuggestion *)v7 setInfoText:v22];

    v23 = 0;
    v53 = 0;
    goto LABEL_47;
  }

  v23 = 0;
  if (type <= 1)
  {
    if (type)
    {
      v24 = 0;
      v11 = 0;
      if (type != 1)
      {
        goto LABEL_43;
      }

      v23 = [dataCopy objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyPercentKey"];
      v28 = v7->_buttonName;
      v7->_buttonName = @"ENABLE";

      v24 = [NSString stringWithFormat:@"%@_INFO_TEXT", @"AUTOLOCK"];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v29 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v29 = BatteryUILocalization(v24);
      }

      v30 = [NSString stringWithFormat:v29, v7->_platformString];
      [(BatteryUISuggestion *)v7 setInfoText:v30];

      v11 = @"AUTOLOCK";
    }

    else
    {
      v23 = [dataCopy objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyPercentKey"];
      v34 = v7->_buttonName;
      v7->_buttonName = @"ENABLE";

      v24 = [NSString stringWithFormat:@"%@_INFO_TEXT", @"AUTOBRIGHTNESS"];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v29 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v29 = BatteryUILocalization(v24);
      }

      v35 = [NSString stringWithFormat:v29, v7->_platformString];
      [(BatteryUISuggestion *)v7 setInfoText:v35];

      v11 = @"AUTOBRIGHTNESS";
    }

LABEL_42:

LABEL_43:
    v53 = v24;
    [(BatteryUISuggestion *)v7 setIdentifier:v11];
    specifier2 = [(BatteryUISuggestion *)v7 specifier];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (v37 = v7->_buttonName, +[BatteryUIResourceClass containerPath], (v38 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v38 = BatteryUILocalization(v7->_buttonName);
    }

    [specifier2 setProperty:v38 forKey:STStorageTipEnableButtonTitleKey];

    goto LABEL_47;
  }

  if (type == 2)
  {
    v23 = [dataCopy objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyPercentKey"];
    v31 = v7->_buttonName;
    v7->_buttonName = @"->";

    v24 = [NSString stringWithFormat:@"%@_INFO_TEXT", @"REDUCEBRIGHTNESS"];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v29 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v29 = BatteryUILocalization(v24);
    }

    [(BatteryUISuggestion *)v7 setInfoText:v29];
    v11 = @"REDUCEBRIGHTNESS";
    goto LABEL_42;
  }

  if (type != 8)
  {
    v24 = 0;
    v11 = 0;
    if (type == 10)
    {
      v7->_isInsight = 1;
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"DEVICE_SETUP_INFO_TEXT"), +[BatteryUIResourceClass containerPath], (v25 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v26 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_SETUP_INFO_TEXT"];
        v25 = BatteryUILocalization(v26);
      }

      [(BatteryUISuggestion *)v7 setInfoText:v25];

      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v27 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v27 = BatteryUILocalization(@"DEVICE_SETUP_TITLE");
      }

      [(BatteryUISuggestion *)v7 setTitle:v27];

      v23 = 0;
      v53 = 0;
      v11 = @"DEVICE_SETUP";
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v7->_isInsight = 1;
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v32 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v32 = BatteryUILocalization(@"UPGRADE_INFO_TEXT");
  }

  v33 = [NSString stringWithFormat:v32, v7->_platformString];
  [(BatteryUISuggestion *)v7 setInfoText:v33];

  v11 = @"UPGRADE";
  [(BatteryUISuggestion *)v7 setIdentifier:@"UPGRADE"];
  v23 = 0;
  v53 = 0;
LABEL_47:
  specifier3 = [(BatteryUISuggestion *)v7 specifier];
  v40 = PSIDKey;
  [specifier3 setProperty:v11 forKey:PSIDKey];

  infoSpecifier = [(BatteryUISuggestion *)v7 infoSpecifier];
  v42 = [(__CFString *)v11 stringByAppendingString:@"_INFO"];
  [infoSpecifier setProperty:v42 forKey:v40];

  v43 = [NSString stringWithFormat:@"%@_TITLE", v11];
  title = [(BatteryUISuggestion *)v7 title];
  if (title)
  {
    title2 = [(BatteryUISuggestion *)v7 title];
  }

  else
  {
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v46 = _CFPreferencesCopyValueWithContainer();
      if (v46)
      {
        goto LABEL_53;
      }
    }

    title2 = BatteryUILocalization(v43);
  }

  v46 = title2;
LABEL_53:
  [(BatteryUISuggestion *)v7 setTitle:v46];

  v47 = objc_opt_new();
  [(BatteryUISuggestion *)v7 setIcon:v47];

  specifier4 = [(BatteryUISuggestion *)v7 specifier];
  [specifier4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];

  v49 = [PLBatteryUIUtilities iconUTTypeIdentifierForSuggestion:type];
  if (v49)
  {
    specifier5 = [(BatteryUISuggestion *)v7 specifier];
    [specifier5 setObject:v49 forKeyedSubscript:PSIconUTTypeIdentifierKey];
  }

  [(BatteryUISuggestion *)v7 setDelegate:v7];
  if (v7->_isInsight)
  {
    specifier6 = [(BatteryUISuggestion *)v7 specifier];
    [specifier6 setProperty:STStorageTipKindActionKey forKey:STStorageTipKindKey];
  }

LABEL_58:
  return v7;
}

- (void)enableOptionForTip:(id)tip
{
  tipCopy = tip;
  if (!qword_187B58)
  {
    v5 = dispatch_queue_create("opQ", 0);
    v6 = qword_187B58;
    qword_187B58 = v5;
  }

  suggestionType = self->_suggestionType;
  v8 = self->_locationDict;
  v9 = qword_187B58;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_976C;
  v12[3] = &unk_163E68;
  v16 = suggestionType;
  v13 = tipCopy;
  selfCopy = self;
  v15 = v8;
  v10 = v8;
  v11 = tipCopy;
  dispatch_async(v9, v12);
}

@end