@interface AutocompleteItemSource
- (AutocompleteItemSource)initWithAutocompleteItems:(id)a3;
- (AutocompleteItemSource)initWithServerCompletions:(id)a3 serverSections:(id)a4;
- (id)debugDescription;
@end

@implementation AutocompleteItemSource

- (id)debugDescription
{
  v3 = [(AutocompleteItemSource *)self sourceType];
  v4 = @"Client Results";
  if (v3 == 1)
  {
    v4 = @"Server results";
  }

  return [NSString stringWithFormat:@"%@ - type: %@", self, v4];
}

- (AutocompleteItemSource)initWithAutocompleteItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AutocompleteItemSource;
  v5 = [(AutocompleteItemSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    allItems = v5->_allItems;
    v5->_allItems = v6;
  }

  return v5;
}

- (AutocompleteItemSource)initWithServerCompletions:(id)a3 serverSections:(id)a4
{
  v19 = self;
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
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
        v11 = [v10 hasSortPriority];
        if (v11)
        {
          v12 = [v10 sortPriority];
        }

        else
        {
          v12 = 0;
        }

        v13 = [AutocompleteItem alloc];
        v14 = [v10 serverResultScoreMetadata];
        v15 = [(AutocompleteItem *)v13 initWithServerCompletion:v10 hasPriorityOverride:v11 priorityOverride:v12 serverResultScoreMetadata:v14];

        [v5 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = [v5 copy];
  v17 = [(AutocompleteItemSource *)v19 initWithAutocompleteItems:v16];

  if (v17)
  {
    v17->_sourceType = 1;
  }

  return v17;
}

@end