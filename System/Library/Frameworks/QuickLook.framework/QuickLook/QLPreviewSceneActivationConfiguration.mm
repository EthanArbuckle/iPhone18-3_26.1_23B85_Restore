@interface QLPreviewSceneActivationConfiguration
- (QLPreviewSceneActivationConfiguration)initWithItemsAtURLs:(NSArray *)urls options:(QLPreviewSceneOptions *)options;
- (void)setOptions:(id)options;
@end

@implementation QLPreviewSceneActivationConfiguration

- (QLPreviewSceneActivationConfiguration)initWithItemsAtURLs:(NSArray *)urls options:(QLPreviewSceneOptions *)options
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = urls;
  v7 = options;
  v8 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.quicklook.private.scene.detachedActivityType"];
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.quicklook.private.activity.URLsKey", @"com.apple.quicklook.private.activity.IndexKey", 0}];
  [v8 setRequiredUserInfoKeys:v9];
  if (v7)
  {
    initialPreviewIndex = [(QLPreviewSceneOptions *)v7 initialPreviewIndex];
  }

  else
  {
    initialPreviewIndex = 0;
  }

  v18[1] = @"com.apple.quicklook.private.activity.IndexKey";
  v19[0] = v6;
  v18[0] = @"com.apple.quicklook.private.activity.URLsKey";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:initialPreviewIndex];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  [v8 addUserInfoEntriesFromDictionary:v12];
  v17.receiver = self;
  v17.super_class = QLPreviewSceneActivationConfiguration;
  v13 = [(UIWindowSceneActivationConfiguration *)&v17 initWithUserActivity:v8];
  v14 = v13;
  if (v13)
  {
    [(QLPreviewSceneActivationConfiguration *)v13 setOptions:0];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy)
  {
    v6 = optionsCopy;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D75DC0]);
  }

  v7 = v6;
  v8 = [MEMORY[0x277D75958] configurationWithName:@"com.apple.quicklook.private.scene.detachedActivityType" sessionRole:*MEMORY[0x277D76E60]];
  [v8 setDelegateClass:objc_opt_class()];
  [v7 _setQuickLookSceneConfiguration:v8];
  v9.receiver = self;
  v9.super_class = QLPreviewSceneActivationConfiguration;
  [(UIWindowSceneActivationConfiguration *)&v9 setOptions:v7];
}

@end