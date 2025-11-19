@interface NSExtensionContext
@end

@implementation NSExtensionContext

void __90__NSExtensionContext_RPBroadcastExtension__loadBroadcastingApplicationInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
    NSLog(&cfstr_Loadbroadcasti.isa, v7);
LABEL_9:

    goto LABEL_10;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = *(*(*(a1 + 40) + 8) + 40);
    v23 = 0;
    v15 = [v10 unarchivedObjectOfClasses:v13 fromData:v14 error:&v23];
    v8 = v23;

    if (v8)
    {
      NSLog(&cfstr_Loadbroadcasti_0.isa, v8);
    }

    v16 = [v15 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];

    if (v16)
    {
      v17 = MEMORY[0x277D755B8];
      v18 = [v15 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
      v16 = [v17 imageWithData:v18];
    }

    v19 = *(a1 + 32);
    v20 = [v15 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBundleID"];
    v21 = [v15 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppName"];
    (*(v19 + 16))(v19, v20, v21, v16);

    goto LABEL_9;
  }

LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
}

@end