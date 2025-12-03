@interface MFAutocompleteResultsTableViewController
- (BOOL)confirmSelectedRecipient;
- (BOOL)containsRecipient:(id)recipient;
- (MFAutocompleteResultsTableViewController)initWithStyle:(int64_t)style;
- (MFAutocompleteResultsTableViewControllerDelegate)delegate;
- (NSArray)allRecipients;
- (double)_tableViewHeaderHeight;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_combinedResults;
- (id)_flattenedIndexPaths;
- (id)_indexPathForRecipient:(id)recipient;
- (id)_recipientAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)numberOfResults;
- (void)_selectSearchResultsRecipientAtIndexPath:(id)path;
- (void)_updateTableViewModelAnimated:(BOOL)animated;
- (void)clear;
- (void)dealloc;
- (void)invalidateSearchResultRecipient:(id)recipient;
- (void)loadView;
- (void)presentSearchResults:(id)results;
- (void)resetScrollPosition;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)setCellBackgroundColor:(id)color;
- (void)setDeferTableViewUpdates:(BOOL)updates;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation MFAutocompleteResultsTableViewController

- (void)dealloc
{
  tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
  [tableView setDataSource:0];

  tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
  [tableView2 setDelegate:0];

  v5.receiver = self;
  v5.super_class = MFAutocompleteResultsTableViewController;
  [(MFAutocompleteResultsTableViewController *)&v5 dealloc];
}

- (MFAutocompleteResultsTableViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MFAutocompleteResultsTableViewController;
  v3 = [(MFAutocompleteResultsTableViewController *)&v6 initWithStyle:style];
  if (v3)
  {
    mailAutoCompleteTableViewCellBackgroundColorForPopoverDisplay = [MEMORY[0x1E69DC888] mailAutoCompleteTableViewCellBackgroundColorForPopoverDisplay];
    [(MFAutocompleteResultsTableViewController *)v3 setCellBackgroundColor:mailAutoCompleteTableViewCellBackgroundColorForPopoverDisplay];

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

- (void)_updateTableViewModelAnimated:(BOOL)animated
{
  if (self->_deferTableViewUpdates)
  {
    self->_tableViewNeedsReload = 1;
  }

  else
  {
    animatedCopy = animated;
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
    if (animatedCopy)
    {
      tableView6 = [(_MFAutocompleteResultsTableViewModel *)v24 computeDiffForModel:v8];
      objc_storeStrong(&self->_tableViewModel, v8);
      tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
      [tableView beginUpdates];

      insertedRows = [tableView6 insertedRows];
      v12 = [insertedRows count];

      if (v12)
      {
        tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
        insertedRows2 = [tableView6 insertedRows];
        [tableView2 insertSections:insertedRows2 withRowAnimation:100];
      }

      deletedRows = [tableView6 deletedRows];
      v16 = [deletedRows count];

      if (v16)
      {
        tableView3 = [(MFAutocompleteResultsTableViewController *)self tableView];
        deletedRows2 = [tableView6 deletedRows];
        [tableView3 deleteSections:deletedRows2 withRowAnimation:3];
      }

      changedRows = [tableView6 changedRows];
      v20 = [changedRows count];

      if (v20)
      {
        tableView4 = [(MFAutocompleteResultsTableViewController *)self tableView];
        changedRows2 = [tableView6 changedRows];
        [tableView4 reloadSections:changedRows2 withRowAnimation:0];
      }

      tableView5 = [(MFAutocompleteResultsTableViewController *)self tableView];
      [tableView5 endUpdates];
    }

    else
    {
      objc_storeStrong(&self->_tableViewModel, v8);
      tableView6 = [(MFAutocompleteResultsTableViewController *)self tableView];
      [tableView6 reloadData];
    }
  }
}

- (void)setDeferTableViewUpdates:(BOOL)updates
{
  deferTableViewUpdates = self->_deferTableViewUpdates;
  if (deferTableViewUpdates == updates)
  {
    if (deferTableViewUpdates)
    {
      return;
    }
  }

  else
  {
    self->_deferTableViewUpdates = updates;
    if (updates)
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

- (void)presentSearchResults:(id)results
{
  v28 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFAutocompleteResultsTableViewController.m" lineNumber:240 description:@"Current thread must be main"];
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = resultsCopy;
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
        isSuggestedRecipient = [v13 isSuggestedRecipient];
        v15 = array2;
        if ((isSuggestedRecipient & 1) == 0)
        {
          if ([v13 isDirectoryServerResult])
          {
            v15 = array3;
          }

          else
          {
            v15 = array;
          }
        }

        [v15 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  objc_storeStrong(&self->_searchResults, array);
  objc_storeStrong(&self->_suggestedSearchResults, array2);
  objc_storeStrong(&self->_serverSearchResults, array3);
  tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  cellAnimationsEnabled = self->_cellAnimationsEnabled;
  if (cellAnimationsEnabled)
  {
    tableView = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
    v19 = [tableView count] != 0;
  }

  else
  {
    v19 = 0;
  }

  [(MFAutocompleteResultsTableViewController *)self _updateTableViewModelAnimated:v19, v23];
  if (cellAnimationsEnabled)
  {
  }

  if (indexPathForSelectedRow)
  {
    tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView2 scrollToRowAtIndexPath:indexPathForSelectedRow atScrollPosition:0 animated:1];

    tableView3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView3 selectRowAtIndexPath:indexPathForSelectedRow animated:0 scrollPosition:0];
  }
}

- (id)_flattenedIndexPaths
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x1E695DF70] array];
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
  _flattenedIndexPaths = [(MFAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([_flattenedIndexPaths count])
  {
    tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      v5 = [_flattenedIndexPaths indexOfObject:indexPathForSelectedRow];
      if (v5 + 1 >= [_flattenedIndexPaths count])
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [_flattenedIndexPaths objectAtIndex:?];

      indexPathForSelectedRow = v6;
    }

    else
    {
      indexPathForSelectedRow = [_flattenedIndexPaths firstObject];
    }

    tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView2 scrollToRowAtIndexPath:indexPathForSelectedRow atScrollPosition:0 animated:1];

    tableView3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView3 selectRowAtIndexPath:indexPathForSelectedRow animated:0 scrollPosition:0];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectPreviousSearchResult
{
  _flattenedIndexPaths = [(MFAutocompleteResultsTableViewController *)self _flattenedIndexPaths];
  if ([_flattenedIndexPaths count])
  {
    tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      v5 = [_flattenedIndexPaths indexOfObject:indexPathForSelectedRow];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = [_flattenedIndexPaths objectAtIndex:v5 - 1];

      indexPathForSelectedRow = v6;
    }

    else
    {
      indexPathForSelectedRow = [_flattenedIndexPaths lastObject];
    }

    tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView2 scrollToRowAtIndexPath:indexPathForSelectedRow atScrollPosition:0 animated:1];

    tableView3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView3 selectRowAtIndexPath:indexPathForSelectedRow animated:0 scrollPosition:0];

    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)confirmSelectedRecipient
{
  tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    [(MFAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:indexPathForSelectedRow];
  }

  return indexPathForSelectedRow != 0;
}

- (void)resetScrollPosition
{
  tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
  [tableView setContentOffset:0 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
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
  _combinedResults = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  ef_flatten = [_combinedResults ef_flatten];

  return ef_flatten;
}

- (BOOL)containsRecipient:(id)recipient
{
  recipientCopy = recipient;
  _combinedResults = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MFAutocompleteResultsTableViewController_containsRecipient___block_invoke;
  v9[3] = &unk_1E806CB00;
  v6 = recipientCopy;
  v10 = v6;
  v7 = [_combinedResults ef_any:v9];

  return v7;
}

- (unint64_t)numberOfResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _combinedResults = [(MFAutocompleteResultsTableViewController *)self _combinedResults];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MFAutocompleteResultsTableViewController_numberOfResults__block_invoke;
  v5[3] = &unk_1E806CB28;
  v5[4] = &v6;
  [_combinedResults enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__MFAutocompleteResultsTableViewController_numberOfResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (id)_indexPathForRecipient:(id)recipient
{
  recipientCopy = recipient;
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
  v6 = recipientCopy;
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

- (id)_recipientAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [pathCopy section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  return v6;
}

- (void)_selectSearchResultsRecipientAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(MFAutocompleteResultsTableViewController *)self _recipientAtIndexPath:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didSelectRecipient:v4 atIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didSelectRecipient:v4];
  }
}

- (void)invalidateSearchResultRecipient:(id)recipient
{
  v11[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v5 = [(MFAutocompleteResultsTableViewController *)self _indexPathForRecipient:recipientCopy];
  if ([v5 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(MFAutocompleteResultsTableViewController *)self tableView];
    v11[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [tableView2 deleteRowsAtIndexPaths:v8 withRowAnimation:2];

    v9 = -[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", [v5 section]);
    [v9 removeObjectAtIndex:{objc_msgSend(v5, "row")}];

    tableView3 = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView3 endUpdates];
  }
}

- (void)setCellBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_cellBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_cellBackgroundColor, color);
    tableView = [(MFAutocompleteResultsTableViewController *)self tableView];
    [tableView setBackgroundColor:v7];

    colorCopy = v7;
  }
}

- (double)_tableViewHeaderHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v2 _bodyLeading];
  v4 = v3;

  return v4 * 0.444444444 + v4 * 2.44444444;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section < 1 || (-[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", section), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (section == 2)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FOUND_ON_SERVERS" value:&stru_1F3CF3758 table:@"Main"];
  }

  else
  {
    if (section != 1)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FOUND_IN_MAIL" value:&stru_1F3CF3758 table:@"Main"];
  }

  v12 = v10;

LABEL_10:
  [viewCopy frame];
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
  localizedUppercaseString = [v12 localizedUppercaseString];
  [v22 setText:localizedUppercaseString];

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
  [viewCopy layoutMargins];
  v34 = v33;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(viewCopy, "semanticContentAttribute")}] == 1)
  {
    [viewCopy bounds];
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section && (-[_MFAutocompleteResultsTableViewModel sectionAtIndex:](self->_tableViewModel, "sectionAtIndex:", section), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_MFAutocompleteResultsTableViewModel *)self->_tableViewModel objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy _setShouldHaveFullLengthTopSeparator:0];
  [cellCopy _setShouldHaveFullLengthBottomSeparator:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = +[MFRecipientTableViewCell identifier];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];

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
  recipient = [v11 recipient];

  if (recipient != v9)
  {
    [v11 setRecipient:v9];
  }

  return v11;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[_MFAutocompleteResultsTableViewModel objectAtIndexedSubscript:](self->_tableViewModel, "objectAtIndexedSubscript:", [pathCopy section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteResultsController:self didRequestInfoAboutRecipient:v6];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(MFAutocompleteResultsTableViewController *)self _selectSearchResultsRecipientAtIndexPath:pathCopy];
}

- (MFAutocompleteResultsTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end