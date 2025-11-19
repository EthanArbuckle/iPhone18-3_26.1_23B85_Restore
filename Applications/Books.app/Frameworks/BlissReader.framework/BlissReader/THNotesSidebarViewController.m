@interface THNotesSidebarViewController
- (NSArray)sectionProviders;
- (NSString)searchText;
- (double)p_cellHeight;
- (id)emptyCellForTable:(id)a3;
- (id)p_findConstraint:(id)a3 onView:(id)a4;
- (id)p_indexPathForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (unint64_t)p_numberOfNotes;
- (unint64_t)p_visibleSectionProviderIndexForIndexPath:(id)a3;
- (void)cancelSearch;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)keyboardDidShow:(id)a3;
- (void)notesSidebarCell:(id)a3 highlightDidChange:(BOOL)a4;
- (void)notesSidebarCell:(id)a3 selectionDidChange:(BOOL)a4;
- (void)p_cleanup;
- (void)p_contentSizeCategoryDidChange:(id)a3;
- (void)p_setConstraint:(id)a3 onView:(id)a4 toValue:(double)a5;
- (void)p_setSeparatorsHidden:(BOOL)a3 forCellAtIndexPath:(id)a4;
- (void)p_setupChildViewControllers;
- (void)setSectionProviders:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateVisibleIndexes;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation THNotesSidebarViewController

- (void)dealloc
{
  [(THNotesSidebarViewController *)self p_cleanup];
  [(THNotesSidebarViewController *)self setSidebarDelegate:0];
  [(THNotesSidebarViewController *)self setNotesTableViewController:0];
  [(THNotesSidebarViewController *)self setSectionProviders:0];
  v3.receiver = self;
  v3.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v3 dealloc];
}

- (void)p_cleanup
{
  [(THNotesSidebarViewController *)self setTableView:0];

  [(THNotesSidebarViewController *)self setSearchBar:0];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v7 viewDidLoad];
  [(THNotesSidebarViewController *)self p_setupChildViewControllers];
  if (!self->mCellMap)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    mCellMap = self->mCellMap;
    self->mCellMap = v3;
  }

  v5 = +[UIColor bc_booksBackground];
  v6 = [(THNotesSidebarViewController *)self view];
  [v6 setBackgroundColor:v5];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v10 viewWillAppear:a3];
  v4 = [(THNotesSidebarViewController *)self tableView];
  [v4 setShowsVerticalScrollIndicator:0];

  v5 = [(THNotesSidebarViewController *)self searchBar];
  [v5 setBarStyle:0];

  v6 = [(THNotesSidebarViewController *)self view];
  v7 = [v6 im_isStyleDark];

  if (v7)
  {
    v8 = [(THNotesSidebarViewController *)self searchBar];
    [v8 setBarStyle:1];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
  [v9 addObserver:self selector:"p_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v25 viewDidAppear:a3];
  v4 = [(THNotesSidebarViewController *)self tableView];
  [v4 setShowsVerticalScrollIndicator:1];

  v5 = [(THNotesSidebarViewController *)self tableView];
  [v5 accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(THNotesSidebarViewController *)self tableView];
  v15 = [v14 window];
  [v15 accessibilityFrame];
  v28.origin.x = v16;
  v28.origin.y = v17;
  v28.size.width = v18;
  v28.size.height = v19;
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v27 = CGRectIntersection(v26, v28);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v24 = [(THNotesSidebarViewController *)self tableView];
  [v24 setAccessibilityFrame:{x, y, width, height}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v6 viewWillDisappear:a3];
  v4 = [(THNotesSidebarViewController *)self searchBar];
  [v4 resignFirstResponder];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];
}

- (void)setSectionProviders:(id)a3
{
  obj = a3;
  v4 = [(THNotesSidebarViewController *)self sectionProviders];

  if (v4 != obj)
  {
    objc_storeWeak(&self->mSectionProviders, obj);
  }

  [(THNotesSidebarViewController *)self updateVisibleIndexes];
}

- (void)updateVisibleIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(THNotesSidebarViewController *)self sectionProviders];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if (v7 == [(THNotesSidebarViewController *)self providerIndex])
        {
          goto LABEL_7;
        }

        if ([v10 wantsVisibility])
        {
          v11 = [(THNotesSidebarViewController *)self searchText];
          if (![v11 length])
          {

LABEL_7:
            [v3 addIndex:v7];
            goto LABEL_11;
          }

          v12 = [v10 annotationCount];

          if (v12)
          {
            goto LABEL_7;
          }
        }

LABEL_11:
        ++v7;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v13 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = v13;
    }

    while (v13);
  }

  v14 = [(THNotesSidebarViewController *)self searchText];
  if ([v14 length])
  {
    v15 = [(THNotesSidebarViewController *)self p_numberOfNotes];

    if (!v15)
    {
      [v3 removeAllIndexes];
    }
  }

  else
  {
  }

  objc_storeStrong(&self->mVisibleSectionProviderIndicies, v3);
  v16 = [(THNotesSidebarViewController *)self tableView];
  [v16 reloadData];
  if ([(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies containsIndex:[(THNotesSidebarViewController *)self providerIndex]])
  {
    v17 = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies countOfIndexesInRange:0, [(THNotesSidebarViewController *)self providerIndex]];
    if (v17 < [v16 numberOfSections])
    {
      v18 = [NSIndexPath indexPathForRow:0 inSection:v17];
      [v16 selectRowAtIndexPath:v18 animated:0 scrollPosition:1];
    }
  }
}

- (void)cancelSearch
{
  v3 = [(THNotesSidebarViewController *)self searchBar];
  [v3 resignFirstResponder];

  v4 = [(THNotesSidebarViewController *)self searchBar];
  [v4 setText:&stru_471858];
}

- (void)p_contentSizeCategoryDidChange:(id)a3
{
  [(THNotesSidebarViewController *)self setCellHeightValid:0];
  [(THNotesSidebarViewController *)self p_cellHeight];
  v5 = v4;
  v6 = [(THNotesSidebarViewController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [(THNotesSidebarViewController *)self view];
  [v7 setNeedsLayout];
}

- (id)p_indexPathForCell:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mCellMap allKeysForObject:a3];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)p_setSeparatorsHidden:(BOOL)a3 forCellAtIndexPath:(id)a4
{
  v18 = a4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(THNotesSidebarViewController *)self tableView];
    v6 = [v7 separatorStyle];
  }

  v8 = [(THNotesSidebarViewController *)self tableView];
  v9 = [v8 indexPathForRowPreceedingIndexPath:v18];

  if (v9)
  {
    v10 = [(THNotesSidebarViewController *)self p_cellForIndexPath:v9];
    if (!v10)
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"[THNotesSidebarViewController p_setSeparatorsHidden:forCellAtIndexPath:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:257 description:{@"invalid nil value for '%s'", "previousCell"}];
    }

    [v10 setSeparatorStyle:v6];
  }

  v14 = [(THNotesSidebarViewController *)self p_cellForIndexPath:v18];
  if (!v14)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesSidebarViewController p_setSeparatorsHidden:forCellAtIndexPath:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:262 description:{@"invalid nil value for '%s'", "thisCell"}];
  }

  [v14 setSeparatorStyle:v6];
}

- (id)p_findConstraint:(id)a3 onView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v7 constraints];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v14;

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }

    v18 = [v8 superview];
    v17 = [(THNotesSidebarViewController *)self p_findConstraint:v6 onView:v18];
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  return v17;
}

- (void)p_setConstraint:(id)a3 onView:(id)a4 toValue:(double)a5
{
  v11 = a3;
  v7 = [THNotesSidebarViewController p_findConstraint:"p_findConstraint:onView:" onView:?];
  if (!v7)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THNotesSidebarViewController p_setConstraint:onView:toValue:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:294 description:{@"Constraint not found: %@", v11}];
  }

  [v7 setConstant:a5];
}

- (void)p_setupChildViewControllers
{
  v3 = [(THNotesSidebarViewController *)self notesTableViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(UITableViewController);
    [(THNotesSidebarViewController *)self setNotesTableViewController:v4];

    v5 = [(THNotesSidebarViewController *)self notesTableViewController];
    [v5 setClearsSelectionOnViewWillAppear:0];

    v6 = [(THNotesSidebarViewController *)self notesTableViewController];
    [(THNotesSidebarViewController *)self addChildViewController:v6];
  }

  v7 = [(THNotesSidebarViewController *)self tableView];
  [v7 setDelegate:self];

  v8 = [(THNotesSidebarViewController *)self tableView];
  [v8 setDataSource:self];

  v9 = [(THNotesSidebarViewController *)self tableView];
  [UIViewController removeViewControllerForView:v9];

  v10 = [(THNotesSidebarViewController *)self tableView];
  v11 = [(THNotesSidebarViewController *)self notesTableViewController];
  [v11 setTableView:v10];

  [(THNotesSidebarViewController *)self p_cellHeight];
  v13 = v12;
  v14 = [(THNotesSidebarViewController *)self notesTableViewController];
  v15 = [v14 tableView];
  [v15 setRowHeight:v13];

  v16 = [(THNotesSidebarViewController *)self searchBar];
  [v16 setAutocorrectionType:1];

  v17 = THBundle();
  v18 = [v17 localizedStringForKey:@"Search" value:&stru_471858 table:0];
  v19 = [(THNotesSidebarViewController *)self searchBar];
  [v19 setPlaceholder:v18];

  v20 = objc_alloc_init(NSMutableIndexSet);
  mVisibleSectionProviderIndicies = self->mVisibleSectionProviderIndicies;
  self->mVisibleSectionProviderIndicies = v20;

  TSUScreenScale();
  v23 = 1.0 / v22;
  v24 = [(THNotesSidebarViewController *)self searchBarSeparator];
  [(THNotesSidebarViewController *)self p_setConstraint:@"SearchBarSeparatorHeight" onView:v24 toValue:v23];

  v25 = [(THNotesSidebarViewController *)self searchBarSeparator];
  [(THNotesSidebarViewController *)self p_setConstraint:@"SearchBarSeparatorVerticalSpace" onView:v25 toValue:-v23];

  v30 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v26 = +[UIColor clearColor];
  [v30 setBackgroundColor:v26];

  v27 = [(THNotesSidebarViewController *)self tableView];
  [v27 setTableFooterView:v30];

  v28 = +[UIColor bc_booksSeparatorColor];
  v29 = [(THNotesSidebarViewController *)self searchBarSeparator];
  [v29 setBackgroundColor:v28];
}

- (double)p_cellHeight
{
  if (![(THNotesSidebarViewController *)self cellHeightValid])
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v4 = [(THNotesSidebarViewController *)self p_cellFontTextStyle];
    v5 = [UIFont preferredFontForTextStyle:v4];
    [v3 setFont:v5];

    [v3 setText:@"One line"];
    [v3 setNumberOfLines:1];
    v6 = [(THNotesSidebarViewController *)self view];
    [v6 bounds];
    [v3 sizeThatFits:{v7, v8}];
    v10 = v9;

    [v3 setText:@"Two\nlines"];
    [v3 setNumberOfLines:2];
    v11 = [(THNotesSidebarViewController *)self view];
    [v11 bounds];
    [v3 sizeThatFits:{v12, v13}];
    v15 = v14;

    [(THNotesSidebarViewController *)self setCellHeight:v10 + 3.0 + 3.0 + v15 + 3.0];
  }

  [(THNotesSidebarViewController *)self cellHeight];
  return result;
}

- (unint64_t)p_numberOfNotes
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(THNotesSidebarViewController *)self sectionProviders];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) annotationCount];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)p_visibleSectionProviderIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies firstIndex];
  if ([v4 section] >= 1)
  {
    v6 = 0;
    do
    {
      v5 = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies indexGreaterThanIndex:v5];
      ++v6;
    }

    while ([v4 section] > v6);
  }

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  result = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)emptyCellForTable:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"emptyCell"];
  if (!v3)
  {
    v3 = [[THNotesSidebarTableCell alloc] initWithStyle:3 reuseIdentifier:@"emptyCell"];
    v4 = [(THNotesSidebarTableCell *)v3 textLabel];
    [v4 setText:&stru_471858];

    v5 = +[UIColor clearColor];
    [(THNotesSidebarTableCell *)v3 setBackgroundColor:v5];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[THNotesSidebarViewController p_numberOfNotes](self, "p_numberOfNotes") || (-[THNotesSidebarViewController searchText](self, "searchText"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 length], v21, !v22))
  {
    v8 = [v7 section];
    if (v8 >= [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count])
    {
      v9 = [(THNotesSidebarViewController *)self emptyCellForTable:v6];
      goto LABEL_15;
    }

    v9 = [v6 dequeueReusableCellWithIdentifier:@"notesViewCell"];
    if (!v9)
    {
      v10 = THBundle();
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 loadNibNamed:v12 owner:self options:0];

      v9 = [v13 objectAtIndex:0];
      v14 = [UIView alloc];
      [(THNotesSidebarTableCell *)v9 frame];
      v15 = [v14 initWithFrame:?];
      [(THNotesSidebarTableCell *)v9 setSelectedBackgroundView:v15];

      v16 = +[UIColor bc_booksTableSelectionColor];
      v17 = [(THNotesSidebarTableCell *)v9 selectedBackgroundView];
      [v17 setBackgroundColor:v16];

      v18 = +[UIColor bc_booksBackground];
      [(THNotesSidebarTableCell *)v9 setBackgroundColor:v18];

      [(THNotesSidebarTableCell *)v9 setClipsToBounds:1];
      [(THNotesSidebarTableCell *)v9 setImageBorderVisible:1];
      [(THNotesSidebarTableCell *)v9 setTopBorderVisible:0];
      [(THNotesSidebarTableCell *)v9 setBottomBorderVisible:0];
    }

    v19 = [(THNotesSidebarViewController *)self sectionProviders];
    v20 = [v19 objectAtIndex:{-[THNotesSidebarViewController p_visibleSectionProviderIndexForIndexPath:](self, "p_visibleSectionProviderIndexForIndexPath:", v7)}];
    [(THNotesSidebarTableCell *)v9 setSectionProvider:v20];
  }

  else
  {
    v19 = [v6 indexPathForSelectedRow];
    if (v19)
    {
      [v6 deselectRowAtIndexPath:v19 animated:0];
    }

    if ([v7 section])
    {
      v9 = [(THNotesSidebarViewController *)self emptyCellForTable:v6];
      goto LABEL_14;
    }

    v9 = [v6 dequeueReusableCellWithIdentifier:@"noResultCell"];
    if (v9)
    {
      goto LABEL_14;
    }

    v9 = [[THNotesSidebarTableCell alloc] initWithStyle:0 reuseIdentifier:@"noResultCell"];
    v24 = +[UIColor clearColor];
    [(THNotesSidebarTableCell *)v9 setBackgroundColor:v24];

    v20 = objc_alloc_init(UILabel);
    v25 = THBundle();
    v26 = [v25 localizedStringForKey:@"No Results" value:&stru_471858 table:0];
    [v20 setText:v26];

    [v20 setTextAlignment:1];
    v27 = [(THNotesSidebarViewController *)self p_cellFontTextStyle];
    v28 = [UIFont preferredFontForTextStyle:v27];
    [v20 setFont:v28];

    v29 = +[UIColor bc_booksSecondaryLabelColor];
    [v20 setTextColor:v29];

    v30 = +[UIColor bc_booksBackground];
    [v20 setBackgroundColor:v30];

    [v20 sizeToFit];
    [v20 frame];
    v32 = v31;
    v34 = v33;
    v35 = [(THNotesSidebarViewController *)self tableView];
    [v35 frame];
    v37 = (v36 - v32) * 0.5;
    v38 = ceilf(v37);

    [(THNotesSidebarViewController *)self p_cellHeight];
    *&v39 = (v39 - v34) * 0.5;
    [v20 setFrame:{v38, ceilf(*&v39), v32, v34}];
    [(THNotesSidebarTableCell *)v9 setNoResultsLabel:v20];
    v40 = [(THNotesSidebarTableCell *)v9 contentView];
    [v40 addSubview:v20];

    [(THNotesSidebarTableCell *)v9 setImageBorderVisible:0];
    [(THNotesSidebarTableCell *)v9 setTopBorderVisible:0];
    [(THNotesSidebarTableCell *)v9 setBottomBorderVisible:1];
  }

LABEL_14:
LABEL_15:
  [(THNotesSidebarTableCell *)v9 setDelegate:self];

  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 reuseIdentifier];
  v11 = [v10 isEqualToString:@"notesViewCell"];

  if (v11)
  {
    [(NSMutableDictionary *)self->mCellMap setObject:v8 forKey:v9];
    v12 = [(THNotesSidebarViewController *)self highlightedIndexPath];
    if (v12)
    {
      v13 = [(THNotesSidebarViewController *)self highlightedIndexPath];
      v14 = [v9 compare:v13] == 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(THNotesSidebarViewController *)self selectedIndexPath];
    if (v15)
    {
      v16 = [(THNotesSidebarViewController *)self selectedIndexPath];
      v17 = [v9 compare:v16] == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v14 || v17)
    {
      v18 = [v25 indexPathForRowPreceedingIndexPath:v9];
      if (v18)
      {
        v19 = [(THNotesSidebarViewController *)self p_cellForIndexPath:v18];
        if (!v19)
        {
          v20 = +[TSUAssertionHandler currentHandler];
          v21 = [NSString stringWithUTF8String:"[THNotesSidebarViewController tableView:willDisplayCell:forRowAtIndexPath:]"];
          v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
          [v20 handleFailureInFunction:v21 file:v22 lineNumber:513 description:{@"invalid nil value for '%s'", "previousCell"}];
        }

        [v19 setSeparatorStyle:0];
      }

      [v8 setSeparatorStyle:0];
    }

    else
    {
      [v8 setSeparatorStyle:{objc_msgSend(v25, "separatorStyle")}];
    }

    v23 = [(THNotesSidebarViewController *)self sidebarDelegate];
    v24 = [v23 isCollapsedForSidebarContentViewController:self];

    [v8 setAccessoryType:v24];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (([v5 section] & 0x8000000000000000) != 0 || (v6 = objc_msgSend(v5, "section"), v6 >= -[NSMutableIndexSet count](self->mVisibleSectionProviderIndicies, "count")))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [v10 row];
  if (v5 < [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count])
  {
    [(THNotesSidebarViewController *)self setProviderIndex:[(THNotesSidebarViewController *)self p_visibleSectionProviderIndexForIndexPath:v10]];
    v6 = [(THNotesSidebarViewController *)self sectionProviders];
    v7 = [v6 objectAtIndex:{-[THNotesSidebarViewController providerIndex](self, "providerIndex")}];

    v8 = [(THNotesSidebarViewController *)self sidebarDelegate];
    [v8 sidebarContentViewController:self willSelectSectionProvider:v7];

    v9 = [(THNotesSidebarViewController *)self searchBar];
    [v9 resignFirstResponder];
  }
}

- (void)notesSidebarCell:(id)a3 highlightDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(THNotesSidebarViewController *)self p_indexPathForCell:a3];
  v11 = v6;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(THNotesSidebarViewController *)self setHighlightedIndexPath:v7];
  v8 = v11;
  if (v11)
  {
    [(THNotesSidebarViewController *)self p_setSeparatorsHidden:v4 forCellAtIndexPath:v11];
    v9 = [(THNotesSidebarViewController *)self selectedIndexPath];

    v8 = v11;
    if (v9)
    {
      v10 = [(THNotesSidebarViewController *)self selectedIndexPath];
      [(THNotesSidebarViewController *)self p_setSeparatorsHidden:1 forCellAtIndexPath:v10];

      v8 = v11;
    }
  }
}

- (void)notesSidebarCell:(id)a3 selectionDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(THNotesSidebarViewController *)self p_indexPathForCell:a3];
  v11 = v6;
  if (v4)
  {
    if (!v6)
    {
      v9 = [(THNotesSidebarViewController *)self tableView];
      v10 = [v9 indexPathForSelectedRow];
      [(THNotesSidebarViewController *)self setSelectedIndexPath:v10];

      goto LABEL_8;
    }

    [(THNotesSidebarViewController *)self setSelectedIndexPath:v6];
  }

  else
  {
    [(THNotesSidebarViewController *)self setSelectedIndexPath:0];
    v7 = v11;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [(THNotesSidebarViewController *)self p_setSeparatorsHidden:v4 forCellAtIndexPath:v11];
  v8 = [(THNotesSidebarViewController *)self highlightedIndexPath];

  v7 = v11;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [(THNotesSidebarViewController *)self highlightedIndexPath];
  [(THNotesSidebarViewController *)self p_setSeparatorsHidden:1 forCellAtIndexPath:v9];
LABEL_8:

  v7 = v11;
LABEL_9:
}

- (NSString)searchText
{
  v2 = [(THNotesSidebarViewController *)self searchBar];
  v3 = [v2 text];

  return v3;
}

- (void)keyboardDidShow:(id)a3
{
  if (([(THNotesSidebarViewController *)self im_isCompactHeight]& 1) == 0)
  {
    v4 = [(THNotesSidebarViewController *)self tableView];
    [v4 scrollToNearestSelectedRowAtScrollPosition:0 animated:1];
  }
}

- (NSArray)sectionProviders
{
  WeakRetained = objc_loadWeakRetained(&self->mSectionProviders);

  return WeakRetained;
}

@end