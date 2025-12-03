@interface _NBMediaSearchOperation
- (_NBMediaSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string;
- (id)_representativeItemFromCollection:(id)collection;
- (id)results;
- (void)executeSearch;
@end

@implementation _NBMediaSearchOperation

- (_NBMediaSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = _NBMediaSearchOperation;
  v7 = [(_NBSearchOperation *)&v14 initWithSearchDataSource:sourceCopy searchString:string];
  if (v7)
  {
    searchQuery = [sourceCopy searchQuery];
    v9 = [searchQuery copy];
    query = v7->_query;
    v7->_query = v9;

    v11 = objc_opt_new();
    searchResults = v7->_searchResults;
    v7->_searchResults = v11;
  }

  return v7;
}

- (void)executeSearch
{
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  query = self->_query;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_EF64;
  v4[3] = &unk_20C28;
  v4[4] = self;
  [(MPMediaQuery *)query _enumerateCollectionsUsingBlock:v4];
}

- (id)_representativeItemFromCollection:(id)collection
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [collection items];
  v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(items);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 mediaType] == &dword_4)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)results
{
  v2 = [(NSMutableArray *)self->_searchResults copy];

  return v2;
}

@end