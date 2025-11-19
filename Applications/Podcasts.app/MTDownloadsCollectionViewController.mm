@interface MTDownloadsCollectionViewController
+ (id)defaultViewControllerWithLibraryActionControllerBridge:(id)a3;
- (CGSize)calculatedCellSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MTDownloadsCollectionViewController)initWithCollectionViewLayout:(id)a3 libraryActionControllerBridge:(id)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_downloadDataSource;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)episodeForDownloadAtIndex:(unint64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)calculateCellWidth:(double)a3;
- (void)cancelDownloads:(id)a3;
- (void)cellDidPressDelete:(id)a3;
- (void)cellDidPressToggleDownload:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)configureBarButtonItems;
- (void)configureCell:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)done:(id)a3;
- (void)downloadManagerDidAddDownload:(id)a3;
- (void)downloadManagerDidRemoveDownloads:(id)a3;
- (void)downloadManagerDidUpdateDownload:(id)a3;
- (void)downloadManagerWillRemoveDownload:(id)a3;
- (void)setCalculatedCellSize:(CGSize)a3;
- (void)toggleDownloadForIndex:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)tuckHeader;
- (void)updateCellSizes;
- (void)updateDownloadCount;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTDownloadsCollectionViewController

- (MTDownloadsCollectionViewController)initWithCollectionViewLayout:(id)a3 libraryActionControllerBridge:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = MTDownloadsCollectionViewController;
  v7 = [(MTDownloadsCollectionViewController *)&v13 initWithCollectionViewLayout:a3];
  v8 = v7;
  if (v7)
  {
    [(MTDownloadsCollectionViewController *)v7 setLibraryActionControllerBridge:v6];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"sizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MTDownloadsCollectionViewController *)v8 updateDownloadCount];
    v10 = +[MTLegacyDownloadManagerProvider sharedInstance];
    v11 = [v10 downloadsNotifier];
    [v11 registerForUpdates:v8];
  }

  return v8;
}

- (id)_downloadDataSource
{
  v2 = +[MTLegacyDownloadManagerProvider sharedInstance];
  v3 = [v2 downloadManager];

  return v3;
}

+ (id)defaultViewControllerWithLibraryActionControllerBridge:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTDownloadsCollectionViewFlowLayout);
  v5 = [[MTDownloadsCollectionViewController alloc] initWithCollectionViewLayout:v4 libraryActionControllerBridge:v3];

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v23 viewDidLoad];
  v3 = [(MTDownloadsCollectionViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Downloads" value:&stru_1004F3018 table:0];
  [(MTDownloadsCollectionViewController *)self setTitle:v5];

  v6 = [MTDownloadsCollectionView alloc];
  v7 = [(MTDownloadsCollectionViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
  v17 = [(MTDownloadsCollectionView *)v6 initWithFrame:v16 collectionViewLayout:v9, v11, v13, v15];
  [(MTDownloadsCollectionViewController *)self setCollectionView:v17];

  v18 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v18 setPreservesSuperviewLayoutMargins:1];

  v19 = [(MTDownloadsCollectionViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
  [v19 registerClass:v20 forCellWithReuseIdentifier:v21];

  v22 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v22 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"DownloadHeader"];

  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v4 viewWillAppear:a3];
  [(MTDownloadsCollectionViewController *)self setVisible:1];
  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MTDownloadsCollectionViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v3 frame];
  v5 = v4;

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTDownloadsCollectionViewController;
  v7 = a4;
  [(MTDownloadsCollectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(MTDownloadsCollectionViewController *)self calculateCellWidth:width];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C3460;
  v8[3] = &unk_1004DB448;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v7 traitCollectionDidChange:v4];
  v5 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v5 bounds];
  Width = CGRectGetWidth(v8);

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:Width];
  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  if (-[MTDownloadsCollectionViewController isHorizontallyCompact](self, "isHorizontallyCompact") && [v4 horizontalSizeClass] != 1)
  {
    [(MTDownloadsCollectionViewController *)self tuckHeader];
  }
}

- (void)setCalculatedCellSize:(CGSize)a3
{
  if (self->_calculatedCellSize.width != a3.width || self->_calculatedCellSize.height != a3.height)
  {
    self->_calculatedCellSize = a3;
    v6 = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
    [v6 invalidateLayout];

    v7 = [(MTDownloadsCollectionViewController *)self collectionView];
    [v7 reloadData];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(MTDownloadsCollectionViewController *)self _downloadDataSource:a3];
  v5 = [v4 numberOfDownloads];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [v6 row];
  [(MTDownloadsCollectionViewController *)self configureCell:v9 atIndex:v10];

  return v9;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v7 = [a4 cancelAllButton];
  [v7 addTarget:self action:"cancelDownloads:" forControlEvents:64];
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v7 = [a4 cancelAllButton];
  [v7 removeTarget:self action:"cancelDownloads:" forControlEvents:64];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(MTDownloadsCollectionViewController *)self calculatedCellSize:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v6 = a3;
  if ([(MTDownloadsCollectionViewController *)self isHorizontallyCompact])
  {
    [v6 bounds];
    Width = CGRectGetWidth(v12);
    height = 44.0;
  }

  else
  {
    Width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v9 = Width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)downloadManagerDidAddDownload:(id)a3
{
  v4 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v4 reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerWillRemoveDownload:(id)a3
{
  v4 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  v5 = [v4 numberOfDownloads];

  if (!v5)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
    [(MTDownloadsCollectionViewController *)self performSelector:"done:" withObject:0 afterDelay:1.0];
  }

  v6 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v6 reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerDidRemoveDownloads:(id)a3
{
  v4 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  v5 = [v4 numberOfDownloads];

  if (!v5)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
    [(MTDownloadsCollectionViewController *)self performSelector:"done:" withObject:0 afterDelay:1.0];
  }

  v6 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v6 reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerDidUpdateDownload:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v5 = [v4 indexForDownload:v9];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [NSIndexPath indexPathForRow:v5 inSection:0];
      v7 = [(MTDownloadsCollectionViewController *)self collectionView];
      v8 = [v7 cellForItemAtIndexPath:v6];

      [(MTDownloadsCollectionViewController *)self configureCell:v8 atIndex:v5];
    }
  }

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)cellDidPressDelete:(id)a3
{
  v4 = a3;
  v5 = [(MTDownloadsCollectionViewController *)self collectionView];
  v9 = [v5 indexPathForCell:v4];

  v6 = -[MTDownloadsCollectionViewController episodeForDownloadAtIndex:](self, "episodeForDownloadAtIndex:", [v9 row]);
  if (v6)
  {
    v7 = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
    v8 = [v6 uuid];
    [v7 cancelDownloadForEpisodeUuid:v8];
  }
}

- (void)cellDidPressToggleDownload:(id)a3
{
  v4 = a3;
  v5 = [(MTDownloadsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  [(MTDownloadsCollectionViewController *)self toggleDownloadForIndex:v6];
}

- (id)episodeForDownloadAtIndex:(unint64_t)a3
{
  v5 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  v6 = [v5 numberOfDownloads];

  if (v6 <= a3)
  {
    v12 = 0;
  }

  else
  {
    v7 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v8 = [v7 downloadAtIndex:a3];

    if (v8)
    {
      v9 = +[MTDB sharedInstance];
      v10 = [v9 mainQueueContext];

      v11 = [v8 episodeUuid];
      v12 = [v10 episodeForUuid:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)cancelDownloads:(id)a3
{
  v3 = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
  [v3 cancelAllDownloadsUserInitiated:1];
}

- (void)updateDownloadCount
{
  v3 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  v4 = [v3 numberOfDownloads];

  if (v4)
  {
    v5 = [NSNumber numberWithUnsignedInteger:v4];
    v9 = IMAccessibilityLocalizedNumber();
  }

  else
  {
    v9 = 0;
  }

  v6 = [(MTDownloadsCollectionViewController *)self tabBarItem];
  [v6 setBadgeValue:v9];

  v7 = [(MTDownloadsCollectionViewController *)self navigationController];
  v8 = [v7 tabBarItem];
  [v8 setBadgeValue:v9];
}

- (void)toggleDownloadForIndex:(id)a3
{
  v4 = -[MTDownloadsCollectionViewController episodeForDownloadAtIndex:](self, "episodeForDownloadAtIndex:", [a3 row]);
  if (v4)
  {
    v7 = v4;
    v5 = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
    v6 = [v7 uuid];
    [v5 resumeOrPauseEpisodeDownloadWithUuid:v6];

    v4 = v7;
  }
}

- (void)calculateCellWidth:(double)a3
{
  v3 = a3;
  if (a3 >= 703.0)
  {
    +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
    v3 = floor(v3 / ceil(v3 / v5));
  }

  [(MTGenericCollectionCell *)MTEpisodeDownloadCell heightForWidth:v3];

  [(MTDownloadsCollectionViewController *)self setCalculatedCellSize:v3, v6];
}

- (void)configureCell:(id)a3 atIndex:(unint64_t)a4
{
  v10 = a3;
  v6 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  v7 = [v6 numberOfDownloads];

  if (v7 > a4)
  {
    v8 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v9 = [v8 downloadAtIndex:a4];

    [v10 updateWithObject:v9];
  }
}

- (void)configureBarButtonItems
{
  if ([(MTDownloadsCollectionViewController *)self isHorizontallyRegular])
  {
    v3 = [UIBarButtonItem alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Cancel All" value:&stru_1004F3018 table:0];
    v12 = [v3 initWithTitle:v5 style:0 target:self action:"cancelDownloads:"];
  }

  else
  {
    v12 = 0;
  }

  v6 = [(MTDownloadsCollectionViewController *)self navigationController];
  v7 = [v6 presentingViewController];

  v8 = [(MTDownloadsCollectionViewController *)self navigationItem];
  v9 = v8;
  if (v7)
  {
    [v8 setLeftBarButtonItem:v12];

    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"done:"];
    v11 = [(MTDownloadsCollectionViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v10];
  }

  else
  {
    [v8 setRightBarButtonItem:v12];

    v10 = [(MTDownloadsCollectionViewController *)self navigationItem];
    [v10 setLeftBarButtonItem:0];
  }
}

- (void)tuckHeader
{
  v3 = [(MTDownloadsCollectionViewController *)self collectionView];
  v4 = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
  [(MTDownloadsCollectionViewController *)self collectionView:v3 layout:v4 referenceSizeForHeaderInSection:0];
  v6 = v5;

  v7 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v7 adjustedContentInset];
  v9 = v8;

  v10 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v10 setContentOffset:0 animated:{0.0, v6 - v9}];
}

- (void)updateCellSizes
{
  v3 = [(MTDownloadsCollectionViewController *)self collectionView];
  [v3 bounds];
  Width = CGRectGetWidth(v6);

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:Width];
}

- (void)done:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
  v4 = self;
  if (v4)
  {
    while (1)
    {
      v20 = v4;
      v5 = [(MTDownloadsCollectionViewController *)v4 presentingViewController];

      if (v5)
      {
        v14 = [(MTDownloadsCollectionViewController *)v20 presentingViewController];
        [v14 dismissViewControllerAnimated:1 completion:0];

        goto LABEL_13;
      }

      v6 = [(MTDownloadsCollectionViewController *)v20 navigationController];
      if (v6)
      {
        v7 = v6;
        v8 = [(MTDownloadsCollectionViewController *)v20 navigationController];
        v9 = [v8 viewControllers];
        if ([v9 count] <= 1)
        {
        }

        else
        {
          v10 = [(MTDownloadsCollectionViewController *)v20 navigationController];
          v11 = [v10 viewControllers];
          v12 = [v11 indexOfObject:v20];

          if (v12)
          {
            v15 = [(MTDownloadsCollectionViewController *)v20 navigationController];
            v16 = [v15 viewControllers];

            v17 = [v16 objectAtIndex:{objc_msgSend(v16, "indexOfObject:", v20) - 1}];
            v18 = [(MTDownloadsCollectionViewController *)v20 navigationController];
            v19 = [v18 popToViewController:v17 animated:1];

            goto LABEL_13;
          }
        }
      }

      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v13 = [(MTDownloadsCollectionViewController *)v20 parentViewController];

      v4 = v13;
      if (!v13)
      {
        return;
      }
    }

    [(MTDownloadsCollectionViewController *)v20 performSelector:"showDefaultDetailsWithCompletion:" withObject:0];
LABEL_13:
  }
}

- (CGSize)calculatedCellSize
{
  width = self->_calculatedCellSize.width;
  height = self->_calculatedCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end