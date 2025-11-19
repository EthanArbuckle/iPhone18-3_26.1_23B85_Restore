@interface WFiCloudDriveAccessResource
- (WFiCloudDriveAccessResource)initWithDefinition:(id)a3;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (unint64_t)status;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
@end

@implementation WFiCloudDriveAccessResource

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277CFC248];
  v8 = a4;
  v9 = [v7 sharedContext];
  v10 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Ubiquity"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__WFiCloudDriveAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
  v12[3] = &unk_278C1CBC0;
  v13 = v6;
  v11 = v6;
  [v9 openURL:v10 withBundleIdentifier:@"com.apple.Preferences" userInterface:v8 completionHandler:v12];
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3
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
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 ubiquityIdentityToken];

  if (v3)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CCA7C8] object:0];

  v4.receiver = self;
  v4.super_class = WFiCloudDriveAccessResource;
  [(WFAccessResource *)&v4 dealloc];
}

- (WFiCloudDriveAccessResource)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFiCloudDriveAccessResource;
  v3 = [(WFAccessResource *)&v7 initWithDefinition:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_refreshAvailabilityWithNotification name:*MEMORY[0x277CCA7C8] object:0];

    v5 = v3;
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iCloud Drive", @"iCloud Drive");
  v5 = [v3 localize:v4];

  return v5;
}

@end