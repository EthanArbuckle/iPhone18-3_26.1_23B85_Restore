@interface COSSOSSettingsFallDataSharingViewController
+ (id)_TCCInfoItems;
+ (id)_displayNameForWatchBundleID:(id)d;
+ (id)fallDetectionAppIDs;
- (COSSOSSettingsFallDataSharingViewController)init;
- (id)_generateTCCItems;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_fetchAppIcons;
- (void)_fetchIconForBundleID:(id)d atIndex:(unint64_t)index;
- (void)_togglePrivacySettingForIndexPath:(id)path;
- (void)dealloc;
- (void)switchCellDidChangeValue:(id)value;
- (void)viewDidLoad;
@end

@implementation COSSOSSettingsFallDataSharingViewController

- (COSSOSSettingsFallDataSharingViewController)init
{
  v28.receiver = self;
  v28.super_class = COSSOSSettingsFallDataSharingViewController;
  v2 = [(COSSOSSettingsFallDataSharingViewController *)&v28 initWithStyle:2];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    companionBundleIDToWatchBundleID = v2->_companionBundleIDToWatchBundleID;
    v2->_companionBundleIDToWatchBundleID = v3;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = +[COSSettingsListController installedWatchkitApps];
    allValues = [v5 allValues];

    v7 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          companionAppBundleID = [v11 companionAppBundleID];
          if (companionAppBundleID)
          {
            v13 = companionAppBundleID;
            bundleIdentifier = [v11 bundleIdentifier];

            if (bundleIdentifier)
            {
              bundleIdentifier2 = [v11 bundleIdentifier];
              v16 = v2->_companionBundleIDToWatchBundleID;
              companionAppBundleID2 = [v11 companionAppBundleID];
              [(NSMutableDictionary *)v16 setObject:bundleIdentifier2 forKeyedSubscript:companionAppBundleID2];
            }
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    _generateTCCItems = [(COSSOSSettingsFallDataSharingViewController *)v2 _generateTCCItems];
    items = v2->_items;
    v2->_items = _generateTCCItems;

    v20 = objc_alloc_init(NSCache);
    imageCache = v2->_imageCache;
    v2->_imageCache = v20;

    [(COSSOSSettingsFallDataSharingViewController *)v2 _fetchAppIcons];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10004650C, @"com.apple.tcc.access.changed", 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.tcc.access.changed", 0);
  v4.receiver = self;
  v4.super_class = COSSOSSettingsFallDataSharingViewController;
  [(COSSOSSettingsFallDataSharingViewController *)&v4 dealloc];
}

+ (id)fallDetectionAppIDs
{
  v2 = TCCAccessCopyBundleIdentifiersForService();
  v3 = TCCAccessCopyBundleIdentifiersDisabledForService();
  v4 = [NSSet setWithArray:v2];
  v5 = [v4 setByAddingObjectsFromArray:v3];

  v6 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = +[COSSettingsListController installedWatchkitApps];
  allValues = [v7 allValues];

  v9 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        bundleIdentifier = [v13 bundleIdentifier];

        if (bundleIdentifier)
        {
          bundleIdentifier2 = [v13 bundleIdentifier];
          [v6 addObject:bundleIdentifier2];
        }

        companionAppBundleID = [v13 companionAppBundleID];

        if (companionAppBundleID)
        {
          companionAppBundleID2 = [v13 companionAppBundleID];
          [v6 addObject:companionAppBundleID2];
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v6 intersectSet:v5];
  v18 = [v6 copy];

  return v18;
}

+ (id)_TCCInfoItems
{
  v2 = TCCAccessCopyInformation();
  if (v2)
  {
    v3 = v2;
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{kTCCInfoBundle, v13}];

          if (v11)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_generateTCCItems
{
  v53 = +[NSMutableArray array];
  v3 = +[NSMutableSet set];
  selfCopy = self;
  [objc_opt_class() _TCCInfoItems];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v4 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v63;
    v49 = _kCFBundleDisplayNameKey;
    v48 = kCFBundleNameKey;
    v7 = &kTCCInfoGranted;
    do
    {
      v8 = 0;
      v50 = v5;
      do
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v62 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:{*v7, v48}];
        v11 = [v9 objectForKeyedSubscript:kTCCInfoBundle];

        if (v11)
        {
          v12 = CFBundleGetInfoDictionary(v11);
          v13 = CFBundleGetIdentifier(v11);
          v14 = [(NSMutableDictionary *)selfCopy->_companionBundleIDToWatchBundleID objectForKeyedSubscript:v13];
          if (v14)
          {
            v15 = v6;
            v16 = v7;
            [v3 addObject:v13];
            [v3 addObject:v14];
            v17 = [COSSOSSettingsFallDataSharingViewController _displayNameForWatchBundleID:v14];
            if (!v17)
            {
              v18 = [v12 objectForKeyedSubscript:v49];
              v19 = v18;
              if (v18)
              {
                v20 = v18;
              }

              else
              {
                v20 = [v12 objectForKeyedSubscript:v48];
              }

              v17 = v20;
            }

            v21 = -[_COSTCCItem initWithBundleID:displayName:enabled:]([_COSTCCItem alloc], "initWithBundleID:displayName:enabled:", v13, v17, [v10 BOOLValue]);
            [v53 addObject:v21];

            v7 = v16;
            v6 = v15;
            v5 = v50;
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v5);
  }

  v22 = TCCAccessCopyBundleIdentifiersForService();
  v23 = [NSSet setWithArray:v22];

  v24 = TCCAccessCopyBundleIdentifiersDisabledForService();
  v25 = [NSSet setWithArray:v24];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v23;
  v27 = [v26 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v58 + 1) + 8 * i);
        if (([v3 containsObject:v31] & 1) == 0)
        {
          v32 = +[COSSettingsListController installedWatchkitApps];
          v33 = [v32 objectForKey:v31];

          if (v33)
          {
            v34 = [COSSOSSettingsFallDataSharingViewController _displayNameForWatchBundleID:v31];
            v35 = [[_COSTCCItem alloc] initWithBundleID:v31 displayName:v34 enabled:1];
            [v53 addObject:v35];
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v28);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v36 = v25;
  v37 = [v36 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v55;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v55 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v54 + 1) + 8 * j);
        if (([v3 containsObject:v41] & 1) == 0)
        {
          v42 = +[COSSettingsListController installedWatchkitApps];
          v43 = [v42 objectForKey:v41];

          if (v43)
          {
            v44 = [COSSOSSettingsFallDataSharingViewController _displayNameForWatchBundleID:v41];
            v45 = [[_COSTCCItem alloc] initWithBundleID:v41 displayName:v44 enabled:0];
            [v53 addObject:v45];
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v38);
  }

  v46 = [v53 sortedArrayUsingComparator:&stru_1002691C0];

  return v46;
}

- (void)_fetchAppIcons
{
  if ([(NSArray *)self->_items count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSArray *)self->_items objectAtIndexedSubscript:v3];
      companionBundleIDToWatchBundleID = self->_companionBundleIDToWatchBundleID;
      bundleID = [v4 bundleID];
      v7 = [(NSMutableDictionary *)companionBundleIDToWatchBundleID objectForKeyedSubscript:bundleID];
      v8 = v7;
      if (v7)
      {
        bundleID2 = v7;
      }

      else
      {
        bundleID2 = [v4 bundleID];
      }

      v10 = bundleID2;

      [(COSSOSSettingsFallDataSharingViewController *)self _fetchIconForBundleID:v10 atIndex:v3];
      ++v3;
    }

    while (v3 < [(NSArray *)self->_items count]);
  }
}

- (void)_fetchIconForBundleID:(id)d atIndex:(unint64_t)index
{
  dCopy = d;
  v7 = +[UIScreen mainScreen];
  traitCollection = [v7 traitCollection];
  [traitCollection displayScale];
  if (v9 <= 2.0)
  {
    v10 = 47;
  }

  else
  {
    v10 = 48;
  }

  v11 = +[NanoResourceGrabber sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100047158;
  v13[3] = &unk_100269210;
  v13[4] = self;
  v14 = dCopy;
  indexCopy = index;
  v12 = dCopy;
  [v11 getIconForBundleID:v12 iconVariant:v10 block:v13 timeout:-1.0];
}

+ (id)_displayNameForWatchBundleID:(id)d
{
  dCopy = d;
  v4 = kCFBundleNameKey;
  v5 = _kCFBundleDisplayNameKey;
  v6 = [NSSet setWithObjects:v4, v5, 0];
  v7 = +[ACXDeviceConnection sharedDeviceConnection];
  v8 = +[NSLocale preferredLanguages];
  v40 = 0;
  v9 = [v7 copyLocalizedValuesFromAllDevicesForInfoPlistKeys:v6 forAppWithBundleID:dCopy fetchingFirstMatchingLocalizationInList:v8 error:&v40];
  v10 = v40;

  if (v10)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = dCopy;
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error fetching app name for %@, error %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v30 = v6;
    v31 = dCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v9;
    v11 = v9;
    v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:v17];
          v19 = [v18 objectForKeyedSubscript:v5];

          if (v19)
          {
            v25 = [v11 objectForKeyedSubscript:v17];
            v26 = v25;
            v27 = v5;
LABEL_25:
            v12 = [v25 objectForKeyedSubscript:v27];

            goto LABEL_26;
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v11;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v12)
    {
      v20 = *v33;
      while (2)
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v11);
          }

          v22 = *(*(&v32 + 1) + 8 * j);
          v23 = [v11 objectForKeyedSubscript:v22];
          v24 = [v23 objectForKeyedSubscript:v4];

          if (v24)
          {
            v25 = [v11 objectForKeyedSubscript:v22];
            v26 = v25;
            v27 = v4;
            goto LABEL_25;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
    v6 = v30;
    dCopy = v31;
    v9 = v29;
  }

  return v12;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = COSSOSSettingsFallDataSharingViewController;
  [(COSSOSSettingsFallDataSharingViewController *)&v6 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOS_FALL_DETECTION_DATA_SHARING" value:&stru_10026E598 table:@"SOSSettings"];
  [(COSSOSSettingsFallDataSharingViewController *)self setTitle:v4];

  tableView = [(COSSOSSettingsFallDataSharingViewController *)self tableView];
  [tableView _setSectionHeaderFooterPadding:12.0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[_COSSOSSwitchTableViewCell reuseID];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v10 = [_COSSOSSwitchTableViewCell alloc];
    v11 = +[_COSSOSSwitchTableViewCell reuseID];
    v9 = [(_COSSOSSwitchTableViewCell *)v10 initWithStyle:0 reuseIdentifier:v11 specifier:0];
  }

  [(_COSSOSSwitchTableViewCell *)v9 setDelegate:self];
  items = self->_items;
  item = [pathCopy item];

  v14 = [(NSArray *)items objectAtIndexedSubscript:item];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 enabled]);
  [(_COSSOSSwitchTableViewCell *)v9 setValue:v15];

  displayName = [v14 displayName];
  titleLabel = [(_COSSOSSwitchTableViewCell *)v9 titleLabel];
  [titleLabel setText:displayName];

  companionBundleIDToWatchBundleID = self->_companionBundleIDToWatchBundleID;
  bundleID = [v14 bundleID];
  v20 = [(NSMutableDictionary *)companionBundleIDToWatchBundleID objectForKeyedSubscript:bundleID];
  v21 = v20;
  if (v20)
  {
    bundleID2 = v20;
  }

  else
  {
    bundleID2 = [v14 bundleID];
  }

  v23 = bundleID2;

  v24 = [(NSCache *)self->_imageCache objectForKey:v23];
  v25 = v24;
  if (v24)
  {
    blankIcon = v24;
  }

  else
  {
    blankIcon = [(_COSSOSSwitchTableViewCell *)v9 blankIcon];
  }

  v27 = blankIcon;

  [(_COSSOSSwitchTableViewCell *)v9 setIcon:v27];

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc_init(UITableViewHeaderFooterView);
  v5 = +[UIListContentConfiguration plainFooterConfiguration];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SOS_FALL_DATA_SHARING_FOOTER" value:&stru_10026E598 table:@"SOSSettings"];
  [v5 setText:v7];

  v8 = PreferencesTableViewFooterFont();
  textProperties = [v5 textProperties];
  [textProperties setFont:v8];

  textProperties2 = [v5 textProperties];
  [textProperties2 setNumberOfLines:0];

  v11 = PreferencesTableViewFooterColor();
  textProperties3 = [v5 textProperties];
  [textProperties3 setColor:v11];

  [v4 setContentConfiguration:v5];
  v13 = +[UIBackgroundConfiguration clearConfiguration];
  [v4 setBackgroundConfiguration:v13];

  return v4;
}

- (void)switchCellDidChangeValue:(id)value
{
  valueCopy = value;
  tableView = [(COSSOSSettingsFallDataSharingViewController *)self tableView];
  v6 = [tableView indexPathForCell:valueCopy];

  [(COSSOSSettingsFallDataSharingViewController *)self _togglePrivacySettingForIndexPath:v6];
}

- (void)_togglePrivacySettingForIndexPath:(id)path
{
  if (path)
  {
    items = self->_items;
    pathCopy = path;
    v12 = -[NSArray objectAtIndexedSubscript:](items, "objectAtIndexedSubscript:", [pathCopy item]);
    enabled = [v12 enabled];
    bundleID = [v12 bundleID];
    v8 = TCCAccessSetForBundleId();

    if (v8)
    {
      [v12 setEnabled:enabled ^ 1];
      enabled = (enabled ^ 1);
    }

    tableView = [(COSSOSSettingsFallDataSharingViewController *)self tableView];
    v10 = [tableView cellForRowAtIndexPath:pathCopy];

    v11 = [NSNumber numberWithUnsignedChar:enabled];
    [v10 setValue:v11];
  }
}

@end