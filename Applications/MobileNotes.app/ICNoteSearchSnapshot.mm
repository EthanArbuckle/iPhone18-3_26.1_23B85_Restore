@interface ICNoteSearchSnapshot
- (BOOL)integratesSuggestions;
- (ICNoteSearchSnapshot)initWithDiffableDataSource:(id)source containerViewMode:(int64_t)mode isCompactSize:(BOOL)size collectionView:(id)view searchContext:(id)context;
- (ICNoteSearchSnapshotDelegate)delegate;
- (ICSearchSuggestionsContext)searchContext;
- (NSArray)currentSuggestions;
- (NSString)currentSearchDescription;
- (id)currentSnapshotClearingPreviousResults:(BOOL)results;
- (void)applyAndUpdateHeaders:(BOOL)headers animated:(BOOL)animated;
- (void)clear;
- (void)insertItems:(id)items intoSection:(id)section snapshot:(id)snapshot;
- (void)performBlockAndUpdateHeaders:(BOOL)headers animated:(BOOL)animated block:(id)block;
- (void)prepareSearchWithCannedSuggestionToken:(BOOL)token;
- (void)setVisibleSearchSuggestions:(id)suggestions;
- (void)switchToMode:(unint64_t)mode force:(BOOL)force;
- (void)updateHeaderView:(id)view forIndexPath:(id)path;
- (void)updateHeaderView:(id)view forIndexPath:(id)path usingSnapshot:(id)snapshot;
- (void)updateWithResults:(id)results;
@end

@implementation ICNoteSearchSnapshot

- (ICNoteSearchSnapshot)initWithDiffableDataSource:(id)source containerViewMode:(int64_t)mode isCompactSize:(BOOL)size collectionView:(id)view searchContext:(id)context
{
  sourceCopy = source;
  viewCopy = view;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = ICNoteSearchSnapshot;
  v16 = [(ICNoteSearchSnapshot *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_diffableDataSource, source);
    v17->_containerViewMode = mode;
    objc_storeStrong(&v17->_collectionView, view);
    v17->_isCompactSize = size;
    objc_storeWeak(&v17->_searchContext, contextCopy);
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
  isCompactSize = [(ICNoteSearchSnapshot *)self isCompactSize];
  v4 = +[ICSearchSuggestionsContext supportsSearchSuggestions];
  result = isCompactSize & v4;
  if (isCompactSize & 1) == 0 && (v4)
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
  searchResults = [(ICNoteSearchSnapshot *)self searchResults];
  suggestions = [searchResults suggestions];
  v4 = [suggestions copy];
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

- (void)prepareSearchWithCannedSuggestionToken:(BOOL)token
{
  tokenCopy = token;
  currentSnapshot = [(ICNoteSearchSnapshot *)self currentSnapshot];
  v9 = @"ICNoteSearchDataSourceSuggestionsSectionIdentifier";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [currentSnapshot deleteSectionsWithIdentifiers:v6];

  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:1 animated:0];
  v7 = [(ICNoteSearchSnapshot *)self currentSnapshotClearingPreviousResults:1];
  [(ICNoteSearchSnapshot *)self setCurrentSnapshot:v7];

  [(ICNoteSearchSnapshot *)self setIncludesCannedSuggestionToken:tokenCopy];
  v8 = objc_alloc_init(SearchResults);
  [(ICNoteSearchSnapshot *)self setSearchResults:v8];
}

- (id)currentSnapshotClearingPreviousResults:(BOOL)results
{
  resultsCopy = results;
  diffableDataSource = [(ICNoteSearchSnapshot *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  if (resultsCopy)
  {
    [snapshot deleteAllItems];
  }

  return snapshot;
}

- (void)insertItems:(id)items intoSection:(id)section snapshot:(id)snapshot
{
  itemsCopy = items;
  sectionCopy = section;
  snapshotCopy = snapshot;
  if (![snapshotCopy numberOfSections] || objc_msgSend(snapshotCopy, "indexOfSectionIdentifier:", sectionCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sectionCopy;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [snapshotCopy appendSectionsWithIdentifiers:v10];
  }

  if (itemsCopy && [itemsCopy count])
  {
    v11 = [itemsCopy copy];
    [snapshotCopy appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:sectionCopy];
  }
}

- (void)updateWithResults:(id)results
{
  resultsCopy = results;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (-[ICNoteSearchSnapshot behavior](self, "behavior") != 1 || [v9 isMathNote])
        {
          searchResults = [(ICNoteSearchSnapshot *)self searchResults];
          [searchResults addResult:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    currentSnapshot = [(ICNoteSearchSnapshot *)self currentSnapshot];
    [(ICNoteSearchSnapshot *)self insertItems:v5 intoSection:@"ICNoteSearchDataSourceSuggestionsSectionIdentifier" snapshot:currentSnapshot];
  }

  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:0 animated:0];
}

- (void)performBlockAndUpdateHeaders:(BOOL)headers animated:(BOOL)animated block:(id)block
{
  animatedCopy = animated;
  headersCopy = headers;
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100101AA8;
  v14 = sub_100101AB8;
  currentSnapshot = [(ICNoteSearchSnapshot *)self currentSnapshot];
  v9 = blockCopy;
  performBlockOnMainThreadAndWait();
  [(ICNoteSearchSnapshot *)self setCurrentSnapshot:v11[5], _NSConcreteStackBlock, 3221225472, sub_100101AC0, &unk_10064A008];
  [(ICNoteSearchSnapshot *)self applyAndUpdateHeaders:headersCopy animated:animatedCopy];

  _Block_object_dispose(&v10, 8);
}

- (void)applyAndUpdateHeaders:(BOOL)headers animated:(BOOL)animated
{
  animatedCopy = animated;
  currentSnapshot = [(ICNoteSearchSnapshot *)self currentSnapshot];

  if (!currentSnapshot)
  {
    [ICAssert handleFailedAssertWithCondition:"self.currentSnapshot != ((void*)0)" functionName:"[ICNoteSearchSnapshot applyAndUpdateHeaders:animated:]" simulateCrash:1 showAlert:0 format:@"Unexpected nil snapshot"];
  }

  [(ICNoteSearchSnapshot *)self currentSnapshot];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100101CB0;
  v17[3] = &unk_1006462D8;
  headersCopy = headers;
  v8 = v17[4] = self;
  v18 = v8;
  v9 = objc_retainBlock(v17);
  if (animatedCopy)
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

- (void)updateHeaderView:(id)view forIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  diffableDataSource = [(ICNoteSearchSnapshot *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  [(ICNoteSearchSnapshot *)self updateHeaderView:viewCopy forIndexPath:pathCopy usingSnapshot:snapshot];
}

- (void)updateHeaderView:(id)view forIndexPath:(id)path usingSnapshot:(id)snapshot
{
  viewCopy = view;
  pathCopy = path;
  snapshotCopy = snapshot;
  section = [pathCopy section];
  if (section >= [snapshotCopy numberOfSections])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[ICNoteSearchSnapshot updateHeaderView:forIndexPath:usingSnapshot:]", 1, 0, @"Snapshot out of sync with collection view. Asked to update visible header view for section that doesn't exist in snapshot. Asking for section %ld, got %ld sections.", [pathCopy section], objc_msgSend(snapshotCopy, "numberOfSections"));
    goto LABEL_19;
  }

  sectionIdentifiers = [snapshotCopy sectionIdentifiers];
  v12 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v12 == @"ICNoteSearchDataSourceTopHitsSectionIdentifier")
  {
    if ([snapshotCopy indexOfSectionIdentifier:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v16 = +[NSBundle mainBundle];
    v14 = [v16 localizedStringForKey:@"Top Hits" value:&stru_100661CF0 table:0];

    v17 = [snapshotCopy numberOfItemsInSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"];
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
    if ([snapshotCopy indexOfSectionIdentifier:@"ICNoteSearchDataSourceNoteSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v21 = +[NSBundle mainBundle];
    v14 = [v21 localizedStringForKey:@"Notes" value:&stru_100661CF0 table:0];

    v17 = [snapshotCopy numberOfItemsInSection:@"ICNoteSearchDataSourceNoteSectionIdentifier"];
    v18 = +[NSBundle mainBundle];
    v19 = v18;
    v20 = @"%lu (Notes) Found";
    goto LABEL_14;
  }

  if (v12 == @"ICNoteSearchDataSourceSuggestionsSectionIdentifier")
  {
    if ([snapshotCopy indexOfSectionIdentifier:@"ICNoteSearchDataSourceSuggestionsSectionIdentifier"] != 0x7FFFFFFFFFFFFFFFLL)
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

  if (v12 != @"ICNoteSearchDataSourceAttachmentSectionIdentifier" || [snapshotCopy indexOfSectionIdentifier:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (![(ICNoteSearchSnapshot *)self includesCannedSuggestionToken])
  {
    v23 = +[NSBundle mainBundle];
    v14 = [v23 localizedStringForKey:@"Attachments" value:&stru_100661CF0 table:0];

    v17 = [snapshotCopy numberOfItemsInSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"];
    v18 = +[NSBundle mainBundle];
    v19 = v18;
    v20 = @"%lu (Attachments) Found";
    goto LABEL_14;
  }

  v13 = 0;
  v14 = 0;
  v15 = 1;
LABEL_18:
  [viewCopy setHidden:v15];
  [viewCopy setTitle:v14 detail:v13];

LABEL_19:
}

- (NSString)currentSearchDescription
{
  currentSnapshot = [(ICNoteSearchSnapshot *)self currentSnapshot];
  if ([currentSnapshot indexOfSectionIdentifier:@"ICNoteSearchDataSourceNoteSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [currentSnapshot numberOfItemsInSection:@"ICNoteSearchDataSourceNoteSectionIdentifier"];
  }

  if ([currentSnapshot indexOfSectionIdentifier:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &v3[[currentSnapshot numberOfItemsInSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier"]];
  }

  if ([currentSnapshot indexOfSectionIdentifier:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"] == 0x7FFFFFFFFFFFFFFFLL)
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
    v6 = [currentSnapshot numberOfItemsInSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier"];
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

- (void)switchToMode:(unint64_t)mode force:(BOOL)force
{
  if (force || self->_mode != mode)
  {
    v6[6] = v4;
    v6[7] = v5;
    self->_mode = mode;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010263C;
    v6[3] = &unk_10064A030;
    v6[4] = self;
    v6[5] = mode;
    [(ICNoteSearchSnapshot *)self performBlockAndUpdateHeaders:1 animated:0 block:v6];
  }
}

- (void)setVisibleSearchSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ([(ICNoteSearchSnapshot *)self behavior]!= 1)
  {
    v4 = [NSMutableArray arrayWithArray:suggestionsCopy];
    searchResults = [(ICNoteSearchSnapshot *)self searchResults];
    [searchResults setSuggestions:v4];

    delegate = [(ICNoteSearchSnapshot *)self delegate];
    [delegate searchSnapshotDidUpdateSuggestions:self];
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