@interface RefineSearchSession
- (RefineSearchSession)initWithObjects:(id)a3 forType:(int)a4;
- (id)description;
- (void)updateWithFilterView:(id)a3;
- (void)updateWithSelection:(unint64_t)a3;
@end

@implementation RefineSearchSession

- (id)description
{
  listType = self->_listType;
  if (listType >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", listType];
  }

  else
  {
    v4 = off_10162E470[listType];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_items;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = [v10 suggestionString];
        if ([v10 initiallyVisible])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if ([v10 eventuallyVisible])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v4 = -[__CFString stringByAppendingFormat:](v9, "stringByAppendingFormat:", @"\nListSession %@ initVisible %@ eventVisible %@ tap %d", v11, v12, v13, [v10 tappingCount]);

        v8 = v8 + 1;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)updateWithFilterView:(id)a3
{
  v4 = [a3 visibleSuggestions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) tag];
        if (v9 < [(NSArray *)self->_items count])
        {
          v10 = [(NSArray *)self->_items objectAtIndexedSubscript:v9];
          v11 = v10;
          if (self->_resultsItemsInitialized)
          {
            [v10 setEventuallyVisible:1];
          }

          else
          {
            [v10 setInitiallyVisible:1];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  self->_resultsItemsInitialized = 1;
}

- (void)updateWithSelection:(unint64_t)a3
{
  if ([(NSArray *)self->_items count]> a3)
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
    [v5 setTappingCount:{objc_msgSend(v5, "tappingCount") + 1}];
  }
}

- (RefineSearchSession)initWithObjects:(id)a3 forType:(int)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v25.receiver = self;
    v25.super_class = RefineSearchSession;
    v7 = [(RefineSearchSession *)&v25 init];
    v8 = v7;
    if (v7)
    {
      v7->_resultsItemsInitialized = 0;
      v7->_listType = a4;
      v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * v14);
            v16 = objc_alloc_init(GEOSuggestionItem);
            [v16 setSuggestionString:{v15, v21}];
            [v9 addObject:v16];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v17 = [v9 copy];
      items = v8->_items;
      v8->_items = v17;
    }

    self = v8;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end