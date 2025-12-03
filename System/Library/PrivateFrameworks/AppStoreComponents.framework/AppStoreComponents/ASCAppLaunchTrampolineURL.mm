@interface ASCAppLaunchTrampolineURL
+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)topic;
+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId openInGamesUI:(BOOL)i metrics:(id)metrics deepLinkUrl:(id)url sourceApplication:(id)application topic:(id)topic;
+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId widgetId:(id)widgetId widgetSize:(int64_t)size localizedName:(id)name sourceApplication:(id)application topic:(id)topic;
+ (id)gamesURLWithAdamId:(id)id bundleId:(id)bundleId deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)topic;
+ (id)gamesURLWithAdamId:(id)id bundleId:(id)bundleId widgetId:(id)widgetId widgetSize:(int64_t)size deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)self0;
@end

@implementation ASCAppLaunchTrampolineURL

+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId widgetId:(id)widgetId widgetSize:(int64_t)size localizedName:(id)name sourceApplication:(id)application topic:(id)topic
{
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = widgetId;
  v27[0] = @"widgetId";
  v27[1] = @"size";
  v15 = MEMORY[0x277CCABB0];
  topicCopy = topic;
  applicationCopy = application;
  nameCopy = name;
  widgetIdCopy = widgetId;
  bundleIdCopy = bundleId;
  idCopy = id;
  v22 = [v15 numberWithInteger:size];
  v28[1] = v22;
  v28[2] = idCopy;
  v27[2] = @"targetId";
  v27[3] = @"name";
  v28[3] = nameCopy;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v24 = [self URLWithAdamId:idCopy bundleId:bundleIdCopy openInGamesUI:0 metrics:v23 deepLinkUrl:0 sourceApplication:applicationCopy topic:topicCopy];

  return v24;
}

+ (id)gamesURLWithAdamId:(id)id bundleId:(id)bundleId widgetId:(id)widgetId widgetSize:(int64_t)size deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)self0
{
  v31[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  bundleIdCopy = bundleId;
  urlCopy = url;
  nameCopy = name;
  applicationCopy = application;
  topicCopy = topic;
  v20 = MEMORY[0x277CBEB38];
  v31[0] = widgetId;
  v30[0] = @"widgetId";
  v30[1] = @"size";
  v21 = MEMORY[0x277CCABB0];
  widgetIdCopy = widgetId;
  v23 = [v21 numberWithInteger:size];
  v30[2] = @"targetId";
  v31[1] = v23;
  v31[2] = idCopy;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v25 = [v20 dictionaryWithDictionary:v24];

  if (nameCopy)
  {
    [v25 setObject:nameCopy forKeyedSubscript:@"name"];
  }

  v26 = [self URLWithAdamId:idCopy bundleId:bundleIdCopy openInGamesUI:1 metrics:v25 deepLinkUrl:urlCopy sourceApplication:applicationCopy topic:topicCopy];

  return v26;
}

+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)topic
{
  idCopy = id;
  bundleIdCopy = bundleId;
  urlCopy = url;
  nameCopy = name;
  applicationCopy = application;
  topicCopy = topic;
  v20 = objc_opt_new();
  [v20 setObject:idCopy forKeyedSubscript:@"targetId"];
  if (nameCopy)
  {
    [v20 setObject:nameCopy forKeyedSubscript:@"name"];
  }

  v21 = [self URLWithAdamId:idCopy bundleId:bundleIdCopy openInGamesUI:0 metrics:v20 deepLinkUrl:urlCopy sourceApplication:applicationCopy topic:topicCopy];

  return v21;
}

+ (id)gamesURLWithAdamId:(id)id bundleId:(id)bundleId deepLinkUrl:(id)url localizedName:(id)name sourceApplication:(id)application topic:(id)topic
{
  idCopy = id;
  bundleIdCopy = bundleId;
  urlCopy = url;
  nameCopy = name;
  applicationCopy = application;
  topicCopy = topic;
  v20 = objc_opt_new();
  [v20 setObject:idCopy forKeyedSubscript:@"targetId"];
  if (nameCopy)
  {
    [v20 setObject:nameCopy forKeyedSubscript:@"name"];
  }

  v21 = [self URLWithAdamId:idCopy bundleId:bundleIdCopy openInGamesUI:1 metrics:v20 deepLinkUrl:urlCopy sourceApplication:applicationCopy topic:topicCopy];

  return v21;
}

+ (id)URLWithAdamId:(id)id bundleId:(id)bundleId openInGamesUI:(BOOL)i metrics:(id)metrics deepLinkUrl:(id)url sourceApplication:(id)application topic:(id)topic
{
  iCopy = i;
  urlCopy = url;
  applicationCopy = application;
  topicCopy = topic;
  metricsCopy = metrics;
  bundleIdCopy = bundleId;
  idCopy = id;
  +[ASCEligibility assertCurrentProcessEligibility];
  v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:metricsCopy options:2 error:0];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
  if (applicationCopy)
  {
    bundleIdentifier = applicationCopy;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v22 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v22 setScheme:@"x-as3-internal"];
  [v22 setHost:@"launchapp"];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appId" value:idCopy];

  [v23 addObject:v24];
  v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"bundleId" value:bundleIdCopy];

  [v23 addObject:v25];
  v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"trampolineMetrics" value:v19];
  [v23 addObject:v26];

  if (urlCopy)
  {
    v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"deeplink" value:urlCopy];
    [v23 addObject:v27];
  }

  if (topicCopy)
  {
    v28 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"topic" value:topicCopy];
    [v23 addObject:v28];
  }

  if (bundleIdentifier)
  {
    v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sourceApplication" value:bundleIdentifier];
    [v23 addObject:v29];
  }

  if (iCopy)
  {
    v30 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"openInGamesUI" value:@"true"];
    [v23 addObject:v30];
  }

  [v22 setQueryItems:v23];
  v31 = [v22 URL];

  return v31;
}

@end