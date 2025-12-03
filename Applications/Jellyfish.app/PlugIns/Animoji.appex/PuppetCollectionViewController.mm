@interface PuppetCollectionViewController
+ (double)plusButtonMaxSizeDimension;
- (AVTAvatarRecordDataSource)avatarDataSource;
- (AVTAvatarRecordImageProvider)imageProvider;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isShowingPlusButton;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PuppetCollectionViewController)initWithCoder:(id)coder;
- (PuppetCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PuppetCollectionViewControllerDelegate)delegate;
- (UIEdgeInsets)normalizedEdgeInsetsFromDelegate;
- (UIView)plusButtonCell;
- (UIView)plusButtonView;
- (double)normalizedHorizontalCellSpaingFromDelegate;
- (double)normalizedVerticalCellSpaingFromDelegate;
- (double)puppetCellSize;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)thumbnailForRecordAtIndex:(int64_t)index;
- (int64_t)numberOfCells;
- (void)_configure;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)reloadData;
- (void)reloadSelection;
- (void)scrollToSelection;
- (void)setPlusButtonCellEnabled:(BOOL)enabled;
- (void)setPuppetsPerRow:(int64_t)row;
- (void)setSelectedRecord:(id)record;
- (void)setSelectedRecordAtIndex:(int64_t)index;
- (void)setSelectedRowIndex:(int64_t)index;
- (void)setShowsPlusButton:(BOOL)button;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)updateHighlightedForVisibleCells;
- (void)updateSelectedForVisibleCells;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PuppetCollectionViewController

+ (double)plusButtonMaxSizeDimension
{
  if (qword_10003E010 != -1)
  {
    sub_10001CFE8();
  }

  return *&qword_10003E008;
}

- (PuppetCollectionViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PuppetCollectionViewController;
  v3 = [(PuppetCollectionViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PuppetCollectionViewController *)v3 _configure];
  }

  return v4;
}

- (PuppetCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PuppetCollectionViewController;
  v4 = [(PuppetCollectionViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PuppetCollectionViewController *)v4 _configure];
  }

  return v5;
}

- (void)_configure
{
  self->_suspendAutoScrolling = 0;
  self->_plusButtonCellEnabled = 1;
  self->_showsPlusButton = 1;
  selectedRecord = self->_selectedRecord;
  self->_selectedRecord = 0;

  self->_selectedRecordIndex = -1;
  self->_observingDataSource = 0;
  self->_puppetsPerRow = 4;
  self->_interactionEnabled = 1;
  v4 = +[AVTRenderingScope gridThumbnailScope];
  thumbScope = self->_thumbScope;
  self->_thumbScope = v4;

  v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  borderView = self->_borderView;
  self->_borderView = v6;

  v8 = [UIColor colorNamed:@"PuppetCollectionViewBorderColor"];
  [(UIView *)self->_borderView setBackgroundColor:v8];

  v9 = [UIColor colorNamed:@"PuppetCollectionViewBorderColor"];
  [PuppetCollectionViewCell setSelectedBorderColor:v9];
}

- (void)setPlusButtonCellEnabled:(BOOL)enabled
{
  if (self->_plusButtonCellEnabled != enabled)
  {
    self->_plusButtonCellEnabled = enabled;
    [(PuppetCollectionViewController *)self reloadData];
  }
}

- (void)setShowsPlusButton:(BOOL)button
{
  if (self->_showsPlusButton != button)
  {
    self->_showsPlusButton = button;
    [(PuppetCollectionViewController *)self reloadData];
  }
}

- (BOOL)isShowingPlusButton
{
  showsPlusButton = [(PuppetCollectionViewController *)self showsPlusButton];
  if (showsPlusButton)
  {
    avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
    recordStore = [avatarDataSource recordStore];
    canCreateAvatar = [recordStore canCreateAvatar];

    LOBYTE(showsPlusButton) = canCreateAvatar;
  }

  return showsPlusButton;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PuppetCollectionViewController;
  [(PuppetCollectionViewController *)&v11 viewDidLoad];
  v3 = objc_alloc_init(UICollectionViewFlowLayout);
  v4 = [[UICollectionView alloc] initWithFrame:v3 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(UICollectionView *)v4 setDelegate:self];
  [(UICollectionView *)v4 setDataSource:self];
  [(UICollectionView *)v4 setAutoresizingMask:18];
  view = [(PuppetCollectionViewController *)self view];
  [view bounds];
  [(UICollectionView *)v4 setFrame:?];

  v6 = +[UIColor clearColor];
  [(UICollectionView *)v4 setBackgroundColor:v6];

  [(UICollectionView *)v4 setAlwaysBounceVertical:1];
  [(UICollectionView *)v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PuppetCellID"];
  puppetCollectionView = self->_puppetCollectionView;
  self->_puppetCollectionView = v4;
  v8 = v4;

  view2 = [(PuppetCollectionViewController *)self view];
  [view2 addSubview:v8];

  view3 = [(PuppetCollectionViewController *)self view];
  [view3 addSubview:self->_borderView];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PuppetCollectionViewController;
  [(PuppetCollectionViewController *)&v14 viewDidLayoutSubviews];
  view = [(PuppetCollectionViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v15);

  if (Height != 0.0)
  {
    view2 = [(PuppetCollectionViewController *)self view];
    _screen = [view2 _screen];
    [_screen scale];
    v8 = v7;
    v9 = 1.0 / v7;

    view3 = [(PuppetCollectionViewController *)self view];
    [view3 bounds];
    Width = CGRectGetWidth(v16);
    if (v8 == 0.0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v9;
    }

    [(UIView *)self->_borderView setFrame:0.0, 0.0, Width, v12];

    puppetCollectionView = self->_puppetCollectionView;
    [(PuppetCollectionViewController *)self normalizedEdgeInsetsFromDelegate];
    [(UICollectionView *)puppetCollectionView setContentInset:?];
    if (![(PuppetCollectionViewController *)self suspendAutoScrolling])
    {
      [(PuppetCollectionViewController *)self scrollToSelection];
    }
  }
}

- (void)scrollToSelection
{
  v5 = [NSIndexPath indexPathForRow:[(PuppetCollectionViewController *)self selectedRowIndex] inSection:0];
  selectedRowIndex = [(PuppetCollectionViewController *)self selectedRowIndex];
  if (selectedRowIndex >= [(PuppetCollectionViewController *)self numberOfCells]- self->_puppetsPerRow)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  [(UICollectionView *)self->_puppetCollectionView scrollToItemAtIndexPath:v5 atScrollPosition:v4 animated:0];
}

- (AVTAvatarRecordDataSource)avatarDataSource
{
  if (!self->_observingDataSource)
  {
    [(AVTAvatarRecordDataSource *)self->_avatarDataSource addObserver:self];
    self->_observingDataSource = 1;
  }

  avatarDataSource = self->_avatarDataSource;

  return avatarDataSource;
}

- (AVTAvatarRecordImageProvider)imageProvider
{
  imageProvider = self->_imageProvider;
  if (!imageProvider)
  {
    v4 = objc_alloc_init(AVTAvatarRecordImageProvider);
    v5 = self->_imageProvider;
    self->_imageProvider = v4;

    imageProvider = self->_imageProvider;
  }

  return imageProvider;
}

- (void)setSelectedRecord:(id)record
{
  recordCopy = record;
  if ([(PuppetCollectionViewController *)self isShowingPlusButton])
  {
    objc_storeStrong(&self->_selectedRecord, record);
    if (!recordCopy)
    {
      self->_selectedRecordIndex = -1;
      goto LABEL_9;
    }

    avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000027A0;
    v14[3] = &unk_100034760;
    v15 = recordCopy;
    self->_selectedRecordIndex = [avatarDataSource indexOfRecordPassingTest:v14];

    v7 = v15;
  }

  else
  {
    if (!recordCopy)
    {
      self->_selectedRecordIndex = 0;
      avatarDataSource2 = [(PuppetCollectionViewController *)self avatarDataSource];
      v10 = [avatarDataSource2 recordAtIndex:0];
      selectedRecord = self->_selectedRecord;
      self->_selectedRecord = v10;

      goto LABEL_9;
    }

    objc_storeStrong(&self->_selectedRecord, record);
    avatarDataSource3 = [(PuppetCollectionViewController *)self avatarDataSource];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002804;
    v12[3] = &unk_100034760;
    v13 = recordCopy;
    self->_selectedRecordIndex = [avatarDataSource3 indexOfRecordPassingTest:v12];

    v7 = v13;
  }

LABEL_9:
}

- (void)setSelectedRecordAtIndex:(int64_t)index
{
  if ([(PuppetCollectionViewController *)self isShowingPlusButton])
  {
    self->_selectedRecordIndex = index;
    if (index == -1)
    {
      selectedRecord = self->_selectedRecord;
      self->_selectedRecord = 0;
      goto LABEL_10;
    }

    avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
    v10 = avatarDataSource;
  }

  else
  {
    if (index == -1)
    {
      self->_selectedRecordIndex = 0;
      avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
      v10 = avatarDataSource;
      indexCopy = 0;
      goto LABEL_9;
    }

    avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
    v10 = avatarDataSource;
    self->_selectedRecordIndex = index;
  }

  indexCopy = index;
LABEL_9:
  v8 = [(AVTAvatarRecord *)avatarDataSource recordAtIndex:indexCopy];
  v9 = self->_selectedRecord;
  self->_selectedRecord = v8;

  selectedRecord = v10;
LABEL_10:
}

- (void)setSelectedRowIndex:(int64_t)index
{
  v4 = index - [(PuppetCollectionViewController *)self numberOfPrecedingCells];

  [(PuppetCollectionViewController *)self setSelectedRecordAtIndex:v4];
}

- (int64_t)numberOfCells
{
  avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
  numberOfRecords = [avatarDataSource numberOfRecords];
  numberOfPrecedingCells = [(PuppetCollectionViewController *)self numberOfPrecedingCells];

  return numberOfRecords + numberOfPrecedingCells;
}

- (id)thumbnailForRecordAtIndex:(int64_t)index
{
  avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
  v6 = [avatarDataSource recordAtIndex:index];

  if (v6)
  {
    imageProvider = [(PuppetCollectionViewController *)self imageProvider];
    v8 = [imageProvider imageForRecord:v6 scope:self->_thumbScope];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateSelectedForVisibleCells
{
  selectedRowIndex = [(PuppetCollectionViewController *)self selectedRowIndex];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  visibleCells = [(UICollectionView *)self->_puppetCollectionView visibleCells];
  v5 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(UICollectionView *)self->_puppetCollectionView indexPathForCell:v9];
        [v9 displaySelection:{objc_msgSend(v10, "row") == selectedRowIndex}];
      }

      v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)updateHighlightedForVisibleCells
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  visibleCells = [(UICollectionView *)self->_puppetCollectionView visibleCells];
  v3 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v7 + 1) + 8 * v6) displayHighlight:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (UIView)plusButtonCell
{
  puppetCollectionView = self->_puppetCollectionView;
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [(UICollectionView *)puppetCollectionView cellForItemAtIndexPath:v3];

  return v4;
}

- (UIView)plusButtonView
{
  puppetCollectionView = self->_puppetCollectionView;
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [(UICollectionView *)puppetCollectionView cellForItemAtIndexPath:v3];

  imageButton = [v4 imageButton];

  return imageButton;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  self->_interactionEnabled = enabled;
  if (enabled)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.3;
  }

  view = [(PuppetCollectionViewController *)self view];
  [view setAlpha:v3];
}

- (double)puppetCellSize
{
  [(PuppetCollectionViewController *)self normalizedHorizontalCellSpaingFromDelegate];
  v4 = v3;
  [(PuppetCollectionViewController *)self normalizedEdgeInsetsFromDelegate];
  v6 = v5;
  v8 = v7;
  [(UICollectionView *)self->_puppetCollectionView bounds];
  return fmax((CGRectGetWidth(v10) - v6 - v8 - v4 * (self->_puppetsPerRow - 1)) / self->_puppetsPerRow, 0.0);
}

- (void)setPuppetsPerRow:(int64_t)row
{
  if (self->_puppetsPerRow != row)
  {
    self->_puppetsPerRow = row;
    puppetCollectionView = [(PuppetCollectionViewController *)self puppetCollectionView];
    collectionViewLayout = [puppetCollectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (UIEdgeInsets)normalizedEdgeInsetsFromDelegate
{
  +[PuppetCollectionViewCell cellContentPadding];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentInsetForPuppetCollectionViewController:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14.n128_u64[0] = v7;
  v15.n128_u64[0] = v9;
  v16.n128_u64[0] = v11;
  v17.n128_u64[0] = v13;
  v18.n128_u64[0] = v4;
  v19.n128_u64[0] = v4;
  v20.n128_u64[0] = v4;
  v21.n128_u64[0] = v4;

  _UIEdgeInsetsSubtract(15, v14, v15, v16, v17, v18, v19, v20, v21);
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (double)normalizedHorizontalCellSpaingFromDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained horizontalCellSpacingForPuppetCollectionViewController:self];
  v5 = v4;

  +[PuppetCollectionViewCell cellContentPadding];
  return v5 + v6 * -2.0;
}

- (double)normalizedVerticalCellSpaingFromDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained verticalCellSpacingForPuppetCollectionViewController:self];
  v5 = v4;

  +[PuppetCollectionViewCell cellContentPadding];
  return v5 + v6 * -2.0;
}

- (void)reloadData
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100003168;
  v2[3] = &unk_100034788;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)reloadSelection
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100003224;
  v2[3] = &unk_100034788;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = PuppetCollectionViewController;
  [(PuppetCollectionViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [(PuppetCollectionViewController *)self setSuspendAutoScrolling:1];
    if (coordinatorCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(PuppetCollectionViewController *)self reloadData];
    goto LABEL_6;
  }

  if (!coordinatorCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003384;
  v10[3] = &unk_1000347B0;
  v11 = userInterfaceIdiom == 0;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v10];
LABEL_6:
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PuppetCellID" forIndexPath:pathCopy];
  if ([pathCopy row] || !-[PuppetCollectionViewController isShowingPlusButton](self, "isShowingPlusButton"))
  {
    v13 = [(PuppetCollectionViewController *)self recordIndexForIndexPath:pathCopy];
    avatarDataSource = [(PuppetCollectionViewController *)self avatarDataSource];
    v15 = [avatarDataSource recordAtIndex:v13];

    if (v15)
    {
      asyncPuppetThumbnailHandler = [v8 asyncPuppetThumbnailHandler];
      imageProvider = [(PuppetCollectionViewController *)self imageProvider];
      [imageProvider imageForRecord:v15 scope:self->_thumbScope handler:asyncPuppetThumbnailHandler];
    }
  }

  else
  {
    [objc_opt_class() plusButtonMaxSizeDimension];
    v10 = v9;
    objc_initWeak(&location, self);
    plusButtonCellEnabled = [(PuppetCollectionViewController *)self plusButtonCellEnabled];
    v12 = kAVTCircularButtonPlusImageName;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000035F8;
    v19[3] = &unk_1000347D8;
    objc_copyWeak(&v20, &location);
    [v8 setButtonImageNamed:v12 alpha:plusButtonCellEnabled maxSize:v19 enabled:1.0 touchedHandler:{v10, v10}];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003728;
  v9[3] = &unk_100034800;
  cellCopy = cell;
  selfCopy = self;
  pathCopy = path;
  v7 = pathCopy;
  v8 = cellCopy;
  [UIView performWithoutAnimation:v9];
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 displayHighlight:1];
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 displayHighlight:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  -[PuppetCollectionViewController setSelectedRowIndex:](self, "setSelectedRowIndex:", [path row]);
  [(PuppetCollectionViewController *)self updateSelectedForVisibleCells];
  delegate = [(PuppetCollectionViewController *)self delegate];
  selectedRecord = [(PuppetCollectionViewController *)self selectedRecord];
  [delegate puppetCollectionViewController:self didSelectPuppetRecord:selectedRecord];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  v9 = self->_interactionEnabled && ([pathCopy row] || !-[PuppetCollectionViewController isShowingPlusButton](self, "isShowingPlusButton"));

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(PuppetCollectionViewController *)self puppetCellSize:view];
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (PuppetCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end