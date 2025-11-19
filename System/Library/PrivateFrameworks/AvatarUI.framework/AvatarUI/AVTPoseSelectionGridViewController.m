@interface AVTPoseSelectionGridViewController
- (AVTPoseSelectionGridViewController)initWithAvatarRecord:(id)a3 poseConfigurations:(id)a4 allowsCameraCapture:(BOOL)a5;
- (AVTPoseSelectionGridViewControllerDelegate)delegate;
- (BOOL)willDisplayCameraItem;
- (UIEdgeInsets)contentInset;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)configurationForIndex:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setSelectedStickerConfiguration:(id)a3;
- (void)updateFlowLayoutItemSize;
- (void)updateWithAvatarRecord:(id)a3 stickerConfigurations:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AVTPoseSelectionGridViewController

- (AVTPoseSelectionGridViewController)initWithAvatarRecord:(id)a3 poseConfigurations:(id)a4 allowsCameraCapture:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = AVTPoseSelectionGridViewController;
  v11 = [(AVTPoseSelectionGridViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_avatarRecord, a3);
    if (AVTUIIsFacetrackingSupported() && v5)
    {
      v13 = [[AVTCameraItemView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
      [(AVTPoseSelectionGridViewController *)v12 setCameraCellView:v13];
    }

    objc_storeStrong(&v12->_stickerConfigurations, a4);
    v14 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    backgroundColor = v12->_backgroundColor;
    v12->_backgroundColor = v14;
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
  v6 = [(AVTPoseSelectionGridViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:self->_flowLayout collectionViewLayout:{0.0, 0.0}];
  poseCollectionView = self->_poseCollectionView;
  self->_poseCollectionView = v7;

  [(AVTPoseSelectionGridViewController *)self contentInset];
  [(UICollectionView *)self->_poseCollectionView setContentInset:?];
  v9 = [(AVTPoseSelectionGridViewController *)self backgroundColor];
  [(UICollectionView *)self->_poseCollectionView setBackgroundColor:v9];

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

      v11 = [(AVTPoseSelectionGridViewController *)self delegate];
      v12 = [(AVTPoseSelectionGridViewController *)self selectedStickerConfiguration];
      [v11 poseSelectionGridController:self didSelectConfiguration:v12];

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

  v16 = [(AVTPoseSelectionGridViewController *)self view];
  [v16 addSubview:self->_poseCollectionView];

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v18 = +[AVTSerialTaskScheduler fifoScheduler];
  scheduler = self->_scheduler;
  self->_scheduler = v18;

  v20 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
  generatorPool = self->_generatorPool;
  self->_generatorPool = v20;

  v22 = [AVTUIStickerRenderer alloc];
  v23 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
  v24 = [(AVTUIStickerRenderer *)v22 initWithAvatarRecord:v23 stickerGeneratorPool:self->_generatorPool scheduler:self->_scheduler];
  stickerRenderer = self->_stickerRenderer;
  self->_stickerRenderer = v24;

  v26 = MEMORY[0x1E698E328];
  v27 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
  v49 = [v26 avatarForRecord:v27];

  v48 = objc_alloc_init(AVTAvatarImageRenderer);
  v28 = +[AVTRenderingScope gridThumbnailScope];
  v29 = [(AVTAvatarImageRenderer *)v48 imageForAvatar:v49 scope:v28];
  v30 = [v29 imageWithRenderingMode:2];
  [(AVTPoseSelectionGridViewController *)self setPlaceholderImage:v30];

  v46 = [(UICollectionView *)self->_poseCollectionView topAnchor];
  v47 = [(AVTPoseSelectionGridViewController *)self view];
  v45 = [v47 topAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v51[0] = v44;
  v42 = [(UICollectionView *)self->_poseCollectionView leadingAnchor];
  v43 = [(AVTPoseSelectionGridViewController *)self view];
  v41 = [v43 leadingAnchor];
  v31 = [v42 constraintEqualToAnchor:v41];
  v51[1] = v31;
  v32 = [(UICollectionView *)self->_poseCollectionView trailingAnchor];
  v33 = [(AVTPoseSelectionGridViewController *)self view];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v51[2] = v35;
  v36 = [(UICollectionView *)self->_poseCollectionView bottomAnchor];
  v37 = [(AVTPoseSelectionGridViewController *)self view];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  v51[3] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v40];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionGridViewController;
  v7 = a4;
  [(AVTPoseSelectionGridViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__AVTPoseSelectionGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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
  v3 = [(AVTPoseSelectionGridViewController *)self view];
  [v3 bounds];
  if (v4 <= 430.0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  v6 = [(AVTPoseSelectionGridViewController *)self view];
  [v6 bounds];
  v8 = (v7 + (v5 + 1) * -10.0) / v5;

  v9 = [(AVTPoseSelectionGridViewController *)self flowLayout];
  [v9 setItemSize:{v8, v8}];

  v10 = [(AVTPoseSelectionGridViewController *)self flowLayout];
  [v10 invalidateLayout];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v8 = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
    [v8 setContentInset:{top, left, bottom, right}];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_backgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundColor, a3);
    v5 = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
    [v5 setBackgroundColor:v6];
  }
}

- (void)setSelectedStickerConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  selectedStickerConfiguration = self->_selectedStickerConfiguration;
  if (selectedStickerConfiguration != v5)
  {
    if (v5)
    {
      v8 = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__AVTPoseSelectionGridViewController_setSelectedStickerConfiguration___block_invoke;
      v17[3] = &unk_1E7F3B3F8;
      v18 = v6;
      v9 = [v8 indexOfObjectPassingTest:v17];

      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_storeStrong(&self->_selectedStickerConfiguration, a3);
        v10 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
        if (v10)
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
        v15 = [(UICollectionView *)v14 indexPathsForSelectedItems];
        v16 = [v15 firstObject];
        [(UICollectionView *)v14 deselectItemAtIndexPath:v16 animated:1];
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

- (void)updateWithAvatarRecord:(id)a3 stickerConfigurations:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(AVTPoseSelectionGridViewController *)self avatarRecord];

  if (v7)
  {
    v8 = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];

    if (v8)
    {
      [(AVTPoseSelectionGridViewController *)self setAvatarRecord:v24];
      [(AVTPoseSelectionGridViewController *)self setStickerConfigurations:v6];
      v9 = [AVTUIStickerRenderer alloc];
      v10 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
      v11 = [(AVTPoseSelectionGridViewController *)self generatorPool];
      v12 = [(AVTPoseSelectionGridViewController *)self scheduler];
      v13 = [(AVTUIStickerRenderer *)v9 initWithAvatarRecord:v10 stickerGeneratorPool:v11 scheduler:v12];
      [(AVTPoseSelectionGridViewController *)self setStickerRenderer:v13];

      v14 = MEMORY[0x1E698E328];
      v15 = [(AVTPoseSelectionGridViewController *)self avatarRecord];
      v16 = [v14 avatarForRecord:v15];

      v17 = objc_alloc_init(AVTAvatarImageRenderer);
      v18 = +[AVTRenderingScope gridThumbnailScope];
      v19 = [(AVTAvatarImageRenderer *)v17 imageForAvatar:v16 scope:v18];
      v20 = [v19 imageWithRenderingMode:2];
      [(AVTPoseSelectionGridViewController *)self setPlaceholderImage:v20];

      v21 = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
      [v21 reloadData];

      v22 = [(AVTPoseSelectionGridViewController *)self poseCollectionView];
      v23 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      [v22 selectItemAtIndexPath:v23 animated:0 scrollPosition:0];
    }
  }
}

- (BOOL)willDisplayCameraItem
{
  v2 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  v3 = v2 != 0;

  return v3;
}

- (id)configurationForIndex:(int64_t)a3
{
  v5 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  v6 = v5 != 0;

  v7 = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
  v8 = [v7 objectAtIndexedSubscript:a3 - v6];

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(AVTPoseSelectionGridViewController *)self cameraCellView:a3];
  v6 = [(AVTPoseSelectionGridViewController *)self stickerConfigurations];
  v7 = [v6 count];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v7];
  v9 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  if (v9 && (v10 = v9, v11 = [v7 item], v10, !v11))
  {
    v27 = [v8 tintColor];
    v28 = [MEMORY[0x1E69DC888] systemBlueColor];

    if (v27 != v28)
    {
      v29 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v8 setTintColor:v29];
    }

    [v8 updateImage:0 animated:0];
    v30 = [v8 contentView];
    v31 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [v30 addSubview:v31];

    v32 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [v32 setAutoresizingMask:18];

    v19 = [v8 contentView];
    [v19 bounds];
    v57 = CGRectInset(v56, 20.0, 20.0);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    v37 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    [v37 setFrame:{x, y, width, height}];
  }

  else
  {
    v12 = [v8 tintColor];
    v13 = [MEMORY[0x1E69DC888] quaternaryLabelColor];

    if (v12 != v13)
    {
      v14 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      [v8 setTintColor:v14];
    }

    v15 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
    v16 = [v15 superview];
    v17 = [v8 contentView];

    if (v16 == v17)
    {
      v18 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
      [v18 removeFromSuperview];
    }

    v19 = -[AVTPoseSelectionGridViewController configurationForIndex:](self, "configurationForIndex:", [v7 item]);
    v20 = [(AVTPoseSelectionGridViewController *)self stickerRenderer];
    v21 = [v20 scheduledStickerResourceProviderForStickerConfiguration:v19 correctClipping:0];

    v22 = [MEMORY[0x1E696AFB0] UUID];
    [v8 setContextIdentifier:v22];
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
    v24 = v22;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [(AVTPoseSelectionGridViewController *)self cameraCellView];
  if (v5 && (v6 = v5, v7 = [v11 item], v6, !v7))
  {
    [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:0];
    v9 = [(AVTPoseSelectionGridViewController *)self delegate];
    [v9 poseSelectionGridControllerDidSelectCameraItem:self];
  }

  else
  {
    v8 = -[AVTPoseSelectionGridViewController configurationForIndex:](self, "configurationForIndex:", [v11 item]);
    [(AVTPoseSelectionGridViewController *)self setSelectedStickerConfiguration:v8];

    v9 = [(AVTPoseSelectionGridViewController *)self delegate];
    v10 = [(AVTPoseSelectionGridViewController *)self selectedStickerConfiguration];
    [v9 poseSelectionGridController:self didSelectConfiguration:v10];
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