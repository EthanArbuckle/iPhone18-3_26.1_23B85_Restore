@interface HKBridgeSharingDisabledController
- (HKBridgeSharingDisabledController)initWithActiveTinkerDevice:(id)device;
- (id)_startSharingTinkerDataGroupSpecifier;
- (id)_startSharingTinkerDataSpecifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_fetchFamilyCircle;
- (void)_fetchFamilyCircleWithCompletion:(id)completion;
- (void)_fetchGuardianMemberWithCompletion:(id)completion;
- (void)_fetchTinkerMemberWithCompletion:(id)completion;
- (void)startSharingTinkerData:(id)data;
@end

@implementation HKBridgeSharingDisabledController

- (HKBridgeSharingDisabledController)initWithActiveTinkerDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = HKBridgeSharingDisabledController;
  v6 = [(HKBridgeSharingDisabledController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeTinkerDevice, device);
    [(HKBridgeSharingDisabledController *)v7 _fetchFamilyCircle];
  }

  return v7;
}

- (void)_fetchFamilyCircle
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_9C0C;
  v2[3] = &unk_18780;
  v2[4] = self;
  [(HKBridgeSharingDisabledController *)self _fetchFamilyCircleWithCompletion:v2];
}

- (id)specifiers
{
  if (self->_tinkerMember && self->_guardianMember)
  {
    _startSharingTinkerDataGroupSpecifier = [(HKBridgeSharingDisabledController *)self _startSharingTinkerDataGroupSpecifier];
    v11[0] = _startSharingTinkerDataGroupSpecifier;
    _startSharingTinkerDataSpecifier = [(HKBridgeSharingDisabledController *)self _startSharingTinkerDataSpecifier];
    v11[1] = _startSharingTinkerDataSpecifier;
    v5 = [NSArray arrayWithObjects:v11 count:2];
    v6 = OBJC_IVAR___PSListController__specifiers;
    v7 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v5;
  }

  else
  {
    v6 = OBJC_IVAR___PSListController__specifiers;
    v8 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = &__NSArray0__struct;
  }

  v9 = *&self->PSListController_opaque[v6];

  return v9;
}

- (id)_startSharingTinkerDataGroupSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithID:@"StartSharingTinkerDataGroupIdentifier"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REQUEST_TINKER_HEALTH_DATA_FOOTNOTE" value:&stru_188B0 table:@"Localizable-tinker"];
  [v2 setObject:v4 forKeyedSubscript:PSFooterTextGroupKey];

  return v2;
}

- (id)_startSharingTinkerDataSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REQUEST_TINKER_USER_%@_HEALTH_DATA" value:&stru_188B0 table:@"Localizable-tinker"];
  firstName = [(FAFamilyMember *)self->_tinkerMember firstName];
  v6 = [NSString stringWithFormat:v4, firstName];

  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v7 setButtonAction:"startSharingTinkerData:"];
  [v7 setIdentifier:@"StartSharingTinkerDataIdentifier"];

  return v7;
}

- (void)startSharingTinkerData:(id)data
{
  v4 = [[HKBridgeTinkerSharingSetupDelegate alloc] initWithPresentingController:self tinkerDevice:self->_activeTinkerDevice tinkerMember:self->_tinkerMember guardianMember:self->_guardianMember];
  setupDelegate = self->_setupDelegate;
  self->_setupDelegate = v4;

  v6 = [[HKTinkerSharingOptInController alloc] initWithStyle:2 delegate:self->_setupDelegate];
  v7 = objc_alloc_init(UINavigationController);
  interactivePopGestureRecognizer = [v7 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:0];

  v15 = v6;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  [v7 setViewControllers:v9];

  _HKInitializeLogging();
  v10 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    LODWORD(v14) = 138543362;
    *(&v14 + 4) = objc_opt_class();
    v12 = *(&v14 + 4);
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Presenting sharing setup flow from BridgeHealthSettings", &v14, 0xCu);
  }

  navigationController = [(HKBridgeSharingDisabledController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HKBridgeSharingDisabledController;
  v4 = [(HKBridgeSharingDisabledController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)_fetchFamilyCircleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_A434;
  v21[4] = sub_A444;
  v22 = 0;
  dispatch_group_enter(v5);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_A44C;
  v18[3] = &unk_187A8;
  v20 = v21;
  v6 = v5;
  v19 = v6;
  [(HKBridgeSharingDisabledController *)self _fetchTinkerMemberWithCompletion:v18];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_A434;
  v16[4] = sub_A444;
  v17 = 0;
  dispatch_group_enter(v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_A4AC;
  v13[3] = &unk_187A8;
  v15 = v16;
  v7 = v6;
  v14 = v7;
  [(HKBridgeSharingDisabledController *)self _fetchGuardianMemberWithCompletion:v13];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A50C;
  block[3] = &unk_187D0;
  v10 = completionCopy;
  v11 = v21;
  v12 = v16;
  v8 = completionCopy;
  dispatch_group_notify(v7, &_dispatch_main_q, block);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v21, 8);
}

- (void)_fetchTinkerMemberWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BPSTinkerSupport sharedInstance];
  cachedTinkerFamilyMemeber = [v5 cachedTinkerFamilyMemeber];
  if (cachedTinkerFamilyMemeber)
  {
    completionCopy[2](completionCopy, cachedTinkerFamilyMemeber);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_A618;
    v7[3] = &unk_187F8;
    v7[4] = self;
    v8 = completionCopy;
    [v5 getActiveTinkerFamilyMemberWithCompletion:v7];
  }
}

- (void)_fetchGuardianMemberWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BPSTinkerSupport sharedInstance];
  cachedPairingParentFamilyMember = [v5 cachedPairingParentFamilyMember];

  if (cachedPairingParentFamilyMember)
  {
    completionCopy[2](completionCopy, cachedPairingParentFamilyMember);
  }

  else
  {
    v7 = +[BPSTinkerSupport sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_A7A8;
    v8[3] = &unk_187F8;
    v8[4] = self;
    v9 = completionCopy;
    [v7 getActiveTinkerFamilyMemberWithCompletion:v8];
  }
}

@end