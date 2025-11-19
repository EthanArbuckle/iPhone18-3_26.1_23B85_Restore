@interface ATXWidgetLogUploadAllowList
- (ATXWidgetLogUploadAllowList)init;
- (ATXWidgetLogUploadAllowList)initWithAssets:(id)a3;
@end

@implementation ATXWidgetLogUploadAllowList

- (ATXWidgetLogUploadAllowList)init
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v4 = [(ATXWidgetLogUploadAllowList *)self initWithAssets:v3];

  return v4;
}

- (ATXWidgetLogUploadAllowList)initWithAssets:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXWidgetLogUploadAllowList;
  v5 = [(ATXWidgetLogUploadAllowList *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"allowListEnabled"];
    v5->_allowListEnabled = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"allowedWidgetBundleIds"];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      v9 = [v4 objectForKeyedSubscript:@"allowedWidgetBundleIds"];
      v10 = [v8 initWithArray:v9];
      allowedWidgetBundleIds = v5->_allowedWidgetBundleIds;
      v5->_allowedWidgetBundleIds = v10;
    }
  }

  return v5;
}

@end