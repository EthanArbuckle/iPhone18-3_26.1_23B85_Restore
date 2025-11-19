@interface ASCAppLaunchTrampolineURL
+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 deepLinkUrl:(id)a5 localizedName:(id)a6 sourceApplication:(id)a7 topic:(id)a8;
+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 openInGamesUI:(BOOL)a5 metrics:(id)a6 deepLinkUrl:(id)a7 sourceApplication:(id)a8 topic:(id)a9;
+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 widgetId:(id)a5 widgetSize:(int64_t)a6 localizedName:(id)a7 sourceApplication:(id)a8 topic:(id)a9;
+ (id)gamesURLWithAdamId:(id)a3 bundleId:(id)a4 deepLinkUrl:(id)a5 localizedName:(id)a6 sourceApplication:(id)a7 topic:(id)a8;
+ (id)gamesURLWithAdamId:(id)a3 bundleId:(id)a4 widgetId:(id)a5 widgetSize:(int64_t)a6 deepLinkUrl:(id)a7 localizedName:(id)a8 sourceApplication:(id)a9 topic:(id)a10;
@end

@implementation ASCAppLaunchTrampolineURL

+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 widgetId:(id)a5 widgetSize:(int64_t)a6 localizedName:(id)a7 sourceApplication:(id)a8 topic:(id)a9
{
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = a5;
  v27[0] = @"widgetId";
  v27[1] = @"size";
  v15 = MEMORY[0x277CCABB0];
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v15 numberWithInteger:a6];
  v28[1] = v22;
  v28[2] = v21;
  v27[2] = @"targetId";
  v27[3] = @"name";
  v28[3] = v18;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v24 = [a1 URLWithAdamId:v21 bundleId:v20 openInGamesUI:0 metrics:v23 deepLinkUrl:0 sourceApplication:v17 topic:v16];

  return v24;
}

+ (id)gamesURLWithAdamId:(id)a3 bundleId:(id)a4 widgetId:(id)a5 widgetSize:(int64_t)a6 deepLinkUrl:(id)a7 localizedName:(id)a8 sourceApplication:(id)a9 topic:(id)a10
{
  v31[3] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v29 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = MEMORY[0x277CBEB38];
  v31[0] = a5;
  v30[0] = @"widgetId";
  v30[1] = @"size";
  v21 = MEMORY[0x277CCABB0];
  v22 = a5;
  v23 = [v21 numberWithInteger:a6];
  v30[2] = @"targetId";
  v31[1] = v23;
  v31[2] = v15;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v25 = [v20 dictionaryWithDictionary:v24];

  if (v17)
  {
    [v25 setObject:v17 forKeyedSubscript:@"name"];
  }

  v26 = [a1 URLWithAdamId:v15 bundleId:v29 openInGamesUI:1 metrics:v25 deepLinkUrl:v16 sourceApplication:v18 topic:v19];

  return v26;
}

+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 deepLinkUrl:(id)a5 localizedName:(id)a6 sourceApplication:(id)a7 topic:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_opt_new();
  [v20 setObject:v14 forKeyedSubscript:@"targetId"];
  if (v17)
  {
    [v20 setObject:v17 forKeyedSubscript:@"name"];
  }

  v21 = [a1 URLWithAdamId:v14 bundleId:v15 openInGamesUI:0 metrics:v20 deepLinkUrl:v16 sourceApplication:v18 topic:v19];

  return v21;
}

+ (id)gamesURLWithAdamId:(id)a3 bundleId:(id)a4 deepLinkUrl:(id)a5 localizedName:(id)a6 sourceApplication:(id)a7 topic:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_opt_new();
  [v20 setObject:v14 forKeyedSubscript:@"targetId"];
  if (v17)
  {
    [v20 setObject:v17 forKeyedSubscript:@"name"];
  }

  v21 = [a1 URLWithAdamId:v14 bundleId:v15 openInGamesUI:1 metrics:v20 deepLinkUrl:v16 sourceApplication:v18 topic:v19];

  return v21;
}

+ (id)URLWithAdamId:(id)a3 bundleId:(id)a4 openInGamesUI:(BOOL)a5 metrics:(id)a6 deepLinkUrl:(id)a7 sourceApplication:(id)a8 topic:(id)a9
{
  v33 = a5;
  v34 = a7;
  v13 = a8;
  v14 = a9;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:2 error:0];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v21 bundleIdentifier];
  }

  v22 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v22 setScheme:@"x-as3-internal"];
  [v22 setHost:@"launchapp"];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appId" value:v17];

  [v23 addObject:v24];
  v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"bundleId" value:v16];

  [v23 addObject:v25];
  v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"trampolineMetrics" value:v19];
  [v23 addObject:v26];

  if (v34)
  {
    v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"deeplink" value:v34];
    [v23 addObject:v27];
  }

  if (v14)
  {
    v28 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"topic" value:v14];
    [v23 addObject:v28];
  }

  if (v20)
  {
    v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sourceApplication" value:v20];
    [v23 addObject:v29];
  }

  if (v33)
  {
    v30 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"openInGamesUI" value:@"true"];
    [v23 addObject:v30];
  }

  [v22 setQueryItems:v23];
  v31 = [v22 URL];

  return v31;
}

@end