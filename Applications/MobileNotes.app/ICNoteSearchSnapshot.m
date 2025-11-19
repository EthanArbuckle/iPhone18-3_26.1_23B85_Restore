@interface ICNoteSearchSnapshot
- (BOOL)integratesSuggestions;
- (ICNoteSearchSnapshot)initWithDiffableDataSource:(id)a3 containerViewMode:(int64_t)a4 isCompactSize:(BOOL)a5 collectionView:(id)a6 searchContext:(id)a7;
- (ICNoteSearchSnapshotDelegate)delegate;
- (ICSearchSuggestionsContext)searchContext;
- (NSArray)currentSuggestions;
- (NSString)currentSearchDescription;
- (id)currentSnapshotClearingPreviousResults:(BOOL)a3;
- (void)applyAndUpdateHeaders:(BOOL)a3 animated:(BOOL)a4;
- (void)clear;
- (void)insertItems:(id)a3 intoSection:(id)a4 snapshot:(id)a5;
- (void)performBlockAndUpdateHeaders:(BOOL)a3 animated:(BOOL)a4 block:(id)a5;
- (void)prepareSearchWithCannedSuggestionToken:(BOOL)a3;
- (void)setVisibleSearchSuggestions:(id)a3;
- (void)switchToMode:(unint64_t)a3 force:(BOOL)a4;
- (void)updateHeaderView:(id)a3 forIndexPath:(id)a4;
- (void)updateHeaderView:(id)a3 forIndexPath:(id)a4 usingSnapshot:(id)a5;
- (void)updateWithResults:(id)a3;
@end

@implementation ICNoteSearchSnapshot

- (ICNoteSearchSnapshot)initWithDiffableDataSource:(id)a3 containerViewMode:(int64_t)a4 isCompactSize:(BOOL)a5 collectionView:(id)a6 searchContext:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = ICNoteSearchSnapshot;
  v16 = [(ICNoteSearchSnapshot *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_diffableDataSource, a3);
    v17->_containerViewMode = a4;
    objc_storeStrong(&v17->_collectionView, a6);
    v17->_isCompactSize = a5;
    objc_storeWeak(&v17->_searchContext, v15);
    v17->_mode = +[ICSearchSuggestionsContext supportsSearchSuggestions];
    v17->_includesCannedSuggestionToken = 0;
    v18 = [(ICNoteSearchSnapshot *)v17 currentSnapshotClearingPreviousResults:0];
    currentSnapshot = v17->_currentSnapshot;
    v17->_currentSnapshot = v18;
  }

  return v17;
}

- (BOOL)integratesSuggestions
{
  v3 = [(ICNoteSearchSnapshot *)self isCompactSize];
  v4 = +[ICSearchSuggestionsContext supportsSearchSuggestions];
  result = v3 & v4;
  if (v3 & 1) == 0 && (v4)
  {
    if ([(ICNoteSearchSnapshot *)self containerViewMode])
    {
      return 0;
    }

    else
    {
      return _UISolariumEnabled() ^ 1;
    }
  }

  return result;
}

- (NSArray)currentSuggestions
{
  v2 = [(ICNoteSearchSnapshot *)self searchResults];
  v3 = [v2 suggestions];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = v6;

  return v6;
}

- (void)prepareSearchWithCannedSuggestionToken:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteSearchSnapshot *)self currentSnapshot];
  v9 = @"ICNoteSearchDataSourceSuggestionsSectionIdentifier";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v5 deleteSectionsWithIdentifiers:v6];

  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:1 animated:0];
  v7 = [(ICNoteSearchSnapshot *)self currentSnapshotClearingPreviousResults:1];
  [(ICNoteSearchSnapshot *)self setCurrentSnapshot:v7];

  [(ICNoteSearchSnapshot *)self setIncludesCannedSuggestionToken:v3];
  v8 = objc_alloc_init(SearchResults);
  [(ICNoteSearchSnapshot *)self setSearchResults:v8];
}

- (id)currentSnapshotClearingPreviousResults:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICNoteSearchSnapshot *)self diffableDataSource];
  v5 = [v4 snapshot];

  if (v3)
  {
    [v5 deleteAllItems];
  }

  return v5;
}

- (void)insertItems:(id)a3 intoSection:(id)a4 snapshot:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v9 numberOfSections] || objc_msgSend(v9, "indexOfSectionIdentifier:", v8) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v8;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [v9 appendSectionsWithIdentifiers:v10];
  }

  if (v7 && [v7 count])
  {
    v11 = [v7 copy];
    [v9 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:v8];
  }
}

- (void)updateWithResults:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (-[ICNoteSearchSnapshot behavior](self, "behavior") != 1 || [v9 isMathNote])
        {
          v10 = [(ICNoteSearchSnapshot *)self searchResults];
          [v10 addResult:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(ICNoteSearchSnapshot *)self switchToMode:[(ICNoteSearchSnapshot *)self mode] force:1];
}

- (void)clear
{
  v3 = [(ICNoteSearchSnapshot *)self currentSnapshotClearingPreviousResults:1];
  [(ICNoteSearchSnapshot *)self setCurrentSnapshot:v3];

  v4 = objc_alloc_init(SearchResults);
  [(ICNoteSearchSnapshot *)self setSearchResults:v4];

  if ([(ICNoteSearchSnapshot *)self integratesSuggestions])
  {
    v5 = +[ICSearchSuggestion orderedDefaultSearchSuggestions];
    v6 = [(ICNoteSearchSnapshot *)self currentSnapshot];
    [(ICNoteSearchSnapshot *)self insertItems:v5 intoSection:@"ICNoteSearchDataSourceSuggestionsSectionIdentifier" snapshot:v6];
  }

  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:0 animated:0];
}

- (void)performBlockAndUpdateHeaders:(BOOL)a3 animated:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100101AA8;
  v14 = sub_100101AB8;
  v15 = [(ICNoteSearchSnapshot *)self currentSnapshot];
  v9 = v8;
  performBlockOnMainThreadAndWait();
  [(ICNoteSearchSnapshot *)self setCurrentSnapshot:v11[5], _NSConcreteStackBlock, 3221225472, sub_100101AC0, &unk_10064A008];
  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:v6 animated:v5];

  _Block_object_dispose(&v10, 8);
}

- (void)applyAndUpdateHeaders:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ICNoteSearchSnapshot *)self currentSnapshot];

  if (!v7)
  {
    [ICAssert handleFailedAssertWithCondition:"self.currentSnapshot != ((void*)0)" functionName:"[ICNoteSearchSnapshot applyAndUpdateHeaders:animated:]" simulateCrash:1 showAlert:0 format:@"Unexpected nil snapshot"];
  }

  [(ICNoteSearchSnapshot *)self currentSnapshot];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100101CB0;
  v17[3] = &unk_1006462D8;
  v19 = a3;
  v8 = v17[4] = self;
  v18 = v8;
  v9 = objc_retainBlock(v17);
  if (v4)
  {
    v10 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v11 = sub_100101E44;
  }

  else
  {
    v10 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v11 = sub_100101EA0;
  }

  v10[2] = v11;
  v10[3] = &unk_100645BC8;
  v10[4] = self;
  v12 = v8;
  v10[5] = v12;
  v10[6] = v9;
  v13 = v9;
  performBlockOnMainThread();

  v14 = +[NSNotificationCenter defaultCenter];

  [v14 postNotificationName:ICDataSourceDataUpdateDidRenderNotification object:self];
}

- (void)updateHeaderView:(id)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ICNoteSearchSnapshot *)self diffableDataSource];
  v8 = [v9 snapshot];
  [(ICNoteSearchSnapshot *)self updateHeaderView:v7 forIndexPath:v6 usingSnapshot:v8];
}

- (void)updateHeaderView:(id)a3 forIndexPath:(id)a4 usingSnapshot:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 section];
  if (v10 >= [v9 numberOfSections])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[ICNoteSearchSnapshot updateHeaderView:forIndexPath:usingSnapshot:]", 1, 0, @"Snapshot out of sync with collection view. Asked to update visible header view for section that doesn't exist in snapshot. Asking for section %ld, got %ld sections.", [v8 section], objc_msgSend(v9, "numberOfSections"));
    goto LABEL_19;
  }

  v11 = [v9 sectionIdentifiers];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  if (v12 == @"ICNoteSearchDataSourceTopHitsSectionIdentifier")
  {
    if ([v9 indexOfSectionIdentifier:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v16 = +[NSBundle mainBundle];
    v14 = [v16 localizedStringForKey:@"Top Hits" value:&stru_100661CF0 table:0];

    v17 = [v9 numberOfItemsInSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"];
    v18 = +[NSBundle mainBundle];
    v19 = v18;
    v20 = @"%lu (Top_Hits) Found";
LABEL_14:
    v22 = [v18 localizedStringForKey:v20 value:&stru_100661CF0 table:0];
    v13 = [NSString localizedStringWithFormat:v22, v17];

LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  if (v12 == @"ICNoteSearchDataSourceNoteSectionIdentifier")
  {
    if ([v9 indexOfSectionIdentifier:@"ICNoteSearchDataSourceNoteSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v21 = +[NSBundle mainBundle];
    v14 = [v21 localizedStringForKey:@"Notes" value:&stru_100661CF0 table:0];

    v17 = [v9 numberOfItemsInSection:@"ICNoteSearchDataSourceNoteSectionIdentifier"];
    v18 = +[NSBundle mainBundle];
    v19 = v18;
    v20 = @"%lu (Notes) Found";
    goto LABEL_14;
  }

  if (v12 == @"ICNoteSearchDataSourceSuggestionsSectionIdentifier")
  {
    if ([v9 indexOfSectionIdentifier:@"ICNoteSearchDataSourceSuggestionsSectionIdentifier"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = +[NSBundle mainBundle];
      v14 = [v19 localizedStringForKey:@"Suggested" value:&stru_100661CF0 table:0];
      v13 = 0;
      goto LABEL_15;
    }

LABEL_17:
    v15 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  if (v12 != @"ICNoteSearchDataSourceAttachmentSectionIdentifier" || [v9 indexOfSectionIdentifier:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (![(ICNoteSearchSnapshot *)self includesCannedSuggestionToken])
  {
    v23 = +[NSBundle mainBundle];
    v14 = [v23 localizedStringForKey:@"Attachments" value:&stru_100661CF0 table:0];

    v17 = [v9 numberOfItemsInSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"];
    v18 = +[NSBundle mainBundle];
    v19 = v18;
    v20 = @"%lu (Attachments) Found";
    goto LABEL_14;
  }

  v13 = 0;
  v14 = 0;
  v15 = 1;
LABEL_18:
  [v24 setHidden:v15];
  [v24 setTitle:v14 detail:v13];

LABEL_19:
}

- (NSString)currentSearchDescription
{
  v2 = [(ICNoteSearchSnapshot *)self currentSnapshot];
  if ([v2 indexOfSectionIdentifier:@"ICNoteSearchDataSourceNoteSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 numberOfItemsInSection:@"ICNoteSearchDataSourceNoteSectionIdentifier"];
  }

  if ([v2 indexOfSectionIdentifier:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &v3[[v2 numberOfItemsInSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"]];
  }

  if ([v2 indexOfSectionIdentifier:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v3)
    {
LABEL_8:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"No Results" value:&stru_100661CF0 table:0];
      goto LABEL_15;
    }
  }

  else
  {
    v6 = [v2 numberOfItemsInSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"];
    v7 = v6;
    if (v3 && v6)
    {
      v4 = +[NSBundle mainBundle];
      v8 = [v4 localizedStringForKey:@"Found %lu notes value:%lu attachments" table:{&stru_100661CF0, 0}];
      v5 = [NSString localizedStringWithFormat:v8, v3, v7];

      goto LABEL_15;
    }

    if (!v3)
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      v4 = +[NSBundle mainBundle];
      v9 = [v4 localizedStringForKey:@"Found %lu attachments" value:&stru_100661CF0 table:0];
      [NSString localizedStringWithFormat:v9, v7];
      goto LABEL_14;
    }
  }

  v4 = +[NSBundle mainBundle];
  v9 = [v4 localizedStringForKey:@"Found %lu notes" value:&stru_100661CF0 table:0];
  [NSString localizedStringWithFormat:v9, v3];
  v5 = LABEL_14:;

LABEL_15:

  return v5;
}

- (void)switchToMode:(unint64_t)a3 force:(BOOL)a4
{
  if (a4 || self->_mode != a3)
  {
    v6[6] = v4;
    v6[7] = v5;
    self->_mode = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010263C;
    v6[3] = &unk_10064A030;
    v6[4] = self;
    v6[5] = a3;
    [(ICNoteSearchSnapshot *)self performBlockAndUpdateHeaders:1 animated:0 block:v6];
  }
}

- (void)setVisibleSearchSuggestions:(id)a3
{
  v7 = a3;
  if ([(ICNoteSearchSnapshot *)self behavior]!= 1)
  {
    v4 = [NSMutableArray arrayWithArray:v7];
    v5 = [(ICNoteSearchSnapshot *)self searchResults];
    [v5 setSuggestions:v4];

    v6 = [(ICNoteSearchSnapshot *)self delegate];
    [v6 searchSnapshotDidUpdateSuggestions:self];
  }
}

- (ICNoteSearchSnapshotDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSearchSuggestionsContext)searchContext
{
  WeakRetained = objc_loadWeakRetained(&self->_searchContext);

  return WeakRetained;
}

@end