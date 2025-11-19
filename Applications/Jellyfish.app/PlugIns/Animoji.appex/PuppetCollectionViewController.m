@interface PuppetCollectionViewController
+ (double)plusButtonMaxSizeDimension;
- (AVTAvatarRecordDataSource)avatarDataSource;
- (AVTAvatarRecordImageProvider)imageProvider;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isShowingPlusButton;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PuppetCollectionViewController)initWithCoder:(id)a3;
- (PuppetCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PuppetCollectionViewControllerDelegate)delegate;
- (UIEdgeInsets)normalizedEdgeInsetsFromDelegate;
- (UIView)plusButtonCell;
- (UIView)plusButtonView;
- (double)normalizedHorizontalCellSpaingFromDelegate;
- (double)normalizedVerticalCellSpaingFromDelegate;
- (double)puppetCellSize;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)thumbnailForRecordAtIndex:(int64_t)a3;
- (int64_t)numberOfCells;
- (void)_configure;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)reloadData;
- (void)reloadSelection;
- (void)scrollToSelection;
- (void)setPlusButtonCellEnabled:(BOOL)a3;
- (void)setPuppetsPerRow:(int64_t)a3;
- (void)setSelectedRecord:(id)a3;
- (void)setSelectedRecordAtIndex:(int64_t)a3;
- (void)setSelectedRowIndex:(int64_t)a3;
- (void)setShowsPlusButton:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)updateHighlightedForVisibleCells;
- (void)updateSelectedForVisibleCells;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (PuppetCollectionViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PuppetCollectionViewController;
  v3 = [(PuppetCollectionViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PuppetCollectionViewController *)v3 _configure];
  }

  return v4;
}

- (PuppetCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PuppetCollectionViewController;
  v4 = [(PuppetCollectionViewController *)&v7 initWithNibName:a3 bundle:a4];
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

- (void)setPlusButtonCellEnabled:(BOOL)a3
{
  if (self->_plusButtonCellEnabled != a3)
  {
    self->_plusButtonCellEnabled = a3;
    [(PuppetCollectionViewController *)self reloadData];
  }
}

- (void)setShowsPlusButton:(BOOL)a3
{
  if (self->_showsPlusButton != a3)
  {
    self->_showsPlusButton = a3;
    [(PuppetCollectionViewController *)self reloadData];
  }
}

- (BOOL)isShowingPlusButton
{
  v3 = [(PuppetCollectionViewController *)self showsPlusButton];
  if (v3)
  {
    v4 = [(PuppetCollectionViewController *)self avatarDataSource];
    v5 = [v4 recordStore];
    v6 = [v5 canCreateAvatar];

    LOBYTE(v3) = v6;
  }

  return v3;
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
  v5 = [(PuppetCollectionViewController *)self view];
  [v5 bounds];
  [(UICollectionView *)v4 setFrame:?];

  v6 = +[UIColor clearColor];
  [(UICollectionView *)v4 setBackgroundColor:v6];

  [(UICollectionView *)v4 setAlwaysBounceVertical:1];
  [(UICollectionView *)v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PuppetCellID"];
  puppetCollectionView = self->_puppetCollectionView;
  self->_puppetCollectionView = v4;
  v8 = v4;

  v9 = [(PuppetCollectionViewController *)self view];
  [v9 addSubview:v8];

  v10 = [(PuppetCollectionViewController *)self view];
  [v10 addSubview:self->_borderView];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PuppetCollectionViewController;
  [(PuppetCollectionViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(PuppetCollectionViewController *)self view];
  [v3 bounds];
  Height = CGRectGetHeight(v15);

  if (Height != 0.0)
  {
    v5 = [(PuppetCollectionViewController *)self view];
    v6 = [v5 _screen];
    [v6 scale];
    v8 = v7;
    v9 = 1.0 / v7;

    v10 = [(PuppetCollectionViewController *)self view];
    [v10 bounds];
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
  v3 = [(PuppetCollectionViewController *)self selectedRowIndex];
  if (v3 >= [(PuppetCollectionViewController *)self numberOfCells]- self->_puppetsPerRow)
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

- (void)setSelectedRecord:(id)a3
{
  v5 = a3;
  if ([(PuppetCollectionViewController *)self isShowingPlusButton])
  {
    objc_storeStrong(&self->_selectedRecord, a3);
    if (!v5)
    {
      self->_selectedRecordIndex = -1;
      goto LABEL_9;
    }

    v6 = [(PuppetCollectionViewController *)self avatarDataSource];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000027A0;
    v14[3] = &unk_100034760;
    v15 = v5;
    self->_selectedRecordIndex = [v6 indexOfRecordPassingTest:v14];

    v7 = v15;
  }

  else
  {
    if (!v5)
    {
      self->_selectedRecordIndex = 0;
      v9 = [(PuppetCollectionViewController *)self avatarDataSource];
      v10 = [v9 recordAtIndex:0];
      selectedRecord = self->_selectedRecord;
      self->_selectedRecord = v10;

      goto LABEL_9;
    }

    objc_storeStrong(&self->_selectedRecord, a3);
    v8 = [(PuppetCollectionViewController *)self avatarDataSource];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002804;
    v12[3] = &unk_100034760;
    v13 = v5;
    self->_selectedRecordIndex = [v8 indexOfRecordPassingTest:v12];

    v7 = v13;
  }

LABEL_9:
}

- (void)setSelectedRecordAtIndex:(int64_t)a3
{
  if ([(PuppetCollectionViewController *)self isShowingPlusButton])
  {
    self->_selectedRecordIndex = a3;
    if (a3 == -1)
    {
      selectedRecord = self->_selectedRecord;
      self->_selectedRecord = 0;
      goto LABEL_10;
    }

    v5 = [(PuppetCollectionViewController *)self avatarDataSource];
    v10 = v5;
  }

  else
  {
    if (a3 == -1)
    {
      self->_selectedRecordIndex = 0;
      v5 = [(PuppetCollectionViewController *)self avatarDataSource];
      v10 = v5;
      v6 = 0;
      goto LABEL_9;
    }

    v5 = [(PuppetCollectionViewController *)self avatarDataSource];
    v10 = v5;
    self->_selectedRecordIndex = a3;
  }

  v6 = a3;
LABEL_9:
  v8 = [(AVTAvatarRecord *)v5 recordAtIndex:v6];
  v9 = self->_selectedRecord;
  self->_selectedRecord = v8;

  selectedRecord = v10;
LABEL_10:
}

- (void)setSelectedRowIndex:(int64_t)a3
{
  v4 = a3 - [(PuppetCollectionViewController *)self numberOfPrecedingCells];

  [(PuppetCollectionViewController *)self setSelectedRecordAtIndex:v4];
}

- (int64_t)numberOfCells
{
  v3 = [(PuppetCollectionViewController *)self avatarDataSource];
  v4 = [v3 numberOfRecords];
  v5 = [(PuppetCollectionViewController *)self numberOfPrecedingCells];

  return v4 + v5;
}

- (id)thumbnailForRecordAtIndex:(int64_t)a3
{
  v5 = [(PuppetCollectionViewController *)self avatarDataSource];
  v6 = [v5 recordAtIndex:a3];

  if (v6)
  {
    v7 = [(PuppetCollectionViewController *)self imageProvider];
    v8 = [v7 imageForRecord:v6 scope:self->_thumbScope];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateSelectedForVisibleCells
{
  v3 = [(PuppetCollectionViewController *)self selectedRowIndex];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UICollectionView *)self->_puppetCollectionView visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(UICollectionView *)self->_puppetCollectionView indexPathForCell:v9];
        [v9 displaySelection:{objc_msgSend(v10, "row") == v3}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(UICollectionView *)self->_puppetCollectionView visibleCells];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) displayHighlight:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

  v5 = [v4 imageButton];

  return v5;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  self->_interactionEnabled = a3;
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.3;
  }

  v4 = [(PuppetCollectionViewController *)self view];
  [v4 setAlpha:v3];
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

- (void)setPuppetsPerRow:(int64_t)a3
{
  if (self->_puppetsPerRow != a3)
  {
    self->_puppetsPerRow = a3;
    v5 = [(PuppetCollectionViewController *)self puppetCollectionView];
    v4 = [v5 collectionViewLayout];
    [v4 invalidateLayout];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PuppetCollectionViewController;
  [(PuppetCollectionViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    [(PuppetCollectionViewController *)self setSuspendAutoScrolling:1];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(PuppetCollectionViewController *)self reloadData];
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003384;
  v10[3] = &unk_1000347B0;
  v11 = v9 == 0;
  v10[4] = self;
  [v7 animateAlongsideTransition:0 completion:v10];
LABEL_6:
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"PuppetCellID" forIndexPath:v7];
  if ([v7 row] || !-[PuppetCollectionViewController isShowingPlusButton](self, "isShowingPlusButton"))
  {
    v13 = [(PuppetCollectionViewController *)self recordIndexForIndexPath:v7];
    v14 = [(PuppetCollectionViewController *)self avatarDataSource];
    v15 = [v14 recordAtIndex:v13];

    if (v15)
    {
      v16 = [v8 asyncPuppetThumbnailHandler];
      v17 = [(PuppetCollectionViewController *)self imageProvider];
      [v17 imageForRecord:v15 scope:self->_thumbScope handler:v16];
    }
  }

  else
  {
    [objc_opt_class() plusButtonMaxSizeDimension];
    v10 = v9;
    objc_initWeak(&location, self);
    v11 = [(PuppetCollectionViewController *)self plusButtonCellEnabled];
    v12 = kAVTCircularButtonPlusImageName;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000035F8;
    v19[3] = &unk_1000347D8;
    objc_copyWeak(&v20, &location);
    [v8 setButtonImageNamed:v12 alpha:v11 maxSize:v19 enabled:1.0 touchedHandler:{v10, v10}];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003728;
  v9[3] = &unk_100034800;
  v10 = a4;
  v11 = self;
  v12 = a5;
  v7 = v12;
  v8 = v10;
  [UIView performWithoutAnimation:v9];
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 displayHighlight:1];
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 displayHighlight:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  -[PuppetCollectionViewController setSelectedRowIndex:](self, "setSelectedRowIndex:", [a4 row]);
  [(PuppetCollectionViewController *)self updateSelectedForVisibleCells];
  v6 = [(PuppetCollectionViewController *)self delegate];
  v5 = [(PuppetCollectionViewController *)self selectedRecord];
  [v6 puppetCollectionViewController:self didSelectPuppetRecord:v5];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = self->_interactionEnabled && ([v7 row] || !-[PuppetCollectionViewController isShowingPlusButton](self, "isShowingPlusButton"));

  return v9;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(PuppetCollectionViewController *)self puppetCellSize:a3];
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