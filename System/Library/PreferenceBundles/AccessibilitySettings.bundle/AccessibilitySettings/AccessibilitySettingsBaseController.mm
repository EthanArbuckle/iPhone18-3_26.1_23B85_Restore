@interface AccessibilitySettingsBaseController
- (AccessibilitySettingsBaseController)init;
- (Class)detailClassForFeature:(int64_t)feature;
- (id)imageForKey:(id)key;
- (void)dealloc;
- (void)handleHACorNoiseCancellationToggle;
- (void)reloadSpecifierFromID:(id)d;
- (void)reloadSpecifiersFromNotification;
- (void)setGizmoPref:(id)pref forKey:(id)key domain:(id)domain;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccessibilitySettingsBaseController

- (id)imageForKey:(id)key
{
  keyCopy = key;
  v4 = AXSettingsBundle();
  v5 = [UIImage imageNamed:keyCopy inBundle:v4];

  return v5;
}

- (AccessibilitySettingsBaseController)init
{
  v7.receiver = self;
  v7.super_class = AccessibilitySettingsBaseController;
  v2 = [(AccessibilitySettingsBaseController *)&v7 init];
  if (v2)
  {
    v3 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    coalesceTimer = v2->_coalesceTimer;
    v2->_coalesceTimer = v3;

    [(AXDispatchTimer *)v2->_coalesceTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = AccessibilitySettingsBaseController;
  [(AccessibilitySettingsBaseController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = AccessibilitySettingsBaseController;
  [(AccessibilitySettingsBaseController *)&v9 viewWillAppear:appear];
  if (AXProcessIsSetup())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = getBFFStyleClass_softClass_0;
    v14 = getBFFStyleClass_softClass_0;
    if (!getBFFStyleClass_softClass_0)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __getBFFStyleClass_block_invoke_0;
      v10[3] = &unk_2555F8;
      v10[4] = &v11;
      __getBFFStyleClass_block_invoke_0(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    sharedStyle = [v4 sharedStyle];
    backgroundColor = [sharedStyle backgroundColor];
    table = [(AccessibilitySettingsBaseController *)self table];
    [table setBackgroundColor:backgroundColor];
  }
}

- (void)setGizmoPref:(id)pref forKey:(id)key domain:(id)domain
{
  prefCopy = pref;
  keyCopy = key;
  domainCopy = domain;
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v12 = [[NPSDomainAccessor alloc] initWithDomain:domainCopy];
    v13 = self->_domainAccessor;
    self->_domainAccessor = v12;

    domainAccessor = self->_domainAccessor;
  }

  [(NPSDomainAccessor *)domainAccessor setObject:prefCopy forKey:keyCopy];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v15 = objc_opt_new();
  v18 = keyCopy;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [NSSet setWithArray:v16];
  [v15 synchronizeNanoDomain:domainCopy keys:v17];
}

- (void)handleHACorNoiseCancellationToggle
{
  v6 = objc_alloc_init(PSConfirmationSpecifier);
  v3 = settingsLocString(@"OK", @"Accessibility");
  [v6 setTitle:v3];

  v4 = settingsLocString(@"NOISE_CANCELLATION_HAC_TOGGLE_MESSAGE", @"Accessibility");
  [v6 setPrompt:v4];

  v5 = settingsLocString(@"OK", @"Accessibility");
  [v6 setOkButton:v5];

  [(AccessibilitySettingsBaseController *)self showConfirmationViewForSpecifier:v6];
}

- (Class)detailClassForFeature:(int64_t)feature
{
  v4 = [NSBundle bundleWithPath:@"/System/Library/PreferenceBundles/HearingSettings.bundle"];
  [v4 load];
  if (detailClassForFeature__onceToken != -1)
  {
    [AccessibilitySettingsBaseController detailClassForFeature:];
  }

  if ((feature - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectForInfoDictionaryKey:off_258CF8[feature - 1]];
    v6 = [v4 classNamed:v5];
  }

  v7 = v6;

  return v6;
}

- (void)reloadSpecifiersFromNotification
{
  coalesceTimer = self->_coalesceTimer;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __71__AccessibilitySettingsBaseController_reloadSpecifiersFromNotification__block_invoke;
  v3[3] = &unk_2553B0;
  v3[4] = self;
  [(AXDispatchTimer *)coalesceTimer afterDelay:v3 processBlock:0.5];
}

- (void)reloadSpecifierFromID:(id)d
{
  dCopy = d;
  coalesceTimer = self->_coalesceTimer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __61__AccessibilitySettingsBaseController_reloadSpecifierFromID___block_invoke;
  v7[3] = &unk_255538;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [(AXDispatchTimer *)coalesceTimer afterDelay:v7 processBlock:0.5];
}

@end