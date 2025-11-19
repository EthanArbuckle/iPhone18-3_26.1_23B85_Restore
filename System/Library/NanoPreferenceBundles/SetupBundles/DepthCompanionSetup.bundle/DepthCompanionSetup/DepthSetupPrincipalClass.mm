@interface DepthSetupPrincipalClass
+ (BOOL)controllerNeedsToRun;
- (DepthSetupPrincipalClass)init;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation DepthSetupPrincipalClass

- (DepthSetupPrincipalClass)init
{
  v6.receiver = self;
  v6.super_class = DepthSetupPrincipalClass;
  v2 = [(DepthSetupPrincipalClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DepthSetupFirstController);
    firstController = v2->_firstController;
    v2->_firstController = v3;

    [(DepthSetupFirstController *)v2->_firstController setMiniFlowDelegate:v2];
  }

  return v2;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 sf_isInternalInstall];

  if (v3)
  {
    v4 = CFPreferencesGetAppBooleanValue(@"kEnableCharonForTesting", @"com.apple.Bridge", 0) != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v6 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
  v8 = [v7 firstObject];

  v9 = [[NSUUID alloc] initWithUUIDString:@"E553D9C1-2587-4142-B286-C556E89F51F3"];
  LOBYTE(v6) = [v8 supportsCapability:v9] | v4;

  return v6 & 1;
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(DepthSetupPrincipalClass *)self delegate];
  [v4 buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  if (a4)
  {
    v5 = objc_alloc_init(a4);
    [v5 setMiniFlowDelegate:self];
    [(DepthSetupPrincipalClass *)self pushController:v5 animated:1];
  }

  else
  {
    v5 = [(DepthSetupPrincipalClass *)self delegate];
    [v5 buddyControllerDone:self];
  }
}

@end