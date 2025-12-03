@interface AVTPoseSelectionGridViewController
- (AVTPoseSelectionGridViewController)initWithAvatarRecord:(id)record poseConfigurations:(id)configurations allowsCameraCapture:(BOOL)capture;
- (AVTPoseSelectionGridViewControllerDelegate)delegate;
- (BOOL)willDisplayCameraItem;
- (UIEdgeInsets)contentInset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)configurationForIndex:(int64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setSelectedStickerConfiguration:(id)configuration;
- (void)updateFlowLayoutItemSize;
- (void)updateWithAvatarRecord:(id)record stickerConfigurations:(id)configurations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AVTPoseSelectionGridViewController

- (AVTPoseSelectionGridViewController)initWithAvatarRecord:(id)record poseConfigurations:(id)configurations allowsCameraCapture:(BOOL)capture
{
  captureCopy = capture;
  recordCopy = record;
  configurationsCopy = configurations;
  v17.receiver = self;
  v17.super_class = AVTPoseSelectionGridViewController;
  v11 = [(AVTPoseSelectionGridViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_avatarRecord, record);
    if (AVTUIIsFacetrackingSupported() && captureCopy)
    {
      v13 = [[AVTCameraItemView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
      [(AVTPoseSelectionGridViewController *)v12 setCameraCellView:v13];
    }

    objc_storeStrong(&v12->_stickerConfigurations, configurations);
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    backgroundColor = v12->_backgroundColor;
    v12->_backgroundColor = systemBackgroundColor;
  }

  return v12;
}

- (void)viewDidLoad
{
  v51[4] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = AVTPoseSelectionGridViewController;
  [(AVTPoseSelectionGridViewController *)&v50 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  flowLayout = self->_flowLayout;
  self->_flowLayout = v3;

  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(AVTPoseSelectionGridViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:self->_flowLayout collectionViewLayout:{0.0, 0.0}];
  poseCollectionView = self->_poseCollectionView;
  self->_poseCollectionView = v7;

  [(AVTPoseSelectionGridViewController *)self contentInset];
  [(UICollectionView *)self->_poseCollectionView setContentInset:?];
  backgroundColor = [(AVTPoseSelectionGridViewController *)self backgroundColor];
  [(UICollectionView *)self->_poseCollectionView setBackgroundColor:backgroundColor];

  [(UICollectionView *)self->_poseCollectionView setDelegate:self];
  [(UICollectionView *)self->_poseCollectionView setDataSource:self];
  [(UICollectionView *)self->_poseCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
  [(UICollectionView *)self->_poseCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_selectedStickerConfiguration)
  {
    [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:?];
  }

  else
  {
    if (AVTDeviceIsGreenTea() && [(AVTPoseSelectionGridViewController *)self willDisplayCameraItem])
    {
      v10 = [(NSArray *)self->_stickerConfigurations objectAtIndexedSubscript:0];
      [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:v10];

      delegate = [(AVTPoseSelectionGridViewController *)self delegate];
      selectedStickerConfiguration = [(AVTPoseSelectionGridViewController *)self selectedStickerConfiguration];
      [delegate poseSelectionGridController:self didSelectConfiguration:selectedStickerConfiguration];

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = self->_poseCollectionView;
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
    [(UICollectionView *)v14 selectItemAtIndexPath:v15 animated:0 scrollPosition:0];
  }

  view2 = [(AVTPoseSelectionGridViewController *)self view];
  [view2 addSubview:self->_poseCollectionView];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v18 = +[AVTSerialTaskScheduler fifoScheduler];
  scheduler = self->_scheduler;
  self->_scheduler = v18;

  v20 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
  generatorPool = self->_generatorPool;
  self->_generatorPool = v20;

  v22 = [AVTUIStickerRenderer alloc];
  avatarRecord = [(AVTPoseSelectionGridViewController *)self avatarRecord];
  v24 = [(AVTUIStickerRenderer *)v22 initWithAvatarRecord:avatarRecord stickerGeneratorPool:self->_generatorPool scheduler:self->_scheduler];
  stickerRenderer = self->_stickerRenderer;
  self->_stickerRenderer = v24;

  v26 = MEMORY[0x1E698E328];
  avatarRecord2 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
  v49 = [v26 avatarForRecord:avatarRecord2];

  v48 = objc_alloc_init(AVTAvatarImageRenderer);
  v28 = +[AVTRenderingScope gridThumbnailScope];
  v29 = [(AVTAvatarImageRenderer *)v48 imageForAvatar:v49 scope:v28];
  v30 = [v29 imageWithRenderingMode:2];
  [(AVTPoseSelectionGridViewController *)self setPlaceholderImage:v30];

  topAnchor = [(UICollectionView *)self->_poseCollectionView topAnchor];
  view3 = [(AVTPoseSelectionGridViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v44;
  leadingAnchor = [(UICollectionView *)self->_poseCollectionView leadingAnchor];
  view4 = [(AVTPoseSelectionGridViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[1] = v31;
  trailingAnchor = [(UICollectionView *)self->_poseCollectionView trailingAnchor];
  view5 = [(AVTPoseSelectionGridViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[2] = v35;
  bottomAnchor = [(UICollectionView *)self->_poseCollectionView bottomAnchor];
  view6 = [(AVTPoseSelectionGridViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v40];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionGridViewController;
  coordinatorCopy = coordinator;
  [(AVTPoseSelectionGridViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__AVTPoseSelectionGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __89__AVTPoseSelectionGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) poseCollectionView];
  v1 = [v2 collectionViewLayout];
  [v1 invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTPoseSelectionGridViewController;
  [(AVTPoseSelectionGridViewController *)&v3 viewDidLayoutSubviews];
  [(AVTPoseSelectionGridViewController *)self updateFlowLayoutItemSize];
}

- (void)updateFlowLayoutItemSize
{
  view = [(AVTPoseSelectionGridViewController *)self view];
  [view bounds];
  if (v4 <= 430.0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  view2 = [(AVTPoseSelectionGridViewController *)self view];
  [view2 bounds];
  v8 = (v7 + (v5 + 1) * -10.0) / v5;

  flowLayout = [(AVTPoseSelectionGridViewController *)self flowLayout];
  [flowLayout setItemSize:{v8, v8}];

  flowLayout2 = [(AVTPoseSelectionGridViewController *)self flowLayout];
  [flowLayout2 invalidateLayout];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    right = inset.right;
    left = inset.left;
    bottom = inset.bottom;
    top = inset.top;
    poseCollectionView = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
    [poseCollectionView setContentInset:{top, left, bottom, right}];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_backgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundColor, color);
    poseCollectionView = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
    [poseCollectionView setBackgroundColor:colorCopy];
  }
}

- (void)setSelectedStickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  selectedStickerConfiguration = self->_selectedStickerConfiguration;
  if (selectedStickerConfiguration != configurationCopy)
  {
    if (configurationCopy)
    {
      stickerConfigurations = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__AVTPoseSelectionGridViewController_setSelectedStickerConfiguration___block_invoke;
      v17[3] = &unk_1E7F3B3F8;
      v18 = v6;
      v9 = [stickerConfigurations indexOfObjectPassingTest:v17];

      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_storeStrong(&self->_selectedStickerConfiguration, configuration);
        cameraCellView = [(AVTPoseSelectionGridViewController *)self cameraCellView];
        if (cameraCellView)
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = v9;
        }

        poseCollectionView = self->_poseCollectionView;
        v13 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
        [(UICollectionView *)poseCollectionView selectItemAtIndexPath:v13 animated:0 scrollPosition:0];
      }
    }

    else
    {
      self->_selectedStickerConfiguration = 0;

      if (![(AVTPoseSelectionGridViewController *)self willDisplayCameraItem])
      {
        v14 = self->_poseCollectionView;
        indexPathsForSelectedItems = [(UICollectionView *)v14 indexPathsForSelectedItems];
        firstObject = [indexPathsForSelectedItems firstObject];
        [(UICollectionView *)v14 deselectItemAtIndexPath:firstObject animated:1];
      }
    }
  }
}

uint64_t __70__AVTPoseSelectionGridViewController_setSelectedStickerConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  v5 = [v3 name];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)updateWithAvatarRecord:(id)record stickerConfigurations:(id)configurations
{
  recordCopy = record;
  configurationsCopy = configurations;
  avatarRecord = [(AVTPoseSelectionGridViewController *)self avatarRecord];

  if (avatarRecord)
  {
    stickerConfigurations = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];

    if (stickerConfigurations)
    {
      [(AVTPoseSelectionGridViewController *)self setAvatarRecord:recordCopy];
      [(AVTPoseSelectionGridViewController *)self setStickerConfigurations:configurationsCopy];
      v9 = [AVTUIStickerRenderer alloc];
      avatarRecord2 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
      generatorPool = [(AVTPoseSelectionGridViewController *)self generatorPool];
      scheduler = [(AVTPoseSelectionGridViewController *)self scheduler];
      v13 = [(AVTUIStickerRenderer *)v9 initWithAvatarRecord:avatarRecord2 stickerGeneratorPool:generatorPool scheduler:scheduler];
      [(AVTPoseSelectionGridViewController *)self setStickerRenderer:v13];

      v14 = MEMORY[0x1E698E328];
      avatarRecord3 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
      v16 = [v14 avatarForRecord:avatarRecord3];

      v17 = objc_alloc_init(AVTAvatarImageRenderer);
      v18 = +[AVTRenderingScope gridThumbnailScope];
      v19 = [(AVTAvatarImageRenderer *)v17 imageForAvatar:v16 scope:v18];
      v20 = [v19 imageWithRenderingMode:2];
      [(AVTPoseSelectionGridViewController *)self setPlaceholderImage:v20];

      poseCollectionView = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
      [poseCollectionView reloadData];

      poseCollectionView2 = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
      v23 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      [poseCollectionView2 selectItemAtIndexPath:v23 animated:0 scrollPosition:0];
    }
  }
}

- (BOOL)willDisplayCameraItem
{
  cameraCellView = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  v3 = cameraCellView != 0;

  return v3;
}

- (id)configurationForIndex:(int64_t)index
{
  cameraCellView = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  v6 = cameraCellView != 0;

  stickerConfigurations = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
  v8 = [stickerConfigurations objectAtIndexedSubscript:index - v6];

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(AVTPoseSelectionGridViewController *)self cameraCellView:view];
  stickerConfigurations = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
  v7 = [stickerConfigurations count];
  if (v5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  cameraCellView = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  if (cameraCellView && (v10 = cameraCellView, v11 = [pathCopy item], v10, !v11))
  {
    tintColor = [v8 tintColor];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];

    if (tintColor != systemBlueColor)
    {
      systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v8 setTintColor:systemBlueColor2];
    }

    [v8 updateImage:0 animated:0];
    contentView = [v8 contentView];
    cameraCellView2 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [contentView addSubview:cameraCellView2];

    cameraCellView3 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [cameraCellView3 setAutoresizingMask:18];

    contentView2 = [v8 contentView];
    [contentView2 bounds];
    v57 = CGRectInset(v56, 20.0, 20.0);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    cameraCellView4 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [cameraCellView4 setFrame:{x, y, width, height}];
  }

  else
  {
    tintColor2 = [v8 tintColor];
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];

    if (tintColor2 != quaternaryLabelColor)
    {
      quaternaryLabelColor2 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      [v8 setTintColor:quaternaryLabelColor2];
    }

    cameraCellView5 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    superview = [cameraCellView5 superview];
    contentView3 = [v8 contentView];

    if (superview == contentView3)
    {
      cameraCellView6 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
      [cameraCellView6 removeFromSuperview];
    }

    contentView2 = -[AVTPoseSelectionGridViewController configurationForIndex:](self, "configurationForIndex:", [pathCopy item]);
    stickerRenderer = [(AVTPoseSelectionGridViewController *)self stickerRenderer];
    v21 = [stickerRenderer scheduledStickerResourceProviderForStickerConfiguration:contentView2 correctClipping:0];

    uUID = [MEMORY[0x1E696AFB0] UUID];
    [v8 setContextIdentifier:uUID];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __76__AVTPoseSelectionGridViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v42 = &unk_1E7F3B420;
    v45 = &v47;
    v23 = v8;
    v43 = v23;
    v24 = uUID;
    v44 = v24;
    v46 = &v51;
    v25 = (v21)[2](v21, &v39, 1);
    if ((v48[3] & 1) == 0)
    {
      *(v52 + 24) = 1;
      v26 = [(AVTPoseSelectionGridViewController *)self placeholderImage:v39];
      [v23 updateImage:v26 animated:0];
    }

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
  }

  return v8;
}

void __76__AVTPoseSelectionGridViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v3 = [*(a1 + 32) contextIdentifier];
  if (v3 == *(a1 + 40))
  {
    v4 = [v6 image];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = *(a1 + 32);
    v3 = [v6 image];
    [v5 updateImage:v3 animated:*(*(*(a1 + 56) + 8) + 24)];
  }

LABEL_5:
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  cameraCellView = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  if (cameraCellView && (v6 = cameraCellView, v7 = [pathCopy item], v6, !v7))
  {
    [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:0];
    delegate = [(AVTPoseSelectionGridViewController *)self delegate];
    [delegate poseSelectionGridControllerDidSelectCameraItem:self];
  }

  else
  {
    v8 = -[AVTPoseSelectionGridViewController configurationForIndex:](self, "configurationForIndex:", [pathCopy item]);
    [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:v8];

    delegate = [(AVTPoseSelectionGridViewController *)self delegate];
    selectedStickerConfiguration = [(AVTPoseSelectionGridViewController *)self selectedStickerConfiguration];
    [delegate poseSelectionGridController:self didSelectConfiguration:selectedStickerConfiguration];
  }
}

- (AVTPoseSelectionGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end