@interface MPArtworkCatalogPlaceholderDataSource
@end

@implementation MPArtworkCatalogPlaceholderDataSource

void __96___MPArtworkCatalogPlaceholderDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  [v12 setFill];

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  UIRectFill(v28);
  v26 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_454];
  if (v9 >= v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v9 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  v15 = v13 * 0.46;
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:-1 scale:v15];
  v17 = MEMORY[0x1E69DCAB8];
  v18 = [*(a1 + 32) token];
  v19 = [v17 _systemImageNamed:v18];

  v20 = [v19 imageWithConfiguration:v16];

  v21 = [v20 imageByApplyingSymbolConfiguration:v16];

  v22 = [v21 imageWithTintColor:v26];

  [v22 size];
  v24 = v23 * -0.5 + v9 * 0.5;
  [v22 size];
  [v22 drawAtPoint:{v24, v25 * -0.5 + v11 * 0.5}];
}

id __96___MPArtworkCatalogPlaceholderDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x1E69DC888];
    v4 = 0.270588235;
    v7 = 0.278431373;
    v5 = 1.0;
    v6 = 0.270588235;
  }

  else
  {
    v3 = MEMORY[0x1E69DC888];
    v4 = 0.858823529;
    v5 = 1.0;
    v6 = 0.858823529;
    v7 = 0.858823529;
  }

  v2 = [v3 colorWithRed:v4 green:v6 blue:v7 alpha:v5];
LABEL_6:

  return v2;
}

uint64_t __58___MPArtworkCatalogPlaceholderDataSource_sharedDataSource__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDataSource___dataSource;
  sharedDataSource___dataSource = v1;

  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v4 = *(sharedDataSource___dataSource + 8);
  *(sharedDataSource___dataSource + 8) = v3;

  v5 = *(sharedDataSource___dataSource + 8);

  return [v5 setCountLimit:4];
}

@end