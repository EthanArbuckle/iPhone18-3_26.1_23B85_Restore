@interface AVTCoreDataCloudKitMirroringConfiguration
+ (id)createMirroringHandlerWithEnvironment:(id)environment;
+ (id)currentContainerIdentifier;
+ (id)managedModelAttributesRequiredForMirroring;
+ (void)configureMirroringRequestOptions:(id)options discretionary:(BOOL)discretionary;
+ (void)configureStoreDescriptionForMirroring:(id)mirroring logger:(id)logger;
+ (void)deviceConfigurationSupportsCloudKitMirroringWithLogger:(id)logger completionHandler:(id)handler;
@end

@implementation AVTCoreDataCloudKitMirroringConfiguration

+ (id)currentContainerIdentifier
{
  if (AVTUIUseTestCloudKitContainer())
  {
    return @"iCloud.com.apple.AvatarUI.Staryu";
  }

  else
  {
    return @"com.apple.Avatars";
  }
}

+ (void)deviceConfigurationSupportsCloudKitMirroringWithLogger:(id)logger completionHandler:(id)handler
{
  loggerCopy = logger;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__AVTCoreDataCloudKitMirroringConfiguration_deviceConfigurationSupportsCloudKitMirroringWithLogger_completionHandler___block_invoke;
  v10[3] = &unk_278CFB308;
  v12 = handlerCopy;
  selfCopy = self;
  v11 = loggerCopy;
  v8 = handlerCopy;
  v9 = loggerCopy;
  [v9 checkingAccountInfo:v10];
}

void __118__AVTCoreDataCloudKitMirroringConfiguration_deviceConfigurationSupportsCloudKitMirroringWithLogger_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[6] currentContainerIdentifier];
  v3 = [MEMORY[0x277CBC218] containerWithIdentifier:v2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__AVTCoreDataCloudKitMirroringConfiguration_deviceConfigurationSupportsCloudKitMirroringWithLogger_completionHandler___block_invoke_2;
  v7[3] = &unk_278CFB2E0;
  v8 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v10 = v4;
  v11 = v5;
  v9 = v2;
  v6 = v2;
  [v3 accountInfoWithCompletionHandler:v7];
}

void __118__AVTCoreDataCloudKitMirroringConfiguration_deviceConfigurationSupportsCloudKitMirroringWithLogger_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v12)
  {
    v9 = [v5 description];
    [v6 logErrorGettingAccountInfo:v9];

    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  v7 = [v12 description];
  [v6 logAccountInfo:v7 status:objc_msgSend(v12 deviceToDeviceEncryption:{"accountStatus"), objc_msgSend(v12, "supportsDeviceToDeviceEncryption")}];

  if (![*(a1 + 56) manateeContainer:*(a1 + 40)])
  {
    if ([v12 accountStatus] != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if ([v12 supportsDeviceToDeviceEncryption])
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_8:
  v10 = *(a1 + 48);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  (*(v10 + 16))(v10, v11, 0);

LABEL_9:
}

+ (void)configureStoreDescriptionForMirroring:(id)mirroring logger:(id)logger
{
  mirroringCopy = mirroring;
  currentContainerIdentifier = [self currentContainerIdentifier];
  v6 = [self manateeContainer:currentContainerIdentifier];
  v7 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:currentContainerIdentifier];
  v8 = objc_alloc_init(MEMORY[0x277CBC230]);
  v9 = v8;
  if (v6)
  {
    [v8 setUseZoneWidePCS:1];
    [v7 setUseDeviceToDeviceEncryption:1];
  }

  [v7 setContainerOptions:v9];
  v10 = [objc_alloc(MEMORY[0x277CBE398]) initWithOptions:v7];
  [mirroringCopy setMirroringDelegate:v10];
}

+ (id)createMirroringHandlerWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIIsAvatarSyncEnabled())
  {
    v4 = [AVTCoreDataCloudKitMirroringHandler alloc];
    logger = [environmentCopy logger];
    scheduler = [environmentCopy scheduler];
    v7 = [(AVTCoreDataCloudKitMirroringHandler *)v4 initWithLogger:logger blockScheduler:scheduler];
  }

  else
  {
    v7 = objc_alloc_init(AVTDisabledMirroringHandler);
  }

  return v7;
}

+ (id)managedModelAttributesRequiredForMirroring
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v2 setName:*MEMORY[0x277CBE120]];
  [v2 setAttributeType:700];
  [v2 setPreservesValueInHistoryOnDeletion:1];
  v3 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v3 setName:*MEMORY[0x277CBE128]];
  [v3 setAttributeType:1000];
  [v3 setPreservesValueInHistoryOnDeletion:1];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)configureMirroringRequestOptions:(id)options discretionary:(BOOL)discretionary
{
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setApplicationBundleIdentifierOverrideForNetworkAttribution:@"com.apple.Memoji"];
  if (!discretionary)
  {
    [v5 setDiscretionaryNetworkBehavior:0];
  }

  [optionsCopy setOperationConfiguration:v5];
}

@end