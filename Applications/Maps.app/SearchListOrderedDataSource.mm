@interface SearchListOrderedDataSource
+ (int64_t)searchResultTypeWithGEOType:(int64_t)a3;
- (SearchListOrderedDataSource)initWithObjects:(id)a3;
- (SearchListOrderedDataSource)initWithObjects:(id)a3 searchSectionList:(id)a4;
- (id)objectAtIndexPath:(id)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (id)viewForHeaderInSection:(int64_t)a3 isFirstNonEmptySection:(BOOL)a4;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_createSectionsWithObjects:(id)a3 searchSectionList:(id)a4;
@end

@implementation SearchListOrderedDataSource

- (void)_createSectionsWithObjects:(id)a3 searchSectionList:(id)a4
{
  v6 = a3;
  v46 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v6;
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
        v14 = [v13 mapItem];
        v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 _muid]);
        [v8 setObject:v13 forKey:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v10);
  }

  v16 = [NSMutableArray alloc];
  v17 = [v46 searchSections];
  v53 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];

  v18 = [v46 searchSections];
  v19 = [v18 count];

  if (v19)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v50 = [v46 searchSections];
    v54 = [v50 countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (!v54)
    {
      goto LABEL_35;
    }

    v52 = *v63;
    v47 = v7;
    v48 = self;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v63 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v55 = v20;
        v21 = *(*(&v62 + 1) + 8 * v20);
        v22 = objc_alloc_init(NSMutableArray);
        v23 = [v21 sectionType];
        if (v23 == 2)
        {
          if (MapsFeature_IsEnabled_SearchAndDiscovery())
          {
            v25 = v21;
            v35 = [(SearchResult *)v25 sectionGuide];
            v36 = [v35 placeCollections];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_100F31344;
            v56[3] = &unk_10165D590;
            v57 = v22;
            [v36 enumerateObjectsUsingBlock:v56];
          }

          else
          {
            v25 = [[SearchResult alloc] initWithSearchSection:v21];
            [v22 insertObject:v25 atIndex:0];
          }
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_33;
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v24 = [v21 sectionPlace];
          v25 = [v24 mapItemIds];

          v26 = [(SearchResult *)v25 countByEnumeratingWithState:&v58 objects:v74 count:16];
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
                  objc_enumerationMutation(v25);
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
                    v34 = [v30 muid];
                    *buf = 134217984;
                    v71 = v34;
                    _os_log_impl(&_mh_execute_header, v33, 0x90u, "SearchSectionList has a place section containing a place_id that does not exist among the list of map items in the maps_result. Identifier muid: %llu", buf, 0xCu);
                  }
                }
              }

              v27 = [(SearchResult *)v25 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v27);
            v7 = v47;
            self = v48;
            v21 = v49;
          }
        }

LABEL_33:
        [v7 addObjectsFromArray:v22];
        v37 = [SearchResultSection alloc];
        v38 = [v21 name];
        v39 = -[SearchResultSection initWithTitle:type:searchResults:](v37, "initWithTitle:type:searchResults:", v38, [objc_opt_class() searchResultTypeWithGEOType:{objc_msgSend(v21, "sectionType")}], v22);

        [v53 addObject:v39];
        v20 = v55 + 1;
      }

      while ((v55 + 1) != v54);
      v54 = [v50 countByEnumeratingWithState:&v62 objects:v75 count:16];
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

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [(NSArray *)self->_sections count])
  {
    v11 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v4 section]);
    v7 = [v4 row];
    v8 = [v6 searchResults];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = [v6 searchResults];
      v11 = [v10 objectAtIndexedSubscript:v7];
    }
  }

  return v11;
}

- (id)viewForHeaderInSection:(int64_t)a3 isFirstNonEmptySection:(BOOL)a4
{
  v4 = a4;
  v6 = [(SearchListOrderedDataSource *)self sections];
  v7 = [v6 objectAtIndexedSubscript:a3];

  if ([v7 type] == 1)
  {
    v8 = [v7 title];
    if ([v8 length])
    {
      v9 = [[ResultsSectionHeaderView alloc] initWithTitle:v8 isFirstNonEmptySection:v4 showHairline:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];
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

- (id)titleForHeaderInSection:(int64_t)a3
{
  v5 = [(SearchListOrderedDataSource *)self sections];
  v6 = [v5 count];

  if (v6 >= a3)
  {
    v8 = [(SearchListOrderedDataSource *)self sections];
    v9 = [v8 objectAtIndexedSubscript:a3];

    if ([v9 type] == 1)
    {
      v7 = [v9 title];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v4 = [(SearchListOrderedDataSource *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  v6 = [v5 searchResults];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSections
{
  v2 = [(SearchListOrderedDataSource *)self sections];
  v3 = [v2 count];

  return v3;
}

- (SearchListOrderedDataSource)initWithObjects:(id)a3 searchSectionList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SearchListOrderedDataSource;
  v8 = [(SearchListOrderedDataSource *)&v10 init];
  if (v8 && [v6 count])
  {
    [(SearchListOrderedDataSource *)v8 _createSectionsWithObjects:v6 searchSectionList:v7];
  }

  return v8;
}

- (SearchListOrderedDataSource)initWithObjects:(id)a3
{
  v4.receiver = self;
  v4.super_class = SearchListOrderedDataSource;
  return [(SearchListOrderedDataSource *)&v4 init];
}

+ (int64_t)searchResultTypeWithGEOType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end