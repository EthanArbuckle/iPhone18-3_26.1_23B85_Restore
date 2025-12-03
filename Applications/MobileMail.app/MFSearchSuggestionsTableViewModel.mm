@interface MFSearchSuggestionsTableViewModel
- (MFSearchSuggestionsTableViewModel)initWithSectionComparator:(id)comparator defaultReuseConfiguration:(id)configuration;
- (NSString)description;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_reuseConfigurationForSuggestion:(id)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForSuggestion:(id)suggestion;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)sectionAtIndex:(unint64_t)index;
- (id)sectionForIdentifier:(id)identifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewModelByRemovingItemsAtIndexPaths:(id)paths;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)enumerateSections:(id)sections;
- (void)registerCategory:(id)category forReuseConfiguration:(id)configuration;
- (void)setSection:(id)section forIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MFSearchSuggestionsTableViewModel

- (MFSearchSuggestionsTableViewModel)initWithSectionComparator:(id)comparator defaultReuseConfiguration:(id)configuration
{
  comparatorCopy = comparator;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = MFSearchSuggestionsTableViewModel;
  v8 = [(MFSearchSuggestionsTableViewModel *)&v16 init];
  if (v8)
  {
    v9 = [comparatorCopy copy];
    comparator = v8->_comparator;
    v8->_comparator = v9;

    v11 = [configurationCopy copy];
    defaultReuseConfiguration = v8->_defaultReuseConfiguration;
    v8->_defaultReuseConfiguration = v11;

    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)v8->_defaultReuseConfiguration validate];
    v13 = objc_alloc_init(NSMutableDictionary);
    categoryConfiguration = v8->_categoryConfiguration;
    v8->_categoryConfiguration = v13;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
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
  categoryConfiguration = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  v12 = [categoryConfiguration mutableCopy];
  [v10 setCategoryConfiguration:v12];

  return v10;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(MFSearchSuggestionsTableViewModel *)self sectionForIdentifier:subscript];

  return v3;
}

- (void)enumerateSections:(id)sections
{
  sectionsCopy = sections;
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
      sectionsCopy[2](sectionsCopy, v7, v10, v11, &v16);

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

- (id)sectionAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_orderedIdentifiers objectAtIndexedSubscript:index];
  v5 = [(MFSearchSuggestionsTableViewModel *)self sectionForIdentifier:v4];

  return v5;
}

- (id)sectionForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_objectsByIdentifier objectForKeyedSubscript:identifier];
  v4 = [NSArray arrayWithArray:v3];

  return v4;
}

- (void)setSection:(id)section forIdentifier:(id)identifier
{
  sectionCopy = section;
  identifierCopy = identifier;
  v7 = [sectionCopy count];
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

    [(NSMutableArray *)orderedIdentifiers ef_insertObject:identifierCopy usingComparator:self->_comparator allowDuplicates:0];
    v13 = [NSMutableArray arrayWithArray:sectionCopy];
    [(NSMutableDictionary *)self->_objectsByIdentifier setObject:v13 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(NSMutableArray *)orderedIdentifiers ef_removeObject:identifierCopy usingComparator:self->_comparator];
    [(NSMutableDictionary *)self->_objectsByIdentifier removeObjectForKey:identifierCopy];
  }
}

- (void)registerCategory:(id)category forReuseConfiguration:(id)configuration
{
  categoryCopy = category;
  configurationCopy = configuration;
  [configurationCopy validate];
  categoryConfiguration = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  [categoryConfiguration setObject:configurationCopy forKeyedSubscript:categoryCopy];
}

- (id)tableViewModelByRemovingItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v17 = [(MFSearchSuggestionsTableViewModel *)self copy];
  v4 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = pathsCopy;
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
        section = [v9 section];
        if (section != 0x7FFFFFFFFFFFFFFFLL && section < [(NSMutableArray *)self->_orderedIdentifiers count])
        {
          v11 = [(MFSearchSuggestionsTableViewModel *)self identifierAtIndex:section];
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

- (id)indexPathForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  category = [suggestionCopy category];
  v6 = [(NSMutableArray *)self->_orderedIdentifiers indexOfObject:category];
  v7 = [(NSMutableDictionary *)self->_objectsByIdentifier objectForKeyedSubscript:category];
  v8 = [v7 indexOfObject:suggestionCopy];

  v9 = [NSIndexPath indexPathForRow:v8 inSection:v6];

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  objectsByIdentifier = [(MFSearchSuggestionsTableViewModel *)self objectsByIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %p> %@", v3, self, objectsByIdentifier];

  return v5;
}

- (id)_reuseConfigurationForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  category = [suggestionCopy category];
  categoryConfiguration = [(MFSearchSuggestionsTableViewModel *)self categoryConfiguration];
  defaultReuseConfiguration = [categoryConfiguration objectForKeyedSubscript:category];

  if (!defaultReuseConfiguration)
  {
    defaultReuseConfiguration = [(MFSearchSuggestionsTableViewModel *)self defaultReuseConfiguration];
    if (!defaultReuseConfiguration)
    {
      __assert_rtn("[MFSearchSuggestionsTableViewModel _reuseConfigurationForSuggestion:]", "MFSearchSuggestionsTableViewModel.m", 226, "reuseConfiguration");
    }
  }

  return defaultReuseConfiguration;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MFSearchSuggestionsTableViewModel *)self objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(MFSearchSuggestionsTableViewModel *)self identifierAtIndex:section];
  displayName = [v4 displayName];

  return displayName;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v9];
  reuseIdentifier = [v10 reuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];

  cellPopulator = [v10 cellPopulator];
  (cellPopulator)[2](cellPopulator, v9, pathCopy, v12);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v8 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v7];
  rowHeightCalculator = [v8 rowHeightCalculator];
  v10 = (rowHeightCalculator)[2](rowHeightCalculator, v7, pathCopy);

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[MFSearchSuggestionsTableViewModel objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", [pathCopy section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v7 = [(MFSearchSuggestionsTableViewModel *)self _reuseConfigurationForSuggestion:v6];
  rowSelector = [v7 rowSelector];
  (rowSelector)[2](rowSelector, v6, pathCopy);
}

@end