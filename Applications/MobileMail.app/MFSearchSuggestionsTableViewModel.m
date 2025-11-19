@interface MFSearchSuggestionsTableViewModel
- (MFSearchSuggestionsTableViewModel)initWithSectionComparator:(id)a3 defaultReuseConfiguration:(id)a4;
- (NSString)description;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_reuseConfigurationForSuggestion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForSuggestion:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)sectionForIdentifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewModelByRemovingItemsAtIndexPaths:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)enumerateSections:(id)a3;
- (void)registerCategory:(id)a3 forReuseConfiguration:(id)a4;
- (void)setSection:(id)a3 forIdentifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MFSearchSuggestionsTableViewModel

- (MFSearchSuggestionsTableViewModel)initWithSectionComparator:(id)a3 defaultReuseConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MFSearchSuggestionsTableViewModel;
  v8 = [(MFSearchSuggestionsTableViewModel *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    comparator = v8->_comparator;
    v8->_comparator = v9;

    v11 = [v7 copy];
    defaultReuseConfiguration = v8->_defaultReuseConfiguration;
    v8->_defaultReuseConfiguration = v11;

    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)v8->_defaultReuseConfiguration validate];
    v13 = objc_alloc_init(NSMutableDictionary);
    categoryConfiguration = v8->_categoryConfiguration;
    v8->_categoryConfiguration = v13;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithSectionComparator:self->_comparator defaultReuseConfiguration:self->_defaultReuseConfiguration];
  if (!v4)
  {
    __assert_rtn("[MFSearchSuggestionsTableViewModel copyWithZone:]", "MFSearchSuggestionsTableViewModel.m", 103, "copy");
  }

  v5 = [[NSMutableArray alloc] initWithArray:self->_orderedIdentifiers];
  v6 = v4[3];
  v4[3] = v5;

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v4[1];
  v4[1] = v7;

  objectsByIdentifier = self->_objectsByIdentifier;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100211108;
  v14[3] = &unk_1006557F8;
  v10 = v4;
  v15 = v10;
  [(NSMutableDictionary *)objectsByIdentifier enumerateKeysAndObjectsUsingBlock:v14];
  v11 = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  v12 = [v11 mutableCopy];
  [v10 setCategoryConfiguration:v12];

  return v10;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(MFSearchSuggestionsTableViewModel *)self sectionForIdentifier:a3];

  return v3;
}

- (void)enumerateSections:(id)a3
{
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_orderedIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_objectsByIdentifier objectForKeyedSubscript:v10, v12];
      v4[2](v4, v7, v10, v11, &v16);

      if (v16)
      {
        break;
      }

      ++v7;
      if (v6 == ++v9)
      {
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_orderedIdentifiers objectAtIndexedSubscript:a3];
  v5 = [(MFSearchSuggestionsTableViewModel *)self sectionForIdentifier:v4];

  return v5;
}

- (id)sectionForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_objectsByIdentifier objectForKeyedSubscript:a3];
  v4 = [NSArray arrayWithArray:v3];

  return v4;
}

- (void)setSection:(id)a3 forIdentifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 count];
  orderedIdentifiers = self->_orderedIdentifiers;
  if (v7)
  {
    if (!orderedIdentifiers)
    {
      v9 = objc_alloc_init(NSMutableArray);
      v10 = self->_orderedIdentifiers;
      self->_orderedIdentifiers = v9;

      v11 = objc_alloc_init(NSMutableDictionary);
      objectsByIdentifier = self->_objectsByIdentifier;
      self->_objectsByIdentifier = v11;

      orderedIdentifiers = self->_orderedIdentifiers;
    }

    [(NSMutableArray *)orderedIdentifiers ef_insertObject:v6 usingComparator:self->_comparator allowDuplicates:0];
    v13 = [NSMutableArray arrayWithArray:v14];
    [(NSMutableDictionary *)self->_objectsByIdentifier setObject:v13 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableArray *)orderedIdentifiers ef_removeObject:v6 usingComparator:self->_comparator];
    [(NSMutableDictionary *)self->_objectsByIdentifier removeObjectForKey:v6];
  }
}

- (void)registerCategory:(id)a3 forReuseConfiguration:(id)a4
{
  v8 = a3;
  v6 = a4;
  [v6 validate];
  v7 = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

- (id)tableViewModelByRemovingItemsAtIndexPaths:(id)a3
{
  v18 = a3;
  v17 = [(MFSearchSuggestionsTableViewModel *)self copy];
  v4 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v18;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 section];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 < [(NSMutableArray *)self->_orderedIdentifiers count])
        {
          v11 = [(MFSearchSuggestionsTableViewModel *)self identifierAtIndex:v10];
          v12 = [v9 row];
          v13 = [v4 objectForKeyedSubscript:v11];
          v14 = v13;
          if (v13)
          {
            [v13 addIndex:v12];
          }

          else
          {
            v14 = [[NSMutableIndexSet alloc] initWithIndex:v12];
            [v4 setObject:v14 forKeyedSubscript:v11];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002118CC;
  v19[3] = &unk_100655820;
  v15 = v17;
  v20 = v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v19];

  return v15;
}

- (id)indexPathForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = [(NSMutableArray *)self->_orderedIdentifiers indexOfObject:v5];
  v7 = [(NSMutableDictionary *)self->_objectsByIdentifier objectForKeyedSubscript:v5];
  v8 = [v7 indexOfObject:v4];

  v9 = [NSIndexPath indexPathForRow:v8 inSection:v6];

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(MFSearchSuggestionsTableViewModel *)self objectsByIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %p> %@", v3, self, v4];

  return v5;
}

- (id)_reuseConfigurationForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [(MFSearchSuggestionsTableViewModel *)self defaultReuseConfiguration];
    if (!v7)
    {
      __assert_rtn("[MFSearchSuggestionsTableViewModel _reuseConfigurationForSuggestion:]", "MFSearchSuggestionsTableViewModel.m", 226, "reuseConfiguration");
    }
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MFSearchSuggestionsTableViewModel *)self objectAtIndexedSubscript:a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(MFSearchSuggestionsTableViewModel *)self identifierAtIndex:a4];
  v5 = [v4 displayName];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v10 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v9];
  v11 = [v10 reuseIdentifier];
  v12 = [v6 dequeueReusableCellWithIdentifier:v11 forIndexPath:v7];

  v13 = [v10 cellPopulator];
  (v13)[2](v13, v9, v7, v12);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v8 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v7];
  v9 = [v8 rowHeightCalculator];
  v10 = (v9)[2](v9, v7, v5);

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [v9 section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

  v7 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v6];
  v8 = [v7 rowSelector];
  (v8)[2](v8, v6, v9);
}

@end