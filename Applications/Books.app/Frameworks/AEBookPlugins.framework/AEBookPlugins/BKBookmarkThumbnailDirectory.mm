@interface BKBookmarkThumbnailDirectory
- (id)_noBookmarksView;
- (id)fetchedResultsController;
- (id)locationAtIndex:(unint64_t)index;
- (int64_t)leftPageNumberAtIndex:(unint64_t)index;
- (int64_t)numberOfCellsInGridView:(id)view;
- (int64_t)pageNumberForCellIndex:(unint64_t)index;
- (int64_t)rightPageNumberAtIndex:(unint64_t)index;
- (unint64_t)indexForLocation:(id)location;
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
- (void)dealloc;
- (void)releaseViews;
- (void)reloadData;
@end

@implementation BKBookmarkThumbnailDirectory

- (void)releaseViews
{
  v4.receiver = self;
  v4.super_class = BKBookmarkThumbnailDirectory;
  [(BKThumbnailDirectory *)&v4 releaseViews];
  noBookmarksView = self->_noBookmarksView;
  self->_noBookmarksView = 0;
}

- (void)dealloc
{
  [(BKBookmarkThumbnailDirectory *)self releaseViews];
  [(NSFetchedResultsController *)self->_fetchedResultsController setDelegate:0];
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = 0;

  v4.receiver = self;
  v4.super_class = BKBookmarkThumbnailDirectory;
  [(BKThumbnailDirectory *)&v4 dealloc];
}

- (id)locationAtIndex:(unint64_t)index
{
  fetchedResultsController = [(BKBookmarkThumbnailDirectory *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v6 = [fetchedObjects objectAtIndex:index];

  location = [v6 location];

  return location;
}

- (unint64_t)indexForLocation:(id)location
{
  locationCopy = location;
  fetchedResultsController = [(BKBookmarkThumbnailDirectory *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];

  v7 = [fetchedObjects valueForKey:@"location"];
  v8 = [v7 indexOfObject:locationCopy];

  return v8;
}

- (int64_t)pageNumberForCellIndex:(unint64_t)index
{
  v4 = [(BKBookmarkThumbnailDirectory *)self locationAtIndex:index];
  v5 = [(BKDirectoryContent *)self pageNumberForLocation:v4];

  return v5;
}

- (int64_t)leftPageNumberAtIndex:(unint64_t)index
{
  v4 = [(BKBookmarkThumbnailDirectory *)self pageNumberForCellIndex:index];
  if ([(BKViewController *)self layoutDirection])
  {
    if ((v4 & 1) == 0 && v4 > 1)
    {
      ++v4;
    }

    v6 = [(BKDirectoryContent *)self locationForPageNumber:v4];

    if (v6)
    {
      return v4;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v4 - ((v4 != 0x7FFFFFFFFFFFFFFFLL) & v4) >= 2)
  {
    return v4 - ((v4 != 0x7FFFFFFFFFFFFFFFLL) & v4);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)rightPageNumberAtIndex:(unint64_t)index
{
  v4 = [(BKBookmarkThumbnailDirectory *)self pageNumberForCellIndex:index];
  if ([(BKViewController *)self layoutDirection])
  {
    if (v4 - ((v4 != 0x7FFFFFFFFFFFFFFFLL) & v4) >= 2)
    {
      return v4 - ((v4 != 0x7FFFFFFFFFFFFFFFLL) & v4);
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if ((v4 & 1) == 0 && v4 > 1)
    {
      ++v4;
    }

    v7 = [(BKDirectoryContent *)self locationForPageNumber:v4];

    if (v7)
    {
      return v4;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = BKBookmarkThumbnailDirectory;
  [(BKThumbnailDirectory *)&v12 configureCell:cellCopy atIndex:index];
  [cellCopy setHasRibbon:1];
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    directoryDelegate2 = [(BKDirectoryContent *)self directoryDelegate];
    v10 = [directoryDelegate2 thumbnailDirectoryWantsPageNumber:self];
    pageView = [cellCopy pageView];
    [pageView setShowsPageNumber:v10];
  }
}

- (id)fetchedResultsController
{
  fetchedResultsController = self->_fetchedResultsController;
  if (!fetchedResultsController)
  {
    book = [(BKContentViewController *)self book];
    v5 = objc_alloc_init(NSFetchRequest);
    databaseKey = [book databaseKey];
    v7 = [AEAnnotation pageBookmarksPredicate:databaseKey];
    [v5 setPredicate:v7];

    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    v10 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:uiManagedObjectContext];
    [v5 setEntity:v10];

    v11 = [[NSSortDescriptor alloc] initWithKey:@"plLocationRangeStart" ascending:1];
    v12 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
    v13 = [[NSArray alloc] initWithObjects:{v11, v12, 0}];
    [v5 setSortDescriptors:v13];
    v23 = book;
    databaseKey2 = [book databaseKey];
    v15 = [NSString stringWithFormat:@"%@-bm", databaseKey2];

    v16 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v5 managedObjectContext:uiManagedObjectContext sectionNameKeyPath:0 cacheName:v15];
    v17 = self->_fetchedResultsController;
    self->_fetchedResultsController = v16;

    [(NSFetchedResultsController *)self->_fetchedResultsController setDelegate:self];
    v18 = self->_fetchedResultsController;
    v24 = 0;
    v19 = [(NSFetchedResultsController *)v18 performFetch:&v24];
    v20 = v24;
    if ((v19 & 1) == 0)
    {
      v21 = BCIMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_13807C(v20, v21);
      }
    }

    fetchedResultsController = self->_fetchedResultsController;
  }

  return fetchedResultsController;
}

- (int64_t)numberOfCellsInGridView:(id)view
{
  fetchedResultsController = [(BKBookmarkThumbnailDirectory *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v5 = [fetchedObjects count];

  return v5;
}

- (id)_noBookmarksView
{
  noBookmarksView = self->_noBookmarksView;
  if (!noBookmarksView)
  {
    v4 = [[BKTOCBookmarksDescription alloc] initWithFrame:0.0, 0.0, 320.0, 480.0];
    v5 = self->_noBookmarksView;
    self->_noBookmarksView = v4;

    v6 = +[UIColor clearColor];
    [(BKTOCBookmarksDescription *)self->_noBookmarksView setBackgroundColor:v6];

    [(BKTOCBookmarksDescription *)self->_noBookmarksView setAutoresizingMask:18];
    v7 = isPad();
    v8 = 27.0;
    if (!v7)
    {
      v8 = 17.0;
    }

    v9 = [UIFont systemFontOfSize:v8];
    titleLabel = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    [titleLabel setFont:v9];

    v11 = isPad();
    v12 = 13.0;
    if (v11)
    {
      v12 = 17.0;
    }

    v13 = [UIFont systemFontOfSize:v12];
    descriptionLabel = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [descriptionLabel setFont:v13];

    titleLabel2 = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    v16 = AEBundle();
    v17 = [v16 localizedStringForKey:@"Adding Bookmarks…" value:&stru_1E7188 table:0];
    [titleLabel2 setText:v17];

    v18 = +[UIColor bc_booksSecondaryLabelColor];
    [titleLabel2 setTextColor:v18];

    book = [(BKContentViewController *)self book];
    LODWORD(v17) = [book contentType];

    v20 = AEBundle();
    v21 = v20;
    if (v17 == 2)
    {
      v22 = @"When you’re reading a PDF,\ntap the Bookmark button to\nmark the current page.";
    }

    else
    {
      v22 = @"When you’re reading a book, tap the Bookmark button to mark the current page.";
    }

    v23 = [v20 localizedStringForKey:v22 value:&stru_1E7188 table:0];

    descriptionLabel2 = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [descriptionLabel2 setText:v23];
    v25 = +[UIColor bc_booksSecondaryLabelColor];
    [descriptionLabel2 setTextColor:v25];

    [descriptionLabel2 setNumberOfLines:0];
    noBookmarksView = self->_noBookmarksView;
  }

  return noBookmarksView;
}

- (void)reloadData
{
  v9.receiver = self;
  v9.super_class = BKBookmarkThumbnailDirectory;
  [(BKThumbnailDirectory *)&v9 reloadData];
  if ([(BKBookmarkThumbnailDirectory *)self isViewLoaded])
  {
    fetchedResultsController = [(BKBookmarkThumbnailDirectory *)self fetchedResultsController];
    fetchedObjects = [fetchedResultsController fetchedObjects];
    v5 = [fetchedObjects count];

    if (v5)
    {
      [(BKTOCBookmarksDescription *)self->_noBookmarksView removeFromSuperview];
      noBookmarksView = self->_noBookmarksView;
      self->_noBookmarksView = 0;
    }

    else
    {
      noBookmarksView = [(BKBookmarkThumbnailDirectory *)self _noBookmarksView];
      view = [(BKBookmarkThumbnailDirectory *)self view];
      [view bounds];
      [noBookmarksView setFrame:?];

      view2 = [(BKBookmarkThumbnailDirectory *)self view];
      [view2 addSubview:noBookmarksView];
    }
  }
}

@end