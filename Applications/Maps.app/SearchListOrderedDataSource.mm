@interface SearchListOrderedDataSource
+ (int64_t)searchResultTypeWithGEOType:(int64_t)type;
- (SearchListOrderedDataSource)initWithObjects:(id)objects;
- (SearchListOrderedDataSource)initWithObjects:(id)objects searchSectionList:(id)list;
- (id)objectAtIndexPath:(id)path;
- (id)titleForHeaderInSection:(int64_t)section;
- (id)viewForHeaderInSection:(int64_t)section isFirstNonEmptySection:(BOOL)emptySection;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)_createSectionsWithObjects:(id)objects searchSectionList:(id)list;
@end

@implementation SearchListOrderedDataSource

- (void)_createSectionsWithObjects:(id)objects searchSectionList:(id)list
{
  objectsCopy = objects;
  listCopy = list;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = objectsCopy;
  v9 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v67;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v67 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v66 + 1) + 8 * i);
        mapItem = [v13 mapItem];
        v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [mapItem _muid]);
        [v8 setObject:v13 forKey:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v10);
  }

  v16 = [NSMutableArray alloc];
  searchSections = [listCopy searchSections];
  v53 = [v16 initWithCapacity:{objc_msgSend(searchSections, "count")}];

  searchSections2 = [listCopy searchSections];
  v19 = [searchSections2 count];

  if (v19)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    searchSections3 = [listCopy searchSections];
    v54 = [searchSections3 countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (!v54)
    {
      goto LABEL_35;
    }

    v52 = *v63;
    v47 = v7;
    selfCopy = self;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v63 != v52)
        {
          objc_enumerationMutation(searchSections3);
        }

        v55 = v20;
        v21 = *(*(&v62 + 1) + 8 * v20);
        v22 = objc_alloc_init(NSMutableArray);
        sectionType = [v21 sectionType];
        if (sectionType == 2)
        {
          if (MapsFeature_IsEnabled_SearchAndDiscovery())
          {
            mapItemIds = v21;
            sectionGuide = [(SearchResult *)mapItemIds sectionGuide];
            placeCollections = [sectionGuide placeCollections];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_100F31344;
            v56[3] = &unk_10165D590;
            v57 = v22;
            [placeCollections enumerateObjectsUsingBlock:v56];
          }

          else
          {
            mapItemIds = [[SearchResult alloc] initWithSearchSection:v21];
            [v22 insertObject:mapItemIds atIndex:0];
          }
        }

        else
        {
          if (sectionType != 1)
          {
            goto LABEL_33;
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          sectionPlace = [v21 sectionPlace];
          mapItemIds = [sectionPlace mapItemIds];

          v26 = [(SearchResult *)mapItemIds countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v26)
          {
            v27 = v26;
            v49 = v21;
            v28 = *v59;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v59 != v28)
                {
                  objc_enumerationMutation(mapItemIds);
                }

                v30 = *(*(&v58 + 1) + 8 * j);
                v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 muid]);
                v32 = [v8 objectForKey:v31];

                if (v32)
                {
                  [v22 addObject:v32];
                }

                else
                {
                  v33 = sub_100067540();
                  if (os_log_type_enabled(v33, 0x90u))
                  {
                    muid = [v30 muid];
                    *buf = 134217984;
                    v71 = muid;
                    _os_log_impl(&_mh_execute_header, v33, 0x90u, "SearchSectionList has a place section containing a place_id that does not exist among the list of map items in the maps_result. Identifier muid: %llu", buf, 0xCu);
                  }
                }
              }

              v27 = [(SearchResult *)mapItemIds countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v27);
            v7 = v47;
            self = selfCopy;
            v21 = v49;
          }
        }

LABEL_33:
        [v7 addObjectsFromArray:v22];
        v37 = [SearchResultSection alloc];
        name = [v21 name];
        v39 = -[SearchResultSection initWithTitle:type:searchResults:](v37, "initWithTitle:type:searchResults:", name, [objc_opt_class() searchResultTypeWithGEOType:{objc_msgSend(v21, "sectionType")}], v22);

        [v53 addObject:v39];
        v20 = v55 + 1;
      }

      while ((v55 + 1) != v54);
      v54 = [searchSections3 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (!v54)
      {
LABEL_35:

        break;
      }
    }
  }

  v40 = sub_100067540();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    orderedObjects = self->_orderedObjects;
    *buf = 138412546;
    v71 = orderedObjects;
    v72 = 2112;
    v73 = v53;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "SearchListOrderedDataSource. _orderedObjects: %@, sections = %@", buf, 0x16u);
  }

  v42 = [v7 copy];
  v43 = self->_orderedObjects;
  self->_orderedObjects = v42;

  v44 = [v53 copy];
  sections = self->_sections;
  self->_sections = v44;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->_sections count])
  {
    v11 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
    v7 = [pathCopy row];
    searchResults = [v6 searchResults];
    v9 = [searchResults count];

    if (v7 >= v9)
    {
      v11 = 0;
    }

    else
    {
      searchResults2 = [v6 searchResults];
      v11 = [searchResults2 objectAtIndexedSubscript:v7];
    }
  }

  return v11;
}

- (id)viewForHeaderInSection:(int64_t)section isFirstNonEmptySection:(BOOL)emptySection
{
  emptySectionCopy = emptySection;
  sections = [(SearchListOrderedDataSource *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];

  if ([v7 type] == 1)
  {
    title = [v7 title];
    if ([title length])
    {
      v9 = [[ResultsSectionHeaderView alloc] initWithTitle:title isFirstNonEmptySection:emptySectionCopy showHairline:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  sections = [(SearchListOrderedDataSource *)self sections];
  v6 = [sections count];

  if (v6 >= section)
  {
    sections2 = [(SearchListOrderedDataSource *)self sections];
    v9 = [sections2 objectAtIndexedSubscript:section];

    if ([v9 type] == 1)
    {
      title = [v9 title];
    }

    else
    {
      title = 0;
    }
  }

  else
  {
    title = 0;
  }

  return title;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  sections = [(SearchListOrderedDataSource *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  searchResults = [v5 searchResults];
  v7 = [searchResults count];

  return v7;
}

- (int64_t)numberOfSections
{
  sections = [(SearchListOrderedDataSource *)self sections];
  v3 = [sections count];

  return v3;
}

- (SearchListOrderedDataSource)initWithObjects:(id)objects searchSectionList:(id)list
{
  objectsCopy = objects;
  listCopy = list;
  v10.receiver = self;
  v10.super_class = SearchListOrderedDataSource;
  v8 = [(SearchListOrderedDataSource *)&v10 init];
  if (v8 && [objectsCopy count])
  {
    [(SearchListOrderedDataSource *)v8 _createSectionsWithObjects:objectsCopy searchSectionList:listCopy];
  }

  return v8;
}

- (SearchListOrderedDataSource)initWithObjects:(id)objects
{
  v4.receiver = self;
  v4.super_class = SearchListOrderedDataSource;
  return [(SearchListOrderedDataSource *)&v4 init];
}

+ (int64_t)searchResultTypeWithGEOType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

@end