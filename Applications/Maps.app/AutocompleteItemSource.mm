@interface AutocompleteItemSource
- (AutocompleteItemSource)initWithAutocompleteItems:(id)items;
- (AutocompleteItemSource)initWithServerCompletions:(id)completions serverSections:(id)sections;
- (id)debugDescription;
@end

@implementation AutocompleteItemSource

- (id)debugDescription
{
  sourceType = [(AutocompleteItemSource *)self sourceType];
  v4 = @"Client Results";
  if (sourceType == 1)
  {
    v4 = @"Server results";
  }

  return [NSString stringWithFormat:@"%@ - type: %@", self, v4];
}

- (AutocompleteItemSource)initWithAutocompleteItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = AutocompleteItemSource;
  v5 = [(AutocompleteItemSource *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    allItems = v5->_allItems;
    v5->_allItems = v6;
  }

  return v5;
}

- (AutocompleteItemSource)initWithServerCompletions:(id)completions serverSections:(id)sections
{
  selfCopy = self;
  completionsCopy = completions;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [completionsCopy count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = completionsCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        hasSortPriority = [v10 hasSortPriority];
        if (hasSortPriority)
        {
          sortPriority = [v10 sortPriority];
        }

        else
        {
          sortPriority = 0;
        }

        v13 = [AutocompleteItem alloc];
        serverResultScoreMetadata = [v10 serverResultScoreMetadata];
        v15 = [(AutocompleteItem *)v13 initWithServerCompletion:v10 hasPriorityOverride:hasSortPriority priorityOverride:sortPriority serverResultScoreMetadata:serverResultScoreMetadata];

        [v5 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = [v5 copy];
  v17 = [(AutocompleteItemSource *)selfCopy initWithAutocompleteItems:v16];

  if (v17)
  {
    v17->_sourceType = 1;
  }

  return v17;
}

@end