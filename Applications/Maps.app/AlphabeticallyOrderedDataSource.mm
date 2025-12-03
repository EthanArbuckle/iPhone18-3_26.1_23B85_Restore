@interface AlphabeticallyOrderedDataSource
- (AlphabeticallyOrderedDataSource)initWithAlphabeticallySortableObject:(id)object;
- (AlphabeticallyOrderedDataSource)initWithObjects:(id)objects;
- (id)objectAtIndexPath:(id)path;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation AlphabeticallyOrderedDataSource

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(AlphabeticallyOrderedDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v7 = [pathCopy row];
  v8 = [v6 objectAtIndexedSubscript:v7];

  return v8;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  sections = [(AlphabeticallyOrderedDataSource *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  sections = [(AlphabeticallyOrderedDataSource *)self sections];
  v3 = [sections count];

  return v3;
}

- (AlphabeticallyOrderedDataSource)initWithAlphabeticallySortableObject:(id)object
{
  objectCopy = object;
  v40.receiver = self;
  v40.super_class = AlphabeticallyOrderedDataSource;
  v5 = [(AlphabeticallyOrderedDataSource *)&v40 init];
  if (v5)
  {
    v6 = +[UILocalizedIndexedCollation currentCollation];
    sectionIndexTitles = [v6 sectionIndexTitles];
    v8 = [sectionIndexTitles copy];
    sectionIndexTitles = v5->_sectionIndexTitles;
    v34 = v5;
    v5->_sectionIndexTitles = v8;

    sectionTitles = [v6 sectionTitles];
    v11 = [sectionTitles count];

    v12 = [[NSMutableArray alloc] initWithCapacity:v11];
    v32 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objectCopy, "count")}];
    if (v11)
    {
      v13 = v11;
      do
      {
        v14 = objc_alloc_init(NSMutableArray);
        [v12 addObject:v14];

        --v13;
      }

      while (v13);
    }

    v33 = v11;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = objectCopy;
    v15 = objectCopy;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          if ([v20 conformsToProtocol:{&OBJC_PROTOCOL___AlphabeticallySortableObject, v32}])
          {
            v21 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "sectionForObject:collationStringSelector:", v20, "_maps_alphabeticallySortableObject_name")}];
            [v21 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v17);
    }

    if (v33)
    {
      v22 = 0;
      v23 = 0;
      v24 = v32;
      do
      {
        v25 = [v12 objectAtIndexedSubscript:{v23, v32}];
        v26 = [v6 sortedArrayFromArray:v25 collationStringSelector:"_maps_alphabeticallySortableObject_name"];
        [v12 setObject:v26 atIndexedSubscript:v23];
        if ([v25 count])
        {
          ++v22;
        }

        [v24 addObjectsFromArray:v26];

        ++v23;
      }

      while (v33 != v23);
    }

    else
    {
      v22 = 0;
      v24 = v32;
    }

    v27 = [v12 copy];
    v5 = v34;
    sections = v34->_sections;
    v34->_sections = v27;

    v29 = [v24 copy];
    orderedObjects = v34->_orderedObjects;
    v34->_orderedObjects = v29;

    v34->_numberOfSectionsNotEmpty = v22;
    objectCopy = v35;
  }

  return v5;
}

- (AlphabeticallyOrderedDataSource)initWithObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 conformsToProtocol:{&OBJC_PROTOCOL___AlphabeticallySortableObject, v15}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = [(AlphabeticallyOrderedDataSource *)self initWithAlphabeticallySortableObject:v12];

  return v13;
}

@end