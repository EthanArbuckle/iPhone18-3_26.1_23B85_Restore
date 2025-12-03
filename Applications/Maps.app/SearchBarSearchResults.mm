@interface SearchBarSearchResults
- (SearchBarSearchResults)init;
- (id)copy;
- (id)filteredResultsWithBackfill:(int64_t)backfill;
- (void)addResultSet:(id)set withMaxCount:(unint64_t)count;
@end

@implementation SearchBarSearchResults

- (id)copy
{
  v3 = objc_alloc_init(SearchBarSearchResults);
  [(SearchBarSearchResults *)v3 setResultSets:self->_resultSets];
  return v3;
}

- (void)addResultSet:(id)set withMaxCount:(unint64_t)count
{
  resultSets = self->_resultSets;
  setCopy = set;
  v11 = [NSMutableArray arrayWithArray:resultSets];
  v8 = [[SearchBarSearchResultSet alloc] initWithResults:setCopy maxCount:count];

  [v11 addObject:v8];
  v9 = [v11 copy];
  v10 = self->_resultSets;
  self->_resultSets = v9;
}

- (id)filteredResultsWithBackfill:(int64_t)backfill
{
  if (self->_resultSets)
  {
    v39 = objc_alloc_init(NSMutableArray);
    v5 = [(NSArray *)self->_resultSets count];
    v35[1] = v35;
    v36 = &v35[-2 * v5];
    bzero(v36, 16 * v5);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35[0] = self;
    v6 = self->_resultSets;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v48;
      v37 = v36 + 8;
      do
      {
        v11 = 0;
        v12 = &v37[16 * v9];
        v38 = v9 + v8;
        do
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v47 + 1) + 8 * v11);
          results = [v13 results];
          v15 = [results count];

          v16 = [v13 count];
          if (v15 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          *(v12 - 1) = v17;
          *v12 = v15 - v17;
          v11 = v11 + 1;
          v12 += 16;
        }

        while (v8 != v11);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
        v9 = v38;
      }

      while (v8);
    }

    v18 = v35[0];
    if (backfill >= 1)
    {
      v19 = v36 + 8;
      do
      {
        if (![*(v18 + 8) count])
        {
          break;
        }

        v20 = 0;
        v21 = 1;
        v22 = v19;
        do
        {
          v23 = *v22;
          if (*v22)
          {
            v24 = backfill < 1;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v21 = 0;
            ++*(v22 - 1);
            *v22 = v23 - 1;
            --backfill;
          }

          ++v20;
          v22 += 2;
        }

        while (v20 < [*(v18 + 8) count]);
      }

      while (!(v21 & 1 | (backfill < 1)));
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = *(v18 + 8);
    v25 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v44;
      do
      {
        v29 = 0;
        v30 = &v36[16 * v27];
        v37 = &v27[v26];
        do
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v38);
          }

          v31 = *v30;
          v30 += 16;
          results2 = [*(*(&v43 + 1) + 8 * v29) results];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1006B567C;
          v40[3] = &unk_1016262D0;
          v42 = v31;
          v41 = v39;
          [results2 enumerateObjectsUsingBlock:v40];

          v29 = v29 + 1;
        }

        while (v26 != v29);
        v26 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
        v27 = v37;
      }

      while (v26);
    }
  }

  else
  {
    v39 = 0;
  }

  v33 = v39;

  return v33;
}

- (SearchBarSearchResults)init
{
  v6.receiver = self;
  v6.super_class = SearchBarSearchResults;
  v2 = [(SearchBarSearchResults *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSArray);
    resultSets = v2->_resultSets;
    v2->_resultSets = v3;
  }

  return v2;
}

@end