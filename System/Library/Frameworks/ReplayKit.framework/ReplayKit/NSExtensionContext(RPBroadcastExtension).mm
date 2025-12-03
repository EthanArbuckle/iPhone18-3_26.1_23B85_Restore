@interface NSExtensionContext(RPBroadcastExtension)
- (void)completeRequestWithBroadcastURL:()RPBroadcastExtension broadcastConfiguration:setupInfo:;
- (void)completeRequestWithBroadcastURL:()RPBroadcastExtension setupInfo:;
- (void)loadBroadcastingApplicationInfoWithCompletion:()RPBroadcastExtension;
@end

@implementation NSExtensionContext(RPBroadcastExtension)

- (void)completeRequestWithBroadcastURL:()RPBroadcastExtension setupInfo:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(RPBroadcastConfiguration);
  [self completeRequestWithBroadcastURL:v7 broadcastConfiguration:v8 setupInfo:v6];
}

- (void)completeRequestWithBroadcastURL:()RPBroadcastExtension broadcastConfiguration:setupInfo:
{
  v47[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9D8];
  v8 = a5;
  v41 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v12 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"kRPBroadcastExtensionKeyExtensionServiceURL"];
  v13 = [v11 initWithString:v12];
  [v10 setAttributedTitle:v13];

  v14 = objc_alloc(MEMORY[0x277CCAA88]);
  v15 = *MEMORY[0x277CC2050];
  v16 = [v14 initWithItem:v9 typeIdentifier:*MEMORY[0x277CC2050]];

  v47[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [v10 setAttachments:v17];

  v18 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"RPBroadcastExtensionKeyExtensionUserInfo"];
  v21 = [v19 initWithString:v20];
  [v18 setAttributedTitle:v21];

  v22 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:v8 typeIdentifier:v15];
  v46 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v18 setAttachments:v23];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v26 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  v27 = objc_alloc(MEMORY[0x277CCA898]);
  v28 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"RPBroadcastExtensionKeyExtensionBundleIdentifier"];
  v29 = [v27 initWithString:v28];
  [v26 setAttributedTitle:v29];

  v30 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:bundleIdentifier typeIdentifier:v15];
  v45 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [v26 setAttachments:v31];

  v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v41];

  v33 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  v34 = objc_alloc(MEMORY[0x277CCA898]);
  v35 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"RPBroadcastExtensionKeyBroadcastConfiguration"];
  v36 = [v34 initWithString:v35];
  [v33 setAttributedTitle:v36];

  v37 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:v32 typeIdentifier:v15];
  v44 = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  [v33 setAttachments:v38];

  v43[0] = v18;
  v43[1] = v26;
  v43[2] = v33;
  v43[3] = v10;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [self completeRequestReturningItems:v39 completionHandler:0];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)loadBroadcastingApplicationInfoWithCompletion:()RPBroadcastExtension
{
  v4 = a3;
  v5 = *MEMORY[0x277CC2050];
  inputItems = [self inputItems];
  firstObject = [inputItems firstObject];

  attachments = [firstObject attachments];
  firstObject2 = [attachments firstObject];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__0;
  v13[4] = __Block_byref_object_dispose__0;
  v14 = 0;
  if ([firstObject2 hasItemConformingToTypeIdentifier:v5])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__NSExtensionContext_RPBroadcastExtension__loadBroadcastingApplicationInfoWithCompletion___block_invoke;
    v10[3] = &unk_278B62598;
    v12 = v13;
    v11 = v4;
    [firstObject2 loadItemForTypeIdentifier:v5 options:0 completionHandler:v10];
  }

  _Block_object_dispose(v13, 8);
}

@end