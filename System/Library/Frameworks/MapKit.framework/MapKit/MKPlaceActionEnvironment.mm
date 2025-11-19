@interface MKPlaceActionEnvironment
- (MKPlaceActionEnvironment)initWithOptions:(id)a3;
@end

@implementation MKPlaceActionEnvironment

- (MKPlaceActionEnvironment)initWithOptions:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MKPlaceActionEnvironment;
  v5 = [(MKPlaceActionEnvironment *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsQuickAction"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsQuickAction"];
      v5->_isQuickAction = [v7 BOOLValue];
    }

    v8 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      sourceView = v5->_sourceView;
      v5->_sourceView = v9;
    }

    v11 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerSourceItemKey"];

    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerSourceItemKey"];
      sourceItem = v5->_sourceItem;
      v5->_sourceItem = v12;
    }

    v14 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerModuleMetadataKey"];

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerModuleMetadataKey"];
      analyticsModuleMetadata = v5->_analyticsModuleMetadata;
      v5->_analyticsModuleMetadata = v15;
    }

    v17 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBar"];

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBar"];
      v5->_isActionBar = [v18 BOOLValue];
    }

    v19 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBarMoreMenu"];

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBarMoreMenu"];
      v5->_isActionBarMoreMenu = [v20 BOOLValue];
    }
  }

  return v5;
}

@end