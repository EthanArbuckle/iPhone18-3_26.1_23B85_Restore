@interface MFAutocompleteResultsTableViewController
- (BOOL)confirmSelectedRecipient;
- (BOOL)containsRecipient:(id)a3;
- (MFAutocompleteResultsTableViewController)initWithStyle:(int64_t)a3;
- (MFAutocompleteResultsTableViewControllerDelegate)delegate;
- (NSArray)allRecipients;
- (double)_tableViewHeaderHeight;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_combinedResults;
- (id)_flattenedIndexPaths;
- (id)_indexPathForRecipient:(id)a3;
- (id)_recipientAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)numberOfResults;
- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3;
- (void)_updateTableViewModelAnimated:(BOOL)a3;
- (void)clear;
- (void)dealloc;
- (void)invalidateSearchResultRecipient:(id)a3;
- (void)loadView;
- (void)presentSearchResults:(id)a3;
- (void)resetScrollPosition;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)setCellBackgroundColor:(id)a3;
- (void)setDeferTableViewUpdates:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation MFAutocompleteResultsTableViewController

- (void)dealloc
{
  v3 = [(MFAutocompleteResultsTableViewController *)self tableView];
  [v3 setDataSource:0];

  v4 = [(MFAutocompleteResultsTableViewController *)self tableView];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = MFAutocompleteResultsTableViewController;
  [(MFAutocompleteResultsTableViewController *)&v5 dealloc];
}

- (MFAutocompleteResultsTableViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MFAutocompleteResultsTableViewController;
  v3 = [(MFAutocompleteResultsTableViewController *)&v6 initWithStyle:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] mailAutoCompleteTableViewCellBackgroundColorForPopoverDisplay];
    [(MFAutocompleteResultsTableViewController *)v3 setCellBackgroundColor:v4];

    [(MFAutocompleteResultsTableViewController *)v3 setShouldDimIrrelevantInformation:1];
    [(MFAutocompleteResultsTableViewController *)v3 setShouldHighlightCompleteMatches:1];
    [(MFAutocompleteResultsTableViewController *)v3 setDeferTableViewUpdates:0];
  }

  return v3;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setAutoresizingMask:2];
  [v4 setShowsHorizontalScrollIndicator:0];
  [v4 setShowsVerticalScrollIndicator:1];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [v4 _setMarginWidth:16.0];
  +[MFRecipientTableViewCell height];
  [v4 setEstimatedRowHeight:?];
  [v4 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v4 setContentInset:{-1.0, 0.0, -1.0, 0.0}];
  [(MFAutocompleteResultsTableViewController *)self setView:v4];
}

- (void)_updateTableViewModelAnimated:(BOOL)a3
{
  if (self->_deferTableViewUpdates)
  {
    self->_tableViewNeedsReload = 1;
  }

  else
  {
    v4 = a3;
    tableViewModel = self->_tableViewModel;
    if (!tableViewModel)
    {
      v6 = [[_MFAutocompleteResultsTableViewModel alloc] initWithNumberOfSections:3];
      v7 = self->_tableViewModel;
      self->_tableViewModel = v6;

      tableViewModel = self->_tableViewModel;
    }

    v24 = tableViewModel;
    v8 = [[_MFAutocompleteResultsTableViewModel alloc] initWithNumberOfSections:[(_MFAutocompleteResultsTableViewModel *)v24 numberOfSections]];
    [(_MFAutocompleteResultsTableViewModel *)v8 setObject:self->_searchResults atIndexedSubscript:0];
    [(_MFAutocompleteResultsTableViewModel *)v8 setObject:self->_suggestedSearchResults atIndexedSubscript:1];
    [(_MFAutocompleteResultsTableViewModel *)v8 setObject:self->_serverSearchResults atIndexedSubscript:2];
    if (v4)
    {
      v9 = [(_MFAutocompleteResultsTableViewModel *)v24 computeDiffForModel:v8];
      objc_storeStrong(&self->_tableViewModel, v8);
      v10 = [(MFAutocompleteResultsTableViewController *)self tableView];
      [v10 beginUpdates];

      v11 = [v9 insertedRows];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [(MFAutocompleteResultsTableViewController *)self tableView];
        v14 = [v9 insertedRows];
        [v13 insertSections:v14 withRowAnimation:100];
      }

      v15 = [v9 deletedRows];
      v16 = [v15 count];

      if (v16)
      {
        v17 = [(MFAutocompleteResultsTableViewController *)self tableView];
        v18 = [v9 deletedRows];
        [v17 deleteSections:v18 withRowAnimation:3];
      }

      v19 = [v9 changedRows];
      v20 = [v19 count];

      if (v20)
      {
        v21 = [(MFAutocompleteResultsTableViewController *)self tableView];
        v22 = [v9 changedRows];
        [v21 reloadSections:v22 withRowAnimation:0];
      }

      v23 = [(MFAutocompleteResultsTableViewController *)self tableView];
      [v23 endUpdates];
    }

    else
    {
      objc_storeStrong(&self->_tableViewModel, v8);
      v9 = [(MFAutocompleteResultsTableViewController *)self tableView];
      [v9 reloadData];
    }
  }
}

- (void)setDeferTableViewUpdates:(BOOL)a3
{
  deferTableViewUpdates = self->_deferTableViewUpdates;
  if (deferTableViewUpdates == a3)
  {
    if (deferTableViewUpdates)
    {
      return;
    }
  }

  else
  {
    self->_deferTableViewUpdates = a3;
    if (a3)
    {
      return;
    }
  }

  if (self->_tableViewNeedsReload)
  {
    self->_tableViewNeedsReload = 0;
    [(MFAutocompleteResultsTableViewController *)self _updateTableViewModelAnimated:0];
  }
}

- (void)presentSearchResults:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MFAutocompleteResultsTableViewController.m" lineNumber:240 description:@"Current thread must be main"];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 isSuggestedRecipient];
        v15 = v7;
        if ((v14 & 1) == 0)
        {
          if ([v13 isDirectoryServerResult])
          {
            v15 = v8;
          }

          else
          {
            v15 = v6;
          }
        }

        [v15 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  objc_storeStrong(&self->_searchResults, v6);
  objc_storeStrong(&self->_suggestedSearchResults, v7);
  objc_storeStrong(&self->_serverSearchResults, v8);
  v16 = [(MFAutocompleteResultsTableViewController *)self tableView];
  v17 = [v16 indexPathForSelectedRow];

  cellAnimationsEnabled = self->_cellAnimationsEnabled;
  if (cellAnimationsEnabled)
  {
    v16 = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
    v19 = [v16 count] != 0;
  }

  else
  {
    v19 = 0;
  }

  [(MFAutocompleteResultsTableViewController *)self _updateTableViewModelAnimated:v19, v23];
  if (cellAnimationsEnabled)
  {
  }

  if (v17)
  {
    v20 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v20 scrollToRowAtIndexPath:v17 atScrollPosition:0 animated:1];

    v21 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v21 selectRowAtIndexPath:v17 animated:0 scrollPosition:0];
  }
}

- (id)_flattenedIndexPaths
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = [MEMORY[0x1E695DF70] array];
  tableViewModel = self->_tableViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__MFAutocompleteResultsTableViewController__flattenedIndexPaths__block_invoke;
  v6[3] = &unk_1E806CAB0;
  v6[4] = &v7;
  [(_MFAutocompleteResultsTableViewModel *)tableViewModel enumerateSections:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__MFAutocompleteResultsTableViewController__flattenedIndexPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:a2];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }
  }
}

- (void)selectNextSearchResult
{
  v9 = [(MFAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([v9 count])
  {
    v3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    v4 = [v3 indexPathForSelectedRow];

    if (v4)
    {
      v5 = [v9 indexOfObject:v4];
      if (v5 + 1 >= [v9 count])
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [v9 objectAtIndex:?];

      v4 = v6;
    }

    else
    {
      v4 = [v9 firstObject];
    }

    v7 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v7 scrollToRowAtIndexPath:v4 atScrollPosition:0 animated:1];

    v8 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v8 selectRowAtIndexPath:v4 animated:0 scrollPosition:0];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectPreviousSearchResult
{
  v9 = [(MFAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([v9 count])
  {
    v3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    v4 = [v3 indexPathForSelectedRow];

    if (v4)
    {
      v5 = [v9 indexOfObject:v4];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [v9 objectAtIndex:v5 - 1];

      v4 = v6;
    }

    else
    {
      v4 = [v9 lastObject];
    }

    v7 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v7 scrollToRowAtIndexPath:v4 atScrollPosition:0 animated:1];

    v8 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v8 selectRowAtIndexPath:v4 animated:0 scrollPosition:0];

    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)confirmSelectedRecipient
{
  v3 = [(MFAutocompleteResultsTableViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];

  if (v4)
  {
    [(MFAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:v4];
  }

  return v4 != 0;
}

- (void)resetScrollPosition
{
  v2 = [(MFAutocompleteResultsTableViewController *)self tableView];
  [v2 setContentOffset:0 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)clear
{
  searchResults = self->_searchResults;
  self->_searchResults = 0;

  suggestedSearchResults = self->_suggestedSearchResults;
  self->_suggestedSearchResults = 0;

  serverSearchResults = self->_serverSearchResults;
  self->_serverSearchResults = 0;

  [(MFAutocompleteResultsTableViewController *)self _updateTableViewModelAnimated:0];
}

- (id)_combinedResults
{
  v8[3] = *MEMORY[0x1E69E9840];
  searchResults = self->_searchResults;
  suggestedSearchResults = self->_suggestedSearchResults;
  serverSearchResults = self->_serverSearchResults;
  if (!searchResults)
  {
    searchResults = MEMORY[0x1E695E0F0];
  }

  if (!suggestedSearchResults)
  {
    suggestedSearchResults = MEMORY[0x1E695E0F0];
  }

  v8[0] = searchResults;
  v8[1] = suggestedSearchResults;
  if (serverSearchResults)
  {
    v5 = serverSearchResults;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSArray)allRecipients
{
  v2 = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  v3 = [v2 ef_flatten];

  return v3;
}

- (BOOL)containsRecipient:(id)a3
{
  v4 = a3;
  v5 = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MFAutocompleteResultsTableViewController_containsRecipient___block_invoke;
  v9[3] = &unk_1E806CB00;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_any:v9];

  return v7;
}

- (unint64_t)numberOfResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MFAutocompleteResultsTableViewController_numberOfResults__block_invoke;
  v5[3] = &unk_1E806CB28;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__MFAutocompleteResultsTableViewController_numberOfResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (id)_indexPathForRecipient:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  tableViewModel = self->_tableViewModel;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__MFAutocompleteResultsTableViewController__indexPathForRecipient___block_invoke;
  v9[3] = &unk_1E806CB50;
  v11 = &v17;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  [(_MFAutocompleteResultsTableViewModel *)tableViewModel enumerateSections:v9];
  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v18[3] inSection:v14[3]];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __67__MFAutocompleteResultsTableViewController__indexPathForRecipient___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  *(*(a1[5] + 8) + 24) = [v7 indexOfObject:a1[4]];
  if (*(*(a1[5] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[6] + 8) + 24) = a2;
    *a4 = 1;
  }
}

- (id)_recipientAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  return v6;
}

- (void)_selectSearchResultsRecipientAtIndexPath:(id)a3
{
  v6 = a3;
  v4 = [(MFAutocompleteResultsTableViewController *)self _recipientAtIndexPath:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didSelectRecipient:v4 atIndex:{objc_msgSend(v6, "row")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didSelectRecipient:v4];
  }
}

- (void)invalidateSearchResultRecipient:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFAutocompleteResultsTableViewController *)self _indexPathForRecipient:v4];
  if ([v5 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v6 beginUpdates];

    v7 = [(MFAutocompleteResultsTableViewController *)self tableView];
    v11[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:2];

    v9 = -[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v5 section]);
    [v9 removeObjectAtIndex:{objc_msgSend(v5, "row")}];

    v10 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v10 endUpdates];
  }
}

- (void)setCellBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_cellBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_cellBackgroundColor, a3);
    v6 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [v6 setBackgroundColor:v7];

    v5 = v7;
  }
}

- (double)_tableViewHeaderHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v2 _bodyLeading];
  v4 = v3;

  return v4 * 0.444444444 + v4 * 2.44444444;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 < 1 || (-[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (a4 == 2)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FOUND_ON_SERVERS" value:&stru_1F3CF3758 table:@"Main"];
  }

  else
  {
    if (a4 != 1)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FOUND_IN_MAIL" value:&stru_1F3CF3758 table:@"Main"];
  }

  v12 = v10;

LABEL_10:
  [v6 frame];
  v14 = v13;
  [(MFAutocompleteResultsTableViewController *)self _tableViewHeaderHeight];
  v16 = v15;
  v17 = objc_alloc(MEMORY[0x1E69DD250]);
  v18 = MEMORY[0x1E695F058];
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v11 = [v17 initWithFrame:{*MEMORY[0x1E695F058], v20, v14, v16}];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v19, v20, *(v18 + 16), *(v18 + 24)}];
  v23 = [v12 localizedUppercaseString];
  [v22 setText:v23];

  [v22 setFont:v21];
  v24 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [v22 setTextColor:v24];

  [v22 sizeToFit];
  [v21 _bodyLeading];
  v26 = v25;
  [v22 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v6 layoutMargins];
  v34 = v33;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v6, "semanticContentAttribute")}] == 1)
  {
    [v6 bounds];
    MaxX = CGRectGetMaxX(v40);
    v41.origin.x = v34;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    Width = CGRectGetWidth(v41);
    v42.origin.x = v34;
    v42.origin.y = v28;
    v42.size.width = v30;
    v42.size.height = v32;
    v34 = MaxX - Width - CGRectGetMinX(v42);
  }

  [v11 frame];
  [v22 setFrame:{v34, v37 - v32 - v26 * 0.444444444, v30, v32}];
  [v11 addSubview:v22];

LABEL_13:

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 && (-[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
  {
    [(MFAutocompleteResultsTableViewController *)self _tableViewHeaderHeight];
    v10 = v9;
  }

  else
  {
    v10 = 2.22507386e-308;
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_MFAutocompleteResultsTableViewModel *)self->_tableViewModel objectAtIndexedSubscript:a4];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 _setShouldHaveFullLengthTopSeparator:0];
  [v5 _setShouldHaveFullLengthBottomSeparator:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v10 = +[MFRecipientTableViewCell identifier];
  v11 = [v6 dequeueReusableCellWithIdentifier:v10];

  if (!v11)
  {
    v12 = objc_alloc([(MFAutocompleteResultsTableViewController *)self recipientTableViewCellClass]);
    v13 = +[MFRecipientTableViewCell identifier];
    v11 = [v12 initWithStyle:0 reuseIdentifier:v13];
  }

  [v11 setBackgroundColor:self->_cellBackgroundColor];
  [v11 setShouldHighlightCompleteMatches:self->_shouldHighlightCompleteMatches];
  [v11 setShouldDimIrrelevantInformation:self->_shouldDimIrrelevantInformation];
  if ([v9 showsAccessoryButton])
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  [v11 setAccessoryType:v14];
  v15 = [v11 recipient];

  if (v15 != v9)
  {
    [v11 setRecipient:v9];
  }

  return v11;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v8 = a4;
  v5 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [v8 section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didRequestInfoAboutRecipient:v6];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  [(MFAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:v6];
}

- (MFAutocompleteResultsTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end