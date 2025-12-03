@interface MKPlaceActionEnvironment
- (MKPlaceActionEnvironment)initWithOptions:(id)options;
@end

@implementation MKPlaceActionEnvironment

- (MKPlaceActionEnvironment)initWithOptions:(id)options
{
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = MKPlaceActionEnvironment;
  v5 = [(MKPlaceActionEnvironment *)&v22 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsQuickAction"];

    if (v6)
    {
      v7 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsQuickAction"];
      v5->_isQuickAction = [v7 BOOLValue];
    }

    v8 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];

    if (v8)
    {
      v9 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceViewKey"];
      sourceView = v5->_sourceView;
      v5->_sourceView = v9;
    }

    v11 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceItemKey"];

    if (v11)
    {
      v12 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerSourceItemKey"];
      sourceItem = v5->_sourceItem;
      v5->_sourceItem = v12;
    }

    v14 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerModuleMetadataKey"];

    if (v14)
    {
      v15 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerModuleMetadataKey"];
      analyticsModuleMetadata = v5->_analyticsModuleMetadata;
      v5->_analyticsModuleMetadata = v15;
    }

    v17 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBar"];

    if (v17)
    {
      v18 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBar"];
      v5->_isActionBar = [v18 BOOLValue];
    }

    v19 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBarMoreMenu"];

    if (v19)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"MKPlaceActionManagerIsActionBarMoreMenu"];
      v5->_isActionBarMoreMenu = [v20 BOOLValue];
    }
  }

  return v5;
}

@end