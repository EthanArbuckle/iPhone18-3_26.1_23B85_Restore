@interface THSearchTableViewDataSource
- (BOOL)indexPathCorrespondsToSearchResultRow:(id)a3;
- (BOOL)indexPathCorrespondsToSeeAllResultsRow:(id)a3;
- (THSearchTableViewDataSource)initWithSearchController:(id)a3 searchViewMode:(int)a4;
- (id)p_resultsForSection:(int64_t)a3;
- (id)p_resultsForSection:(int64_t)a3 onlyTop:(BOOL)a4;
- (id)searchResultForTableIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 searchViewController:(id)a5;
- (id)titleForHeaderInSection:(int64_t)a3;
- (int64_t)p_numberOfSections;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)numberOfResultsInSection:(int64_t)a3;
- (void)updateForResultsKind:(int)a3;
@end

@implementation THSearchTableViewDataSource

- (THSearchTableViewDataSource)initWithSearchController:(id)a3 searchViewMode:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = THSearchTableViewDataSource;
  v8 = [(THSearchTableViewDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchController, a3);
    v9->_searchViewMode = a4;
    *&v9->_showTextResults = 257;
  }

  return v9;
}

- (void)updateForResultsKind:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  self->_showTextResults = v3;
  self->_showMediaResults = v4;
}

- (int64_t)p_numberOfSections
{
  if ([(THSearchTableViewDataSource *)self searchViewMode]== 2)
  {
    return self->_showMediaResults + self->_showTextResults;
  }

  else
  {
    return 1;
  }
}

- (id)p_resultsForSection:(int64_t)a3 onlyTop:(BOOL)a4
{
  v7 = [(THSearchTableViewDataSource *)self searchViewMode];
  if (v7 == 2)
  {
    v14 = [(THSearchTableViewDataSource *)self p_resultKindForSection:a3];
    if (v14 == 1)
    {
      v18 = [(THSearchTableViewDataSource *)self searchController];
      v16 = v18;
      if (a4)
      {
        [v18 topMediaSearchResults];
      }

      else
      {
        [v18 mediaSearchResults];
      }
    }

    else
    {
      if (v14)
      {
LABEL_14:
        v8 = 0;
        goto LABEL_19;
      }

      v15 = [(THSearchTableViewDataSource *)self searchController];
      v16 = v15;
      if (a4)
      {
        [v15 topTextSearchResults];
      }

      else
      {
        [v15 textSearchResults];
      }
    }
    v17 = ;
    v8 = v17;

    goto LABEL_19;
  }

  if (v7 == 1)
  {
    v8 = [(THSearchTableViewDataSource *)self suggestions];
    goto LABEL_19;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = +[NSMutableArray array];
  v9 = [(THSearchTableViewDataSource *)self searchController];
  v10 = [v9 recentSearchCount];

  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = [(THSearchTableViewDataSource *)self searchController];
      v13 = [v12 recentSearchQueryAtIndex:i];
      [v8 addObject:v13];
    }
  }

LABEL_19:

  return v8;
}

- (id)p_resultsForSection:(int64_t)a3
{
  v5 = [(THSearchTableViewDataSource *)self p_onlyTopResults];

  return [(THSearchTableViewDataSource *)self p_resultsForSection:a3 onlyTop:v5];
}

- (unint64_t)numberOfResultsInSection:(int64_t)a3
{
  v3 = [(THSearchTableViewDataSource *)self p_resultsForSection:a3];
  v4 = [v3 count];

  return v4;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v5 = [(THSearchTableViewDataSource *)self searchViewMode];
  if (!v5)
  {
    v6 = @"Recent Searches";
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v7 = [(THSearchTableViewDataSource *)self p_resultKindForSection:a3];
    if (!v7)
    {
      v6 = @"Text";
      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v6 = @"Media";
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_12;
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v6 = @"Suggestions";
LABEL_11:
  v9 = THBundle();
  v8 = [v9 localizedStringForKey:v6 value:&stru_471858 table:0];

LABEL_12:

  return v8;
}

- (id)searchResultForTableIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [v4 section]);
  v6 = [v5 count];

  if ([v4 row] >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [v4 section]);
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "row")}];
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(THSearchTableViewDataSource *)self searchController];
  v7 = [(THSearchTableViewDataSource *)self searchViewMode];
  if (v7 == 2)
  {
    v10 = [(THSearchTableViewDataSource *)self numberOfResultsInSection:a4];
    v11 = [(THSearchTableViewDataSource *)self p_resultsForSection:a4 onlyTop:0];
    v12 = [v11 count];

    v13 = [(THSearchTableViewDataSource *)self p_onlyTopResults];
    if (v10)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = (v10 + 1);
    }

    if (v13)
    {
      v8 = v15;
    }

    else
    {
      v8 = v10;
    }
  }

  else if (v7 == 1)
  {
    v9 = [(THSearchTableViewDataSource *)self suggestions];
    v8 = [v9 count];
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 recentSearchCount];
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(UITableViewCell);

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 searchViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(THSearchTableViewDataSource *)self searchController];
  v12 = [(THSearchTableViewDataSource *)self searchViewMode];
  if (v12 == 2)
  {
    v20 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [v9 section]);
    v21 = [v20 count];

    v13 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:v9];
    if (v13)
    {
      v19 = [v10 tableView:v8 cellForSearchResult:v13];
    }

    else
    {
      v23 = -[THSearchTableViewDataSource p_resultKindForSection:](self, "p_resultKindForSection:", [v9 section]);
      if (v21)
      {
        v24 = -[THSearchTableViewDataSource p_resultsForSection:onlyTop:](self, "p_resultsForSection:onlyTop:", [v9 section], 0);
        v25 = [v24 count];

        [v10 tableView:v8 seeAllResultsCellWithKind:v23 count:v25];
      }

      else
      {
        [v10 tableView:v8 noResultsCellWithKind:v23];
      }
      v19 = ;
    }
  }

  else
  {
    if (v12 == 1)
    {
      v14 = [(THSearchTableViewDataSource *)self suggestions];
      v13 = [v14 objectAtIndex:{objc_msgSend(v9, "row")}];

      if ([v11 isEncodedResultForPageNumber:v13])
      {
        v15 = [v11 displayNumberStringFromEncodedPageNumberResult:v13];
        v16 = THBundle();
        v17 = [v16 localizedStringForKey:@"Page %@" value:&stru_471858 table:0];

        v18 = [NSString stringWithFormat:v17, v15];

        v13 = v18;
      }
    }

    else
    {
      if (v12)
      {
        v22 = 0;
        goto LABEL_16;
      }

      v13 = [v11 recentSearchQueryAtIndex:{objc_msgSend(v9, "row")}];
    }

    v19 = [v10 tableView:v8 cellForPlainString:v13];
  }

  v22 = v19;

LABEL_16:
  v26 = [v8 backgroundColor];
  [v22 setBackgroundColor:v26];

  return v22;
}

- (BOOL)indexPathCorrespondsToSeeAllResultsRow:(id)a3
{
  v4 = a3;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [v4 section]);
  v6 = [v5 count];

  if ([v4 row] >= v6)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:v4];

    v8 = v7 == 0;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)indexPathCorrespondsToSearchResultRow:(id)a3
{
  v4 = a3;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [v4 section]);
  v6 = [v5 count];

  if ([v4 row] >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:v4];

    v8 = v7 != 0;
  }

  return v8;
}

@end