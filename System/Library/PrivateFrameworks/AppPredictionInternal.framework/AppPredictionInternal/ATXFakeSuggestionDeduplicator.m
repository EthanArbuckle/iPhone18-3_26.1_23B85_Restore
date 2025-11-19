@interface ATXFakeSuggestionDeduplicator
- (ATXFakeSuggestionDeduplicator)init;
- (BOOL)suggestionIsDuplicate:(id)a3 appsOnHomeScreenPageAtIndex:(unint64_t)a4;
- (BOOL)suggestionIsDuplicate:(id)a3 existingSuggestions:(id)a4;
- (BOOL)suggestionIsDuplicate:(id)a3 otherApps:(id)a4;
- (BOOL)suggestionIsDuplicateAppOrWidget:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (BOOL)widgetSuggestionIsPinned:(id)a3 homeScreenPage:(id)a4 excludingStackConfigId:(id)a5;
- (id)duplicateWidgetForWidgetSuggestion:(id)a3 otherWidgets:(id)a4;
@end

@implementation ATXFakeSuggestionDeduplicator

- (ATXFakeSuggestionDeduplicator)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeSuggestionDeduplicator;
  v2 = [(ATXFakeSuggestionDeduplicator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    pinnedWidgetSuggestions = v2->_pinnedWidgetSuggestions;
    v2->_pinnedWidgetSuggestions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (BOOL)suggestionIsDuplicate:(id)a3 existingSuggestions:(id)a4
{
  if (self->_existingSuggestionsReturnValueIsSet)
  {
    v4 = 13;
  }

  else
  {
    if (!self->_blanketValueIsSet)
    {
      v5 = 0;
      return v5 & 1;
    }

    v4 = 12;
  }

  v5 = *(&self->super.isa + v4);
  return v5 & 1;
}

- (BOOL)suggestionIsDuplicateAppOrWidget:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v6 = a3;
  if (self->_homeScreenPageReturnValueIsSet)
  {
    homeScreenPageReturnValue = self->_homeScreenPageReturnValue;
  }

  else if (self->_appsOnPage)
  {
    homeScreenPageReturnValue = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:v6 otherApps:?];
  }

  else
  {
    homeScreenPageReturnValue = self->_blanketValueIsSet && self->_blanketReturnValue;
  }

  return homeScreenPageReturnValue;
}

- (BOOL)widgetSuggestionIsPinned:(id)a3 homeScreenPage:(id)a4 excludingStackConfigId:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_pinnedWidgetSuggestions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 isEqual:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)duplicateWidgetForWidgetSuggestion:(id)a3 otherWidgets:(id)a4
{
  if (self->_duplicateWidgetReturnValueIsSet)
  {
    v5 = self->_duplicateWidgetReturnValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)suggestionIsDuplicate:(id)a3 appsOnHomeScreenPageAtIndex:(unint64_t)a4
{
  appsOnPage = self->_appsOnPage;
  if (appsOnPage)
  {
    v6 = a3;
    v7 = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:v6 otherApps:appsOnPage];
  }

  else
  {
    v8 = a3;
    v6 = objc_opt_new();
    v7 = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:v8 otherApps:v6];
  }

  return v7;
}

- (BOOL)suggestionIsDuplicate:(id)a3 otherApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_appsOnPage)
  {
    if (self->_blanketValueIsSet)
    {
      blanketReturnValue = self->_blanketReturnValue;
      goto LABEL_7;
    }

LABEL_6:
    blanketReturnValue = 0;
    goto LABEL_7;
  }

  v8 = [v6 executableSpecification];
  v9 = [v8 executableType];

  if (v9 != 1)
  {
    goto LABEL_6;
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [v6 executableSpecification];
  v12 = [v11 executable];
  v13 = [v10 initWithData:v12 encoding:4];

  blanketReturnValue = [(NSSet *)self->_appsOnPage containsObject:v13];
LABEL_7:

  return blanketReturnValue;
}

@end