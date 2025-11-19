@interface THNotesDetailTableViewController
- (BOOL)areAllNotesSelected;
- (BOOL)isLastRowInSectionForIndexPath:(id)a3;
- (BOOL)p_sectionHasUnrenderedAnnotations:(id)a3;
- (BOOL)selectAllNotes;
- (THBookViewController)bookViewController;
- (THNotesDetailTableViewController)initWithCoder:(id)a3;
- (THNotesDetailTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (THNotesDetailTableViewControllerDelegate)delegate;
- (UITableView)tableView;
- (double)editingHighlightWidthForAnnotationRenderer:(id)a3;
- (double)highlightWidthForAnnotationRenderer:(id)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_thTableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)accessControllerForAnnotationRenderer:(id)a3;
- (id)annotationRenderer:(id)a3 contentNodeForAnnotation:(id)a4;
- (id)annotationRenderer:(id)a3 storageForAnnotationLocation:(id)a4;
- (id)author;
- (id)bookTitle;
- (id)cachedAnnotationForIndexPath:(id)a3;
- (id)p_activityIndicatorCell:(id)a3;
- (id)p_annotationAtIndexPath:(id)a3;
- (id)p_annotationCellForIndexPath:(id)a3 withTableView:(id)a4;
- (id)p_labelWithText:(id)a3 frame:(CGRect)a4 textColor:(id)a5 tag:(int64_t)a6;
- (id)p_makeViewForAnnotationAtIndexPath:(id)a3 cell:(id)a4;
- (id)pageNumberStringForAnnotation:(id)a3;
- (id)sectionTitleForIndexPath:(id)a3;
- (id)storeURL;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)p_numberOfRowsInSection:(int64_t)a3;
- (unint64_t)countOfItemsToDelete;
- (unint64_t)countOfUserNotesToDelete;
- (unint64_t)maxLinesForAnnotationRenderer:(id)a3;
- (unint64_t)numberOfNotes;
- (unint64_t)p_numberOfRenderedAnnotationsInSection:(id)a3;
- (void)_renderAnnotationsForTheme:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)annotationRenderer:(id)a3 didLoadContentNode:(id)a4;
- (void)annotationRenderer:(id)a3 didRenderAnnotation:(id)a4 withResult:(id)a5;
- (void)applicationWillEnterForeground:(id)a3;
- (void)clearAndReloadAnnotations;
- (void)dealloc;
- (void)deleteSelectedNotes;
- (void)deselectAllNotes;
- (void)notesDetailTableViewHeaderView:(id)a3 selected:(BOOL)a4;
- (void)p_cacheCellHeight:(id)a3 annotation:(id)a4;
- (void)p_deleteNotesAtIndexPaths:(id)a3;
- (void)p_notifySelectionDidChange;
- (void)p_reload;
- (void)p_reloadFromBottom;
- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4;
- (void)reloadWithSections:(id)a3 force:(BOOL)a4;
- (void)scrollToTop;
- (void)setBookViewController:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)startEditing;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation THNotesDetailTableViewController

- (THNotesDetailTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = THNotesDetailTableViewController;
  v4 = [(THNotesDetailTableViewController *)&v10 initWithNibName:a3 bundle:a4];
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

- (THNotesDetailTableViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = THNotesDetailTableViewController;
  v3 = [(THNotesDetailTableViewController *)&v7 initWithCoder:a3];
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

- (void)setBookViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      v6 = [obj documentViewController];
      v7 = [v6 reflowablePaginationController];
      [v7 registerObserver:self];
    }

    else
    {
      v6 = objc_loadWeakRetained(&self->mBookViewController);
      v7 = [v6 documentViewController];
      v8 = [v7 reflowablePaginationController];
      [v8 unregisterObserver:self];
    }

    objc_storeWeak(&self->mBookViewController, obj);
    v5 = obj;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = THNotesDetailTableViewController;
  v7 = a4;
  [(THNotesDetailTableViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)viewDidAppear:(BOOL)a3
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
  v3 = [(THNotesDetailTableViewController *)self tableView];
  [v3 frame];
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(THNotesDetailTableViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
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

        v9 = [*(*(&v15 + 1) + 8 * v8) notes];
        [v3 addObjectsFromArray:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [(TSUNoCopyDictionary *)self->mRenderedAnnotations removeAllObjects];
  [(TSUNoCopyDictionary *)self->mCellHeights removeAllObjects];
  v10 = [(THNotesDetailTableViewController *)self view];
  v11 = [v10 safeAreaLayoutGuide];
  [v11 layoutFrame];
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

        v8 = [*(*(&v10 + 1) + 8 * i) notes];
        v5 += [v8 count];
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

- (void)reloadWithSections:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 || self->mSections != v6 && ![(NSArray *)v6 isEqualToArray:?])
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

          v18 = [*(*(&v29 + 1) + 8 * v17) notes];
          [v12 addObjectsFromArray:v18];

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
    v21 = [(THNotesDetailTableViewController *)self view];
    v22 = [v21 safeAreaLayoutGuide];
    [v22 layoutFrame];
    self->mRenderedAnnotationsSize.width = v23;
    self->mRenderedAnnotationsSize.height = v24;

    v25 = [(TSUNoCopyDictionary *)self->mRenderedAnnotations allKeys];
    v26 = [v12 tsu_arrayByRemovingObjectsInArray:v25];

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
  v3 = [(THNotesDetailTableViewController *)self tableView];
  [v3 setContentOffset:{CGPointZero.x, CGPointZero.y}];
  mAnnotationRenderer = self->mAnnotationRenderer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_102174;
  v6[3] = &unk_45D928;
  v7 = v3;
  v5 = v3;
  [(THNotesViewAnnotationRenderer *)mAnnotationRenderer waitWithTimeout:v6 forCondition:0.5];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewController;
  [(THNotesDetailTableViewController *)&v8 viewDidLoad];
  v3 = [(THNotesDetailTableViewController *)self tableView];
  [v3 setShowsVerticalScrollIndicator:1];
  [v3 setAllowsMultipleSelectionDuringEditing:0];
  [v3 setSeparatorStyle:0];
  v4 = +[UIColor bc_booksBackground];
  [v3 setBackgroundColor:v4];

  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"notesHeaderCell"];
  [v3 setDragDelegate:self];
  v5 = +[UIColor bc_booksBackground];
  v6 = [(THNotesDetailTableViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v9 = [(THNotesDetailTableViewController *)self tableView];
  [v9 contentSize];
  v5 = v4;
  v6 = [(THNotesDetailTableViewController *)self view];
  [v6 frame];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13 = [(THNotesDetailTableViewController *)self tableView];
  [v13 setAllowsMultipleSelectionDuringEditing:v5];
  [v13 setEditing:v5 animated:v4];
  if ([(NSMutableArray *)self->mSectionSelections count])
  {
    v7 = 0;
    do
    {
      mSectionSelections = self->mSectionSelections;
      v9 = [NSNumber numberWithBool:0];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:v7 withObject:v9];

      objc_opt_class();
      v10 = [v13 headerViewForSection:v7];
      v11 = TSUDynamicCast();

      if (v11)
      {
        [v11 setEditing:v5];
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
  v3 = [(THNotesDetailTableViewController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
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
      v9 = [v3 numberOfRowsInSection:v7];
      if (v9 >= 1)
      {
        v10 = v9;
        v11 = 0;
        while (1)
        {
          v12 = [NSIndexPath indexPathForRow:v11 inSection:v7];
          v13 = [v4 containsObject:v12];

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
  v3 = [(THNotesDetailTableViewController *)self tableView];
  v16 = [(NSArray *)self->mSections count];
  v4 = 0;
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      v6 = [v3 numberOfRowsInSection:i];
      if (v6)
      {
        v7 = v6;
        for (j = 0; j != v7; ++j)
        {
          v9 = [NSIndexPath indexPathForRow:j inSection:i];
          v10 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v9];
          [v3 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
          if (!v10)
          {
            [(NSMutableDictionary *)self->mSelectedNotes setObject:v9 forKey:v9];
          }
        }

        mSectionSelections = self->mSectionSelections;
        v12 = [NSNumber numberWithBool:1];
        [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:i withObject:v12];

        objc_opt_class();
        v13 = [v3 headerViewForSection:i];
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
  v18 = [(THNotesDetailTableViewController *)self tableView];
  v3 = [(NSArray *)self->mSections count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [v18 numberOfRowsInSection:i];
      if (v6)
      {
        v7 = v6;
        for (j = 0; j != v7; ++j)
        {
          v9 = [NSIndexPath indexPathForRow:j inSection:i];
          v10 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v9];
          [v18 deselectRowAtIndexPath:v9 animated:0];
          if (v10)
          {
            [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:v9];
          }
        }

        mSectionSelections = self->mSectionSelections;
        v12 = [NSNumber numberWithBool:0];
        [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:i withObject:v12];

        objc_opt_class();
        v13 = [v18 headerViewForSection:i];
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

- (BOOL)isLastRowInSectionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [(NSArray *)self->mSections count])
  {
    v9 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [v4 section]);
    if (v6)
    {
      v7 = [v4 row];
      v8 = [v6 notes];
      v9 = v7 == [v8 count];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int64_t)p_numberOfRowsInSection:(int64_t)a3
{
  if ([(NSArray *)self->mSections count]== a3)
  {
    return [(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering]^ 1;
  }

  v6 = [(NSArray *)self->mSections objectAtIndex:a3];
  v7 = [v6 notes];
  if (-[NSIndexPath section](self->mLastInsertedRow, "section") >= a3 && [v7 count])
  {
    if ([(NSIndexPath *)self->mLastInsertedRow section]<= a3)
    {
      v5 = [(NSIndexPath *)self->mLastInsertedRow row];
    }

    else
    {
      v8 = [v6 notes];
      v5 = [v8 count];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 != [(NSArray *)self->mSections count])
  {
    WeakRetained = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:v5];
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

- (void)p_cacheCellHeight:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = [a3 contentView];
  v8 = [v7 viewWithTag:12];
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
  [(TSUNoCopyDictionary *)mCellHeights setObject:v14 forUncopiedKey:v6];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 != [(NSArray *)self->mSections count])
  {
    WeakRetained = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:v7];
    v12 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:WeakRetained];
    if (!v12)
    {
      v13 = [(THNotesDetailTableViewController *)self p_annotationCellForIndexPath:v7 withTableView:v6];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = 0.0;
  if ([(NSArray *)self->mSections count]> a4 && [(THNotesDetailTableViewController *)self p_numberOfRowsInSection:a4]>= 1)
  {
    v7 = [(NSArray *)self->mSections objectAtIndex:a4];
    v8 = [v7 chapterTitle];

    if (v8)
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
      v14 = [v7 title];

      if (!v14)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(NSArray *)self->mSections count]> a4)
  {
    if ([(THNotesDetailTableViewController *)self inSizeTransition])
    {
      v7 = objc_alloc_init(THNotesDetailTableViewHeaderView);
    }

    else
    {
      v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"notesHeaderCell"];
      if (v8)
      {
LABEL_8:
        [v8 setDelegate:self];
        [v8 setSection:a4];
        [v8 setEditing:objc_msgSend(v6 animated:{"isEditing"), 0}];
        v9 = [(NSMutableArray *)self->mSectionSelections objectAtIndexedSubscript:a4];
        [v8 setSelected:{objc_msgSend(v9, "BOOLValue")}];
        v10 = [(NSArray *)self->mSections objectAtIndex:a4];
        v11 = [v10 chapterTitle];

        WeakRetained = objc_loadWeakRetained(&self->mDelegate);
        v13 = WeakRetained;
        v14 = NSArray_ptr;
        if (v11)
        {
          [WeakRetained sectionTitleHeightForAllChapters];
          v16 = v15;

          [v6 frame];
          v18 = v17;
          v19 = objc_loadWeakRetained(&self->mDelegate);
          [v19 sectionTitleHeightForAllChapters];
          v21 = v20;
          v22 = objc_loadWeakRetained(&self->mDelegate);
          [v22 chapterTitleHeightForAllChapters];
          v24 = v21 + v23;

          [v8 setFrame:{0.0, 0.0, v18, v24}];
          v25 = [v10 chapterTitle];
          v26 = objc_loadWeakRetained(&self->mDelegate);
          [v26 chapterTitleHeightForAllChapters];
          v28 = v27;
          v29 = +[UIColor bc_booksLabelColor];
          v30 = [(THNotesDetailTableViewController *)self p_labelWithText:v25 frame:v29 textColor:14 tag:0.0, 5.0, v18, v28];

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

          [v6 frame];
          v18 = v35;
          v36 = objc_loadWeakRetained(&self->mDelegate);
          [v36 sectionTitleHeight];
          v38 = v37;

          v33 = 0.0;
          [v8 setFrame:{0.0, 0.0, v18, v38}];
        }

        v39 = [v10 title];
        v40 = [v14[165] bc_booksLabelColor];
        v41 = [(THNotesDetailTableViewController *)self p_labelWithText:v39 frame:v40 textColor:8 tag:0.0, v33, v18, v16];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(NSArray *)self->mSections count])
  {
    if ([(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController tableView:cellForRowAtIndexPath:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:628 description:@"shouldn't show spinner cell when done rendering"];
    }

    v12 = [(THNotesDetailTableViewController *)self p_activityIndicatorCell:v6];
  }

  else
  {
    v12 = [(THNotesDetailTableViewController *)self p_annotationCellForIndexPath:v7 withTableView:v6];
    v13 = +[UIColor bc_booksBackground];
    [v12 setBackgroundColor:v13];

    v14 = [v12 selectedBackgroundView];
    [v14 setHidden:1];

    v15 = [(THNotesDetailTableViewController *)self cachedAnnotationForIndexPath:v7];
    v16 = [(TSUNoCopyDictionary *)self->mCellHeights objectForKey:v15];
    if (!v16)
    {
      [(THNotesDetailTableViewController *)self p_cacheCellHeight:v12 annotation:v15];
    }
  }

  return v12;
}

- (BOOL)p_sectionHasUnrenderedAnnotations:(id)a3
{
  v4 = a3;
  v5 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:v4];
  v6 = [v4 notes];

  LOBYTE(v5) = v5 != [v6 count];
  return v5;
}

- (unint64_t)p_numberOfRenderedAnnotationsInSection:(id)a3
{
  [a3 notes];
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

- (id)p_labelWithText:(id)a3 frame:(CGRect)a4 textColor:(id)a5 tag:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a5;
  v14 = a3;
  v15 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  [v15 setText:v14];

  v16 = [UIFont boldSystemFontOfSize:17.0];
  [v15 setFont:v16];

  [v15 setTextColor:v13];
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
  [v15 setTag:a6];

  return v15;
}

- (id)p_activityIndicatorCell:(id)a3
{
  v4 = a3;
  v5 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"ActivityIndicatorCell"];
  [v4 frame];
  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained activityIndicatorCellHeight];
  [v5 setFrame:{0.0, 0.0, v7, v9}];

  v10 = [UIActivityIndicatorView alloc];
  v11 = [v5 contentView];
  [v11 frame];
  v13 = v12;
  v14 = objc_loadWeakRetained(&self->mDelegate);
  [v14 activityIndicatorCellHeight];
  v16 = [v10 initWithFrame:{0.0, 0.0, v13, v15}];

  v17 = [v5 contentView];
  [v17 center];
  [v16 setCenter:?];

  [v16 setAutoresizingMask:2];
  v18 = +[UIColor bc_booksKeyColor];
  [v16 setColor:v18];

  [v16 startAnimating];
  v19 = [v5 contentView];
  [v19 addSubview:v16];

  return v5;
}

- (id)p_annotationCellForIndexPath:(id)a3 withTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [THNotesDetailTableViewCell alloc];
  v9 = [(THNotesDetailTableViewController *)self delegate];
  v10 = [(THNotesDetailTableViewCell *)v8 initWithStyle:3 reuseIdentifier:@"notesMainCell" tableView:v7 sizingDelegate:v9];

  [(THNotesDetailTableViewCell *)v10 setMyTableViewController:self];
  [(THNotesDetailTableViewCell *)v10 setIndexPath:v6];
  v11 = [(THNotesDetailTableViewController *)self p_makeViewForAnnotationAtIndexPath:v6 cell:v10];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (([(THNotesDetailTableViewController *)self isFirstResponder]& 1) == 0)
  {
    [(THNotesDetailTableViewController *)self becomeFirstResponder];
  }

  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:v18])
  {
    v7 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v6];
    if (!v7)
    {
      [(NSMutableDictionary *)self->mSelectedNotes setObject:v6 forKey:v6];
    }

    v8 = [v18 numberOfRowsInSection:{objc_msgSend(v6, "section")}];
    if (v8 < 1)
    {
LABEL_10:
      objc_opt_class();
      v13 = [v18 headerViewForSection:{objc_msgSend(v6, "section")}];
      v14 = TSUDynamicCast();

      if (v14)
      {
        [v14 setSelected:1];
      }

      mSectionSelections = self->mSectionSelections;
      v16 = [v6 section];
      v17 = [NSNumber numberWithBool:1];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:v16 withObject:v17];
    }

    else
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v10, [v6 section]);
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

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:v13])
  {
    v7 = [(NSMutableDictionary *)self->mSelectedNotes objectForKey:v6];
    if (v7)
    {
      [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:v6];
    }

    objc_opt_class();
    v8 = [v13 headerViewForSection:{objc_msgSend(v6, "section")}];
    v9 = TSUDynamicCast();

    if (v9)
    {
      [v9 setSelected:0];
    }

    mSectionSelections = self->mSectionSelections;
    v11 = [v6 section];
    v12 = [NSNumber numberWithBool:0];
    [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:v11 withObject:v12];

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
  v2 = [(NSMutableDictionary *)self->mSelectedNotes allKeys];
  v3 = [v2 count];

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

- (id)cachedAnnotationForIndexPath:(id)a3
{
  mSections = self->mSections;
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](mSections, "objectAtIndex:", [v4 section]);
  v6 = [v5 notes];
  v7 = [v4 row];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (id)sectionTitleForIndexPath:(id)a3
{
  v3 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [a3 section]);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 title];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deleteSelectedNotes
{
  v4 = [(NSMutableDictionary *)self->mSelectedNotes allKeys];
  v3 = [v4 sortedArrayUsingComparator:&stru_45D970];
  [(THNotesDetailTableViewController *)self p_deleteNotesAtIndexPaths:v3];
  [(THNotesDetailTableViewController *)self p_reload];
}

- (void)p_deleteNotesAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
    v13 = [WeakRetained documentViewController];
    v14 = [v13 documentRoot];
    v15 = [v14 annotationController];
    [v15 destroyAnnotations:v5 undoContext:0];
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
      v8 = [v7 notes];
      v9 = [v8 count];

      if (v9)
      {
        v5 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:v7];
        ++v6;
        v10 = [v7 notes];
        v11 = [v10 count];

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
  v14 = [(THNotesDetailTableViewController *)self tableView];
  [v14 reloadData];
}

- (void)p_reloadFromBottom
{
  v3 = +[NSMutableArray array];
  mLastInsertedRow = self->mLastInsertedRow;
  if (mLastInsertedRow)
  {
    v5 = [(NSIndexPath *)mLastInsertedRow section];
    if (v5 < [(NSArray *)self->mSections count])
    {
      while (1)
      {
        v6 = [(NSArray *)self->mSections objectAtIndex:v5];
        v7 = [v6 notes];
        v8 = [v7 count];

        if (v8)
        {
          v9 = [(THNotesDetailTableViewController *)self p_numberOfRenderedAnnotationsInSection:v6];
          if (v5 == [(NSIndexPath *)self->mLastInsertedRow section])
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
              v11 = [NSIndexPath indexPathForRow:v10 inSection:v5];
              [v3 addObject:v11];

              ++v10;
            }

            while (v9 != v10);
          }

          v12 = [v6 notes];
          v13 = [v12 count];

          if (v9 != v13)
          {
            break;
          }
        }

        if (++v5 >= [(NSArray *)self->mSections count])
        {
          goto LABEL_13;
        }
      }
    }
  }

LABEL_13:
  if ([v3 count])
  {
    v30 = [v3 lastObject];
    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v30 row] + 1, objc_msgSend(v30, "section"));
    v15 = [v14 copy];
    v16 = self->mLastInsertedRow;
    self->mLastInsertedRow = v15;

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v17 = [(THNotesDetailTableViewController *)self tableView];
    [v17 beginUpdates];
    [v17 insertRowsAtIndexPaths:v3 withRowAnimation:5];
    if ([(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer doneRendering])
    {
      v18 = [NSIndexPath indexPathForRow:0 inSection:[(NSArray *)self->mSections count]];
      v19 = [NSArray arrayWithObject:v18];
      [v17 deleteRowsAtIndexPaths:v19 withRowAnimation:5];

      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      [WeakRetained tableViewController:self renderingInProgress:0];
    }

    [v17 endUpdates];
    +[CATransaction commit];
    v21 = [(THNotesDetailTableViewController *)self tableView];
    v22 = [v21 isEditing];

    if (v22)
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
              v29 = [(THNotesDetailTableViewController *)self tableView];
              [v29 selectRowAtIndexPath:v27 animated:0 scrollPosition:0];
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

- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);

  if (WeakRetained)
  {

    [(THNotesDetailTableViewController *)self p_reload];
  }
}

- (double)highlightWidthForAnnotationRenderer:(id)a3
{
  v4 = [(THNotesDetailTableViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  Width = CGRectGetWidth(v16);

  v7 = [(THNotesDetailTableViewController *)self tableView];
  [v7 frame];
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

- (double)editingHighlightWidthForAnnotationRenderer:(id)a3
{
  [(THNotesDetailTableViewController *)self highlightWidthForAnnotationRenderer:a3];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained highlightEditingWidthAdjustment];
  v8 = v5 - v7;

  return v8;
}

- (unint64_t)maxLinesForAnnotationRenderer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = [WeakRetained maxLines];

  return v4;
}

- (id)annotationRenderer:(id)a3 contentNodeForAnnotation:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  v7 = [WeakRetained documentViewController];
  v8 = [v7 documentRoot];
  v9 = [v8 annotationController];

  v10 = [v9 contentNodeForAnnotation:v5];

  return v10;
}

- (id)annotationRenderer:(id)a3 storageForAnnotationLocation:(id)a4
{
  if (a4)
  {
    v5 = a4;
    WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
    v7 = [WeakRetained storageForCFI:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessControllerForAnnotationRenderer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  v4 = [WeakRetained documentViewController];
  v5 = [v4 documentRoot];
  v6 = [v5 accessController];

  return v6;
}

- (void)annotationRenderer:(id)a3 didLoadContentNode:(id)a4
{
  v5 = a4;
  if (!+[NSThread isMainThread])
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didLoadContentNode:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1143 description:@"This operation must only be performed on the main thread."];
  }

  if (!v5)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didLoadContentNode:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:1144 description:{@"invalid nil value for '%s'", "contentNode"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  [WeakRetained tableViewController:self didLoadContentNode:v5];
}

- (void)annotationRenderer:(id)a3 didRenderAnnotation:(id)a4 withResult:(id)a5
{
  v24 = a4;
  v7 = a5;
  if (!+[NSThread isMainThread])
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1151 description:@"This operation must only be performed on the main thread."];
  }

  if (!v24)
  {
    v18 = +[TSUAssertionHandler currentHandler];
    v19 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:1152 description:{@"invalid nil value for '%s'", "annotation"}];

    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v7)
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

  v14 = [(TSUNoCopyDictionary *)mRenderedAnnotations objectForKey:v24];

  if (v14)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController annotationRenderer:didRenderAnnotation:withResult:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:1162 description:@"already rendered this annotation"];
  }

  [(TSUNoCopyDictionary *)self->mRenderedAnnotations setObject:v7 forUncopiedKey:v24];
  [(THNotesDetailTableViewController *)self p_reloadFromBottom];
LABEL_12:
}

- (void)notesDetailTableViewHeaderView:(id)a3 selected:(BOOL)a4
{
  v23 = a3;
  v6 = [(THNotesDetailTableViewController *)self tableView];
  if ([(THNotesDetailTableViewController *)self p_isTableViewInEditMode:v6])
  {
    v7 = [v23 section];
    v8 = [v6 numberOfRowsInSection:v7];
    v9 = v8;
    if (a4)
    {
      if (v8 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [NSIndexPath indexPathForRow:v10 inSection:v7];
          [v6 deselectRowAtIndexPath:v11 animated:0];
          [(NSMutableDictionary *)self->mSelectedNotes removeObjectForKey:v11];

          ++v10;
        }

        while (v9 != v10);
      }

      mSectionSelections = self->mSectionSelections;
      v13 = [NSNumber numberWithBool:0];
      [(NSMutableArray *)mSectionSelections replaceObjectAtIndex:v7 withObject:v13];

      objc_opt_class();
      v14 = [v6 headerViewForSection:v7];
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
          v19 = [NSIndexPath indexPathForRow:v18 inSection:v7];
          [v6 selectRowAtIndexPath:v19 animated:0 scrollPosition:0];
          [(NSMutableDictionary *)self->mSelectedNotes setObject:v19 forKey:v19];

          ++v18;
        }

        while (v9 != v18);
      }

      v20 = self->mSectionSelections;
      v21 = [NSNumber numberWithBool:1];
      [(NSMutableArray *)v20 replaceObjectAtIndex:v7 withObject:v21];

      objc_opt_class();
      v22 = [v6 headerViewForSection:v7];
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

- (id)_thTableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = [(THNotesDetailTableViewController *)self p_annotationAtIndexPath:a5, a4];
  v7 = [AEAnnotationDragItemProvider itemProviderWithAnnotation:v6 propertyProvider:self];
  v8 = [[NSItemProvider alloc] initWithObject:v7];
  v9 = [[UIDragItem alloc] initWithItemProvider:v8];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

- (void)_renderAnnotationsForTheme:(id)a3
{
  v11 = a3;
  v4 = [(THNotesDetailTableViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  v7 = [WeakRetained documentViewController];
  v8 = [v7 documentRoot];
  v9 = [v8 themeProvider];

  if (v9)
  {
    v10 = [v9 annotationPageTheme];
    if (v10 <= 0x10 && ((0x1FFEFu >> v10) & 1) != 0)
    {
      v5 = qword_34A9B8[v10];
    }
  }

  [(THNotesViewAnnotationRenderer *)self->mAnnotationRenderer renderAnnotations:v11 withUserInterfaceStyle:v5];
}

- (id)p_annotationAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [v4 section]);
    v7 = [v5 row];
    v8 = [v6 notes];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"[THNotesDetailTableViewController p_annotationAtIndexPath:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesDetailTableViewController.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:1299 description:@"notes index out of range"];
    }

    v13 = [v5 row];
    v14 = [v6 notes];
    v15 = [v14 count];

    if (v13 >= v15)
    {
      v17 = 0;
    }

    else
    {
      v16 = [v6 notes];
      v17 = [v16 objectAtIndex:{objc_msgSend(v5, "row")}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)p_makeViewForAnnotationAtIndexPath:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = [(THNotesDetailTableViewController *)self p_annotationAtIndexPath:v6];
  if (v16)
  {
    v42 = v7;
    v41 = -[NSArray objectAtIndex:](self->mSections, "objectAtIndex:", [v6 section]);
    v17 = [(TSUNoCopyDictionary *)self->mRenderedAnnotations objectForKey:v16];
    v40 = [(THNotesDetailTableViewController *)self tableView];
    [v40 bounds];
    v19 = v18;
    v39 = [v17 highlightLayer];
    [v17 highlightTextFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v17 editingHighlightLayer];
    v29 = [v16 annotationIsOrphan];
    if (v29)
    {
      v30 = &stru_471858;
    }

    else
    {
      v38 = objc_loadWeakRetained(&self->mBookViewController);
      v30 = [v38 pageNumberStringForAnnotation:v16];
    }

    v31 = [v6 row];
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

    v34 = [v6 row];
    v35 = [v41 notes];
    [v42 populateWithCellController:v10 annotation:v16 cellWidth:v39 highlightLayer:v28 highlightTextFrame:v30 editingHighlightLayer:v34 < objc_msgSend(v35 pageNumberString:"count") - 1 topAdjustment:v19 showDivider:{v21, v23, v25, v27, v32}];

    if (v31)
    {
      if (v29)
      {
LABEL_13:

        v7 = v42;
        goto LABEL_14;
      }
    }

    else
    {

      if (v29)
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
  v3 = [WeakRetained bookDescription];
  v4 = [v3 bookTitle];

  return v4;
}

- (id)author
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  v3 = [WeakRetained bookDescription];
  v4 = [v3 bookAuthor];

  return v4;
}

- (id)storeURL
{
  WeakRetained = objc_loadWeakRetained(&self->mBookViewController);
  v3 = [WeakRetained bookDescription];
  v4 = [v3 storeID];

  if ([v4 length])
  {
    v5 = +[AEUserPublishing sharedInstance];
    v6 = [v5 storeShortURLForStoreId:v4 dataSource:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageNumberStringForAnnotation:(id)a3
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