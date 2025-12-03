@interface THNotesSidebarViewController
- (NSArray)sectionProviders;
- (NSString)searchText;
- (double)p_cellHeight;
- (id)emptyCellForTable:(id)table;
- (id)p_findConstraint:(id)constraint onView:(id)view;
- (id)p_indexPathForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (unint64_t)p_numberOfNotes;
- (unint64_t)p_visibleSectionProviderIndexForIndexPath:(id)path;
- (void)cancelSearch;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)keyboardDidShow:(id)show;
- (void)notesSidebarCell:(id)cell highlightDidChange:(BOOL)change;
- (void)notesSidebarCell:(id)cell selectionDidChange:(BOOL)change;
- (void)p_cleanup;
- (void)p_contentSizeCategoryDidChange:(id)change;
- (void)p_setConstraint:(id)constraint onView:(id)view toValue:(double)value;
- (void)p_setSeparatorsHidden:(BOOL)hidden forCellAtIndexPath:(id)path;
- (void)p_setupChildViewControllers;
- (void)setSectionProviders:(id)providers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateVisibleIndexes;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  view = [(THNotesSidebarViewController *)self view];
  [view setBackgroundColor:v5];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v10 viewWillAppear:appear];
  tableView = [(THNotesSidebarViewController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:0];

  searchBar = [(THNotesSidebarViewController *)self searchBar];
  [searchBar setBarStyle:0];

  view = [(THNotesSidebarViewController *)self view];
  im_isStyleDark = [view im_isStyleDark];

  if (im_isStyleDark)
  {
    searchBar2 = [(THNotesSidebarViewController *)self searchBar];
    [searchBar2 setBarStyle:1];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
  [v9 addObserver:self selector:"p_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v25.receiver = self;
  v25.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v25 viewDidAppear:appear];
  tableView = [(THNotesSidebarViewController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:1];

  tableView2 = [(THNotesSidebarViewController *)self tableView];
  [tableView2 accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  tableView3 = [(THNotesSidebarViewController *)self tableView];
  window = [tableView3 window];
  [window accessibilityFrame];
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
  tableView4 = [(THNotesSidebarViewController *)self tableView];
  [tableView4 setAccessibilityFrame:{x, y, width, height}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = THNotesSidebarViewController;
  [(THNotesSidebarViewController *)&v6 viewWillDisappear:disappear];
  searchBar = [(THNotesSidebarViewController *)self searchBar];
  [searchBar resignFirstResponder];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];
}

- (void)setSectionProviders:(id)providers
{
  obj = providers;
  sectionProviders = [(THNotesSidebarViewController *)self sectionProviders];

  if (sectionProviders != obj)
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
  sectionProviders = [(THNotesSidebarViewController *)self sectionProviders];
  v5 = [sectionProviders countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(sectionProviders);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if (v7 == [(THNotesSidebarViewController *)self providerIndex])
        {
          goto LABEL_7;
        }

        if ([v10 wantsVisibility])
        {
          searchText = [(THNotesSidebarViewController *)self searchText];
          if (![searchText length])
          {

LABEL_7:
            [v3 addIndex:v7];
            goto LABEL_11;
          }

          annotationCount = [v10 annotationCount];

          if (annotationCount)
          {
            goto LABEL_7;
          }
        }

LABEL_11:
        ++v7;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v13 = [sectionProviders countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = v13;
    }

    while (v13);
  }

  searchText2 = [(THNotesSidebarViewController *)self searchText];
  if ([searchText2 length])
  {
    p_numberOfNotes = [(THNotesSidebarViewController *)self p_numberOfNotes];

    if (!p_numberOfNotes)
    {
      [v3 removeAllIndexes];
    }
  }

  else
  {
  }

  objc_storeStrong(&self->mVisibleSectionProviderIndicies, v3);
  tableView = [(THNotesSidebarViewController *)self tableView];
  [tableView reloadData];
  if ([(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies containsIndex:[(THNotesSidebarViewController *)self providerIndex]])
  {
    v17 = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies countOfIndexesInRange:0, [(THNotesSidebarViewController *)self providerIndex]];
    if (v17 < [tableView numberOfSections])
    {
      v18 = [NSIndexPath indexPathForRow:0 inSection:v17];
      [tableView selectRowAtIndexPath:v18 animated:0 scrollPosition:1];
    }
  }
}

- (void)cancelSearch
{
  searchBar = [(THNotesSidebarViewController *)self searchBar];
  [searchBar resignFirstResponder];

  searchBar2 = [(THNotesSidebarViewController *)self searchBar];
  [searchBar2 setText:&stru_471858];
}

- (void)p_contentSizeCategoryDidChange:(id)change
{
  [(THNotesSidebarViewController *)self setCellHeightValid:0];
  [(THNotesSidebarViewController *)self p_cellHeight];
  v5 = v4;
  tableView = [(THNotesSidebarViewController *)self tableView];
  [tableView setRowHeight:v5];

  view = [(THNotesSidebarViewController *)self view];
  [view setNeedsLayout];
}

- (id)p_indexPathForCell:(id)cell
{
  v3 = [(NSMutableDictionary *)self->mCellMap allKeysForObject:cell];
  if ([v3 count])
  {
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)p_setSeparatorsHidden:(BOOL)hidden forCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (hidden)
  {
    separatorStyle = 0;
  }

  else
  {
    tableView = [(THNotesSidebarViewController *)self tableView];
    separatorStyle = [tableView separatorStyle];
  }

  tableView2 = [(THNotesSidebarViewController *)self tableView];
  v9 = [tableView2 indexPathForRowPreceedingIndexPath:pathCopy];

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

    [v10 setSeparatorStyle:separatorStyle];
  }

  v14 = [(THNotesSidebarViewController *)self p_cellForIndexPath:pathCopy];
  if (!v14)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesSidebarViewController p_setSeparatorsHidden:forCellAtIndexPath:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:262 description:{@"invalid nil value for '%s'", "thisCell"}];
  }

  [v14 setSeparatorStyle:separatorStyle];
}

- (id)p_findConstraint:(id)constraint onView:(id)view
{
  constraintCopy = constraint;
  viewCopy = view;
  v8 = viewCopy;
  if (viewCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    constraints = [viewCopy constraints];
    v10 = [constraints countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(constraints);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        identifier = [v14 identifier];
        v16 = [identifier isEqualToString:constraintCopy];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [constraints countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    superview = [v8 superview];
    v17 = [(THNotesSidebarViewController *)self p_findConstraint:constraintCopy onView:superview];
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  return v17;
}

- (void)p_setConstraint:(id)constraint onView:(id)view toValue:(double)value
{
  constraintCopy = constraint;
  v7 = [THNotesSidebarViewController p_findConstraint:"p_findConstraint:onView:" onView:?];
  if (!v7)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THNotesSidebarViewController p_setConstraint:onView:toValue:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesSidebarViewController.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:294 description:{@"Constraint not found: %@", constraintCopy}];
  }

  [v7 setConstant:value];
}

- (void)p_setupChildViewControllers
{
  notesTableViewController = [(THNotesSidebarViewController *)self notesTableViewController];

  if (!notesTableViewController)
  {
    v4 = objc_alloc_init(UITableViewController);
    [(THNotesSidebarViewController *)self setNotesTableViewController:v4];

    notesTableViewController2 = [(THNotesSidebarViewController *)self notesTableViewController];
    [notesTableViewController2 setClearsSelectionOnViewWillAppear:0];

    notesTableViewController3 = [(THNotesSidebarViewController *)self notesTableViewController];
    [(THNotesSidebarViewController *)self addChildViewController:notesTableViewController3];
  }

  tableView = [(THNotesSidebarViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(THNotesSidebarViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(THNotesSidebarViewController *)self tableView];
  [UIViewController removeViewControllerForView:tableView3];

  tableView4 = [(THNotesSidebarViewController *)self tableView];
  notesTableViewController4 = [(THNotesSidebarViewController *)self notesTableViewController];
  [notesTableViewController4 setTableView:tableView4];

  [(THNotesSidebarViewController *)self p_cellHeight];
  v13 = v12;
  notesTableViewController5 = [(THNotesSidebarViewController *)self notesTableViewController];
  tableView5 = [notesTableViewController5 tableView];
  [tableView5 setRowHeight:v13];

  searchBar = [(THNotesSidebarViewController *)self searchBar];
  [searchBar setAutocorrectionType:1];

  v17 = THBundle();
  v18 = [v17 localizedStringForKey:@"Search" value:&stru_471858 table:0];
  searchBar2 = [(THNotesSidebarViewController *)self searchBar];
  [searchBar2 setPlaceholder:v18];

  v20 = objc_alloc_init(NSMutableIndexSet);
  mVisibleSectionProviderIndicies = self->mVisibleSectionProviderIndicies;
  self->mVisibleSectionProviderIndicies = v20;

  TSUScreenScale();
  v23 = 1.0 / v22;
  searchBarSeparator = [(THNotesSidebarViewController *)self searchBarSeparator];
  [(THNotesSidebarViewController *)self p_setConstraint:@"SearchBarSeparatorHeight" onView:searchBarSeparator toValue:v23];

  searchBarSeparator2 = [(THNotesSidebarViewController *)self searchBarSeparator];
  [(THNotesSidebarViewController *)self p_setConstraint:@"SearchBarSeparatorVerticalSpace" onView:searchBarSeparator2 toValue:-v23];

  v30 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v26 = +[UIColor clearColor];
  [v30 setBackgroundColor:v26];

  tableView6 = [(THNotesSidebarViewController *)self tableView];
  [tableView6 setTableFooterView:v30];

  v28 = +[UIColor bc_booksSeparatorColor];
  searchBarSeparator3 = [(THNotesSidebarViewController *)self searchBarSeparator];
  [searchBarSeparator3 setBackgroundColor:v28];
}

- (double)p_cellHeight
{
  if (![(THNotesSidebarViewController *)self cellHeightValid])
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    p_cellFontTextStyle = [(THNotesSidebarViewController *)self p_cellFontTextStyle];
    v5 = [UIFont preferredFontForTextStyle:p_cellFontTextStyle];
    [v3 setFont:v5];

    [v3 setText:@"One line"];
    [v3 setNumberOfLines:1];
    view = [(THNotesSidebarViewController *)self view];
    [view bounds];
    [v3 sizeThatFits:{v7, v8}];
    v10 = v9;

    [v3 setText:@"Two\nlines"];
    [v3 setNumberOfLines:2];
    view2 = [(THNotesSidebarViewController *)self view];
    [view2 bounds];
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
  sectionProviders = [(THNotesSidebarViewController *)self sectionProviders];
  v3 = [sectionProviders countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(sectionProviders);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) annotationCount];
      }

      v4 = [sectionProviders countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)p_visibleSectionProviderIndexForIndexPath:(id)path
{
  pathCopy = path;
  firstIndex = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies firstIndex];
  if ([pathCopy section] >= 1)
  {
    v6 = 0;
    do
    {
      firstIndex = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies indexGreaterThanIndex:firstIndex];
      ++v6;
    }

    while ([pathCopy section] > v6);
  }

  return firstIndex;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  result = [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)emptyCellForTable:(id)table
{
  v3 = [table dequeueReusableCellWithIdentifier:@"emptyCell"];
  if (!v3)
  {
    v3 = [[THNotesSidebarTableCell alloc] initWithStyle:3 reuseIdentifier:@"emptyCell"];
    textLabel = [(THNotesSidebarTableCell *)v3 textLabel];
    [textLabel setText:&stru_471858];

    v5 = +[UIColor clearColor];
    [(THNotesSidebarTableCell *)v3 setBackgroundColor:v5];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[THNotesSidebarViewController p_numberOfNotes](self, "p_numberOfNotes") || (-[THNotesSidebarViewController searchText](self, "searchText"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 length], v21, !v22))
  {
    section = [pathCopy section];
    if (section >= [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count])
    {
      v9 = [(THNotesSidebarViewController *)self emptyCellForTable:viewCopy];
      goto LABEL_15;
    }

    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"notesViewCell"];
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
      selectedBackgroundView = [(THNotesSidebarTableCell *)v9 selectedBackgroundView];
      [selectedBackgroundView setBackgroundColor:v16];

      v18 = +[UIColor bc_booksBackground];
      [(THNotesSidebarTableCell *)v9 setBackgroundColor:v18];

      [(THNotesSidebarTableCell *)v9 setClipsToBounds:1];
      [(THNotesSidebarTableCell *)v9 setImageBorderVisible:1];
      [(THNotesSidebarTableCell *)v9 setTopBorderVisible:0];
      [(THNotesSidebarTableCell *)v9 setBottomBorderVisible:0];
    }

    sectionProviders = [(THNotesSidebarViewController *)self sectionProviders];
    v20 = [sectionProviders objectAtIndex:{-[THNotesSidebarViewController p_visibleSectionProviderIndexForIndexPath:](self, "p_visibleSectionProviderIndexForIndexPath:", pathCopy)}];
    [(THNotesSidebarTableCell *)v9 setSectionProvider:v20];
  }

  else
  {
    sectionProviders = [viewCopy indexPathForSelectedRow];
    if (sectionProviders)
    {
      [viewCopy deselectRowAtIndexPath:sectionProviders animated:0];
    }

    if ([pathCopy section])
    {
      v9 = [(THNotesSidebarViewController *)self emptyCellForTable:viewCopy];
      goto LABEL_14;
    }

    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"noResultCell"];
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
    p_cellFontTextStyle = [(THNotesSidebarViewController *)self p_cellFontTextStyle];
    v28 = [UIFont preferredFontForTextStyle:p_cellFontTextStyle];
    [v20 setFont:v28];

    v29 = +[UIColor bc_booksSecondaryLabelColor];
    [v20 setTextColor:v29];

    v30 = +[UIColor bc_booksBackground];
    [v20 setBackgroundColor:v30];

    [v20 sizeToFit];
    [v20 frame];
    v32 = v31;
    v34 = v33;
    tableView = [(THNotesSidebarViewController *)self tableView];
    [tableView frame];
    v37 = (v36 - v32) * 0.5;
    v38 = ceilf(v37);

    [(THNotesSidebarViewController *)self p_cellHeight];
    *&v39 = (v39 - v34) * 0.5;
    [v20 setFrame:{v38, ceilf(*&v39), v32, v34}];
    [(THNotesSidebarTableCell *)v9 setNoResultsLabel:v20];
    contentView = [(THNotesSidebarTableCell *)v9 contentView];
    [contentView addSubview:v20];

    [(THNotesSidebarTableCell *)v9 setImageBorderVisible:0];
    [(THNotesSidebarTableCell *)v9 setTopBorderVisible:0];
    [(THNotesSidebarTableCell *)v9 setBottomBorderVisible:1];
  }

LABEL_14:
LABEL_15:
  [(THNotesSidebarTableCell *)v9 setDelegate:self];

  return v9;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  reuseIdentifier = [cellCopy reuseIdentifier];
  v11 = [reuseIdentifier isEqualToString:@"notesViewCell"];

  if (v11)
  {
    [(NSMutableDictionary *)self->mCellMap setObject:cellCopy forKey:pathCopy];
    highlightedIndexPath = [(THNotesSidebarViewController *)self highlightedIndexPath];
    if (highlightedIndexPath)
    {
      highlightedIndexPath2 = [(THNotesSidebarViewController *)self highlightedIndexPath];
      v14 = [pathCopy compare:highlightedIndexPath2] == 0;
    }

    else
    {
      v14 = 0;
    }

    selectedIndexPath = [(THNotesSidebarViewController *)self selectedIndexPath];
    if (selectedIndexPath)
    {
      selectedIndexPath2 = [(THNotesSidebarViewController *)self selectedIndexPath];
      v17 = [pathCopy compare:selectedIndexPath2] == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v14 || v17)
    {
      v18 = [viewCopy indexPathForRowPreceedingIndexPath:pathCopy];
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

      [cellCopy setSeparatorStyle:0];
    }

    else
    {
      [cellCopy setSeparatorStyle:{objc_msgSend(viewCopy, "separatorStyle")}];
    }

    sidebarDelegate = [(THNotesSidebarViewController *)self sidebarDelegate];
    v24 = [sidebarDelegate isCollapsedForSidebarContentViewController:self];

    [cellCopy setAccessoryType:v24];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v6 = objc_msgSend(pathCopy, "section"), v6 >= -[NSMutableIndexSet count](self->mVisibleSectionProviderIndicies, "count")))
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (v5 < [(NSMutableIndexSet *)self->mVisibleSectionProviderIndicies count])
  {
    [(THNotesSidebarViewController *)self setProviderIndex:[(THNotesSidebarViewController *)self p_visibleSectionProviderIndexForIndexPath:pathCopy]];
    sectionProviders = [(THNotesSidebarViewController *)self sectionProviders];
    v7 = [sectionProviders objectAtIndex:{-[THNotesSidebarViewController providerIndex](self, "providerIndex")}];

    sidebarDelegate = [(THNotesSidebarViewController *)self sidebarDelegate];
    [sidebarDelegate sidebarContentViewController:self willSelectSectionProvider:v7];

    searchBar = [(THNotesSidebarViewController *)self searchBar];
    [searchBar resignFirstResponder];
  }
}

- (void)notesSidebarCell:(id)cell highlightDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = [(THNotesSidebarViewController *)self p_indexPathForCell:cell];
  v11 = v6;
  if (changeCopy)
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
    [(THNotesSidebarViewController *)self p_setSeparatorsHidden:changeCopy forCellAtIndexPath:v11];
    selectedIndexPath = [(THNotesSidebarViewController *)self selectedIndexPath];

    v8 = v11;
    if (selectedIndexPath)
    {
      selectedIndexPath2 = [(THNotesSidebarViewController *)self selectedIndexPath];
      [(THNotesSidebarViewController *)self p_setSeparatorsHidden:1 forCellAtIndexPath:selectedIndexPath2];

      v8 = v11;
    }
  }
}

- (void)notesSidebarCell:(id)cell selectionDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = [(THNotesSidebarViewController *)self p_indexPathForCell:cell];
  v11 = v6;
  if (changeCopy)
  {
    if (!v6)
    {
      tableView = [(THNotesSidebarViewController *)self tableView];
      indexPathForSelectedRow = [tableView indexPathForSelectedRow];
      [(THNotesSidebarViewController *)self setSelectedIndexPath:indexPathForSelectedRow];

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

  [(THNotesSidebarViewController *)self p_setSeparatorsHidden:changeCopy forCellAtIndexPath:v11];
  highlightedIndexPath = [(THNotesSidebarViewController *)self highlightedIndexPath];

  v7 = v11;
  if (!highlightedIndexPath)
  {
    goto LABEL_9;
  }

  tableView = [(THNotesSidebarViewController *)self highlightedIndexPath];
  [(THNotesSidebarViewController *)self p_setSeparatorsHidden:1 forCellAtIndexPath:tableView];
LABEL_8:

  v7 = v11;
LABEL_9:
}

- (NSString)searchText
{
  searchBar = [(THNotesSidebarViewController *)self searchBar];
  text = [searchBar text];

  return text;
}

- (void)keyboardDidShow:(id)show
{
  if (([(THNotesSidebarViewController *)self im_isCompactHeight]& 1) == 0)
  {
    tableView = [(THNotesSidebarViewController *)self tableView];
    [tableView scrollToNearestSelectedRowAtScrollPosition:0 animated:1];
  }
}

- (NSArray)sectionProviders
{
  WeakRetained = objc_loadWeakRetained(&self->mSectionProviders);

  return WeakRetained;
}

@end