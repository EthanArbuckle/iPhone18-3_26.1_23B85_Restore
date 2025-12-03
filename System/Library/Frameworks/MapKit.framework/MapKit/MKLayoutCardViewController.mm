@interface MKLayoutCardViewController
- (BOOL)isLayoutDynamic;
- (BOOL)isTransitItem;
- (id)_cachedViewControllerForModule:(int)module;
- (id)_layoutModuleForMapItem;
- (void)_createModuleLayout:(id)layout;
@end

@implementation MKLayoutCardViewController

- (id)_cachedViewControllerForModule:(int)module
{
  v3 = *&module;
  cacheVC = [(MKLayoutCardViewController *)self cacheVC];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [cacheVC objectForKeyedSubscript:v5];

  return v6;
}

- (void)_createModuleLayout:(id)layout
{
  v25 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(MKLayoutCardViewController *)self setCacheVC:dictionary];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [(MKLayoutCardViewController *)self setCacheModuleType:dictionary2];

  _layoutModuleForMapItem = [(MKLayoutCardViewController *)self _layoutModuleForMapItem];
  [_layoutModuleForMapItem modules];
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
          cacheVC = [(MKLayoutCardViewController *)self cacheVC];
          v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "type")}];
          [cacheVC setObject:v12 forKeyedSubscript:v14];

          cacheModuleType = [(MKLayoutCardViewController *)self cacheModuleType];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
          [cacheModuleType setObject:v11 forKeyedSubscript:v16];

          if ([v11 type] == 5)
          {
            lastObject = [layoutCopy lastObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [lastObject setBottomHairlineHidden:1];
            }
          }

          [layoutCopy addObject:v12];
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
    if (!v3 || ([MEMORY[0x1E69A2250] moduleLayoutEntryFromArray:v3], (_placecardLayout = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (GEOConfigGetBOOL())
      {
        _placecardLayout = 0;
      }

      else
      {
        mapItem = [(MKLayoutCardViewController *)self mapItem];
        _placecardLayout = [mapItem _placecardLayout];
      }
    }
  }

  else
  {
    _placecardLayout = 0;
  }

  return _placecardLayout;
}

- (BOOL)isLayoutDynamic
{
  _layoutModuleForMapItem = [(MKLayoutCardViewController *)self _layoutModuleForMapItem];
  v3 = _layoutModuleForMapItem != 0;

  return v3;
}

- (BOOL)isTransitItem
{
  mapItem = [(MKLayoutCardViewController *)self mapItem];
  _isMapItemTypeTransit = [mapItem _isMapItemTypeTransit];

  return _isMapItemTypeTransit;
}

@end