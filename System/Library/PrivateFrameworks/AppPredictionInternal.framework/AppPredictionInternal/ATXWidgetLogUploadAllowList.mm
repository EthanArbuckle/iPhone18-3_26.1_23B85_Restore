@interface ATXWidgetLogUploadAllowList
- (ATXWidgetLogUploadAllowList)init;
- (ATXWidgetLogUploadAllowList)initWithAssets:(id)assets;
@end

@implementation ATXWidgetLogUploadAllowList

- (ATXWidgetLogUploadAllowList)init
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v4 = [(ATXWidgetLogUploadAllowList *)self initWithAssets:v3];

  return v4;
}

- (ATXWidgetLogUploadAllowList)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v13.receiver = self;
  v13.super_class = ATXWidgetLogUploadAllowList;
  v5 = [(ATXWidgetLogUploadAllowList *)&v13 init];
  if (v5)
  {
    v6 = [assetsCopy objectForKeyedSubscript:@"allowListEnabled"];
    v5->_allowListEnabled = [v6 BOOLValue];

    v7 = [assetsCopy objectForKeyedSubscript:@"allowedWidgetBundleIds"];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      v9 = [assetsCopy objectForKeyedSubscript:@"allowedWidgetBundleIds"];
      v10 = [v8 initWithArray:v9];
      allowedWidgetBundleIds = v5->_allowedWidgetBundleIds;
      v5->_allowedWidgetBundleIds = v10;
    }
  }

  return v5;
}

@end