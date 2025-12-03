@interface MTDownloadsCollectionViewController
+ (id)defaultViewControllerWithLibraryActionControllerBridge:(id)bridge;
- (CGSize)calculatedCellSize;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MTDownloadsCollectionViewController)initWithCollectionViewLayout:(id)layout libraryActionControllerBridge:(id)bridge;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_downloadDataSource;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)episodeForDownloadAtIndex:(unint64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)calculateCellWidth:(double)width;
- (void)cancelDownloads:(id)downloads;
- (void)cellDidPressDelete:(id)delete;
- (void)cellDidPressToggleDownload:(id)download;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)configureBarButtonItems;
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
- (void)dealloc;
- (void)done:(id)done;
- (void)downloadManagerDidAddDownload:(id)download;
- (void)downloadManagerDidRemoveDownloads:(id)downloads;
- (void)downloadManagerDidUpdateDownload:(id)download;
- (void)downloadManagerWillRemoveDownload:(id)download;
- (void)setCalculatedCellSize:(CGSize)size;
- (void)toggleDownloadForIndex:(id)index;
- (void)traitCollectionDidChange:(id)change;
- (void)tuckHeader;
- (void)updateCellSizes;
- (void)updateDownloadCount;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTDownloadsCollectionViewController

- (MTDownloadsCollectionViewController)initWithCollectionViewLayout:(id)layout libraryActionControllerBridge:(id)bridge
{
  bridgeCopy = bridge;
  v13.receiver = self;
  v13.super_class = MTDownloadsCollectionViewController;
  v7 = [(MTDownloadsCollectionViewController *)&v13 initWithCollectionViewLayout:layout];
  v8 = v7;
  if (v7)
  {
    [(MTDownloadsCollectionViewController *)v7 setLibraryActionControllerBridge:bridgeCopy];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"sizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MTDownloadsCollectionViewController *)v8 updateDownloadCount];
    v10 = +[MTLegacyDownloadManagerProvider sharedInstance];
    downloadsNotifier = [v10 downloadsNotifier];
    [downloadsNotifier registerForUpdates:v8];
  }

  return v8;
}

- (id)_downloadDataSource
{
  v2 = +[MTLegacyDownloadManagerProvider sharedInstance];
  downloadManager = [v2 downloadManager];

  return downloadManager;
}

+ (id)defaultViewControllerWithLibraryActionControllerBridge:(id)bridge
{
  bridgeCopy = bridge;
  v4 = objc_alloc_init(MTDownloadsCollectionViewFlowLayout);
  v5 = [[MTDownloadsCollectionViewController alloc] initWithCollectionViewLayout:v4 libraryActionControllerBridge:bridgeCopy];

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
  navigationItem = [(MTDownloadsCollectionViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Downloads" value:&stru_1004F3018 table:0];
  [(MTDownloadsCollectionViewController *)self setTitle:v5];

  v6 = [MTDownloadsCollectionView alloc];
  view = [(MTDownloadsCollectionViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  collectionViewLayout = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
  v17 = [(MTDownloadsCollectionView *)v6 initWithFrame:collectionViewLayout collectionViewLayout:v9, v11, v13, v15];
  [(MTDownloadsCollectionViewController *)self setCollectionView:v17];

  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView setPreservesSuperviewLayoutMargins:1];

  collectionView2 = [(MTDownloadsCollectionViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
  [collectionView2 registerClass:v20 forCellWithReuseIdentifier:v21];

  collectionView3 = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"DownloadHeader"];

  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v4 viewWillAppear:appear];
  [(MTDownloadsCollectionViewController *)self setVisible:1];
  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MTDownloadsCollectionViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v6 viewDidLayoutSubviews];
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView frame];
  v5 = v4;

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:v5];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTDownloadsCollectionViewController;
  coordinatorCopy = coordinator;
  [(MTDownloadsCollectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(MTDownloadsCollectionViewController *)self calculateCellWidth:width];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C3460;
  v8[3] = &unk_1004DB448;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = MTDownloadsCollectionViewController;
  [(MTDownloadsCollectionViewController *)&v7 traitCollectionDidChange:changeCopy];
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v8);

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:Width];
  [(MTDownloadsCollectionViewController *)self configureBarButtonItems];
  if (-[MTDownloadsCollectionViewController isHorizontallyCompact](self, "isHorizontallyCompact") && [changeCopy horizontalSizeClass] != 1)
  {
    [(MTDownloadsCollectionViewController *)self tuckHeader];
  }
}

- (void)setCalculatedCellSize:(CGSize)size
{
  if (self->_calculatedCellSize.width != size.width || self->_calculatedCellSize.height != size.height)
  {
    self->_calculatedCellSize = size;
    collectionViewLayout = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(MTDownloadsCollectionViewController *)self _downloadDataSource:view];
  numberOfDownloads = [v4 numberOfDownloads];

  return numberOfDownloads;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = [pathCopy row];
  [(MTDownloadsCollectionViewController *)self configureCell:v9 atIndex:v10];

  return v9;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  cancelAllButton = [supplementaryView cancelAllButton];
  [cancelAllButton addTarget:self action:"cancelDownloads:" forControlEvents:64];
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  cancelAllButton = [supplementaryView cancelAllButton];
  [cancelAllButton removeTarget:self action:"cancelDownloads:" forControlEvents:64];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(MTDownloadsCollectionViewController *)self calculatedCellSize:view];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(MTDownloadsCollectionViewController *)self isHorizontallyCompact])
  {
    [viewCopy bounds];
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

- (void)downloadManagerDidAddDownload:(id)download
{
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerWillRemoveDownload:(id)download
{
  _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  numberOfDownloads = [_downloadDataSource numberOfDownloads];

  if (!numberOfDownloads)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
    [(MTDownloadsCollectionViewController *)self performSelector:"done:" withObject:0 afterDelay:1.0];
  }

  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerDidRemoveDownloads:(id)downloads
{
  _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  numberOfDownloads = [_downloadDataSource numberOfDownloads];

  if (!numberOfDownloads)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
    [(MTDownloadsCollectionViewController *)self performSelector:"done:" withObject:0 afterDelay:1.0];
  }

  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView reloadData];

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)downloadManagerDidUpdateDownload:(id)download
{
  downloadCopy = download;
  if (downloadCopy)
  {
    _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v5 = [_downloadDataSource indexForDownload:downloadCopy];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [NSIndexPath indexPathForRow:v5 inSection:0];
      collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
      v8 = [collectionView cellForItemAtIndexPath:v6];

      [(MTDownloadsCollectionViewController *)self configureCell:v8 atIndex:v5];
    }
  }

  [(MTDownloadsCollectionViewController *)self updateDownloadCount];
}

- (void)cellDidPressDelete:(id)delete
{
  deleteCopy = delete;
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  v9 = [collectionView indexPathForCell:deleteCopy];

  v6 = -[MTDownloadsCollectionViewController episodeForDownloadAtIndex:](self, "episodeForDownloadAtIndex:", [v9 row]);
  if (v6)
  {
    libraryActionControllerBridge = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
    uuid = [v6 uuid];
    [libraryActionControllerBridge cancelDownloadForEpisodeUuid:uuid];
  }
}

- (void)cellDidPressToggleDownload:(id)download
{
  downloadCopy = download;
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:downloadCopy];

  [(MTDownloadsCollectionViewController *)self toggleDownloadForIndex:v6];
}

- (id)episodeForDownloadAtIndex:(unint64_t)index
{
  _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  numberOfDownloads = [_downloadDataSource numberOfDownloads];

  if (numberOfDownloads <= index)
  {
    v12 = 0;
  }

  else
  {
    _downloadDataSource2 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v8 = [_downloadDataSource2 downloadAtIndex:index];

    if (v8)
    {
      v9 = +[MTDB sharedInstance];
      mainQueueContext = [v9 mainQueueContext];

      episodeUuid = [v8 episodeUuid];
      v12 = [mainQueueContext episodeForUuid:episodeUuid];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)cancelDownloads:(id)downloads
{
  libraryActionControllerBridge = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
  [libraryActionControllerBridge cancelAllDownloadsUserInitiated:1];
}

- (void)updateDownloadCount
{
  _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  numberOfDownloads = [_downloadDataSource numberOfDownloads];

  if (numberOfDownloads)
  {
    v5 = [NSNumber numberWithUnsignedInteger:numberOfDownloads];
    v9 = IMAccessibilityLocalizedNumber();
  }

  else
  {
    v9 = 0;
  }

  tabBarItem = [(MTDownloadsCollectionViewController *)self tabBarItem];
  [tabBarItem setBadgeValue:v9];

  navigationController = [(MTDownloadsCollectionViewController *)self navigationController];
  tabBarItem2 = [navigationController tabBarItem];
  [tabBarItem2 setBadgeValue:v9];
}

- (void)toggleDownloadForIndex:(id)index
{
  v4 = -[MTDownloadsCollectionViewController episodeForDownloadAtIndex:](self, "episodeForDownloadAtIndex:", [index row]);
  if (v4)
  {
    v7 = v4;
    libraryActionControllerBridge = [(MTDownloadsCollectionViewController *)self libraryActionControllerBridge];
    uuid = [v7 uuid];
    [libraryActionControllerBridge resumeOrPauseEpisodeDownloadWithUuid:uuid];

    v4 = v7;
  }
}

- (void)calculateCellWidth:(double)width
{
  widthCopy = width;
  if (width >= 703.0)
  {
    +[(MTGenericCollectionCell *)MTEpisodeDownloadCell];
    widthCopy = floor(widthCopy / ceil(widthCopy / v5));
  }

  [(MTGenericCollectionCell *)MTEpisodeDownloadCell heightForWidth:widthCopy];

  [(MTDownloadsCollectionViewController *)self setCalculatedCellSize:widthCopy, v6];
}

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  _downloadDataSource = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
  numberOfDownloads = [_downloadDataSource numberOfDownloads];

  if (numberOfDownloads > index)
  {
    _downloadDataSource2 = [(MTDownloadsCollectionViewController *)self _downloadDataSource];
    v9 = [_downloadDataSource2 downloadAtIndex:index];

    [cellCopy updateWithObject:v9];
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

  navigationController = [(MTDownloadsCollectionViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];

  navigationItem = [(MTDownloadsCollectionViewController *)self navigationItem];
  v9 = navigationItem;
  if (presentingViewController)
  {
    [navigationItem setLeftBarButtonItem:v12];

    navigationItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"done:"];
    navigationItem2 = [(MTDownloadsCollectionViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem3];
  }

  else
  {
    [navigationItem setRightBarButtonItem:v12];

    navigationItem3 = [(MTDownloadsCollectionViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:0];
  }
}

- (void)tuckHeader
{
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  collectionViewLayout = [(MTDownloadsCollectionViewController *)self collectionViewLayout];
  [(MTDownloadsCollectionViewController *)self collectionView:collectionView layout:collectionViewLayout referenceSizeForHeaderInSection:0];
  v6 = v5;

  collectionView2 = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView2 adjustedContentInset];
  v9 = v8;

  collectionView3 = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView3 setContentOffset:0 animated:{0.0, v6 - v9}];
}

- (void)updateCellSizes
{
  collectionView = [(MTDownloadsCollectionViewController *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v6);

  [(MTDownloadsCollectionViewController *)self calculateCellWidth:Width];
}

- (void)done:(id)done
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"done:" object:0];
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      v20 = selfCopy;
      presentingViewController = [(MTDownloadsCollectionViewController *)selfCopy presentingViewController];

      if (presentingViewController)
      {
        presentingViewController2 = [(MTDownloadsCollectionViewController *)v20 presentingViewController];
        [presentingViewController2 dismissViewControllerAnimated:1 completion:0];

        goto LABEL_13;
      }

      navigationController = [(MTDownloadsCollectionViewController *)v20 navigationController];
      if (navigationController)
      {
        v7 = navigationController;
        navigationController2 = [(MTDownloadsCollectionViewController *)v20 navigationController];
        viewControllers = [navigationController2 viewControllers];
        if ([viewControllers count] <= 1)
        {
        }

        else
        {
          navigationController3 = [(MTDownloadsCollectionViewController *)v20 navigationController];
          viewControllers2 = [navigationController3 viewControllers];
          v12 = [viewControllers2 indexOfObject:v20];

          if (v12)
          {
            navigationController4 = [(MTDownloadsCollectionViewController *)v20 navigationController];
            viewControllers3 = [navigationController4 viewControllers];

            v17 = [viewControllers3 objectAtIndex:{objc_msgSend(viewControllers3, "indexOfObject:", v20) - 1}];
            navigationController5 = [(MTDownloadsCollectionViewController *)v20 navigationController];
            v19 = [navigationController5 popToViewController:v17 animated:1];

            goto LABEL_13;
          }
        }
      }

      if (objc_opt_respondsToSelector())
      {
        break;
      }

      parentViewController = [(MTDownloadsCollectionViewController *)v20 parentViewController];

      selfCopy = parentViewController;
      if (!parentViewController)
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