@interface AccessibilityBridgeBaseController
+ (id)domainAccessorForDomain:(id)domain;
+ (void)setGizmoAccessibilityPref:(id)pref forKey:(id)key;
+ (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor;
- (AccessibilityBridgeBaseController)init;
- (NPSDomainAccessor)accessibilityDomainAccessor;
- (NPSDomainAccessor)touchAccommodationsDomainAccessor;
- (NPSDomainAccessor)wristFlickSpeedDomainAccessor;
- (id)gizmoValueForKey:(id)key domainAccessor:(id)accessor;
- (id)imageForKey:(id)key;
- (id)specifierForIndexPath:(id)path;
- (void)dealloc;
- (void)presentDisableEltonAlert:(id)alert greyOptional:(BOOL)optional confirmBlock:(id)block disableGreyBlock:(id)greyBlock;
- (void)presentQuickActionsDisabledAlertIfNeeded;
- (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor reloadSpecifiers:(BOOL)specifiers;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AccessibilityBridgeBaseController

+ (id)domainAccessorForDomain:(id)domain
{
  if (domain)
  {
    v3 = MEMORY[0x277D2BA58];
    domainCopy = domain;
    v5 = [[v3 alloc] initWithDomain:domainCopy];

    synchronize = [v5 synchronize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AccessibilityBridgeBaseController)init
{
  v13.receiver = self;
  v13.super_class = AccessibilityBridgeBaseController;
  v2 = [(AccessibilityBridgeBaseController *)&v13 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSettings, @"NanoAccessibilityDefaultsChanged", 0, 1028);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, _reloadSettings, @"NanoZoomDefaultsChanged", 0, 1028);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, _reloadSettings, @"NanoTouchAccommodationsDefaultsChanged", 0, 1028);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, _reloadSettings, @"NanoHearingDevicesDefaultsChanged", 0, 1028);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, _reloadSettings, @"NanoRTTDefaultsChanged", 0, 1028);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v2, _reloadSettings, @"NanoPreferredContentSizeChangedNotification", 0, 1028);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v2, _reloadSettings, @"WatchControlSettingsChanged", 0, 1028);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v2, _reloadSettings, @"CLFlickGestureMaxGestureLengthSyncNotification", 0, 1028);
    v11 = v2;
  }

  return v2;
}

- (NPSDomainAccessor)accessibilityDomainAccessor
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D81C18];

  return [v2 domainAccessorForDomain:v3];
}

- (NPSDomainAccessor)touchAccommodationsDomainAccessor
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D81E50];

  return [v2 domainAccessorForDomain:v3];
}

- (NPSDomainAccessor)wristFlickSpeedDomainAccessor
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277CE6A38];

  return [v2 domainAccessorForDomain:v3];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v5.receiver = self;
  v5.super_class = AccessibilityBridgeBaseController;
  [(AccessibilityBridgeBaseController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AccessibilityBridgeBaseController;
  [(AccessibilityBridgeBaseController *)&v3 viewDidLoad];
  [(AccessibilityBridgeBaseController *)self beginUpdates];
  [(AccessibilityBridgeBaseController *)self reload];
  [(AccessibilityBridgeBaseController *)self endUpdates];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4 = [(AccessibilityBridgeBaseController *)self view:coordinator];
  [v4 layoutSubviews];
}

- (id)gizmoValueForKey:(id)key domainAccessor:(id)accessor
{
  accessorCopy = accessor;
  keyCopy = key;
  synchronize = [accessorCopy synchronize];
  v8 = [accessorCopy objectForKey:keyCopy];

  return v8;
}

+ (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor
{
  v16[1] = *MEMORY[0x277D85DE8];
  accessorCopy = accessor;
  keyCopy = key;
  [accessorCopy setObject:pref forKey:keyCopy];
  synchronize = [accessorCopy synchronize];
  v10 = objc_opt_new();
  domain = [accessorCopy domain];

  v12 = MEMORY[0x277CBEB98];
  v16[0] = keyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v12 setWithArray:v13];

  [v10 synchronizeNanoDomain:domain keys:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor reloadSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  accessorCopy = accessor;
  keyCopy = key;
  prefCopy = pref;
  [objc_opt_class() setGizmoPref:prefCopy forKey:keyCopy domainAccessor:accessorCopy];

  if (specifiersCopy)
  {

    [(AccessibilityBridgeBaseController *)self reload];
  }
}

+ (void)setGizmoAccessibilityPref:(id)pref forKey:(id)key
{
  keyCopy = key;
  prefCopy = pref;
  accessibilityDomainAccessor = [self accessibilityDomainAccessor];
  [self setGizmoPref:prefCopy forKey:keyCopy domainAccessor:accessibilityDomainAccessor];
}

- (id)specifierForIndexPath:(id)path
{
  v4 = [(AccessibilityBridgeBaseController *)self indexForIndexPath:path];

  return [(AccessibilityBridgeBaseController *)self specifierAtIndex:v4];
}

- (id)imageForKey:(id)key
{
  v3 = MEMORY[0x277D755B8];
  keyCopy = key;
  v5 = AXSettingsBundle();
  v6 = [v3 imageNamed:keyCopy inBundle:v5];

  return v6;
}

- (void)presentDisableEltonAlert:(id)alert greyOptional:(BOOL)optional confirmBlock:(id)block disableGreyBlock:(id)greyBlock
{
  optionalCopy = optional;
  alertCopy = alert;
  blockCopy = block;
  greyBlockCopy = greyBlock;
  v13 = AXActivePairedDeviceSupportsFlick();
  v14 = eltonLocString(@"DISABLE_ELTON_ALERT_TITLE", v13);
  if (optionalCopy)
  {
    v15 = @"DISABLE_ELTON_ALERT_MESSAGE_HAND_GESTURES";
  }

  else
  {
    v15 = @"DISABLE_ELTON_ALERT_MESSAGE";
  }

  if (v13 && optionalCopy)
  {
    v16 = settingsLocString(@"DISABLE_ELTON_ALERT_TITLE_OTHER", @"AccessibilitySettings-twister");

    v15 = @"DISABLE_ELTON_ALERT_MESSAGE_HAND_GESTURES";
    v14 = v16;
  }

  v17 = eltonLocString(v15, v13);
  v18 = AXCFormattedString();

  v33 = v18;
  v34 = v14;
  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v18 preferredStyle:{1, alertCopy}];
  v20 = MEMORY[0x277D750F8];
  v21 = eltonLocString(@"ACTION_DISABLE_FEATURE", v13);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __122__AccessibilityBridgeBaseController_EltonManagement__presentDisableEltonAlert_greyOptional_confirmBlock_disableGreyBlock___block_invoke;
  v39[3] = &unk_278B90878;
  v22 = blockCopy;
  v39[4] = self;
  v40 = v22;
  v23 = [v20 actionWithTitle:v21 style:0 handler:v39];

  [v19 addAction:v23];
  v24 = alertCopy;
  v25 = greyBlockCopy;
  if (greyBlockCopy)
  {
    v26 = MEMORY[0x277D750F8];
    v27 = eltonLocString(@"ACTION_USE_WIHOUT_GREY", v13);
    v28 = AXCFormattedString();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __122__AccessibilityBridgeBaseController_EltonManagement__presentDisableEltonAlert_greyOptional_confirmBlock_disableGreyBlock___block_invoke_2;
    v36[3] = &unk_278B908A0;
    v37 = v25;
    v38 = v22;
    v36[4] = self;
    v29 = [v26 actionWithTitle:v28 style:0 handler:{v36, v24}];

    [v19 addAction:v29];
  }

  v30 = MEMORY[0x277D750F8];
  v31 = eltonLocString(@"ACTION_CANCEL", v13);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __122__AccessibilityBridgeBaseController_EltonManagement__presentDisableEltonAlert_greyOptional_confirmBlock_disableGreyBlock___block_invoke_3;
  v35[3] = &unk_278B908C8;
  v35[4] = self;
  v32 = [v30 actionWithTitle:v31 style:1 handler:v35];

  [v19 addAction:v32];
  [(AccessibilityBridgeBaseController *)self presentViewController:v19 animated:1 completion:0];
}

uint64_t __122__AccessibilityBridgeBaseController_EltonManagement__presentDisableEltonAlert_greyOptional_confirmBlock_disableGreyBlock___block_invoke(uint64_t a1)
{
  AXActivePairedDeviceDisableElton();
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

uint64_t __122__AccessibilityBridgeBaseController_EltonManagement__presentDisableEltonAlert_greyOptional_confirmBlock_disableGreyBlock___block_invoke_2(void *a1)
{
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  v2 = a1[4];

  return [v2 reloadSpecifiers];
}

- (void)presentQuickActionsDisabledAlertIfNeeded
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277D81EB8]];
  intValue = [v4 intValue];

  if (AXActivePairedDeviceIsNapiliBOrLater() && intValue != 2)
  {
    v6 = MEMORY[0x277D75110];
    v7 = settingsLocString(@"QUICK_ACTIONS_DISABLED_ALERT_MESSAGE", @"AccessibilitySettings-quickactions");
    v11 = [v6 alertControllerWithTitle:0 message:v7 preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    v9 = settingsLocString(@"QUICK_ACTIONS_DISABLED_ALERT_OK_BUTTON", @"AccessibilitySettings-quickactions");
    v10 = [v8 actionWithTitle:v9 style:0 handler:0];

    [v11 addAction:v10];
    [(AccessibilityBridgeBaseController *)self presentViewController:v11 animated:1 completion:0];
  }
}

@end