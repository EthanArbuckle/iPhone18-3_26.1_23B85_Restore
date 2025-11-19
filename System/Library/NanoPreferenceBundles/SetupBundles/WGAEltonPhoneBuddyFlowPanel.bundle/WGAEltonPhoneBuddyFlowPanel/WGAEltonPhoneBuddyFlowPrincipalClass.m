@interface WGAEltonPhoneBuddyFlowPrincipalClass
+ (BOOL)controllerNeedsToRun;
- (BOOL)_pairedDeviceSupportsFlick;
- (WGAEltonPhoneBuddyFlowPrincipalClass)init;
- (id)_phoneBuddyFlowPanelLog;
- (id)viewController;
- (void)miniFlowStepComplete:(id)a3;
@end

@implementation WGAEltonPhoneBuddyFlowPrincipalClass

- (WGAEltonPhoneBuddyFlowPrincipalClass)init
{
  v11.receiver = self;
  v11.super_class = WGAEltonPhoneBuddyFlowPrincipalClass;
  v2 = [(WGAEltonPhoneBuddyFlowPrincipalClass *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WGAEltonPhoneBuddyFlowPrincipalClass *)v2 _pairedDeviceSupportsFlick];
    if (v4)
    {
      v5 = &OBJC_IVAR___WGAEltonPhoneBuddyFlowPrincipalClass__gesturesViewController;
    }

    else
    {
      v5 = &OBJC_IVAR___WGAEltonPhoneBuddyFlowPrincipalClass__firstController;
    }

    v6 = &off_C190;
    if (!v4)
    {
      v6 = off_C188;
    }

    v7 = objc_alloc_init(*v6);
    v8 = *v5;
    v9 = *&v3->BPSSetupMiniFlowController_opaque[v8];
    *&v3->BPSSetupMiniFlowController_opaque[v8] = v7;

    [*&v3->BPSSetupMiniFlowController_opaque[v8] setMiniFlowDelegate:v3];
  }

  return v3;
}

- (id)viewController
{
  v3 = [(WGAEltonPhoneBuddyFlowPrincipalClass *)self _pairedDeviceSupportsFlick];
  v4 = &OBJC_IVAR___WGAEltonPhoneBuddyFlowPrincipalClass__firstController;
  if (v3)
  {
    v4 = &OBJC_IVAR___WGAEltonPhoneBuddyFlowPrincipalClass__gesturesViewController;
  }

  v5 = *&self->BPSSetupMiniFlowController_opaque[*v4];

  return v5;
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(WGAEltonPhoneBuddyFlowPrincipalClass *)self delegate];
  [v4 buddyControllerDone:self];
}

- (BOOL)_pairedDeviceSupportsFlick
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v5 = [v3 getDevicesMatching:v4];
  v6 = [v5 firstObject];

  v7 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v8 = [v6 supportsCapability:v7];

  v9 = _os_feature_enabled_impl();
  v10 = [(WGAEltonPhoneBuddyFlowPrincipalClass *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel principal view controller -- deviceIsNapiliAligned:%d, flickFeatureEnabled: %d", v12, 0xEu);
  }

  return v8 & v9;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  LOBYTE(v3) = [v5 supportsCapability:v6];

  LOBYTE(v6) = BPSDeviceHasCapabilityForString() ^ 1;
  return v3 & v6;
}

- (id)_phoneBuddyFlowPanelLog
{
  if (qword_10F78 != -1)
  {
    sub_5F5C();
  }

  v3 = qword_10F70;

  return v3;
}

@end