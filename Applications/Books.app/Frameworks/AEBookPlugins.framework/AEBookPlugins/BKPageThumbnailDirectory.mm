@interface BKPageThumbnailDirectory
- (BOOL)isAnnotationVisible:(id)visible forIndex:(unint64_t)index;
- (id)locationAtIndex:(unint64_t)index;
- (int64_t)leftPageNumberAtIndex:(unint64_t)index;
- (int64_t)numberOfCellsInGridView:(id)view;
- (int64_t)pageNumberForCellIndex:(unint64_t)index;
- (int64_t)rightPageNumberAtIndex:(unint64_t)index;
- (unint64_t)indexForLocation:(id)location;
- (unint64_t)indexForPageNumber:(int64_t)number;
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)dealloc;
- (void)setPageCount:(int64_t)count;
- (void)startFetchingAnnotations;
- (void)stopFetchingAnnotations;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKPageThumbnailDirectory

- (void)dealloc
{
  [(BKPageThumbnailDirectory *)self stopFetchingAnnotations];
  v3.receiver = self;
  v3.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(BKPageThumbnailDirectory *)self startFetchingAnnotations];
  v5.receiver = self;
  v5.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKPageThumbnailDirectory;
  [(BKContentViewController *)&v4 viewDidDisappear:disappear];
  [(BKPageThumbnailDirectory *)self stopFetchingAnnotations];
}

- (void)setPageCount:(int64_t)count
{
  if (self->_pageCount != count)
  {
    if (count == 0x7FFFFFFFFFFFFFFFLL)
    {
      countCopy = 0;
    }

    else
    {
      countCopy = count;
    }

    self->_pageCount = countCopy;
    [(BKThumbnailDirectory *)self reloadData];
  }
}

- (int64_t)numberOfCellsInGridView:(id)view
{
  showSpreads = [(BKThumbnailDirectory *)self showSpreads];
  result = [(BKPageThumbnailDirectory *)self pageCount];
  if (showSpreads)
  {
    return vcvtps_s32_f32(vcvts_n_f32_s64(result + 1, 1uLL));
  }

  return result;
}

- (int64_t)leftPageNumberAtIndex:(unint64_t)index
{
  if ([(BKViewController *)self layoutDirection])
  {
    v5 = 2 * index;
    if (v5 < [(BKPageThumbnailDirectory *)self pageCount])
    {
      return v5 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (index)
  {
    return 2 * index;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)rightPageNumberAtIndex:(unint64_t)index
{
  if ([(BKViewController *)self layoutDirection])
  {
    if (index)
    {
      return 2 * index;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 2 * index;
    if (v6 < [(BKPageThumbnailDirectory *)self pageCount])
    {
      return v6 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (int64_t)pageNumberForCellIndex:(unint64_t)index
{
  if (![(BKThumbnailDirectory *)self showSpreads])
  {
    return index + 1;
  }

  if ([(BKViewController *)self layoutDirection])
  {
    result = [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:index];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {

      return [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:index];
    }
  }

  else
  {
    result = [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:index];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {

      return [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:index];
    }
  }

  return result;
}

- (unint64_t)indexForPageNumber:(int64_t)number
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v5 = number / 2;
  }

  else
  {
    v5 = number - 1;
  }

  if (v5 < 0 || v5 >= [(BKPageThumbnailDirectory *)self numberOfCellsInGridView:self->super._gridView])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)locationAtIndex:(unint64_t)index
{
  v4 = [(BKPageThumbnailDirectory *)self pageNumberForCellIndex:index];

  return [(BKDirectoryContent *)self locationForPageNumber:v4];
}

- (unint64_t)indexForLocation:(id)location
{
  v4 = [(BKDirectoryContent *)self pageNumberForLocation:location];

  return [(BKPageThumbnailDirectory *)self indexForPageNumber:v4];
}

- (BOOL)isAnnotationVisible:(id)visible forIndex:(unint64_t)index
{
  location = [visible location];
  v7 = [(BKDirectoryContent *)self pageNumberForLocation:location];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    if (v7 == [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:index])
    {
      return 1;
    }

    v9 = [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:index];
  }

  else
  {
    v9 = [(BKPageThumbnailDirectory *)self pageNumberForCellIndex:index];
  }

  return v7 == v9;
}

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  v16.receiver = self;
  v16.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v16 configureCell:cellCopy atIndex:index];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  fetchedObjects = [(NSFetchedResultsController *)self->_annotationsFRC fetchedObjects];
  v8 = [fetchedObjects countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(fetchedObjects);
        }

        if ([(BKPageThumbnailDirectory *)self isAnnotationVisible:*(*(&v12 + 1) + 8 * i) forIndex:index])
        {
          [cellCopy setHasRibbon:1];
          goto LABEL_11;
        }
      }

      v9 = [fetchedObjects countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)startFetchingAnnotations
{
  if (!self->_annotationsFRC)
  {
    book = [(BKContentViewController *)self book];
    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    v6 = objc_alloc_init(NSFetchRequest);
    assetID = [book assetID];
    v8 = [AEAnnotation pageBookmarksPredicate:assetID];
    [v6 setPredicate:v8];

    v9 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:uiManagedObjectContext];
    [v6 setEntity:v9];

    v10 = [[NSSortDescriptor alloc] initWithKey:@"plLocationRangeStart" ascending:1];
    v11 = [[NSArray alloc] initWithObjects:{v10, 0}];
    [v6 setSortDescriptors:v11];
    v12 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:uiManagedObjectContext sectionNameKeyPath:0 cacheName:0];
    annotationsFRC = self->_annotationsFRC;
    self->_annotationsFRC = v12;

    [(NSFetchedResultsController *)self->_annotationsFRC setDelegate:self];
    v14 = self->_annotationsFRC;
    v18 = 0;
    v15 = [(NSFetchedResultsController *)v14 performFetch:&v18];
    v16 = v18;
    if ((v15 & 1) == 0)
    {
      v17 = BCIMLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_13807C(v16, v17);
      }
    }
  }
}

- (void)stopFetchingAnnotations
{
  [(NSFetchedResultsController *)self->_annotationsFRC setDelegate:0];
  annotationsFRC = self->_annotationsFRC;
  self->_annotationsFRC = 0;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  if (self->_annotationsFRC == controller)
  {
    v12 = objectCopy;
    location = [objectCopy location];
    v11 = [(BKPageThumbnailDirectory *)self indexForLocation:location];

    [(BKThumbnailDirectory *)self reloadCellAtIndex:v11];
    objectCopy = v12;
  }
}

@end