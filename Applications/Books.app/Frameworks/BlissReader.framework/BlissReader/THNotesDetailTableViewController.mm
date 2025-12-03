@interface THNotesDetailTableViewController
- (BOOL)areAllNotesSelected;
- (BOOL)isLastRowInSectionForIndexPath:(id)path;
- (BOOL)p_sectionHasUnrenderedAnnotations:(id)annotations;
- (BOOL)selectAllNotes;
- (THBookViewController)bookViewController;
- (THNotesDetailTableViewController)initWithCoder:(id)coder;
- (THNotesDetailTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (THNotesDetailTableViewControllerDelegate)delegate;
- (UITableView)tableView;
- (double)editingHighlightWidthForAnnotationRenderer:(id)renderer;
- (double)highlightWidthForAnnotationRenderer:(id)renderer;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_thTableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)accessControllerForAnnotationRenderer:(id)renderer;
- (id)annotationRenderer:(id)renderer contentNodeForAnnotation:(id)annotation;
- (id)annotationRenderer:(id)renderer storageForAnnotationLocation:(id)location;
- (id)author;
- (id)bookTitle;
- (id)cachedAnnotationForIndexPath:(id)path;
- (id)p_activityIndicatorCell:(id)cell;
- (id)p_annotationAtIndexPath:(id)path;
- (id)p_annotationCellForIndexPath:(id)path withTableView:(id)view;
- (id)p_labelWithText:(id)text frame:(CGRect)frame textColor:(id)color tag:(int64_t)tag;
- (id)p_makeViewForAnnotationAtIndexPath:(id)path cell:(id)cell;
- (id)pageNumberStringForAnnotation:(id)annotation;
- (id)sectionTitleForIndexPath:(id)path;
- (id)storeURL;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)p_numberOfRowsInSection:(int64_t)section;
- (unint64_t)countOfItemsToDelete;
- (unint64_t)countOfUserNotesToDelete;
- (unint64_t)maxLinesForAnnotationRenderer:(id)renderer;
- (unint64_t)numberOfNotes;
- (unint64_t)p_numberOfRenderedAnnotationsInSection:(id)section;
- (void)_renderAnnotationsForTheme:(id)theme;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)annotationRenderer:(id)renderer didLoadContentNode:(id)node;
- (void)annotationRenderer:(id)renderer didRenderAnnotation:(id)annotation withResult:(id)result;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)clearAndReloadAnnotations;
- (void)dealloc;
- (void)deleteSelectedNotes;
- (void)deselectAllNotes;
- (void)notesDetailTableViewHeaderView:(id)view selected:(BOOL)selected;
- (void)p_cacheCellHeight:(id)height annotation:(id)annotation;
- (void)p_deleteNotesAtIndexPaths:(id)paths;
- (void)p_notifySelectionDidChange;
- (void)p_reload;
- (void)p_reloadFromBottom;
- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to;
- (void)reloadWithSections:(id)sections force:(BOOL)force;
- (void)scrollToTop;
- (void)setBookViewController:(id)controller;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)startEditing;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation THNotesDetailTableViewController

- (THNotesDetailTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = THNotesDetailTableViewController;
  v4 = [(THNotesDetailTableViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[THNotesViewAnnotationRenderer alloc] initWithDelegate:v4];
    mAnnotationRenderer = v4->mAnnotationRenderer;
    v4->mAnnotationRenderer = v5;

    v7 = +[UITraitCollection bc_allAPITraits];
    v8 = [(THNotesDetailTableViewController *)v4 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (THNotesDetailTableViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = THNotesDetailTableViewController;
  v3 = [(THNotesDetailTableViewController *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = [[THNotesViewAnnotationRenderer alloc] initWithDelegate:v3];
    mAnnotationRenderer = v3->mAnnotationRenderer;
    v3->mAnnotationRenderer = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained setDragDelegate:0];

  mSections = self->mSections;
  self->mSections = 0;

  mSectionSelections = self->mSectionSelections;
  self->mSectionSelections = 0;

  mSelectedNotes = self->mSelectedNotes;
  self->mSelectedNotes = 0;

  mCellHeights = self->mCellHeights;
  self->mCellHeights = 0;

  mRenderedAnnotations = self->mRenderedAnnotations;
  self->mRenderedAnnotations = 0;

  [(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer setDelegate:0];
  mAnnotationRenderer = self->mAnnotationRenderer;
  self->mAnnotationRenderer = 0;

  mTableCellNIB = self->mTableCellNIB;
  self->mTableCellNIB = 0;

  v12.receiver = self;
  v12.super_class = THNotesDetailTableViewController;
  [(THNotesDetailTableViewController *)&v12 dealloc];
}

- (void)setBookViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      documentViewController = [obj documentViewController];
      reflowablePaginationController = [documentViewController reflowablePaginationController];
      [reflowablePaginationController registerObserver:self];
    }

    else
    {
      documentViewController = objc_loadWeakRetained(&self->mBookViewController);
      reflowablePaginationController = [documentViewController documentViewController];
      v7ReflowablePaginationController = [reflowablePaginationController reflowablePaginationController];
      [v7ReflowablePaginationController unregisterObserver:self];
    }

    objc_storeWeak(&self->mBookViewController, obj);
    v5 = obj;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = THNotesDetailTableViewController;
  coordinatorCopy = coordinator;
  [(THNotesDetailTableViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(THNotesDetailTableViewController *)self setInSizeTransition:1];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1019A8;
  v9[3] = &unk_45D290;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1019B0;
  v8[3] = &unk_45D290;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)viewDidAppear:(BOOL)appear
{
  if (([(THNotesDetailTableViewController *)self isFirstResponder]& 1) == 0)
  {

    [(THNotesDetailTableViewController *)self becomeFirstResponder];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewController;
  [(THNotesDetailTableViewController *)&v8 viewDidLayoutSubviews];
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView frame];
  if (v5 == self->mRenderedAnnotationsSize.width && v4 == self->mRenderedAnnotationsSize.height)
  {
  }

  else
  {
    v7 = [(NSArray *)self->mSections count];

    if (v7)
    {
      [(THNotesDetailTableViewController *)self clearAndReloadAnnotations];
    }
  }
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(THNotesDetailTableViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(THNotesDetailTableViewController *)self clearAndReloadAnnotations];
  }
}

- (void)clearAndReloadAnnotations
{
  v3 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->mSections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        notes = [*(*(&v15 + 1) + 8 * v8) notes];
        [v3 addObjectsFromArray:notes];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [(TSUNoCopyDictionary *)self->mRenderedAnnotations removeAllObjects];
  [(TSUNoCopyDictionary *)self->mCellHeights removeAllObjects];
  view = [(THNotesDetailTableViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  self->mRenderedAnnotationsSize.width = v12;
  self->mRenderedAnnotationsSize.height = v13;

  if ([v3 count])
  {
    [(THNotesDetailTableViewController *)self _renderAnnotationsForTheme:v3];
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    [WeakRetained tableViewController:self renderingInProgress:1];
  }

  [(THNotesDetailTableViewController *)self p_reload];
}

- (unint64_t)numberOfNotes
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->mSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        notes = [*(*(&v10 + 1) + 8 * i) notes];
        v5 += [notes count];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reloadWithSections:(id)sections force:(BOOL)force
{
  sectionsCopy = sections;
  v7 = sectionsCopy;
  if (force || self->mSections != sectionsCopy && ![(NSArray *)sectionsCopy isEqualToArray:?])
  {
    if (self->mSections != v7)
    {
      v8 = [(NSArray *)v7 copy];
      mSections = self->mSections;
      self->mSections = v8;
    }

    v28 = v7;
    v10 = objc_alloc_init(NSMutableArray);
    mSectionSelections = self->mSectionSelections;
    self->mSectionSelections = v10;

    v12 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = self->mSections;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          notes = [*(*(&v29 + 1) + 8 * v17) notes];
          [v12 addObjectsFromArray:notes];

          v19 = self->mSectionSelections;
          v20 = [NSNumber numberWithBool:0];
          [(NSMutableArray *)v19 addObject:v20];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    [(TSUNoCopyDictionary *)self->mRenderedAnnotations tsu_removeObjectsWithoutKeys:v12];
    [(TSUNoCopyDictionary *)self->mCellHeights tsu_removeObjectsWithoutKeys:v12];
    view = [(THNotesDetailTableViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    self->mRenderedAnnotationsSize.width = v23;
    self->mRenderedAnnotationsSize.height = v24;

    allKeys = [(TSUNoCopyDictionary *)self->mRenderedAnnotations allKeys];
    v26 = [v12 tsu_arrayByRemovingObjectsInArray:allKeys];

    if ([v26 count])
    {
      [(THNotesDetailTableViewController *)self _renderAnnotationsForTheme:v26];
      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      [WeakRetained tableViewController:self renderingInProgress:1];
    }

    [(THNotesDetailTableViewController *)self p_reload];

    v7 = v28;
  }
}

- (void)scrollToTop
{
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView setContentOffset:{CGPointZero.x, CGPointZero.y}];
  mAnnotationRenderer = self->mAnnotationRenderer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_102174;
  v6[3] = &unk_45D928;
  v7 = tableView;
  v5 = tableView;
  [(THNotesViewAnnotationRenderer *)mAnnotationRenderer waitWithTimeout:v6 forCondition:0.5];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewController;
  [(THNotesDetailTableViewController *)&v8 viewDidLoad];
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:1];
  [tableView setAllowsMultipleSelectionDuringEditing:0];
  [tableView setSeparatorStyle:0];
  v4 = +[UIColor bc_booksBackground];
  [tableView setBackgroundColor:v4];

  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"notesHeaderCell"];
  [tableView setDragDelegate:self];
  v5 = +[UIColor bc_booksBackground];
  view = [(THNotesDetailTableViewController *)self view];
  [view setBackgroundColor:v5];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  view = [(THNotesDetailTableViewController *)self view];
  [view frame];
  if (v5 >= v7)
  {
  }

  else
  {
    v8 = [(NSArray *)self->mSections count];

    if (v8 >= 2)
    {

      [(THNotesDetailTableViewController *)self clearAndReloadAnnotations];
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView setAllowsMultipleSelectionDuringEditing:editingCopy];
  [tableView setEditing:editingCopy animated:animatedCopy];
  if ([(NSMutableArray *)self->mSectionSelections count])
  {
    v7 = 0;
    do
    {
      mSectionSelections = self->mSectionSelections;
      v9 = [NSNumber numberWithBool:0];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:v7 withObject:v9];

      objc_opt_class();
      v10 = [tableView headerViewForSection:v7];
      v11 = TSUDynamicCast();

      if (v11)
      {
        [v11 setEditing:editingCopy];
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->mSectionSelections count]);
  }

  mSelectedNotes = self->mSelectedNotes;
  self->mSelectedNotes = 0;
}

- (BOOL)areAllNotesSelected
{
  tableView = [(THNotesDetailTableViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v5 = [(NSArray *)self->mSections count];
  if (v5 < 1)
  {
    v8 = 1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [tableView numberOfRowsInSection:v7];
      if (v9 >= 1)
      {
        v10 = v9;
        v11 = 0;
        while (1)
        {
          v12 = [NSIndexPath indexPathForRow:v11 inSection:v7];
          v13 = [indexPathsForSelectedRows containsObject:v12];

          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_9;
          }
        }

        v8 = 0;
      }

LABEL_9:
      ++v7;
    }

    while (v7 != v6);
  }

  return v8 & 1;
}

- (BOOL)selectAllNotes
{
  tableView = [(THNotesDetailTableViewController *)self tableView];
  v16 = [(NSArray *)self->mSections count];
  v4 = 0;
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      v6 = [tableView numberOfRowsInSection:i];
      if (v6)
      {
        v7 = v6;
        for (j = 0; j != v7; ++j)
        {
          v9 = [NSIndexPath indexPathForRow:j inSection:i];
          v10 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v9];
          [tableView selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
          if (!v10)
          {
            [(NSMutableDictionary *)self->mSelectedNotes setObject:v9 forKey:v9];
          }
        }

        mSectionSelections = self->mSectionSelections;
        v12 = [NSNumber numberWithBool:1];
        [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:i withObject:v12];

        objc_opt_class();
        v13 = [tableView headerViewForSection:i];
        v14 = TSUDynamicCast();

        if (v14)
        {
          [v14 setSelected:1];
        }

        v4 = 1;
      }
    }
  }

  return v4 & 1;
}

- (void)deselectAllNotes
{
  tableView = [(THNotesDetailTableViewController *)self tableView];
  v3 = [(NSArray *)self->mSections count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [tableView numberOfRowsInSection:i];
      if (v6)
      {
        v7 = v6;
        for (j = 0; j != v7; ++j)
        {
          v9 = [NSIndexPath indexPathForRow:j inSection:i];
          v10 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v9];
          [tableView deselectRowAtIndexPath:v9 animated:0];
          if (v10)
          {
            [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:v9];
          }
        }

        mSectionSelections = self->mSectionSelections;
        v12 = [NSNumber numberWithBool:0];
        [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:i withObject:v12];

        objc_opt_class();
        v13 = [tableView headerViewForSection:i];
        v14 = TSUDynamicCast();

        if (v14)
        {
          [v14 setSelected:0];
        }
      }
    }
  }

  if ([(THNotesDetailTableViewController *)self countOfItemsToDelete])
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController deselectAllNotes]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:414 description:@"We should note have any more items to delete"];
  }

  [(NSMutableDictionary *)self->mSelectedNotes removeAllObjects];
}

- (BOOL)isLastRowInSectionForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->mSections count])
  {
    v9 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [pathCopy section]);
    if (v6)
    {
      v7 = [pathCopy row];
      notes = [v6 notes];
      v9 = v7 == [notes count];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int64_t)p_numberOfRowsInSection:(int64_t)section
{
  if ([(NSArray *)self->mSections count]== section)
  {
    return [(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering]^ 1;
  }

  v6 = [(NSArray *)self->mSections objectAtIndex:section];
  notes = [v6 notes];
  if (-[NSIndexPath section](self->mLastInsertedRow, "section") >= section && [notes count])
  {
    if ([(NSIndexPath *)self->mLastInsertedRow section]<= section)
    {
      v5 = [(NSIndexPath *)self->mLastInsertedRow row];
    }

    else
    {
      notes2 = [v6 notes];
      v5 = [notes2 count];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section != [(NSArray *)self->mSections count])
  {
    WeakRetained = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:pathCopy];
    v10 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:WeakRetained];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      v7 = v12;
    }

    else
    {
      v7 = 60.0;
    }

    goto LABEL_8;
  }

  v7 = 0.0;
  if (![(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    [WeakRetained activityIndicatorCellHeight];
    v7 = v9;
LABEL_8:
  }

  return v7;
}

- (void)p_cacheCellHeight:(id)height annotation:(id)annotation
{
  annotationCopy = annotation;
  contentView = [height contentView];
  v8 = [contentView viewWithTag:12];
  v15 = [v8 viewWithTag:9];

  mCellHeights = self->mCellHeights;
  if (!mCellHeights)
  {
    v10 = objc_alloc_init(TSUNoCopyDictionary);
    v11 = self->mCellHeights;
    self->mCellHeights = v10;

    mCellHeights = self->mCellHeights;
  }

  [v15 frame];
  *&v13 = v12;
  v14 = [NSNumber numberWithFloat:v13];
  [(TSUNoCopyDictionary *)mCellHeights setObject:v14 forUncopiedKey:annotationCopy];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section != [(NSArray *)self->mSections count])
  {
    WeakRetained = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:pathCopy];
    v12 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:WeakRetained];
    if (!v12)
    {
      v13 = [(THNotesDetailTableViewController *)self p_annotationCellForIndexPath:pathCopy withTableView:viewCopy];
      [(THNotesDetailTableViewController *)self p_cacheCellHeight:v13 annotation:WeakRetained];
      v12 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:WeakRetained];
    }

    [v12 floatValue];
    v9 = v14;

    goto LABEL_7;
  }

  v9 = 0.0;
  if (![(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    [WeakRetained activityIndicatorCellHeight];
    v9 = v11;
LABEL_7:
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = 0.0;
  if ([(NSArray *)self->mSections count]> section && [(THNotesDetailTableViewController *)self p_numberOfRowsInSection:section]>= 1)
  {
    v7 = [(NSArray *)self->mSections objectAtIndex:section];
    chapterTitle = [v7 chapterTitle];

    if (chapterTitle)
    {
      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      [WeakRetained chapterTitleHeightForAllChapters];
      v11 = v10;
      v12 = objc_loadWeakRetained(&self->mDelegate);
      [v12 sectionTitleHeightForAllChapters];
      v6 = v11 + v13;
    }

    else
    {
      title = [v7 title];

      if (!title)
      {
LABEL_8:

        return v6;
      }

      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      [WeakRetained sectionTitleHeight];
      v6 = v15;
    }

    goto LABEL_8;
  }

  return v6;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(NSArray *)self->mSections count]> section)
  {
    if ([(THNotesDetailTableViewController *)self inSizeTransition])
    {
      v7 = objc_alloc_init(THNotesDetailTableViewHeaderView);
    }

    else
    {
      v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"notesHeaderCell"];
      if (v8)
      {
LABEL_8:
        [v8 setDelegate:self];
        [v8 setSection:section];
        [v8 setEditing:objc_msgSend(viewCopy animated:{"isEditing"), 0}];
        v9 = [(NSMutableArray *)self->mSectionSelections objectAtIndexedSubscript:section];
        [v8 setSelected:{objc_msgSend(v9, "BOOLValue")}];
        v10 = [(NSArray *)self->mSections objectAtIndex:section];
        chapterTitle = [v10 chapterTitle];

        WeakRetained = objc_loadWeakRetained(&self->mDelegate);
        v13 = WeakRetained;
        v14 = NSArray_ptr;
        if (chapterTitle)
        {
          [WeakRetained sectionTitleHeightForAllChapters];
          v16 = v15;

          [viewCopy frame];
          v18 = v17;
          v19 = objc_loadWeakRetained(&self->mDelegate);
          [v19 sectionTitleHeightForAllChapters];
          v21 = v20;
          v22 = objc_loadWeakRetained(&self->mDelegate);
          [v22 chapterTitleHeightForAllChapters];
          v24 = v21 + v23;

          [v8 setFrame:{0.0, 0.0, v18, v24}];
          chapterTitle2 = [v10 chapterTitle];
          v26 = objc_loadWeakRetained(&self->mDelegate);
          [v26 chapterTitleHeightForAllChapters];
          v28 = v27;
          v29 = +[UIColor bc_booksLabelColor];
          v30 = [(THNotesDetailTableViewController *)self p_labelWithText:chapterTitle2 frame:v29 textColor:14 tag:0.0, 5.0, v18, v28];

          v14 = NSArray_ptr;
          [v8 addChapterLabel:v30];
          v31 = objc_loadWeakRetained(&self->mDelegate);
          [v31 chapterTitleHeightForAllChapters];
          v33 = v32 + 0.0;
        }

        else
        {
          [WeakRetained sectionTitleHeight];
          v16 = v34;

          [viewCopy frame];
          v18 = v35;
          v36 = objc_loadWeakRetained(&self->mDelegate);
          [v36 sectionTitleHeight];
          v38 = v37;

          v33 = 0.0;
          [v8 setFrame:{0.0, 0.0, v18, v38}];
        }

        title = [v10 title];
        bc_booksLabelColor = [v14[165] bc_booksLabelColor];
        v41 = [(THNotesDetailTableViewController *)self p_labelWithText:title frame:bc_booksLabelColor textColor:8 tag:0.0, v33, v18, v16];

        [v8 addSectionLabel:v41];
        goto LABEL_12;
      }

      v7 = [[THNotesDetailTableViewHeaderView alloc] initWithReuseIdentifier:@"notesHeaderCell"];
    }

    v8 = v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(NSArray *)self->mSections count])
  {
    if ([(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController tableView:cellForRowAtIndexPath:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:628 description:@"shouldn't show spinner cell when done rendering"];
    }

    v12 = [(THNotesDetailTableViewController *)self p_activityIndicatorCell:viewCopy];
  }

  else
  {
    v12 = [(THNotesDetailTableViewController *)self p_annotationCellForIndexPath:pathCopy withTableView:viewCopy];
    v13 = +[UIColor bc_booksBackground];
    [v12 setBackgroundColor:v13];

    selectedBackgroundView = [v12 selectedBackgroundView];
    [selectedBackgroundView setHidden:1];

    v15 = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:pathCopy];
    v16 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:v15];
    if (!v16)
    {
      [(THNotesDetailTableViewController *)self p_cacheCellHeight:v12 annotation:v15];
    }
  }

  return v12;
}

- (BOOL)p_sectionHasUnrenderedAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v5 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:annotationsCopy];
  notes = [annotationsCopy notes];

  LOBYTE(v5) = v5 != [notes count];
  return v5;
}

- (unint64_t)p_numberOfRenderedAnnotationsInSection:(id)section
{
  [section notes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(TSUNoCopyDictionary *)self->mRenderedAnnotations objectForKey:*(*(&v13 + 1) + 8 * v9), v13];

        if (!v11)
        {
          v7 = v10;
          goto LABEL_12;
        }

        ++v10;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (id)p_labelWithText:(id)text frame:(CGRect)frame textColor:(id)color tag:(int64_t)tag
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  textCopy = text;
  v15 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  [v15 setText:textCopy];

  v16 = [UIFont boldSystemFontOfSize:17.0];
  [v15 setFont:v16];

  [v15 setTextColor:colorCopy];
  v17 = +[UIColor clearColor];
  [v15 setBackgroundColor:v17];

  [v15 setAdjustsFontSizeToFitWidth:0];
  [v15 setAutoresizingMask:32];
  [v15 setLineBreakMode:4];
  [v15 sizeToFit];
  [v15 frame];
  [v15 textRectForBounds:1 limitedToNumberOfLines:?];
  v19 = v18;
  v21 = v20;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained cellMargin];
  v24 = v23;
  v25 = y + round((height - v21) * 0.5);

  v26 = objc_loadWeakRetained(&self->mDelegate);
  [v26 cellMargin];
  v28 = width - (v27 + 15.0);

  if (v19 <= v28)
  {
    v29 = v19;
  }

  else
  {
    v29 = v28;
  }

  [v15 setFrame:{v24, v25, v29, v21}];
  [v15 setTag:tag];

  return v15;
}

- (id)p_activityIndicatorCell:(id)cell
{
  cellCopy = cell;
  v5 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"ActivityIndicatorCell"];
  [cellCopy frame];
  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained activityIndicatorCellHeight];
  [v5 setFrame:{0.0, 0.0, v7, v9}];

  v10 = [UIActivityIndicatorView alloc];
  contentView = [v5 contentView];
  [contentView frame];
  v13 = v12;
  v14 = objc_loadWeakRetained(&self->mDelegate);
  [v14 activityIndicatorCellHeight];
  v16 = [v10 initWithFrame:{0.0, 0.0, v13, v15}];

  contentView2 = [v5 contentView];
  [contentView2 center];
  [v16 setCenter:?];

  [v16 setAutoresizingMask:2];
  v18 = +[UIColor bc_booksKeyColor];
  [v16 setColor:v18];

  [v16 startAnimating];
  contentView3 = [v5 contentView];
  [contentView3 addSubview:v16];

  return v5;
}

- (id)p_annotationCellForIndexPath:(id)path withTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = [THNotesDetailTableViewCell alloc];
  delegate = [(THNotesDetailTableViewController *)self delegate];
  v10 = [(THNotesDetailTableViewCell *)v8 initWithStyle:3 reuseIdentifier:@"notesMainCell" tableView:viewCopy sizingDelegate:delegate];

  [(THNotesDetailTableViewCell *)v10 setMyTableViewController:self];
  [(THNotesDetailTableViewCell *)v10 setIndexPath:pathCopy];
  v11 = [(THNotesDetailTableViewController *)self p_makeViewForAnnotationAtIndexPath:pathCopy cell:v10];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([(THNotesDetailTableViewController *)self isFirstResponder]& 1) == 0)
  {
    [(THNotesDetailTableViewController *)self becomeFirstResponder];
  }

  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:viewCopy])
  {
    v7 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:pathCopy];
    if (!v7)
    {
      [(NSMutableDictionary *)self->mSelectedNotes setObject:pathCopy forKey:pathCopy];
    }

    v8 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
    if (v8 < 1)
    {
LABEL_10:
      objc_opt_class();
      v13 = [viewCopy headerViewForSection:{objc_msgSend(pathCopy, "section")}];
      v14 = TSUDynamicCast();

      if (v14)
      {
        [v14 setSelected:1];
      }

      mSectionSelections = self->mSectionSelections;
      section = [pathCopy section];
      v17 = [NSNumber numberWithBool:1];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:section withObject:v17];
    }

    else
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v10, [pathCopy section]);
        v12 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v11];

        if (!v12)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }
    }

    [(THNotesDetailTableViewController *)self p_notifySelectionDidChange];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:viewCopy])
  {
    v7 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:pathCopy];
    if (v7)
    {
      [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:pathCopy];
    }

    objc_opt_class();
    v8 = [viewCopy headerViewForSection:{objc_msgSend(pathCopy, "section")}];
    v9 = TSUDynamicCast();

    if (v9)
    {
      [v9 setSelected:0];
    }

    mSectionSelections = self->mSectionSelections;
    section = [pathCopy section];
    v12 = [NSNumber numberWithBool:0];
    [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:section withObject:v12];

    [(THNotesDetailTableViewController *)self p_notifySelectionDidChange];
  }
}

- (void)p_notifySelectionDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained tableViewControllerDidChangeSelection:self];
}

- (unint64_t)countOfItemsToDelete
{
  allKeys = [(NSMutableDictionary *)self->mSelectedNotes allKeys];
  v3 = [allKeys count];

  return v3;
}

- (unint64_t)countOfUserNotesToDelete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mSelectedNotes = self->mSelectedNotes;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_103FA8;
  v5[3] = &unk_45D950;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)mSelectedNotes enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)cachedAnnotationForIndexPath:(id)path
{
  mSections = self->mSections;
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](mSections, "objectAtIndex:", [pathCopy section]);
  notes = [v5 notes];
  v7 = [pathCopy row];

  v8 = [notes objectAtIndex:v7];

  return v8;
}

- (id)sectionTitleForIndexPath:(id)path
{
  v3 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [path section]);
  v4 = v3;
  if (v3)
  {
    title = [v3 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)deleteSelectedNotes
{
  allKeys = [(NSMutableDictionary *)self->mSelectedNotes allKeys];
  v3 = [allKeys sortedArrayUsingComparator:&stru_45D970];
  [(THNotesDetailTableViewController *)self p_deleteNotesAtIndexPaths:v3];
  [(THNotesDetailTableViewController *)self p_reload];
}

- (void)p_deleteNotesAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:*(*(&v16 + 1) + 8 * v10), v16];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
    documentViewController = [WeakRetained documentViewController];
    documentRoot = [documentViewController documentRoot];
    annotationController = [documentRoot annotationController];
    [annotationController destroyAnnotations:v5 undoContext:0];
  }
}

- (void)p_reload
{
  mLastInsertedRow = self->mLastInsertedRow;
  self->mLastInsertedRow = 0;

  if ([(NSArray *)self->mSections count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->mSections objectAtIndex:v6];
      notes = [v7 notes];
      v9 = [notes count];

      if (v9)
      {
        v5 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:v7];
        ++v6;
        notes2 = [v7 notes];
        v11 = [notes2 count];

        if (v5 != v11)
        {

          v4 = v6;
          goto LABEL_11;
        }

        v4 = v6;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < [(NSArray *)self->mSections count]);
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v12 = [NSIndexPath indexPathForRow:v5 inSection:v4 - 1];
    v13 = self->mLastInsertedRow;
    self->mLastInsertedRow = v12;
  }

LABEL_12:
  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)p_reloadFromBottom
{
  v3 = +[NSMutableArray array];
  mLastInsertedRow = self->mLastInsertedRow;
  if (mLastInsertedRow)
  {
    section = [(NSIndexPath *)mLastInsertedRow section];
    if (section < [(NSArray *)self->mSections count])
    {
      while (1)
      {
        v6 = [(NSArray *)self->mSections objectAtIndex:section];
        notes = [v6 notes];
        v8 = [notes count];

        if (v8)
        {
          v9 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:v6];
          if (section == [(NSIndexPath *)self->mLastInsertedRow section])
          {
            v10 = [(NSIndexPath *)self->mLastInsertedRow row];
          }

          else
          {
            v10 = 0;
          }

          if (v10 < v9)
          {
            do
            {
              v11 = [NSIndexPath indexPathForRow:v10 inSection:section];
              [v3 addObject:v11];

              ++v10;
            }

            while (v9 != v10);
          }

          notes2 = [v6 notes];
          v13 = [notes2 count];

          if (v9 != v13)
          {
            break;
          }
        }

        if (++section >= [(NSArray *)self->mSections count])
        {
          goto LABEL_13;
        }
      }
    }
  }

LABEL_13:
  if ([v3 count])
  {
    lastObject = [v3 lastObject];
    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [lastObject row] + 1, objc_msgSend(lastObject, "section"));
    v15 = [v14 copy];
    v16 = self->mLastInsertedRow;
    self->mLastInsertedRow = v15;

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    tableView = [(THNotesDetailTableViewController *)self tableView];
    [tableView beginUpdates];
    [tableView insertRowsAtIndexPaths:v3 withRowAnimation:5];
    if ([(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
    {
      v18 = [NSIndexPath indexPathForRow:0 inSection:[(NSArray *)self->mSections count]];
      v19 = [NSArray arrayWithObject:v18];
      [tableView deleteRowsAtIndexPaths:v19 withRowAnimation:5];

      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      [WeakRetained tableViewController:self renderingInProgress:0];
    }

    [tableView endUpdates];
    +[CATransaction commit];
    tableView2 = [(THNotesDetailTableViewController *)self tableView];
    isEditing = [tableView2 isEditing];

    if (isEditing)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v3;
      v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v24)
      {
        v25 = *v32;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v31 + 1) + 8 * i);
            v28 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v27];

            if (v28)
            {
              tableView3 = [(THNotesDetailTableViewController *)self tableView];
              [tableView3 selectRowAtIndexPath:v27 animated:0 scrollPosition:0];
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v24);
      }
    }
  }
}

- (void)startEditing
{
  mSelectedNotes = self->mSelectedNotes;
  if (mSelectedNotes)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController startEditing]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:1080 description:{@"expected nil value for '%s'", "mSelectedNotes"}];

    mSelectedNotes = self->mSelectedNotes;
  }

  self->mSelectedNotes = 0;

  v7 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v8 = self->mSelectedNotes;
  self->mSelectedNotes = v7;

  _objc_release_x1(v7, v8);
}

- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);

  if (WeakRetained)
  {

    [(THNotesDetailTableViewController *)self p_reload];
  }
}

- (double)highlightWidthForAnnotationRenderer:(id)renderer
{
  view = [(THNotesDetailTableViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  Width = CGRectGetWidth(v16);

  tableView = [(THNotesDetailTableViewController *)self tableView];
  [tableView frame];
  v8 = CGRectGetWidth(v17);

  if (Width >= v8)
  {
    Width = v8;
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained highlightLeftInset];
  v11 = Width - v10;
  v12 = objc_loadWeakRetained(&self->mDelegate);
  [v12 highlightRightInset];
  v14 = v11 - v13;

  return v14;
}

- (double)editingHighlightWidthForAnnotationRenderer:(id)renderer
{
  [(THNotesDetailTableViewController *)self highlightWidthForAnnotationRenderer:renderer];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained highlightEditingWidthAdjustment];
  v8 = v5 - v7;

  return v8;
}

- (unint64_t)maxLinesForAnnotationRenderer:(id)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  maxLines = [WeakRetained maxLines];

  return maxLines;
}

- (id)annotationRenderer:(id)renderer contentNodeForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  documentViewController = [WeakRetained documentViewController];
  documentRoot = [documentViewController documentRoot];
  annotationController = [documentRoot annotationController];

  v10 = [annotationController contentNodeForAnnotation:annotationCopy];

  return v10;
}

- (id)annotationRenderer:(id)renderer storageForAnnotationLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
    v7 = [WeakRetained storageForCFI:locationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessControllerForAnnotationRenderer:(id)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  documentViewController = [WeakRetained documentViewController];
  documentRoot = [documentViewController documentRoot];
  accessController = [documentRoot accessController];

  return accessController;
}

- (void)annotationRenderer:(id)renderer didLoadContentNode:(id)node
{
  nodeCopy = node;
  if (!+[NSThread isMainThread])
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didLoadContentNode:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1143 description:@"This operation must only be performed on the main thread."];
  }

  if (!nodeCopy)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didLoadContentNode:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:1144 description:{@"invalid nil value for '%s'", "contentNode"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained tableViewController:self didLoadContentNode:nodeCopy];
}

- (void)annotationRenderer:(id)renderer didRenderAnnotation:(id)annotation withResult:(id)result
{
  annotationCopy = annotation;
  resultCopy = result;
  if (!+[NSThread isMainThread])
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1151 description:@"This operation must only be performed on the main thread."];
  }

  if (!annotationCopy)
  {
    v18 = +[TSUAssertionHandler currentHandler];
    v19 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:1152 description:{@"invalid nil value for '%s'", "annotation"}];

    if (resultCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!resultCopy)
  {
LABEL_11:
    v21 = +[TSUAssertionHandler currentHandler];
    v22 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v21 handleFailureInFunction:v22 file:v23 lineNumber:1153 description:{@"invalid nil value for '%s'", "renderedAnnotation"}];

    goto LABEL_12;
  }

  mRenderedAnnotations = self->mRenderedAnnotations;
  if (!mRenderedAnnotations)
  {
    v12 = objc_alloc_init(TSUNoCopyDictionary);
    v13 = self->mRenderedAnnotations;
    self->mRenderedAnnotations = v12;

    mRenderedAnnotations = self->mRenderedAnnotations;
  }

  v14 = [(TSUNoCopyDictionary *)mRenderedAnnotations objectForKey:annotationCopy];

  if (v14)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:1162 description:@"already rendered this annotation"];
  }

  [(TSUNoCopyDictionary *)self->mRenderedAnnotations setObject:resultCopy forUncopiedKey:annotationCopy];
  [(THNotesDetailTableViewController *)self p_reloadFromBottom];
LABEL_12:
}

- (void)notesDetailTableViewHeaderView:(id)view selected:(BOOL)selected
{
  viewCopy = view;
  tableView = [(THNotesDetailTableViewController *)self tableView];
  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:tableView])
  {
    section = [viewCopy section];
    v8 = [tableView numberOfRowsInSection:section];
    v9 = v8;
    if (selected)
    {
      if (v8 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [NSIndexPath indexPathForRow:v10 inSection:section];
          [tableView deselectRowAtIndexPath:v11 animated:0];
          [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:v11];

          ++v10;
        }

        while (v9 != v10);
      }

      mSectionSelections = self->mSectionSelections;
      v13 = [NSNumber numberWithBool:0];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:section withObject:v13];

      objc_opt_class();
      v14 = [tableView headerViewForSection:section];
      v15 = TSUDynamicCast();

      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      v17 = 0;
    }

    else
    {
      if (v8 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = [NSIndexPath indexPathForRow:v18 inSection:section];
          [tableView selectRowAtIndexPath:v19 animated:0 scrollPosition:0];
          [(NSMutableDictionary *)self->mSelectedNotes setObject:v19 forKey:v19];

          ++v18;
        }

        while (v9 != v18);
      }

      v20 = self->mSectionSelections;
      v21 = [NSNumber numberWithBool:1];
      [(NSMutableArray *)v20 replaceObjectAtIndex:section withObject:v21];

      objc_opt_class();
      v22 = [tableView headerViewForSection:section];
      v15 = TSUDynamicCast();

      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      v17 = 1;
    }

    [v16 setSelected:v17];
LABEL_14:

    [(THNotesDetailTableViewController *)self p_notifySelectionDidChange];
  }
}

- (id)_thTableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  session = [(THNotesDetailTableViewController *)self p_annotationAtIndexPath:path, session];
  v7 = [AEAnnotationDragItemProvider itemProviderWithAnnotation:session propertyProvider:self];
  v8 = [[NSItemProvider alloc] initWithObject:v7];
  v9 = [[UIDragItem alloc] initWithItemProvider:v8];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

- (void)_renderAnnotationsForTheme:(id)theme
{
  themeCopy = theme;
  traitCollection = [(THNotesDetailTableViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  documentViewController = [WeakRetained documentViewController];
  documentRoot = [documentViewController documentRoot];
  themeProvider = [documentRoot themeProvider];

  if (themeProvider)
  {
    annotationPageTheme = [themeProvider annotationPageTheme];
    if (annotationPageTheme <= 0x10 && ((0x1FFEFu >> annotationPageTheme) & 1) != 0)
    {
      userInterfaceStyle = qword_34A9B8[annotationPageTheme];
    }
  }

  [(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer renderAnnotations:themeCopy withUserInterfaceStyle:userInterfaceStyle];
}

- (id)p_annotationAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    v6 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [pathCopy section]);
    v7 = [v5 row];
    notes = [v6 notes];
    v9 = [notes count];

    if (v7 >= v9)
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController p_annotationAtIndexPath:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:1299 description:@"notes index out of range"];
    }

    v13 = [v5 row];
    notes2 = [v6 notes];
    v15 = [notes2 count];

    if (v13 >= v15)
    {
      v17 = 0;
    }

    else
    {
      notes3 = [v6 notes];
      v17 = [notes3 objectAtIndex:{objc_msgSend(v5, "row")}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)p_makeViewForAnnotationAtIndexPath:(id)path cell:(id)cell
{
  pathCopy = path;
  cellCopy = cell;
  v8 = [THNotesDetailTableViewCellController alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v10 = [(THNotesDetailTableViewCellController *)v8 initWithSizingDelegate:WeakRetained];

  mTableCellNIB = self->mTableCellNIB;
  if (!mTableCellNIB)
  {
    v12 = THBundle();
    v13 = [UINib nibWithNibName:@"THNotesDetailTableViewCellController" bundle:v12];
    v14 = self->mTableCellNIB;
    self->mTableCellNIB = v13;

    mTableCellNIB = self->mTableCellNIB;
  }

  v15 = [(UINib *)mTableCellNIB instantiateWithOwner:v10 options:0];
  v16 = [(THNotesDetailTableViewController *)self p_annotationAtIndexPath:pathCopy];
  if (v16)
  {
    v42 = cellCopy;
    v41 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [pathCopy section]);
    v17 = [(TSUNoCopyDictionary *)self->mRenderedAnnotations objectForKey:v16];
    tableView = [(THNotesDetailTableViewController *)self tableView];
    [tableView bounds];
    v19 = v18;
    highlightLayer = [v17 highlightLayer];
    [v17 highlightTextFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    editingHighlightLayer = [v17 editingHighlightLayer];
    annotationIsOrphan = [v16 annotationIsOrphan];
    if (annotationIsOrphan)
    {
      v30 = &stru_471858;
    }

    else
    {
      v38 = objc_loadWeakRetained(&self->mBookViewController);
      v30 = [v38 pageNumberStringForAnnotation:v16];
    }

    v31 = [pathCopy row];
    if (v31)
    {
      v32 = 0.0;
    }

    else
    {
      v37 = objc_loadWeakRetained(&self->mDelegate);
      [v37 firstNoteBelowSectionAdjustment];
      v32 = v33;
    }

    v34 = [pathCopy row];
    notes = [v41 notes];
    [v42 populateWithCellController:v10 annotation:v16 cellWidth:highlightLayer highlightLayer:editingHighlightLayer highlightTextFrame:v30 editingHighlightLayer:v34 < objc_msgSend(notes pageNumberString:"count") - 1 topAdjustment:v19 showDivider:{v21, v23, v25, v27, v32}];

    if (v31)
    {
      if (annotationIsOrphan)
      {
LABEL_13:

        cellCopy = v42;
        goto LABEL_14;
      }
    }

    else
    {

      if (annotationIsOrphan)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (id)bookTitle
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  bookDescription = [WeakRetained bookDescription];
  bookTitle = [bookDescription bookTitle];

  return bookTitle;
}

- (id)author
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  bookDescription = [WeakRetained bookDescription];
  bookAuthor = [bookDescription bookAuthor];

  return bookAuthor;
}

- (id)storeURL
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  bookDescription = [WeakRetained bookDescription];
  storeID = [bookDescription storeID];

  if ([storeID length])
  {
    v5 = +[AEUserPublishing sharedInstance];
    v6 = [v5 storeShortURLForStoreId:storeID dataSource:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageNumberStringForAnnotation:(id)annotation
{
  v4 = TSUProtocolCast();
  v5 = v4;
  if (v4 && ([v4 annotationIsOrphan] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
    v6 = [WeakRetained pageNumberStringForAnnotation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (THNotesDetailTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (THBookViewController)bookViewController
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end