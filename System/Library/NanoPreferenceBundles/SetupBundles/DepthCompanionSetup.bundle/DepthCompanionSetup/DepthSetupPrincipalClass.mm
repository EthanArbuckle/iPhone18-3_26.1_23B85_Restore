@interface DepthSetupPrincipalClass
+ (BOOL)controllerNeedsToRun;
- (DepthSetupPrincipalClass)init;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
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
  sf_isInternalInstall = [v2 sf_isInternalInstall];

  if (sf_isInternalInstall)
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
  firstObject = [v7 firstObject];

  v9 = [[NSUUID alloc] initWithUUIDString:@"E553D9C1-2587-4142-B286-C556E89F51F3"];
  LOBYTE(v6) = [firstObject supportsCapability:v9] | v4;

  return v6 & 1;
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(DepthSetupPrincipalClass *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  if (class)
  {
    delegate = objc_alloc_init(class);
    [delegate setMiniFlowDelegate:self];
    [(DepthSetupPrincipalClass *)self pushController:delegate animated:1];
  }

  else
  {
    delegate = [(DepthSetupPrincipalClass *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

@end