@interface BKPageThumbnailDirectory
- (BOOL)isAnnotationVisible:(id)a3 forIndex:(unint64_t)a4;
- (id)locationAtIndex:(unint64_t)a3;
- (int64_t)leftPageNumberAtIndex:(unint64_t)a3;
- (int64_t)numberOfCellsInGridView:(id)a3;
- (int64_t)pageNumberForCellIndex:(unint64_t)a3;
- (int64_t)rightPageNumberAtIndex:(unint64_t)a3;
- (unint64_t)indexForLocation:(id)a3;
- (unint64_t)indexForPageNumber:(int64_t)a3;
- (void)configureCell:(id)a3 atIndex:(unint64_t)a4;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)dealloc;
- (void)setPageCount:(int64_t)a3;
- (void)startFetchingAnnotations;
- (void)stopFetchingAnnotations;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKPageThumbnailDirectory

- (void)dealloc
{
  [(BKPageThumbnailDirectory *)self stopFetchingAnnotations];
  v3.receiver = self;
  v3.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(BKPageThumbnailDirectory *)self startFetchingAnnotations];
  v5.receiver = self;
  v5.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v5 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPageThumbnailDirectory;
  [(BKContentViewController *)&v4 viewDidDisappear:a3];
  [(BKPageThumbnailDirectory *)self stopFetchingAnnotations];
}

- (void)setPageCount:(int64_t)a3
{
  if (self->_pageCount != a3)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    else
    {
      v3 = a3;
    }

    self->_pageCount = v3;
    [(BKThumbnailDirectory *)self reloadData];
  }
}

- (int64_t)numberOfCellsInGridView:(id)a3
{
  v4 = [(BKThumbnailDirectory *)self showSpreads];
  result = [(BKPageThumbnailDirectory *)self pageCount];
  if (v4)
  {
    return vcvtps_s32_f32(vcvts_n_f32_s64(result + 1, 1uLL));
  }

  return result;
}

- (int64_t)leftPageNumberAtIndex:(unint64_t)a3
{
  if ([(BKViewController *)self layoutDirection])
  {
    v5 = 2 * a3;
    if (v5 < [(BKPageThumbnailDirectory *)self pageCount])
    {
      return v5 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (a3)
  {
    return 2 * a3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)rightPageNumberAtIndex:(unint64_t)a3
{
  if ([(BKViewController *)self layoutDirection])
  {
    if (a3)
    {
      return 2 * a3;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 2 * a3;
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

- (int64_t)pageNumberForCellIndex:(unint64_t)a3
{
  if (![(BKThumbnailDirectory *)self showSpreads])
  {
    return a3 + 1;
  }

  if ([(BKViewController *)self layoutDirection])
  {
    result = [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:a3];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {

      return [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:a3];
    }
  }

  else
  {
    result = [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:a3];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {

      return [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:a3];
    }
  }

  return result;
}

- (unint64_t)indexForPageNumber:(int64_t)a3
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v5 = a3 / 2;
  }

  else
  {
    v5 = a3 - 1;
  }

  if (v5 < 0 || v5 >= [(BKPageThumbnailDirectory *)self numberOfCellsInGridView:self->super._gridView])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)locationAtIndex:(unint64_t)a3
{
  v4 = [(BKPageThumbnailDirectory *)self pageNumberForCellIndex:a3];

  return [(BKDirectoryContent *)self locationForPageNumber:v4];
}

- (unint64_t)indexForLocation:(id)a3
{
  v4 = [(BKDirectoryContent *)self pageNumberForLocation:a3];

  return [(BKPageThumbnailDirectory *)self indexForPageNumber:v4];
}

- (BOOL)isAnnotationVisible:(id)a3 forIndex:(unint64_t)a4
{
  v6 = [a3 location];
  v7 = [(BKDirectoryContent *)self pageNumberForLocation:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    if (v7 == [(BKPageThumbnailDirectory *)self leftPageNumberAtIndex:a4])
    {
      return 1;
    }

    v9 = [(BKPageThumbnailDirectory *)self rightPageNumberAtIndex:a4];
  }

  else
  {
    v9 = [(BKPageThumbnailDirectory *)self pageNumberForCellIndex:a4];
  }

  return v7 == v9;
}

- (void)configureCell:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = BKPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v16 configureCell:v6 atIndex:a4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(NSFetchedResultsController *)self->_annotationsFRC fetchedObjects];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(BKPageThumbnailDirectory *)self isAnnotationVisible:*(*(&v12 + 1) + 8 * i) forIndex:a4])
        {
          [v6 setHasRibbon:1];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
    v3 = [(BKContentViewController *)self book];
    v4 = [v3 annotationProvider];
    v5 = [v4 uiManagedObjectContext];

    v6 = objc_alloc_init(NSFetchRequest);
    v7 = [v3 assetID];
    v8 = [AEAnnotation pageBookmarksPredicate:v7];
    [v6 setPredicate:v8];

    v9 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v5];
    [v6 setEntity:v9];

    v10 = [[NSSortDescriptor alloc] initWithKey:@"plLocationRangeStart" ascending:1];
    v11 = [[NSArray alloc] initWithObjects:{v10, 0}];
    [v6 setSortDescriptors:v11];
    v12 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:v5 sectionNameKeyPath:0 cacheName:0];
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

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v9 = a4;
  if (self->_annotationsFRC == a3)
  {
    v12 = v9;
    v10 = [v9 location];
    v11 = [(BKPageThumbnailDirectory *)self indexForLocation:v10];

    [(BKThumbnailDirectory *)self reloadCellAtIndex:v11];
    v9 = v12;
  }
}

@end