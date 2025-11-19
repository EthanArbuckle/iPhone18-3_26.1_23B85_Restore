@interface MKLayoutCardViewController
- (BOOL)isLayoutDynamic;
- (BOOL)isTransitItem;
- (id)_cachedViewControllerForModule:(int)a3;
- (id)_layoutModuleForMapItem;
- (void)_createModuleLayout:(id)a3;
@end

@implementation MKLayoutCardViewController

- (id)_cachedViewControllerForModule:(int)a3
{
  v3 = *&a3;
  v4 = [(MKLayoutCardViewController *)self cacheVC];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)_createModuleLayout:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [(MKLayoutCardViewController *)self setCacheVC:v5];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [(MKLayoutCardViewController *)self setCacheModuleType:v6];

  v18 = [(MKLayoutCardViewController *)self _layoutModuleForMapItem];
  [v18 modules];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(MKLayoutCardViewController *)self _createViewControllerForModule:v11];
        if (v12)
        {
          v13 = [(MKLayoutCardViewController *)self cacheVC];
          v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "type")}];
          [v13 setObject:v12 forKeyedSubscript:v14];

          v15 = [(MKLayoutCardViewController *)self cacheModuleType];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
          [v15 setObject:v11 forKeyedSubscript:v16];

          if ([v11 type] == 5)
          {
            v17 = [v4 lastObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 setBottomHairlineHidden:1];
            }
          }

          [v4 addObject:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)_layoutModuleForMapItem
{
  if (GEOConfigGetBOOL())
  {
    v3 = GEOConfigGetArray();
    if (!v3 || ([MEMORY[0x1E69A2250] moduleLayoutEntryFromArray:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (GEOConfigGetBOOL())
      {
        v4 = 0;
      }

      else
      {
        v5 = [(MKLayoutCardViewController *)self mapItem];
        v4 = [v5 _placecardLayout];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isLayoutDynamic
{
  v2 = [(MKLayoutCardViewController *)self _layoutModuleForMapItem];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isTransitItem
{
  v2 = [(MKLayoutCardViewController *)self mapItem];
  v3 = [v2 _isMapItemTypeTransit];

  return v3;
}

@end