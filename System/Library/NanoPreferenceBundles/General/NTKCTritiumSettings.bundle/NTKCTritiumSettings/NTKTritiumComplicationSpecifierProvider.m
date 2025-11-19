@interface NTKTritiumComplicationSpecifierProvider
+ (id)_getIconForBundleID:(id)a3;
- (NTKTritiumComplicationSpecifierProvider)init;
- (NTKTritiumComplicationSpecifierProviderDelegate)delegate;
- (id)_createSpecifierForApp:(id)a3;
- (id)appInfosForAppsWithComplications;
- (id)bundleIDsForLegacyComplications;
- (void)dealloc;
- (void)updateSpecifiers;
@end

@implementation NTKTritiumComplicationSpecifierProvider

- (NTKTritiumComplicationSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = NTKTritiumComplicationSpecifierProvider;
  v2 = [(NTKTritiumComplicationSpecifierProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("TritiumPrivacySpecifierQueue", v3);
    reloadSpecifierQueue = v2->_reloadSpecifierQueue;
    v2->_reloadSpecifierQueue = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_19B0, NTKTritiumSettingsDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = NTKTritiumComplicationSpecifierProvider;
  [(NTKTritiumComplicationSpecifierProvider *)&v4 dealloc];
}

- (void)updateSpecifiers
{
  reloadSpecifierQueue = self->_reloadSpecifierQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1AFC;
  block[3] = &unk_83D8;
  block[4] = self;
  dispatch_async(reloadSpecifierQueue, block);
}

- (id)appInfosForAppsWithComplications
{
  v3 = objc_opt_new();
  v4 = NTKSharedRemoteComplicationProvider();
  v5 = +[NTKWidgetTritiumComplicationProvider shared];
  v6 = +[NTKBundleComplicationManager sharedManager];
  v7 = [(NTKTritiumComplicationSpecifierProvider *)self bundleIDsForLegacyComplications];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1FDC;
  v18[3] = &unk_8400;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v9 = v3;
  v23 = v9;
  v24 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  [NTKTritiumSettingsAppProvider loadAppsWithCompletion:v18];
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v24;
  v16 = v9;

  return v9;
}

- (id)bundleIDsForLegacyComplications
{
  v2 = +[CLKDevice currentDevice];
  v3 = NTKComplicationTypesToBundleIDMappingForDevice();

  v4 = [v3 allValues];
  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)_createSpecifierForApp:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 localizedName];
  v7 = [(NTKTritiumComplicationSpecifierProvider *)self delegate];
  v8 = [(NTKTritiumComplicationSpecifierProvider *)self delegate];
  v9 = [v8 specifierSetter];
  v10 = [(NTKTritiumComplicationSpecifierProvider *)self delegate];
  v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v6, v7, v9, [v10 specifierGetter], 0, 6, 0);

  v12 = [v4 info];
  v13 = [v12 appBundleID];
  [v11 setUserInfo:v13];

  v14 = [v4 info];
  v15 = [v14 appBundleID];
  [v11 setIdentifier:v15];

  v16 = [v4 info];
  v17 = [v16 appBundleID];
  [v11 setProperty:v17 forKey:PSLazyIconAppID];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v18 = qword_C9D0;
  v25 = qword_C9D0;
  if (!qword_C9D0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_261C;
    v21[3] = &unk_8428;
    v21[4] = &v22;
    sub_261C(v21);
    v18 = v23[3];
  }

  v19 = v18;
  _Block_object_dispose(&v22, 8);
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v11;
}

+ (id)_getIconForBundleID:(id)a3
{
  v3 = a3;
  v4 = [[ISIcon alloc] initWithBundleIdentifier:v3];

  v5 = +[UITraitCollection currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
  [v8 setShape:2];
  v9 = [v4 prepareImageForDescriptor:v8];
  if (v9)
  {
    v10 = [[UIImage alloc] initWithCGImage:objc_msgSend(v9 scale:"CGImage") orientation:{0, v7}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NTKTritiumComplicationSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end