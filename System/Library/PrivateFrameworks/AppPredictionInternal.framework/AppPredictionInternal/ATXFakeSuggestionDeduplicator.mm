@interface ATXFakeSuggestionDeduplicator
- (ATXFakeSuggestionDeduplicator)init;
- (BOOL)suggestionIsDuplicate:(id)duplicate appsOnHomeScreenPageAtIndex:(unint64_t)index;
- (BOOL)suggestionIsDuplicate:(id)duplicate existingSuggestions:(id)suggestions;
- (BOOL)suggestionIsDuplicate:(id)duplicate otherApps:(id)apps;
- (BOOL)suggestionIsDuplicateAppOrWidget:(id)widget homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
- (BOOL)widgetSuggestionIsPinned:(id)pinned homeScreenPage:(id)page excludingStackConfigId:(id)id;
- (id)duplicateWidgetForWidgetSuggestion:(id)suggestion otherWidgets:(id)widgets;
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

- (BOOL)suggestionIsDuplicate:(id)duplicate existingSuggestions:(id)suggestions
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

- (BOOL)suggestionIsDuplicateAppOrWidget:(id)widget homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  widgetCopy = widget;
  if (self->_homeScreenPageReturnValueIsSet)
  {
    homeScreenPageReturnValue = self->_homeScreenPageReturnValue;
  }

  else if (self->_appsOnPage)
  {
    homeScreenPageReturnValue = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:widgetCopy otherApps:?];
  }

  else
  {
    homeScreenPageReturnValue = self->_blanketValueIsSet && self->_blanketReturnValue;
  }

  return homeScreenPageReturnValue;
}

- (BOOL)widgetSuggestionIsPinned:(id)pinned homeScreenPage:(id)page excludingStackConfigId:(id)id
{
  v18 = *MEMORY[0x277D85DE8];
  pinnedCopy = pinned;
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

        if ([pinnedCopy isEqual:{*(*(&v13 + 1) + 8 * i), v13}])
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

- (id)duplicateWidgetForWidgetSuggestion:(id)suggestion otherWidgets:(id)widgets
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

- (BOOL)suggestionIsDuplicate:(id)duplicate appsOnHomeScreenPageAtIndex:(unint64_t)index
{
  appsOnPage = self->_appsOnPage;
  if (appsOnPage)
  {
    duplicateCopy = duplicate;
    v7 = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:duplicateCopy otherApps:appsOnPage];
  }

  else
  {
    duplicateCopy2 = duplicate;
    duplicateCopy = objc_opt_new();
    v7 = [(ATXFakeSuggestionDeduplicator *)self suggestionIsDuplicate:duplicateCopy2 otherApps:duplicateCopy];
  }

  return v7;
}

- (BOOL)suggestionIsDuplicate:(id)duplicate otherApps:(id)apps
{
  duplicateCopy = duplicate;
  appsCopy = apps;
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

  executableSpecification = [duplicateCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType != 1)
  {
    goto LABEL_6;
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  executableSpecification2 = [duplicateCopy executableSpecification];
  executable = [executableSpecification2 executable];
  v13 = [v10 initWithData:executable encoding:4];

  blanketReturnValue = [(NSSet *)self->_appsOnPage containsObject:v13];
LABEL_7:

  return blanketReturnValue;
}

@end