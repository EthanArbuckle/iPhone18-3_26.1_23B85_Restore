@interface WFiCloudDriveAccessResource
- (WFiCloudDriveAccessResource)initWithDefinition:(id)definition;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (unint64_t)status;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation WFiCloudDriveAccessResource

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CFC248];
  interfaceCopy = interface;
  sharedContext = [v7 sharedContext];
  v10 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Ubiquity"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__WFiCloudDriveAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
  v12[3] = &unk_278C1CBC0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [sharedContext openURL:v10 withBundleIdentifier:@"com.apple.Preferences" userInterface:interfaceCopy completionHandler:v12];
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedString(@"Open Settings");
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)status
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  ubiquityIdentityToken = [defaultManager ubiquityIdentityToken];

  if (ubiquityIdentityToken)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA7C8] object:0];

  v4.receiver = self;
  v4.super_class = WFiCloudDriveAccessResource;
  [(WFAccessResource *)&v4 dealloc];
}

- (WFiCloudDriveAccessResource)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFiCloudDriveAccessResource;
  v3 = [(WFAccessResource *)&v7 initWithDefinition:definition];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_refreshAvailabilityWithNotification name:*MEMORY[0x277CCA7C8] object:0];

    v5 = v3;
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"iCloud Drive", @"iCloud Drive");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end