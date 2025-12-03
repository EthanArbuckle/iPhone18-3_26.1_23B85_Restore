@interface TUIFeedContent
+ (TUIFeedContent)feedContentWithEntries:(id)entries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index;
+ (id)feedContentFromDictionaries:(id)dictionaries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index;
- (NSMutableArray)entries;
- (TUIFeedContent)initWithDictionaries:(id)dictionaries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index;
- (TUIFeedContent)initWithStackName:(id)name initialContentReadyEntryIndex:(unint64_t)index;
- (id)description;
- (void)setEntries:(id)entries;
@end

@implementation TUIFeedContent

+ (id)feedContentFromDictionaries:(id)dictionaries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index
{
  nameCopy = name;
  dictionariesCopy = dictionaries;
  v9 = [[TUIFeedContent alloc] initWithDictionaries:dictionariesCopy stackName:nameCopy initialContentReadyEntryIndex:index];

  return v9;
}

+ (TUIFeedContent)feedContentWithEntries:(id)entries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index
{
  nameCopy = name;
  entriesCopy = entries;
  v9 = [[TUIFeedContent alloc] initWithStackName:nameCopy initialContentReadyEntryIndex:index];

  v10 = [entriesCopy mutableCopy];
  [(TUIFeedContent *)v9 setEntries:v10];

  return v9;
}

- (TUIFeedContent)initWithStackName:(id)name initialContentReadyEntryIndex:(unint64_t)index
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = TUIFeedContent;
  v8 = [(TUIFeedContent *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_currentStackName, name);
    if (!v9->_currentStackName)
    {
      v10 = [(TUIDynamicValue *)[TUIMutableDynamicValue alloc] initWithValue:@"default"];
      currentStackName = v9->_currentStackName;
      v9->_currentStackName = v10;
    }

    v12 = objc_opt_new();
    stackNames = v9->_stackNames;
    v9->_stackNames = v12;

    v9->_initialContentReadyEntryIndex = index;
  }

  return v9;
}

- (TUIFeedContent)initWithDictionaries:(id)dictionaries stackName:(id)name initialContentReadyEntryIndex:(unint64_t)index
{
  dictionariesCopy = dictionaries;
  v9 = [(TUIFeedContent *)self initWithStackName:name initialContentReadyEntryIndex:index];
  if (v9)
  {
    v10 = objc_opt_new();
    entries = v9->_entries;
    v9->_entries = v10;

    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionariesCopy count]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = dictionariesCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [TUIFeedEntry feedEntryFromDictionary:*(*(&v20 + 1) + 8 * v17), v20];
          if (v18)
          {
            [v12 addObject:v18];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [(TUIFeedContent *)v9 setEntries:v12];
  }

  return v9;
}

- (NSMutableArray)entries
{
  v2 = [(NSMutableArray *)self->_entries copy];

  return v2;
}

- (void)setEntries:(id)entries
{
  entriesCopy = entries;
  objc_storeStrong(&self->_entries, entries);
  [(NSMutableSet *)self->_stackNames removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = entriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        stackNames = self->_stackNames;
        stackNames = [*(*(&v13 + 1) + 8 * v10) stackNames];
        [(NSMutableSet *)stackNames unionSet:stackNames];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  entries = [(TUIFeedContent *)self entries];
  v6 = [entries valueForKey:@"description"];
  v7 = [v6 componentsJoinedByString:{@", \n\t"}];
  v8 = [NSString stringWithFormat:@"<%@: %p> (\n\t%@\n)", v4, self, v7];

  return v8;
}

@end