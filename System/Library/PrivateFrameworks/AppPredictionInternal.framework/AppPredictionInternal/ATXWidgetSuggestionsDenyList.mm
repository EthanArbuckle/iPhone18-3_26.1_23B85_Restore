@interface ATXWidgetSuggestionsDenyList
- (ATXWidgetSuggestionsDenyList)init;
- (ATXWidgetSuggestionsDenyList)initWithAssets:(id)assets;
- (BOOL)containsInfoSuggestion:(id)suggestion;
@end

@implementation ATXWidgetSuggestionsDenyList

- (ATXWidgetSuggestionsDenyList)init
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v4 = [(ATXWidgetSuggestionsDenyList *)self initWithAssets:v3];

  return v4;
}

- (ATXWidgetSuggestionsDenyList)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v8.receiver = self;
  v8.super_class = ATXWidgetSuggestionsDenyList;
  v5 = [(ATXWidgetSuggestionsDenyList *)&v8 init];
  if (v5)
  {
    v6 = [assetsCopy objectForKeyedSubscript:@"denyList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_bannedWidgets, v6);
    }
  }

  return v5;
}

- (BOOL)containsInfoSuggestion:(id)suggestion
{
  v29 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_bannedWidgets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = [v10 objectForKeyedSubscript:{@"extensionBundleId", v24}];
      v12 = [v10 objectForKeyedSubscript:@"appBundleId"];
      v13 = [v10 objectForKeyedSubscript:@"widgetKind"];
      if (v11 && ([suggestionCopy widgetBundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
      {
        widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
        v16 = [v11 isEqualToString:widgetBundleIdentifier];

        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = 1;
        if (v12)
        {
LABEL_11:
          appBundleIdentifier = [suggestionCopy appBundleIdentifier];

          if (appBundleIdentifier)
          {
            appBundleIdentifier2 = [suggestionCopy appBundleIdentifier];
            v16 &= [v12 isEqualToString:appBundleIdentifier2];
          }
        }
      }

      if (v13)
      {
        widgetKind = [suggestionCopy widgetKind];

        if (widgetKind)
        {
          widgetKind2 = [suggestionCopy widgetKind];
          LOBYTE(v16) = v16 & [v13 isEqualToString:widgetKind2];
        }
      }

      if (v16)
      {
        v21 = 1;
        goto LABEL_22;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end