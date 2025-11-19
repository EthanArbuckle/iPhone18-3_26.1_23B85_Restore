@interface _NBMediaSearchOperation
- (_NBMediaSearchOperation)initWithSearchDataSource:(id)a3 searchString:(id)a4;
- (id)_representativeItemFromCollection:(id)a3;
- (id)results;
- (void)executeSearch;
@end

@implementation _NBMediaSearchOperation

- (_NBMediaSearchOperation)initWithSearchDataSource:(id)a3 searchString:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = _NBMediaSearchOperation;
  v7 = [(_NBSearchOperation *)&v14 initWithSearchDataSource:v6 searchString:a4];
  if (v7)
  {
    v8 = [v6 searchQuery];
    v9 = [v8 copy];
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

- (id)_representativeItemFromCollection:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 items];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 mediaType] == &dword_4)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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