@interface THSearchTableViewDataSource
- (BOOL)indexPathCorrespondsToSearchResultRow:(id)row;
- (BOOL)indexPathCorrespondsToSeeAllResultsRow:(id)row;
- (THSearchTableViewDataSource)initWithSearchController:(id)controller searchViewMode:(int)mode;
- (id)p_resultsForSection:(int64_t)section;
- (id)p_resultsForSection:(int64_t)section onlyTop:(BOOL)top;
- (id)searchResultForTableIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path searchViewController:(id)controller;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)p_numberOfSections;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)numberOfResultsInSection:(int64_t)section;
- (void)updateForResultsKind:(int)kind;
@end

@implementation THSearchTableViewDataSource

- (THSearchTableViewDataSource)initWithSearchController:(id)controller searchViewMode:(int)mode
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = THSearchTableViewDataSource;
  v8 = [(THSearchTableViewDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchController, controller);
    v9->_searchViewMode = mode;
    *&v9->_showTextResults = 257;
  }

  return v9;
}

- (void)updateForResultsKind:(int)kind
{
  if (kind)
  {
    if (kind != 1)
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

- (id)p_resultsForSection:(int64_t)section onlyTop:(BOOL)top
{
  searchViewMode = [(THSearchTableViewDataSource *)self searchViewMode];
  if (searchViewMode == 2)
  {
    v14 = [(THSearchTableViewDataSource *)self p_resultKindForSection:section];
    if (v14 == 1)
    {
      searchController = [(THSearchTableViewDataSource *)self searchController];
      v16 = searchController;
      if (top)
      {
        [searchController topMediaSearchResults];
      }

      else
      {
        [searchController mediaSearchResults];
      }
    }

    else
    {
      if (v14)
      {
LABEL_14:
        suggestions = 0;
        goto LABEL_19;
      }

      searchController2 = [(THSearchTableViewDataSource *)self searchController];
      v16 = searchController2;
      if (top)
      {
        [searchController2 topTextSearchResults];
      }

      else
      {
        [searchController2 textSearchResults];
      }
    }
    v17 = ;
    suggestions = v17;

    goto LABEL_19;
  }

  if (searchViewMode == 1)
  {
    suggestions = [(THSearchTableViewDataSource *)self suggestions];
    goto LABEL_19;
  }

  if (searchViewMode)
  {
    goto LABEL_14;
  }

  suggestions = +[NSMutableArray array];
  searchController3 = [(THSearchTableViewDataSource *)self searchController];
  recentSearchCount = [searchController3 recentSearchCount];

  if (recentSearchCount >= 1)
  {
    for (i = 0; i != recentSearchCount; ++i)
    {
      searchController4 = [(THSearchTableViewDataSource *)self searchController];
      v13 = [searchController4 recentSearchQueryAtIndex:i];
      [suggestions addObject:v13];
    }
  }

LABEL_19:

  return suggestions;
}

- (id)p_resultsForSection:(int64_t)section
{
  p_onlyTopResults = [(THSearchTableViewDataSource *)self p_onlyTopResults];

  return [(THSearchTableViewDataSource *)self p_resultsForSection:section onlyTop:p_onlyTopResults];
}

- (unint64_t)numberOfResultsInSection:(int64_t)section
{
  v3 = [(THSearchTableViewDataSource *)self p_resultsForSection:section];
  v4 = [v3 count];

  return v4;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  searchViewMode = [(THSearchTableViewDataSource *)self searchViewMode];
  if (!searchViewMode)
  {
    v6 = @"Recent Searches";
    goto LABEL_11;
  }

  if (searchViewMode == 2)
  {
    v7 = [(THSearchTableViewDataSource *)self p_resultKindForSection:section];
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

  if (searchViewMode != 1)
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

- (id)searchResultForTableIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [pathCopy section]);
  v6 = [v5 count];

  if ([pathCopy row] >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [pathCopy section]);
    v8 = [v7 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  searchController = [(THSearchTableViewDataSource *)self searchController];
  searchViewMode = [(THSearchTableViewDataSource *)self searchViewMode];
  if (searchViewMode == 2)
  {
    v10 = [(THSearchTableViewDataSource *)self numberOfResultsInSection:section];
    v11 = [(THSearchTableViewDataSource *)self p_resultsForSection:section onlyTop:0];
    v12 = [v11 count];

    p_onlyTopResults = [(THSearchTableViewDataSource *)self p_onlyTopResults];
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

    if (p_onlyTopResults)
    {
      recentSearchCount = v15;
    }

    else
    {
      recentSearchCount = v10;
    }
  }

  else if (searchViewMode == 1)
  {
    suggestions = [(THSearchTableViewDataSource *)self suggestions];
    recentSearchCount = [suggestions count];
  }

  else if (searchViewMode)
  {
    recentSearchCount = 0;
  }

  else
  {
    recentSearchCount = [searchController recentSearchCount];
  }

  return recentSearchCount;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = objc_alloc_init(UITableViewCell);

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path searchViewController:(id)controller
{
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  searchController = [(THSearchTableViewDataSource *)self searchController];
  searchViewMode = [(THSearchTableViewDataSource *)self searchViewMode];
  if (searchViewMode == 2)
  {
    v20 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [pathCopy section]);
    v21 = [v20 count];

    v13 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:pathCopy];
    if (v13)
    {
      v19 = [controllerCopy tableView:viewCopy cellForSearchResult:v13];
    }

    else
    {
      v23 = -[THSearchTableViewDataSource p_resultKindForSection:](self, "p_resultKindForSection:", [pathCopy section]);
      if (v21)
      {
        v24 = -[THSearchTableViewDataSource p_resultsForSection:onlyTop:](self, "p_resultsForSection:onlyTop:", [pathCopy section], 0);
        v25 = [v24 count];

        [controllerCopy tableView:viewCopy seeAllResultsCellWithKind:v23 count:v25];
      }

      else
      {
        [controllerCopy tableView:viewCopy noResultsCellWithKind:v23];
      }
      v19 = ;
    }
  }

  else
  {
    if (searchViewMode == 1)
    {
      suggestions = [(THSearchTableViewDataSource *)self suggestions];
      v13 = [suggestions objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      if ([searchController isEncodedResultForPageNumber:v13])
      {
        v15 = [searchController displayNumberStringFromEncodedPageNumberResult:v13];
        v16 = THBundle();
        v17 = [v16 localizedStringForKey:@"Page %@" value:&stru_471858 table:0];

        v18 = [NSString stringWithFormat:v17, v15];

        v13 = v18;
      }
    }

    else
    {
      if (searchViewMode)
      {
        v22 = 0;
        goto LABEL_16;
      }

      v13 = [searchController recentSearchQueryAtIndex:{objc_msgSend(pathCopy, "row")}];
    }

    v19 = [controllerCopy tableView:viewCopy cellForPlainString:v13];
  }

  v22 = v19;

LABEL_16:
  backgroundColor = [viewCopy backgroundColor];
  [v22 setBackgroundColor:backgroundColor];

  return v22;
}

- (BOOL)indexPathCorrespondsToSeeAllResultsRow:(id)row
{
  rowCopy = row;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [rowCopy section]);
  v6 = [v5 count];

  if ([rowCopy row] >= v6)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:rowCopy];

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

- (BOOL)indexPathCorrespondsToSearchResultRow:(id)row
{
  rowCopy = row;
  v5 = -[THSearchTableViewDataSource p_resultsForSection:](self, "p_resultsForSection:", [rowCopy section]);
  v6 = [v5 count];

  if ([rowCopy row] >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(THSearchTableViewDataSource *)self searchResultForTableIndexPath:rowCopy];

    v8 = v7 != 0;
  }

  return v8;
}

@end