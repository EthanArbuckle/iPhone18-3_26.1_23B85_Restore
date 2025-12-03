@interface BPSStingSetupModel
+ (id)defaultBundleIDForActionType:(unint64_t)type;
+ (id)fileNameForIdentifier:(id)identifier;
+ (id)subtitleForActionType:(unint64_t)type;
- (BOOL)_shouldShowItem:(id)item isTinker:(BOOL)tinker compassInstalled:(BOOL)installed;
- (BPSStingSetupModel)init;
- (id)_modelItemWithActionType:(unint64_t)type;
- (id)defaultSetupActionItems;
@end

@implementation BPSStingSetupModel

+ (id)defaultBundleIDForActionType:(unint64_t)type
{
  if (type - 1 > 0x27)
  {
    return 0;
  }

  else
  {
    return *(&off_C300 + type - 1);
  }
}

+ (id)fileNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  v5 = @"StartDive";
  if (identifierCopy)
  {
    v5 = identifierCopy;
  }

  v6 = v5;
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  v8 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v9 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:v8];
  firstObject = [v9 firstObject];

  v11 = +[UIApplication sharedApplication];
  if ([v11 userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v12 = [(__CFString *)v4 isEqualToString:@"StartWorkout"];

    if (v12)
    {
      v13 = @"-RTL-N199";
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (-[__CFString isEqualToString:](v4, "isEqualToString:", @"StartBacktrack") && (v14 = [[NSUUID alloc] initWithUUIDString:@"622B6312-95FA-4F09-9148-69E286A9C31F"], v15 = objc_msgSend(firstObject, "supportsCapability:", v14), v14, !v15))
  {
    v13 = @"-PreWorkoutBacktrack-N199";
  }

  else
  {
    v13 = @"-N199";
  }

LABEL_11:
  v16 = [(__CFString *)v6 stringByAppendingString:v13];

  v17 = bps_setup_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Using: %@ for action button animation", &v19, 0xCu);
  }

  return v16;
}

+ (id)subtitleForActionType:(unint64_t)type
{
  if (type - 1 > 0x27)
  {
    v3 = @"STING_SUBTITLE_DEFAULT";
  }

  else
  {
    v3 = *(&off_C440 + type - 1);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_C620 table:@"Localizable-N199"];

  return v5;
}

- (BPSStingSetupModel)init
{
  v7.receiver = self;
  v7.super_class = BPSStingSetupModel;
  v2 = [(BPSStingSetupModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    defaultQuickActionItems = [(BPSStingSetupModel *)v2 defaultQuickActionItems];
    defaultSetupActionItems = v3->_defaultSetupActionItems;
    v3->_defaultSetupActionItems = defaultQuickActionItems;
  }

  return v3;
}

- (BOOL)_shouldShowItem:(id)item isTinker:(BOOL)tinker compassInstalled:(BOOL)installed
{
  itemCopy = item;
  actionType = [itemCopy actionType];
  integerValue = [actionType integerValue];

  if (integerValue == &dword_0 + 2)
  {
    v10 = 0;
  }

  else
  {
    actionType2 = [itemCopy actionType];
    if ([actionType2 integerValue] == &dword_C)
    {
    }

    else
    {
      actionType3 = [itemCopy actionType];
      integerValue2 = [actionType3 integerValue];

      if (integerValue2 != &dword_4 + 1)
      {
        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = installed & ~tinker;
  }

LABEL_8:

  return v10;
}

- (id)_modelItemWithActionType:(unint64_t)type
{
  v4 = [CSLPRFStingSettingsModel actionNameForActionType:?];
  v5 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:type];
  v6 = CSLPRFLinkActionTypeToIdentifier();
  v7 = [CSLPRFStingSettingsItem alloc];
  v8 = [NSNumber numberWithUnsignedInteger:type];
  v9 = [v7 initWithIdentifier:v6 title:v4 actionType:v8 assetName:v5];

  return v9;
}

- (id)defaultSetupActionItems
{
  v24 = objc_opt_new();
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  firstObject = [v5 firstObject];

  v23 = firstObject;
  v7 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v7 BOOLValue];

  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.compass" allowPlaceholder:0 error:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_defaultSetupActionItems;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        actionType = [v15 actionType];
        integerValue = [actionType integerValue];

        if (integerValue == &dword_4 + 2)
        {
          v18 = [NSNumber numberWithInteger:9];
          [v15 setActionType:v18];
        }

        if ([(BPSStingSetupModel *)self _shouldShowItem:v15 isTinker:bOOLValue compassInstalled:v9 != 0])
        {
          [v24 addObject:v15];
        }

        else
        {
          v19 = bps_setup_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            title = [v15 title];
            *buf = 136315394;
            v30 = "[BPSStingSetupModel defaultSetupActionItems]";
            v31 = 2112;
            v32 = title;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%s: Not adding %@ to sting tile list", buf, 0x16u);
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }

  v21 = [v24 copy];

  return v21;
}

@end