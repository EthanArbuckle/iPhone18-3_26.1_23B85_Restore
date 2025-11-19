@interface AVTAvatarAttributeEditorViewController
- (AVTAvatarAttributeEditorViewController)init;
- (AVTAvatarAttributeEditorViewController)initWithAvatarRecord:(id)a3 avtViewSessionProvider:(id)a4 environment:(id)a5 isCreating:(BOOL)a6;
- (AVTAvatarAttributeEditorViewControllerDelegate)delegate;
- (AVTAvatarRecord)avatarRecord;
- (AVTMemoji)avatar;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)adjustedSafeAreaInsets;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)maxGroupLabelWidth;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)createAlphaAssetsLabel;
- (id)liveView;
- (id)presetSectionItemForIndexPath:(id)a3;
- (id)selectedItemInSection:(id)a3;
- (id)visibleLayout;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)applyLayout:(id)a3 layoutAvatarView:(BOOL)a4 recalculateOffsetIfNeeded:(BOOL)a5;
- (void)applyUserInfoViewLayout;
- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3;
- (void)collapsibleHeaderController:(id)a3 didUpdateHeaderToHeight:(double)a4;
- (void)collapsibleHeaderController:(id)a3 isUpdatingHeaderWithIncrementalHeight:(double)a4;
- (void)collapsibleHeaderController:(id)a3 willUpdateHeaderToHeight:(double)a4;
- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureAVTViewFromSession:(id)a3;
- (void)configurePPTMemoji:(id)a3;
- (void)configureThrottlerForAVTView:(id)a3;
- (void)configureUserInfoLabel;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)createVerticleRuleIfNeeded;
- (void)didFinishEditing;
- (void)didTapAvatarView:(id)a3;
- (void)faceTrackingManager:(id)a3 didUpdateUserInfoWithSize:(CGSize)a4;
- (void)groupPicker:(id)a3 didSelectGroupAtIndex:(int64_t)a4 tapped:(BOOL)a5;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)a3;
- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4;
- (void)prepareForPresetsScrollTestOnCategory:(id)a3 readyHandler:(id)a4;
- (void)rebuildUIModelAfterSelectionInSection:(id)a3 senderRect:(CGRect)a4 reloadSections:(BOOL)a5;
- (void)reloadCollectionViewDataWithCompletion:(id)a3;
- (void)resetAllSectionControllersStateToDefault;
- (void)sectionHeaderView:(id)a3 didSelectItem:(id)a4 forPicker:(id)a5 sender:(id)a6;
- (void)selectCategory:(id)a3 withCompletionDelay:(int64_t)a4 completionHandler:(id)a5;
- (void)setTransitioningContainerFrame;
- (void)setUpHeaderView;
- (void)setupCollapsibleHeaderIfNeededForLayout:(id)a3 withSession:(id)a4;
- (void)setupGroupSelectorIfNeeded;
- (void)setupImageView;
- (void)setupPreview:(id)a3;
- (void)setupTapGestureForView:(id)a3;
- (void)tearDownCollapsibleHeaderIfNeeded;
- (void)tearDownThrottler;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
- (void)transitionToLiveViewAnimated:(BOOL)a3;
- (void)updateAlphaAssetsLabelFrameIfNeeded;
- (void)updateBodyEditorHeaderIfNeeded;
- (void)updateCollapsibleHeaderHeightConstraintsAnimated:(BOOL)a3;
- (void)updateForChangedSelectionIfNeeded;
- (void)updateForSelectionOfItem:(id)a3 controller:(id)a4 reloadSections:(BOOL)a5;
- (void)updateForSelectionOfItem:(id)a3 inSection:(id)a4 senderRect:(CGRect)a5 reloadSections:(BOOL)a6;
- (void)updateForSelectionOfSupplementalItem:(id)a3 senderRect:(CGRect)a4;
- (void)updateHeaderDependentLayoutWithHeaderFrame:(CGRect)a3 fittingSize:(CGSize)a4;
- (void)updateHeaderViewForPreviewModeType:(unint64_t)a3;
- (void)updateImageViewWithPosedAvatarRecordForcingRender:(BOOL)a3 completionHandler:(id)a4;
- (void)updateLayoutAttributes;
- (void)updateLayoutForAttributesCollectionMaskingView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AVTAvatarAttributeEditorViewController

- (AVTAvatarAttributeEditorViewController)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [AVTViewSessionProvider alloc];
  [AVTViewSessionProvider backingSizeForEnvironment:v3];
  v6 = v5;
  v8 = v7;
  v9 = +[AVTViewSessionProvider creatorForAVTRecordView];
  v10 = [(AVTViewSessionProvider *)v4 initWithAVTViewBackingSize:v9 viewCreator:v3 environment:v6, v8];

  v11 = objc_alloc_init(MEMORY[0x1E698E320]);
  v12 = [(AVTAvatarAttributeEditorViewController *)self initWithAvatarRecord:v11 avtViewSessionProvider:v10 environment:v3 isCreating:1];

  return v12;
}

- (AVTAvatarAttributeEditorViewController)initWithAvatarRecord:(id)a3 avtViewSessionProvider:(id)a4 environment:(id)a5 isCreating:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v52.receiver = self;
  v52.super_class = AVTAvatarAttributeEditorViewController;
  v13 = [(AVTAvatarAttributeEditorViewController *)&v52 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v48 = v11;
    objc_storeStrong(&v13->_environment, a5);
    objc_storeStrong(&v14->_avtViewSessionProvider, a4);
    v15 = [v12 coreEnvironment];
    v16 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:v15];
    imageProviderScheduler = v14->_imageProviderScheduler;
    v14->_imageProviderScheduler = v16;

    v51 = [[AVTPresetImageProvider alloc] initWithRenderingScheduler:v14->_imageProviderScheduler environment:v12];
    v18 = [v12 deviceResourceManager];
    [v18 registerConsumer:v51];

    v50 = objc_alloc_init(AVTColorLayerProvider);
    v19 = [AVTPresetResourceLoader alloc];
    v20 = [(AVTPresetResourceLoader *)v19 initWithEnvironment:v12 renderingScheduler:v14->_imageProviderScheduler callbackQueue:MEMORY[0x1E69E96A0]];
    v21 = [AVTAvatarAttributeEditorPreloader alloc];
    v22 = [v12 logger];
    v47 = v20;
    v49 = [(AVTAvatarAttributeEditorPreloader *)v21 initWithResourceLoader:v20 logger:v22];

    v23 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
    v24 = [AVTClippableImageStore alloc];
    v25 = [v12 coreEnvironment];
    v26 = [v12 imageCacheStoreLocation];
    v27 = [(AVTImageStore *)v24 initWithEnvironment:v25 validateImages:0 location:v26];

    v28 = [AVTUIStickerRenderer alloc];
    [v12 editorThumbnailAvatar];
    v30 = v29 = a6;
    v31 = [(AVTUIStickerRenderer *)v28 initWithAvatarRecord:v10 avatar:v30 stickerGeneratorPool:v23 scheduler:v14->_imageProviderScheduler imageStore:v27 environment:v12];

    v32 = [AVTAvatarAttributeEditorModelManager alloc];
    v33 = [v12 editorCoreModel];
    v34 = [(AVTAvatarAttributeEditorModelManager *)v32 initWithAvatarRecord:v10 coreModel:v33 imageProvider:v51 colorLayerProvider:v50 preloader:v49 environment:v12 stickerRenderer:v31];
    modelManager = v14->_modelManager;
    v14->_modelManager = v34;

    if (v29)
    {
      v36 = 0;
    }

    else
    {
      v36 = AVTUIEditorMostRecentGroupName();
    }

    v37 = [AVTAvatarAttributeEditorDataSource alloc];
    v38 = [(AVTAvatarAttributeEditorDataSource *)v37 initWithCategories:MEMORY[0x1E695E0F0] currentCategoryIdentifier:v36 renderingScheduler:v14->_imageProviderScheduler environment:v12];
    dataSource = v14->_dataSource;
    v14->_dataSource = v38;

    [(AVTAvatarAttributeEditorModelManager *)v14->_modelManager setDelegate:v14->_dataSource];
    v40 = [(AVTAvatarAttributeEditorModelManager *)v14->_modelManager buildUIModel];
    [(AVTAvatarAttributeEditorDataSource *)v14->_dataSource reloadWithCategories:v40 currentCategoryIndex:[AVTAvatarAttributeEditorDataSource indexForCurrentCategoryGivenPreferredIdentifier:v36 categories:v40]];
    v14->_isCreating = v29;
    v14->_allowFacetracking = AVTUIIsFacetrackingSupported();
    v41 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v12];
    headerPreviewImageRenderer = v14->_headerPreviewImageRenderer;
    v14->_headerPreviewImageRenderer = v41;

    if (!v14->_allowFacetracking)
    {
      v43 = [v12 coreEnvironment];
      v44 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:v43];
      headerPreviewScheduler = v14->_headerPreviewScheduler;
      v14->_headerPreviewScheduler = v44;
    }

    v11 = v48;
  }

  return v14;
}

- (AVTAvatarRecord)avatarRecord
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  v3 = [v2 avatarRecord];

  return v3;
}

- (AVTMemoji)avatar
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  v3 = [v2 avatar];

  return v3;
}

- (void)loadView
{
  v3 = [AVTNotifyingContainerView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [(AVTNotifyingContainerView *)v3 initWithFrame:?];

  [(AVTNotifyingContainerView *)v5 setDelegate:self];
  [(AVTAvatarAttributeEditorViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v48 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v6 frame];
  v7 = [v5 initWithFrame:?];
  attributesContainerView = self->_attributesContainerView;
  self->_attributesContainerView = v7;

  [(UIView *)self->_attributesContainerView setAutoresizingMask:18];
  v9 = +[AVTUIColorRepository editorBackgroundColor];
  [(UIView *)self->_attributesContainerView setBackgroundColor:v9];

  v10 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v10 addSubview:self->_attributesContainerView];

  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  sideGroupContainerView = self->_sideGroupContainerView;
  self->_sideGroupContainerView = v16;

  v18 = +[AVTUIColorRepository groupListBackgroundColor];
  [(UIView *)self->_sideGroupContainerView setBackgroundColor:v18];

  [(UIView *)self->_sideGroupContainerView setClipsToBounds:1];
  v19 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v19 addSubview:self->_sideGroupContainerView];

  v20 = objc_alloc_init(AVTAvatarAttributeEditorFlowLayout);
  [(UICollectionViewFlowLayout *)v20 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v20 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v20 setMinimumInteritemSpacing:0.0];
  v21 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v20 collectionViewLayout:{v12, v13, v14, v15}];
  attributesCollectionView = self->_attributesCollectionView;
  self->_attributesCollectionView = v21;

  [(UICollectionView *)self->_attributesCollectionView setDataSource:self];
  [(UICollectionView *)self->_attributesCollectionView setPrefetchDataSource:self];
  [(UICollectionView *)self->_attributesCollectionView setDelegate:self];
  v23 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_attributesCollectionView setBackgroundColor:v23];

  v24 = self->_attributesCollectionView;
  v25 = objc_opt_class();
  v26 = +[AVTAttributeCollectionViewCell cellIdentifier];
  [(UICollectionView *)v24 registerClass:v25 forCellWithReuseIdentifier:v26];

  v27 = self->_attributesCollectionView;
  v28 = objc_opt_class();
  v29 = +[AVTAttributeLabeledCollectionViewCell cellIdentifier];
  [(UICollectionView *)v27 registerClass:v28 forCellWithReuseIdentifier:v29];

  v30 = self->_attributesCollectionView;
  v31 = objc_opt_class();
  v32 = *MEMORY[0x1E69DDC00];
  v33 = +[AVTAttributeSectionSeparator reuseIdentifier];
  [(UICollectionView *)v30 registerClass:v31 forSupplementaryViewOfKind:v32 withReuseIdentifier:v33];

  v34 = self->_attributesCollectionView;
  v35 = objc_opt_class();
  v36 = *MEMORY[0x1E69DDC08];
  v37 = +[AVTAttributeEditorSectionHeaderView reuseIdentifier];
  [(UICollectionView *)v34 registerClass:v35 forSupplementaryViewOfKind:v36 withReuseIdentifier:v37];

  [(UIView *)self->_attributesContainerView addSubview:self->_attributesCollectionView];
  v38 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  headerMaskingView = self->_headerMaskingView;
  self->_headerMaskingView = v38;

  v40 = [(UIView *)self->_attributesContainerView backgroundColor];
  [(UIView *)self->_headerMaskingView setBackgroundColor:v40];

  v41 = [[AVTShadowView alloc] initWithFrame:v12, v13, v14, v15];
  shadowView = self->_shadowView;
  self->_shadowView = v41;

  [(UIView *)self->_headerMaskingView addSubview:self->_shadowView];
  [(UIView *)self->_attributesContainerView addSubview:self->_headerMaskingView];
  v43 = [(AVTAvatarAttributeEditorViewController *)self navigationItem];
  [v43 setLargeTitleDisplayMode:2];

  v44 = [(AVTAvatarAttributeEditorViewController *)self navigationItem];
  [v44 _setBackgroundHidden:1];

  [(AVTAvatarAttributeEditorViewController *)self setUpHeaderView];
  if (AVTUIShowAssetsWarning_once())
  {
    v45 = [(AVTAvatarAttributeEditorViewController *)self createAlphaAssetsLabel];
    [(AVTAvatarAttributeEditorViewController *)self setAlphaAssetsLabel:v45];

    v46 = [(AVTAvatarAttributeEditorViewController *)self view];
    v47 = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];
    [v46 addSubview:v47];
  }
}

- (void)setUpHeaderView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  headerContainerView = self->_headerContainerView;
  self->_headerContainerView = v8;

  v10 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v10 addSubview:self->_headerContainerView];

  v11 = [[AVTImageTransitioningContainerView alloc] initWithFrame:1 layoutMode:v4, v5, v6, v7];
  transitioningContainer = self->_transitioningContainer;
  self->_transitioningContainer = v11;

  [(AVTImageTransitioningContainerView *)self->_transitioningContainer setAutoresizingMask:18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__AVTAvatarAttributeEditorViewController_setUpHeaderView__block_invoke;
  v25[3] = &unk_1E7F3A9B8;
  v25[4] = self;
  [(AVTAvatarAttributeEditorViewController *)self updateImageViewWithPosedAvatarRecordForcingRender:0 completionHandler:v25];
  v13 = [AVTBodyCarouselController alloc];
  v14 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v15 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  v16 = [v15 avatarRecord];
  v17 = [(AVTBodyCarouselController *)v13 initWithEnvironment:v14 avatarRecord:v16 editorPresentationContext:[(AVTAvatarAttributeEditorViewController *)self editorPresentationContext]];
  bodyEditorHeaderViewController = self->_bodyEditorHeaderViewController;
  self->_bodyEditorHeaderViewController = v17;

  v19 = [(AVTBodyCarouselController *)self->_bodyEditorHeaderViewController view];
  [v19 setAutoresizingMask:18];

  v20 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  [v20 reloadDisplayedSticker];

  v21 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  [v21 avtViewBackingSize];
  v22 = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:?];
  [(AVTAvatarAttributeEditorViewController *)self setAvtViewLayout:v22];

  v23 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  v24 = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];
  [v23 prepareViewWithLayout:v24];

  [(UIView *)self->_headerContainerView addSubview:self->_transitioningContainer];
}

uint64_t __57__AVTAvatarAttributeEditorViewController_setUpHeaderView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allowFacetracking];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setHeaderPreviewImageRenderer:0];
  }

  return result;
}

- (void)setTransitioningContainerFrame
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];

  v30 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
  [v30 bounds];
  v8 = v7;
  if (v3)
  {
    v9 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v9 bounds];
    v11 = v10 * 0.85;

    v12 = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];
    [v12 avatarViewSizeForAvailableContentSize:{v8 * 0.85, v11}];
    v14 = v13;

    v15 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v15 bounds];
    v17 = v16;
    v18 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v18 bounds];
    v20 = v17 + (v19 - v14) * 0.5;

    v30 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v30 bounds];
    v22 = v21;
    v23 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v23 bounds];
    v25 = v24;
    v26 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [v26 setFrame:{v22, v20, v25, v14}];
  }

  else
  {
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v23 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [v23 setFrame:{v27, v28, v8, v29}];
  }
}

- (void)didFinishEditing
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
  [v3 cancelAllTasks];

  v4 = [(AVTAvatarAttributeEditorViewController *)self imageProviderScheduler];
  [v4 cancelAllTasks];
}

- (void)setupGroupSelectorIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v29 = [v3 groupPickerItemsForCategories];

  v4 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  if ([v4 showSideGroupPicker])
  {
  }

  else
  {
    groupDialContainerView = self->_groupDialContainerView;

    if (!groupDialContainerView)
    {
      v6 = +[AVTUIFontRepository groupDialBoldLabelFont];
      [v6 _scaledValueForValue:18.0];
      if (v14 <= 30.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 30.0;
      }

      v16 = objc_alloc(MEMORY[0x1E69DD250]);
      [v6 ascender];
      v18 = v17;
      [v6 descender];
      v20 = [v16 initWithFrame:{0.0, 0.0, 50.0, v18 - v19 + v15 * 2.0}];
      v21 = self->_groupDialContainerView;
      self->_groupDialContainerView = v20;

      v22 = [(AVTAvatarAttributeEditorViewController *)self view];
      [v22 addSubview:self->_groupDialContainerView];

      v23 = [AVTGroupDial alloc];
      v24 = [(AVTAvatarAttributeEditorViewController *)self environment];
      v25 = [(AVTGroupDial *)v23 initWithGroupItems:v29 environment:v24];
      groupDial = self->_groupDial;
      self->_groupDial = v25;

      [(AVTGroupDial *)self->_groupDial setDelegate:self];
      v27 = self->_groupDial;
      v28 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      -[AVTGroupDial setSelectedGroupIndex:animated:](v27, "setSelectedGroupIndex:animated:", [v28 currentCategoryIndex], 0);

      [(UIView *)self->_groupDialContainerView bounds];
      [(AVTGroupDial *)self->_groupDial setFrame:?];
      [(AVTGroupDial *)self->_groupDial setAutoresizingMask:18];
      [(AVTGroupDial *)self->_groupDial setContentPadding:v15];
      [(UIView *)self->_groupDialContainerView addSubview:self->_groupDial];
      goto LABEL_11;
    }
  }

  v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  if (![v6 showSideGroupPicker])
  {
LABEL_11:

    goto LABEL_12;
  }

  groupListView = self->_groupListView;

  if (!groupListView)
  {
    v8 = [AVTGroupListCollectionView alloc];
    v9 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v10 = [(AVTGroupListCollectionView *)v8 initWithGroupItems:v29 environment:v9];
    v11 = self->_groupListView;
    self->_groupListView = v10;

    v12 = self->_groupListView;
    v13 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    -[AVTGroupListCollectionView setSelectedGroupIndex:animated:](v12, "setSelectedGroupIndex:animated:", [v13 currentCategoryIndex], 0);

    [(AVTGroupListCollectionView *)self->_groupListView setDelegate:self];
    [(UIView *)self->_sideGroupContainerView bounds];
    [(AVTGroupListCollectionView *)self->_groupListView setFrame:?];
    [(AVTGroupListCollectionView *)self->_groupListView setAutoresizingMask:18];
    [(UIView *)self->_sideGroupContainerView addSubview:self->_groupListView];
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v7 viewWillAppear:a3];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__AVTAvatarAttributeEditorViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_1E7F3AA08;
  objc_copyWeak(&v5, &location);
  [(AVTAvatarAttributeEditorViewController *)self setupPreview:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__AVTAvatarAttributeEditorViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained currentLayout];

  if (v1)
  {
    v2 = [WeakRetained currentLayout];
    [WeakRetained applyLayout:v2];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v12 viewDidAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v5 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v6 = [v5 usageTrackingSession];
  [v6 didEnterEditor];

  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v8 = [v7 currentCategoryIndex];

  v9 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v10 = [v9 categoryAtIndex:v8];

  v11 = [v10 previewMode];
  -[AVTAvatarAttributeEditorViewController updateHeaderViewForPreviewModeType:](self, "updateHeaderViewForPreviewModeType:", [v11 type]);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v8 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v5 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v6 = [v5 usageTrackingSession];
  [v6 didLeaveEditor];

  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    v7 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
    [v7 tearDownWithCompletionHandler:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorViewController;
  v4 = a3;
  [(AVTAvatarAttributeEditorViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 layoutDirection];

  v6 = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  v7 = [v6 layoutDirection];

  if (v5 != v7)
  {
    [(AVTAvatarAttributeEditorViewController *)self updateLayoutAttributes];
  }

  v8 = [MEMORY[0x1E69DC888] colorNamed:@"verticalRuleColor"];
  v9 = [v8 CGColor];
  v10 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
  [v10 setBackgroundColor:v9];
}

- (UIEdgeInsets)adjustedSafeAreaInsets
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4 + -40.0;
  if (v4 <= 40.0)
  {
    v11 = v4;
  }

  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  v5 = [v4 indexPathsForVisibleItems];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
        v12 = [v10 section];
        v13 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
        v14 = [v11 sectionControllerForSectionIndex:v12 inCategoryAtIndex:{objc_msgSend(v13, "currentCategoryIndex")}];

        v15 = [(AVTAvatarAttributeEditorViewController *)self view];
        [v15 bounds];
        [v14 invalidateLayoutForNewContainerSize:{v16, v17}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = [(AVTAvatarAttributeEditorViewController *)self environment];
  if ([v18 deviceIsPad])
  {
  }

  else
  {
    v19 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v20 = [v19 deviceIsMac];

    if (!v20)
    {
      return;
    }
  }

  [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:0];
}

- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__AVTAvatarAttributeEditorViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke;
  v10[3] = &unk_1E7F3C770;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(AVTAvatarAttributeEditorViewController *)self setupPreview:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __97__AVTAvatarAttributeEditorViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLayout:*(a1 + 32) layoutAvatarView:1 recalculateOffsetIfNeeded:0];
  v2 = [WeakRetained view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);
  v4 = [WeakRetained attributesContainerView];
  (*(v3 + 16))(v3, v4);
}

- (void)updateHeaderViewForPreviewModeType:(unint64_t)a3
{
  if ([(AVTAvatarAttributeEditorViewController *)self previewModeType]!= a3)
  {
    v5 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];

    if (v5)
    {
      [(AVTAvatarAttributeEditorViewController *)self setPreviewModeType:a3];
      if (a3 == 1)
      {
        v6 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        v7 = [v6 view];
        v8 = [v7 superview];

        if (v8)
        {
          return;
        }

        v9 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        v10 = [v9 view];
        [v10 setAlpha:1.0];

        v11 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        [v11 updateStickersforVisibleCells];

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke;
        v39[3] = &unk_1E7F3A9B8;
        v39[4] = self;
        v12 = MEMORY[0x1BFB0DE80](v39);
        v13 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];

        if (v13)
        {
          v14 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
          v15 = [v14 displayedConfiguration];

          v16 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
          v17 = [v16 avtView];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_2;
          v37[3] = &unk_1E7F3AFF8;
          v38 = v12;
          v18 = v12;
          [v17 transitionToStickerConfiguration:v15 duration:2 style:v37 completionHandler:0.25];

LABEL_15:
          return;
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_3;
        v36[3] = &unk_1E7F3A9B8;
        v36[4] = self;
        v25 = MEMORY[0x1BFB0DE80](v36);
        v27 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_4;
        v34[3] = &unk_1E7F3AC00;
        v35 = v12;
        v15 = v12;
        [v27 animateWithDuration:v25 animations:v34 completion:0.25];
        v28 = v35;
      }

      else
      {
        v19 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
        v20 = [v19 superview];

        if (v20)
        {
          return;
        }

        v21 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
        v22 = [v21 avatar];
        [v22 setShowsBody:0];

        v23 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
        [v23 setAlpha:1.0];

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_5;
        v33[3] = &unk_1E7F3A9B8;
        v33[4] = self;
        v15 = MEMORY[0x1BFB0DE80](v33);
        v24 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];

        if (v24)
        {
          v15[2](v15);
          if (![(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
          {
            goto LABEL_15;
          }

          v25 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
          v26 = [v25 avtView];
          [v26 transitionToFaceTrackingWithDuration:2 style:0 completionHandler:0.25];

LABEL_14:
          goto LABEL_15;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_6;
        v32[3] = &unk_1E7F3A9B8;
        v32[4] = self;
        v25 = MEMORY[0x1BFB0DE80](v32);
        v29 = MEMORY[0x1E69DD250];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_7;
        v30[3] = &unk_1E7F3AC00;
        v15 = v15;
        v31 = v15;
        [v29 animateWithDuration:v25 animations:v30 completion:0.25];
        v28 = v31;
      }

      goto LABEL_14;
    }
  }
}

void __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewSession];

  if (v2)
  {
    v3 = [*(a1 + 32) avtViewSessionProvider];
    v4 = [v3 faceTrackingManager];
    [v4 setFaceTrackingManagementPaused:1];

    v5 = [*(a1 + 32) transitioningContainer];
    [v5 setLiveView:0];

    v6 = [*(a1 + 32) bodyEditorHeaderViewController];
    v7 = [*(a1 + 32) avtViewSession];
    [v6 useAVTViewFromSession:v7];
  }

  v8 = [*(a1 + 32) headerContainerView];
  v9 = [*(a1 + 32) bodyEditorHeaderViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [*(a1 + 32) transitioningContainer];
  [v11 removeFromSuperview];

  v22 = [*(a1 + 32) headerContainerView];
  [v22 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) bodyEditorHeaderViewController];
  v21 = [v20 view];
  [v21 setFrame:{v13, v15, v17, v19}];
}

void __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) transitioningContainer];
  [v1 setAlpha:0.0];
}

uint64_t __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewSession];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 bodyEditorHeaderViewController];
    [v4 stopUsingAVTViewSessionSynchronously:1 completionHandler:0];

    v5 = [*(a1 + 32) avtViewSessionProvider];
    v6 = [v5 faceTrackingManager];
    [v6 setFaceTrackingManagementPaused:0];

    v7 = [*(a1 + 32) transitioningContainer];
    v8 = [*(a1 + 32) avtViewSession];
    v9 = [v8 avtViewContainer];
    [v7 setLiveView:v9];

    v10 = [*(a1 + 32) transitioningContainer];
    [v10 transitionLiveViewToFront];
  }

  else
  {
    [v3 updateImageViewWithPosedAvatarRecordForcingRender:1 completionHandler:0];
  }

  v11 = [*(a1 + 32) headerContainerView];
  v12 = [*(a1 + 32) transitioningContainer];
  [v11 addSubview:v12];

  v13 = [*(a1 + 32) bodyEditorHeaderViewController];
  v14 = [v13 view];
  [v14 removeFromSuperview];

  v15 = *(a1 + 32);

  return [v15 setTransitioningContainerFrame];
}

void __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) bodyEditorHeaderViewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

uint64_t __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_7(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)updateImageViewWithPosedAvatarRecordForcingRender:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(AVTAvatarAttributeEditorViewController *)self avatarRecord];

  if (v7)
  {
    if (self->_isCreating && !v4)
    {
      v8 = MEMORY[0x1E69DCAB8];
      v9 = AVTAvatarUIBundle();
      v10 = [v8 imageNamed:@"newMemojiThumbnail" inBundle:v9 compatibleWithTraitCollection:0];
      v11 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
      [v11 setStaticImage:v10];

      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v13 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewImageRenderer];

    if (v13)
    {
      v14 = [(AVTAvatarAttributeEditorViewController *)self avatarRecord];
      v15 = +[AVTRenderingScope listControllerThumbnailScope];
      v16 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewImageRenderer];
      v17 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
      v18 = [v17 avatar];
      v19 = [v16 providerForAvatar:v18 forRecord:v14 scope:v15 usingCache:!v4];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __110__AVTAvatarAttributeEditorViewController_updateImageViewWithPosedAvatarRecordForcingRender_completionHandler___block_invoke;
      v23[3] = &unk_1E7F3D2A8;
      v23[4] = self;
      v24 = v14;
      v25 = v6;
      v20 = v19[2];
      v21 = v14;
      v22 = v20(v19, v23, 0);
    }
  }

  else
  {
    v12 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [v12 setStaticImage:0];

    if (v6)
    {
LABEL_7:
      v6[2](v6);
    }
  }

LABEL_10:
}

void __110__AVTAvatarAttributeEditorViewController_updateImageViewWithPosedAvatarRecordForcingRender_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) avatarRecord];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) transitioningContainer];
    [v5 setStaticImage:v7];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)transitionToLiveViewAnimated:(BOOL)a3
{
  if (a3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3042000000;
    v12 = __Block_byref_object_copy__18;
    v13 = __Block_byref_object_dispose__18;
    v14 = 0;
    v4 = [AVTAvatarToLiveTransition alloc];
    v5 = [(AVTAvatarAttributeEditorViewController *)self environment:MEMORY[0x1E69E9820]];
    v6 = [v5 logger];
    v7 = [(AVTAvatarToLiveTransition *)v4 initWithModel:self animated:1 setupHandler:0 completionHandler:&v8 logger:v6];

    objc_storeWeak(v10 + 5, v7);
    [(AVTAvatarAttributeEditorViewController *)self setCurrentTransition:v7];
    [(AVTTransition *)v7 start];

    _Block_object_dispose(&v9, 8);
    objc_destroyWeak(&v14);
  }

  else
  {

    [(AVTAvatarAttributeEditorViewController *)self transitionLiveViewToFront];
  }
}

void __71__AVTAvatarAttributeEditorViewController_transitionToLiveViewAnimated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) transitioningContainer];
    [v3 setStaticImage:0];

    v4 = [*(a1 + 32) currentTransition];
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));

    if (v4 == WeakRetained)
    {
      v6 = *(a1 + 32);

      [v6 setCurrentTransition:0];
    }
  }
}

- (void)transitionStaticViewToFront
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [v2 transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [v2 transitionLiveViewToFront];
}

- (id)liveView
{
  v2 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  v3 = [v2 avtView];

  return v3;
}

- (void)setupPreview:(id)a3
{
  v4 = a3;
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    [(AVTAvatarAttributeEditorViewController *)self beginAVTViewSessionWithDidBeginBlock:v4];
  }

  else
  {
    [(AVTAvatarAttributeEditorViewController *)self setupImageView];
    v4[2](v4, 0);
  }
}

- (void)setupImageView
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v4 avatarContainerFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v13 setFrame:{v6, v8, v10, v12}];

    [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
    v14 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v24 = [v23 view];
    [v24 setFrame:{v16, v18, v20, v22}];
  }

  v25 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [(AVTAvatarAttributeEditorViewController *)self setupCollapsibleHeaderIfNeededForLayout:v25 withSession:0];
}

- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  if ([v5 isActive])
  {

    goto LABEL_7;
  }

  v6 = [(AVTAvatarAttributeEditorViewController *)self allowFacetracking];

  if (!v6)
  {
LABEL_7:
    if (v4)
    {
      v11 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
      v4[2](v4, v11);
    }

    goto LABEL_9;
  }

  v7 = [(AVTAvatarAttributeEditorViewController *)self postSessionDidBecomeActiveHandler];

  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorViewController *)self postSessionDidBecomeActiveHandler];
    v8[2](v8, 0);
  }

  [(AVTAvatarAttributeEditorViewController *)self setPostSessionDidBecomeActiveHandler:v4];
  objc_initWeak(&location, self);
  v9 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke;
  v14[3] = &unk_1E7F3AA08;
  objc_copyWeak(&v15, &location);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_3;
  v12[3] = &unk_1E7F3AA30;
  objc_copyWeak(&v13, &location);
  v10 = [v9 sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
  [(AVTAvatarAttributeEditorViewController *)self setAvtViewSession:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_9:
}

void __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 avtView];
  [WeakRetained configureThrottlerForAVTView:v5];

  v6 = [WeakRetained currentLayout];

  if (v6)
  {
    v7 = [WeakRetained currentLayout];
    [v7 avatarContainerFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [WeakRetained headerContainerView];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [WeakRetained headerContainerView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [WeakRetained bodyEditorHeaderViewController];
    v27 = [v26 view];
    [v27 setFrame:{v19, v21, v23, v25}];

    [WeakRetained setTransitioningContainerFrame];
  }

  [v3 aspectRatio];
  v29 = v28;
  v31 = v30;
  v32 = [WeakRetained transitioningContainer];
  [v32 setAspectRatio:{v29, v31}];

  v33 = [WeakRetained avtViewSessionProvider];
  v34 = [v33 faceTrackingManager];
  [v34 setDelegate:WeakRetained];

  [WeakRetained configureAVTViewFromSession:v3];
  v35 = [WeakRetained transitioningContainer];
  v36 = [v3 avtViewContainer];
  [v35 setLiveView:v36];

  v37 = [WeakRetained avtViewSessionProvider];
  v38 = [v37 faceTrackingManager];
  [v38 setFaceTrackingManagementPaused:0];

  v39 = [WeakRetained avtViewSessionProvider];
  v40 = [v39 faceTrackingManager];
  [v40 resumeFaceTrackingIfNeededAnimated:0];

  [WeakRetained configureUserInfoLabel];
  v41 = [WeakRetained currentLayout];
  [WeakRetained setupCollapsibleHeaderIfNeededForLayout:v41 withSession:v3];

  v42 = [WeakRetained transitioningContainer];
  [WeakRetained setupTapGestureForView:v42];

  v43 = [WeakRetained view];
  [v43 setNeedsLayout];

  v44 = [v3 avtViewUpdater];
  v45 = [WeakRetained modelManager];
  v46 = [v45 avatarRecord];
  v47 = [v44 willUpdateViewForRecord:v46 avatar:0];

  if ((v47 & 1) == 0)
  {
    [WeakRetained transitionToLiveViewAnimated:0];
  }

  objc_initWeak(&location, WeakRetained);
  v48 = [v3 avtViewUpdater];
  v49 = [WeakRetained modelManager];
  v50 = [v49 avatarRecord];
  v51 = [WeakRetained modelManager];
  v52 = [v51 avatar];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2;
  v54[3] = &unk_1E7F3D2F8;
  objc_copyWeak(&v56, &location);
  v57 = v47;
  v53 = v3;
  v55 = v53;
  [v48 setAvatarRecord:v50 avatar:v52 completionHandler:v54];

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
}

void __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = [WeakRetained avtViewSession];

      WeakRetained = v8;
      if (v5)
      {
        [v8 transitionToLiveViewAnimated:1];
        WeakRetained = v8;
      }
    }
  }

  v6 = [WeakRetained postSessionDidBecomeActiveHandler];

  if (v6)
  {
    v7 = [v8 postSessionDidBecomeActiveHandler];
    v7[2](v7, *(a1 + 32));
  }

  [v8 setPostSessionDidBecomeActiveHandler:0];
}

void __79__AVTAvatarAttributeEditorViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tearDownThrottler];
  v7 = [WeakRetained transitioningContainer];
  v8 = [WeakRetained tapGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  if ([WeakRetained disableAvatarSnapshotting])
  {
    v9 = [WeakRetained transitioningContainer];
    [v9 setStaticImage:0];
  }

  else
  {
    v10 = MEMORY[0x1E698E2D8];
    v11 = [v25 avtView];
    v12 = [WeakRetained transitioningContainer];
    v13 = [v12 liveView];
    v14 = [WeakRetained environment];
    v15 = [v14 logger];
    v9 = [v10 snapshotAVTView:v11 matchingViewSize:v13 highQuality:0 logger:v15];

    v16 = [WeakRetained transitioningContainer];
    [v16 setStaticImage:v9];
  }

  v17 = [WeakRetained transitioningContainer];
  [v17 transitionStaticViewToFront];

  v18 = [WeakRetained visibleLayout];
  [WeakRetained setCurrentLayout:v18];

  v19 = [WeakRetained currentTransition];
  [v19 cancel];

  [WeakRetained setCurrentTransition:0];
  [WeakRetained setAvtViewSession:0];
  [WeakRetained tearDownCollapsibleHeaderIfNeeded];
  if (([WeakRetained shouldHideUserInfoView] & 1) == 0)
  {
    v20 = [WeakRetained avtViewSessionProvider];
    v21 = [v20 faceTrackingManager];
    v22 = [v21 userInfoView];
    [v22 removeFromSuperview];
  }

  v23 = [WeakRetained avtViewSessionProvider];
  v24 = [v23 faceTrackingManager];
  [v24 setDelegate:0];

  v5[2](v5);
}

- (void)configureThrottlerForAVTView:(id)a3
{
  v10 = a3;
  if (AVTUIAdaptativeFrameRate())
  {
    v4 = [AVTViewThrottler alloc];
    v5 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v6 = [(AVTViewThrottler *)v4 initWithAVTView:v10 environment:v5];
    [(AVTAvatarAttributeEditorViewController *)self setAvtViewThrottler:v6];

    v7 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v8 = [v7 deviceResourceManager];
    v9 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [v8 registerConsumer:v9];
  }
}

- (void)tearDownThrottler
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [v4 unthrottle];

    v5 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v6 = [v5 deviceResourceManager];
    v7 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [v6 unregisterConsumer:v7];

    [(AVTAvatarAttributeEditorViewController *)self setAvtViewThrottler:0];
  }
}

- (void)configureAVTViewFromSession:(id)a3
{
  v12 = a3;
  v4 = [v12 avtView];
  [v4 updateInterfaceOrientation];

  v5 = AVTUIShowTrackingLostReticle_once();
  v6 = [v12 avtView];
  [v6 setEnableReticle:v5];

  v7 = [v12 avtView];
  [v7 setEnableFaceTracking:1];

  v8 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  v9 = [v8 backgroundColor];
  v10 = [v12 avtView];
  [v10 setBackgroundColor:v9];

  if (AVTUIShowPerfHUD_once())
  {
    v11 = [v12 avtView];
    [v11 setShowPerfHUD:1];
  }
}

- (void)configureUserInfoLabel
{
  if (![(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView]&& [(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    v3 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    v4 = [v3 faceTrackingManager];
    v10 = [v4 userInfoView];

    v5 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];

    if (v5)
    {
      v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
      [v6 userInfoFrame];
      [v10 setFrame:?];
    }

    v7 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    v8 = [v7 backgroundColor];
    [v10 setContainerBackgroundColor:v8];

    v9 = [(AVTAvatarAttributeEditorViewController *)self view];
    [v9 addSubview:v10];
  }
}

- (void)setupCollapsibleHeaderIfNeededForLayout:(id)a3 withSession:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ((!-[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") || -[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") && [v6 isActive]) && objc_msgSend(v17, "supportedLayoutOrientation") == 1)
  {
    v7 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

    if (!v7)
    {
      v8 = [AVTCollapsibleHeaderController alloc];
      v9 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      v10 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
      v11 = [(AVTCollapsibleHeaderController *)v8 initWithScrollView:v9 headerView:v10 minHeight:0.0 maxHeight:0.0];
      [(AVTAvatarAttributeEditorViewController *)self setCollapsibleHeaderController:v11];

      v12 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [v12 setShouldOnlyExpandWhenScrollingAtEdge:1];

      v13 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [v13 setDelegate:self];

      [v17 groupDialContainerFrame];
      v15 = v14;
      v16 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [v16 setAdditionalTopContentInset:v15];

      [(AVTAvatarAttributeEditorViewController *)self updateCollapsibleHeaderHeightConstraintsAnimated:0];
    }
  }
}

- (void)updateCollapsibleHeaderHeightConstraintsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTAvatarAttributeEditorViewController *)self environment];
  if ([v5 deviceIsPad])
  {

LABEL_4:
    v8 = 0x4069000000000000;
    goto LABEL_6;
  }

  v6 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v7 = [v6 deviceIsMac];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = 0x4064000000000000;
LABEL_6:
  v9 = *&v8;
  v10 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v10 avatarContainerFrame];
  Height = CGRectGetHeight(v14);

  v12 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v12 updateMinHeight:v3 maxHeight:v9 animated:Height];
}

- (void)setupTapGestureForView:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorViewController *)self tapGestureRecognizer];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapAvatarView_];
    [(AVTAvatarAttributeEditorViewController *)self setTapGestureRecognizer:v6];
  }

  v7 = [(AVTAvatarAttributeEditorViewController *)self tapGestureRecognizer];
  [v4 addGestureRecognizer:v7];
}

- (void)tearDownCollapsibleHeaderIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    v7 = [v4 headerView];

    [(AVTAvatarAttributeEditorViewController *)self setCollapsibleHeaderController:0];
    v5 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v5 setDelegate:self];

    v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v6 avatarContainerFrame];
    [v7 setFrame:?];
  }
}

- (void)didTapAvatarView:(id)a3
{
  v4 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v4 expandAnimated:1];

  v6 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  v5 = [v6 faceTrackingManager];
  [v5 resumeFaceTrackingIfNeededAnimated:1];
}

- (id)createAlphaAssetsLabel
{
  v2 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 10.0, 300.0, 30.0}];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x1E69DC888] systemRedColor];
  [v2 setTextColor:v4];

  [v2 setText:@"Warning: contains new and/or updated visuals. \nUse with disclosed users only."];
  v5 = +[AVTUIFontRepository groupDialLabelFont];
  [v2 setFont:v5];

  [v2 setNumberOfLines:0];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setTextAlignment:1];
  [v2 setAutoresizingMask:34];

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v3 viewDidLayoutSubviews];
  [(AVTAvatarAttributeEditorViewController *)self updateLayoutAttributes];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(AVTAvatarAttributeEditorViewController *)self groupDial];
  [v4 reloadData];

  [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:0];

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutAttributes];
}

- (void)updateLayoutAttributes
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self view];
  [AVTShadowView defaultHeightForSuperview:v3];
  v5 = v4;

  v6 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v6 bounds];
  v8 = v7 - v5;
  v9 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v9 bounds];
  v11 = v10;
  v12 = [(AVTAvatarAttributeEditorViewController *)self shadowView];
  [v12 setFrame:{0.0, v8, v11, v5}];

  v13 = [(AVTAvatarAttributeEditorViewController *)self shadowView];
  [v13 setAutoresizingMask:10];

  v14 = [(AVTAvatarAttributeEditorViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  [(AVTAvatarAttributeEditorViewController *)self adjustedSafeAreaInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v27 userInfoViewHeight];
  v29 = v28;
  v30 = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  v31 = [v30 layoutDirection] == 1;
  v32 = [(AVTAvatarAttributeEditorViewController *)self environment];
  [(AVTAvatarAttributeEditorViewController *)self maxGroupLabelWidth];
  v69 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v31 insets:v32 userInfoViewHeight:v16 RTL:v18 environment:v20 maxGroupLabelWidth:v22, v24, v26, v29, v33];

  v34 = +[AVTUIFontRepository groupDialBoldLabelFont];
  [v34 _scaledValueForValue:18.0];
  if (v35 <= 30.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 30.0;
  }

  v37 = [(AVTAvatarAttributeEditorViewController *)self groupDial];
  [v37 setContentPadding:v36];

  [v69 groupDialContainerFrame];
  v39 = v38;
  v40 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v40 setAdditionalTopContentInset:v39];

  [v69 containerSize];
  v42 = v41;
  v44 = v43;
  v45 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v45 containerSize];
  if (v42 != v47 || v44 != v46)
  {
    goto LABEL_15;
  }

  v48 = [v69 contentSizeCategory];
  v49 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  v50 = [v49 contentSizeCategory];
  if (![v48 isEqualToString:v50])
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  [v69 edgeInsets];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v59 edgeInsets];
  if (v54 != v63 || v52 != v60 || v58 != v62 || v56 != v61)
  {

    goto LABEL_14;
  }

  [v69 userInfoViewHeight];
  v65 = v64;
  v66 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v66 userInfoViewHeight];
  v68 = v67;

  if (v65 != v68)
  {
LABEL_16:
    [(AVTAvatarAttributeEditorViewController *)self applyLayout:v69 layoutAvatarView:0 recalculateOffsetIfNeeded:1];
  }
}

- (double)maxGroupLabelWidth
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v3 = [v2 groupPickerItemsForCategories];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x1E69DB648];
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) localizedName];
        v11 = +[AVTUIFontRepository groupListLabelFont];
        v19 = v7;
        v20 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v10 sizeWithAttributes:v12];
        if (v8 < v13)
        {
          v8 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  return ceil(v8);
}

- (void)applyLayout:(id)a3 layoutAvatarView:(BOOL)a4 recalculateOffsetIfNeeded:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v168 = a3;
  [(AVTAvatarAttributeEditorViewController *)self setCurrentLayout:v168];
  [v168 attributesContentViewFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [v16 setFrame:{v9, v11, v13, v15}];

  [(AVTAvatarAttributeEditorViewController *)self setupGroupSelectorIfNeeded];
  [v168 groupDialContainerFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [v168 showSideGroupPicker];
  v27 = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [v27 setHidden:v26];

  [v168 sideGroupContainerFrame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(AVTAvatarAttributeEditorViewController *)self sideGroupContainerView];
  [v36 setFrame:{v29, v31, v33, v35}];

  LODWORD(v36) = [v168 showSideGroupPicker];
  v37 = [(AVTAvatarAttributeEditorViewController *)self sideGroupContainerView];
  [v37 setHidden:v36 ^ 1];

  if (!-[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") || (-[AVTAvatarAttributeEditorViewController avtViewSession](self, "avtViewSession"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 isActive], v38, v39))
  {
    if ([v168 supportedLayoutOrientation] == 1)
    {
      v40 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
      [(AVTAvatarAttributeEditorViewController *)self setupCollapsibleHeaderIfNeededForLayout:v168 withSession:v40];
    }

    else
    {
      [(AVTAvatarAttributeEditorViewController *)self createVerticleRuleIfNeeded];
      [(AVTAvatarAttributeEditorViewController *)self tearDownCollapsibleHeaderIfNeeded];
    }

    [v168 avatarContainerFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v49 setFrame:{v42, v44, v46, v48}];

    [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
    v50 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [v50 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v60 = [v59 view];
    [v60 setFrame:{v52, v54, v56, v58}];

    [v168 avatarContainerAlpha];
    v62 = v61;
    v63 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [v63 setAlpha:v62];

    if (v6)
    {
      v64 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
      [v64 layoutIfNeeded];

      v65 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
      [v65 layoutIfNeeded];

      v66 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
      v67 = [v66 view];
      [v67 layoutIfNeeded];
    }

    [(AVTAvatarAttributeEditorViewController *)self applyUserInfoViewLayout];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateAlphaAssetsLabelFrameIfNeeded];
  v68 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v68 setShouldResizeHeaderForScrolling:0];

  v69 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [v69 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v78 setFrame:{v71, v73, v75, v77}];

  [v168 headerMaskingViewAlpha];
  v80 = v79;
  v81 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v81 setAlpha:v80];

  [v168 headerMaskingViewFrame];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v90 setFrame:{v83, v85, v87, v89}];

  [v168 verticalRuleAlpha];
  v92 = v91;
  v93 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [v93 setAlpha:v92];

  [v168 verticalRuleFrame];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v102 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [v102 setFrame:{v95, v97, v99, v101}];

  v103 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [v103 bounds];
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
  [v112 setFrame:{v105, v107, v109, v111}];

  v113 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v113 contentInset];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  [v168 attributesContentViewInsets];
  if (v117 == v125 && v115 == v122 && v121 == v124)
  {
    v126 = v123;

    if (v119 == v126)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v127 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v127 contentInset];
  v129 = v128;

  [v168 attributesContentViewInsets];
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v138 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v138 setContentInset:{v131, v133, v135, v137}];

  [v168 attributesContentViewScrollIndicatorInsets];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v147 setScrollIndicatorInsets:{v140, v142, v144, v146}];

  if (v5)
  {
    v148 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v148 contentOffset];
    v150 = v149;
    v152 = v151;

    v153 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v153 contentInset];
    v155 = v129 - v154;
    v156 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v156 userInfoViewHeight];
    v158 = v155 + v157;
    +[AVTUserInfoView textVerticalPadding];
    v160 = ceil(v158 + v159);

    if (fabs(v160) > 0.00000011920929)
    {
      v161 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      [v161 setContentOffset:{v150, v152 + v160}];
    }
  }

LABEL_18:
  v162 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v162 setShouldResizeHeaderForScrolling:1];

  [(AVTAvatarAttributeEditorViewController *)self updateCollapsibleHeaderHeightConstraintsAnimated:0];
  v163 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v163 updateInsetsIfNeeded];

  v164 = [(AVTAvatarAttributeEditorViewController *)self delegate];

  v166 = v168;
  if (v164)
  {
    v167 = [(AVTAvatarAttributeEditorViewController *)self delegate];
    [v167 attributeEditor:self didUpdateVisibleLayout:v168];

    v166 = v168;
  }

  MEMORY[0x1EEE66BB8](v165, v166);
}

- (void)applyUserInfoViewLayout
{
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking]&& ![(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView])
  {
    v3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v3 userInfoFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [v12 maxHeight];
    v14 = v13;
    v15 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [v15 currentHeightForHeader];
    v17 = v14 - v16;

    v20 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    v18 = [v20 faceTrackingManager];
    v19 = [v18 userInfoView];
    [v19 setFrame:{v5, v7 - v17, v9, v11}];
  }
}

- (id)visibleLayout
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [AVTAvatarAttributeEditorOverridingLayout alloc];
  v13 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  v14 = [(AVTAvatarAttributeEditorOverridingLayout *)v12 initWithLayout:v13];

  [(AVTAvatarAttributeEditorOverridingLayout *)v14 setAvatarContainerFrame:v5, v7, v9, v11];

  return v14;
}

- (void)createVerticleRuleIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(AVTAvatarAttributeEditorViewController *)self setVerticleRuleContainer:v5];

    v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v6 verticalRuleAlpha];
    v8 = v7;
    v9 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    [v9 setAlpha:v8];

    v10 = [MEMORY[0x1E6979398] layer];
    [(AVTAvatarAttributeEditorViewController *)self setVerticleRule:v10];

    v11 = [MEMORY[0x1E69DC888] colorNamed:@"verticalRuleColor"];
    v12 = [v11 CGColor];
    v13 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
    [v13 setBackgroundColor:v12];

    v14 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    v15 = [v14 layer];
    v16 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
    [v15 addSublayer:v16];

    v18 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    v17 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    [v18 addSubview:v17];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v27.receiver = self;
  v27.super_class = AVTAvatarAttributeEditorViewController;
  v7 = a4;
  [(AVTAvatarAttributeEditorViewController *)&v27 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(AVTAvatarAttributeEditorViewController *)self adjustedSafeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v16 userInfoViewHeight];
  v18 = v17;
  v19 = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  v20 = [v19 layoutDirection] == 1;
  v21 = [(AVTAvatarAttributeEditorViewController *)self environment];
  [(AVTAvatarAttributeEditorViewController *)self maxGroupLabelWidth];
  v23 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v20 insets:v21 userInfoViewHeight:width RTL:height environment:v9 maxGroupLabelWidth:v11, v13, v15, v18, v22];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__AVTAvatarAttributeEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_1E7F3D320;
  v25[4] = self;
  v26 = v23;
  v24 = v23;
  [v7 animateAlongsideTransition:v25 completion:0];
}

uint64_t __93__AVTAvatarAttributeEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) avtViewSession];
  v3 = [v2 avtView];
  [v3 updateInterfaceOrientation];

  [*(a1 + 32) applyLayout:*(a1 + 40) layoutAvatarView:0 recalculateOffsetIfNeeded:1];
  v4 = [*(a1 + 32) attributesCollectionView];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  v6 = [*(a1 + 32) attributesContainerView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [*(a1 + 32) attributesCollectionView];
  v12 = [v11 indexPathsForVisibleItems];

  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        v18 = [*(a1 + 32) dataSource];
        v19 = [v17 section];
        v20 = [*(a1 + 32) dataSource];
        v21 = [v18 sectionControllerForSectionIndex:v19 inCategoryAtIndex:{objc_msgSend(v20, "currentCategoryIndex")}];

        [v21 invalidateLayoutForNewContainerSize:{v8, v10}];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  return [*(a1 + 32) reloadCollectionViewDataWithCompletion:0];
}

- (void)updateHeaderDependentLayoutWithHeaderFrame:(CGRect)a3 fittingSize:(CGSize)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(AVTAvatarAttributeEditorViewController *)self currentLayout:a3.origin.x];
  [v9 groupDialContainerFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  rect = height;
  v45.size.height = height;
  MaxY = CGRectGetMaxY(v45);
  v17 = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [v17 setFrame:{v11, MaxY, v13, v15}];

  v18 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v18 setAlpha:1.0];

  v19 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [v19 bounds];
  v21 = v20;
  v46.origin.x = v11;
  v46.origin.y = MaxY;
  v46.size.width = v13;
  v46.size.height = v15;
  v22 = CGRectGetMaxY(v46);
  v23 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [v23 setFrame:{0.0, 0.0, v21, v22}];

  v24 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  if ([v24 isActive])
  {
    v25 = [(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView];

    if (v25)
    {
      goto LABEL_8;
    }

    v26 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v26 userInfoFrame];
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v24 = +[AVTUIFontRepository groupDialBoldLabelFont];
    [v24 _scaledValueForValue:18.0];
    if (v33 <= 30.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 30.0;
    }

    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = rect;
    v35 = CGRectGetMaxY(v47) + v34 * 0.5;
    v36 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v36 userInfoViewHeight];
    v38 = v35 - v37;

    v39 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    v40 = [v39 faceTrackingManager];
    v41 = [v40 userInfoView];

    [v41 setFrame:{v28, v38, v30, v32}];
    v42 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    [v42 bringSubviewToFront:v41];
  }

LABEL_8:
  [(AVTAvatarAttributeEditorViewController *)self updateAlphaAssetsLabelFrameIfNeeded];

  [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
}

- (void)faceTrackingManager:(id)a3 didUpdateUserInfoWithSize:(CGSize)a4
{
  height = a4.height;
  v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout:a3];
  [v6 containerSize];
  v8 = v7;
  v10 = v9;
  v11 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v11 edgeInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  v21 = [v20 RTL];
  v22 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v23 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [v23 maxGroupLabelWidth];
  v25 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v21 insets:v22 userInfoViewHeight:v8 RTL:v10 environment:v13 maxGroupLabelWidth:v15, v17, v19, height, v24];

  [(AVTAvatarAttributeEditorViewController *)self setCurrentLayout:v25];
  [(AVTAvatarAttributeEditorViewController *)self applyUserInfoViewLayout];
}

- (void)updateAlphaAssetsLabelFrameIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];

  if (v3)
  {
    v12 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v12 avatarContainerFrame];
    v4 = CGRectGetMinX(v14) + 16.0;
    v5 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
    [v5 frame];
    MaxY = CGRectGetMaxY(v15);
    v7 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v7 groupDialContainerFrame];
    v8 = MaxY - CGRectGetHeight(v16) + -45.0;
    v9 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [v9 avatarContainerFrame];
    v10 = CGRectGetWidth(v17) + -32.0;
    v11 = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];
    [v11 setFrame:{v4, v8, v10, 45.0}];
  }
}

- (void)reloadCollectionViewDataWithCompletion:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __81__AVTAvatarAttributeEditorViewController_reloadCollectionViewDataWithCompletion___block_invoke;
  v10 = &unk_1E7F3ACA0;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x1BFB0DE80](&v7);
  if ([(AVTAvatarAttributeEditorViewController *)self collectionViewIsPerformingBatchUpdates:v7])
  {
    [(AVTAvatarAttributeEditorViewController *)self setPendingCollectionViewReloadDataBlock:v6];
  }

  else
  {
    v6[2](v6);
  }
}

uint64_t __81__AVTAvatarAttributeEditorViewController_reloadCollectionViewDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributesCollectionView];
  [v2 reloadData];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)resetAllSectionControllersStateToDefault
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  v4 = [v3 numberOfSections];

  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      v8 = [v6 sectionControllerForSectionIndex:v5 inCategoryAtIndex:{objc_msgSend(v7, "currentCategoryIndex")}];

      [v8 resetToDefaultState];
      ++v5;
      v9 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      v10 = [v9 numberOfSections];
    }

    while (v5 < v10);
  }
}

- (void)updateLayoutForAttributesCollectionMaskingView
{
  if (self->_attributesCollectionViewMaskingView)
  {
    [(UIView *)self->_headerMaskingView frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UICollectionView *)self->_attributesCollectionView contentOffset];
    v12 = v11;
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v13 = v12 + CGRectGetMaxY(v18);
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    Width = CGRectGetWidth(v19);
    v16 = [(AVTAvatarAttributeEditorViewController *)self view];
    [v16 frame];
    Height = CGRectGetHeight(v20);
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    [(UIView *)self->_attributesCollectionViewMaskingView setFrame:0.0, v13, Width, Height - CGRectGetHeight(v21)];
  }
}

- (void)collapsibleHeaderController:(id)a3 willUpdateHeaderToHeight:(double)a4
{
  v6 = a3;
  v7 = [v6 headerView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [v14 bounds];
  [(AVTAvatarAttributeEditorViewController *)self updateHeaderDependentLayoutWithHeaderFrame:v9 fittingSize:v11, v13, a4, v15, v16];

  v25 = v6;
  [v25 minHeight];
  v18 = v17;
  [v25 maxHeight];
  v20 = v19;
  [v25 currentHeightForHeader];
  v22 = v21;

  v23 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
  v24 = v23;
  if (vabdd_f64(v22, v18) >= vabdd_f64(v22, v20))
  {
    [v23 unthrottle];
  }

  else
  {
    [v23 throttle];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (void)collapsibleHeaderController:(id)a3 isUpdatingHeaderWithIncrementalHeight:(double)a4
{
  v6 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  v7 = [v6 isAnimatingExpansion];

  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v9 = [v8 configureLayoutIfNeededWithHeight:a4];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (void)collapsibleHeaderController:(id)a3 didUpdateHeaderToHeight:(double)a4
{
  v6 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  v7 = [v6 isAnimatingExpansion];

  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v9 = [v8 configureLayoutIfNeededWithHeight:a4];

    v10 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [v10 setIsAnimatingExpansion:0];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v5 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v6 = [v4 numberOfSectionsForCategoryAtIndex:{objc_msgSend(v5, "currentCategoryIndex")}];

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v8 = [v6 sectionControllerForSectionIndex:a4 inCategoryAtIndex:{objc_msgSend(v7, "currentCategoryIndex")}];

  v9 = [v8 numberOfItems];
  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v6 section];
  v10 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v11 = [v8 sectionControllerForSectionIndex:v9 inCategoryAtIndex:{objc_msgSend(v10, "currentCategoryIndex")}];

  v12 = [v11 section];
  v13 = [v12 options];
  v14 = [v13 showsLabel];

  v15 = off_1E7F39870;
  if (!v14)
  {
    v15 = off_1E7F39858;
  }

  v16 = [(__objc2_class *)*v15 cellIdentifier];
  v17 = [v7 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v6];

  [v11 updateCell:v17 forItemAtIndex:{objc_msgSend(v6, "row")}];
  v18 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v19 = [v6 section];
  v20 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v21 = [v18 sectionCoordinatorForSectionAtIndex:v19 inCategoryAtIndex:{objc_msgSend(v20, "currentCategoryIndex")}];

  if (v21)
  {
    v22 = [v21 delegate];

    if (v22 != self)
    {
      [v21 setDelegate:self];
    }
  }

  v23 = [v11 delegate];

  if (!v23)
  {
    [v11 setDelegate:self];
  }

  return v17;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:a3];
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionForIndex:a5 inCategoryAtIndex:{objc_msgSend(v8, "currentCategoryIndex")}];

  if ([v9 shouldDisplayTitle])
  {
    v10 = +[AVTUIFontRepository attributeTitleFont];
    v11 = [v9 localizedName];
    v12 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v12 bounds];
    v14 = v13 + -40.0;
    [v10 lineHeight];
    v16 = v15 + v15;
    v30 = *MEMORY[0x1E69DB648];
    v31[0] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v11 boundingRectWithSize:1 options:v17 attributes:0 context:{v14, v16}];
    v19 = v18;

    v20 = +[AVTUIFontRepository attributeTitleFont];
    [v20 _scaledValueForValue:18.0];
    v22 = v21;

    if (v22 <= 30.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 30.0;
    }

    v24 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v24 bounds];
    v26 = v25;
    v27 = v19 + v23 * 2.0 + -12.0;
  }

  else
  {
    v26 = *MEMORY[0x1E695F060];
    v27 = *(MEMORY[0x1E695F060] + 8);
  }

  v28 = v26;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:a3];
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionForIndex:a5 inCategoryAtIndex:{objc_msgSend(v8, "currentCategoryIndex")}];

  v10 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [v10 sectionForIndex:a5 + 1 inCategoryAtIndex:{objc_msgSend(v11, "currentCategoryIndex")}];

  if ([v9 shouldDisplaySeparatorBeforeSection:v12])
  {
    v13 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v13 bounds];
    v15 = v14;

    v16 = 1.0;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [v9 section];
  v13 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v14 = [v11 sectionForIndex:v12 inCategoryAtIndex:{objc_msgSend(v13, "currentCategoryIndex")}];

  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v17 = +[AVTAttributeEditorSectionHeaderView reuseIdentifier];
    v16 = [v10 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v17 forIndexPath:v9];

    v18 = [v14 localizedName];
    [v16 setDisplayString:v18];

    v19 = [v14 supplementalPicker];
    [v16 setSupplementalPicker:v19];

    [v16 setDelegate:self];
  }

  else
  {
    v15 = +[AVTAttributeSectionSeparator reuseIdentifier];
    v16 = [v10 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v15 forIndexPath:v9];

    [v14 separatorInsets];
    [v16 setEdgeInsets:?];
  }

  return v16;
}

- (id)selectedItemInSection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 sectionItems];
  v5 = [v4 firstObject];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v3 sectionItems];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isSelected])
        {
          v12 = v11;

          v5 = v12;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v8 = [v6 section];
  v9 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v10 = [v7 sectionControllerForSectionIndex:v8 inCategoryAtIndex:{objc_msgSend(v9, "currentCategoryIndex")}];

  v11 = [v6 row];
  v12 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v12 bounds];
  [v10 sizeForItemAtIndex:v11 fittingSize:{v13, v14}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:a3];
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionControllerForSectionIndex:a5 inCategoryAtIndex:{objc_msgSend(v8, "currentCategoryIndex")}];

  v10 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v10 bounds];
  [v9 edgeInsetsFittingSize:{v11, v12}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v10 = [v8 section];
  v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [v9 sectionControllerForSectionIndex:v10 inCategoryAtIndex:{objc_msgSend(v11, "currentCategoryIndex")}];

  v14 = v7;
  v13 = [v8 item];

  [v12 cell:v14 willDisplayAtIndex:v13];
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 section];
  v10 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v11 = [v8 sectionControllerForSectionIndex:v9 inCategoryAtIndex:{objc_msgSend(v10, "currentCategoryIndex")}];

  [(AVTAvatarAttributeEditorViewController *)self setIsAnimatingHighlight:1];
  v12 = [v6 cellForItemAtIndexPath:v7];
  objc_initWeak(&location, self);
  v13 = [v7 row];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__AVTAvatarAttributeEditorViewController_collectionView_didHighlightItemAtIndexPath___block_invoke;
  v14[3] = &unk_1E7F3AD10;
  objc_copyWeak(&v15, &location);
  [v11 didHighlightItemAtIndex:v13 cell:v12 completionBlock:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __85__AVTAvatarAttributeEditorViewController_collectionView_didHighlightItemAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnimatingHighlight:0];
  v1 = [WeakRetained pendingUnhighlightBlock];

  if (v1)
  {
    v2 = [WeakRetained pendingUnhighlightBlock];
    v2[2]();
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __87__AVTAvatarAttributeEditorViewController_collectionView_didUnhighlightItemAtIndexPath___block_invoke;
  v14 = &unk_1E7F3D348;
  objc_copyWeak(&v17, &location);
  v8 = v7;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v10 = MEMORY[0x1BFB0DE80](&v11);
  [(AVTAvatarAttributeEditorViewController *)self setPendingUnhighlightBlock:v10, v11, v12, v13, v14];
  if (![(AVTAvatarAttributeEditorViewController *)self isAnimatingHighlight])
  {
    v10[2](v10);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __87__AVTAvatarAttributeEditorViewController_collectionView_didUnhighlightItemAtIndexPath___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained dataSource];
  v4 = [a1[4] section];
  v5 = [WeakRetained dataSource];
  v6 = [v3 sectionControllerForSectionIndex:v4 inCategoryAtIndex:{objc_msgSend(v5, "currentCategoryIndex")}];

  v7 = [a1[5] cellForItemAtIndexPath:a1[4]];
  v8 = [a1[4] row];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AVTAvatarAttributeEditorViewController_collectionView_didUnhighlightItemAtIndexPath___block_invoke_2;
  v9[3] = &unk_1E7F3AA80;
  v9[4] = WeakRetained;
  [v6 didUnhighlightItemAtIndex:v8 cell:v7 completionBlock:v9];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v7 = [v5 section];

  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v6 sectionControllerForSectionIndex:v7 inCategoryAtIndex:{objc_msgSend(v8, "currentCategoryIndex")}];

  LOBYTE(v8) = [objc_opt_class() supportsSelection];
  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v6 section];
  v10 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v17 = [v8 sectionControllerForSectionIndex:v9 inCategoryAtIndex:{objc_msgSend(v10, "currentCategoryIndex")}];

  v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v17 inSection:{"selectedIndex"), objc_msgSend(v6, "section")}];
  v12 = [v7 cellForItemAtIndexPath:v11];
  v13 = [v12 valueView];
  [v13 updateSelectedState:0 animated:0];

  v14 = [v7 cellForItemAtIndexPath:v6];

  v15 = [v14 valueView];
  [v15 updateSelectedState:1 animated:1];

  v16 = [v6 row];
  [v17 didSelectItemAtIndex:v16 cell:v14];
}

- (void)sectionHeaderView:(id)a3 didSelectItem:(id)a4 forPicker:(id)a5 sender:(id)a6
{
  v35 = a4;
  v8 = a6;
  v9 = [v8 superview];
  [v8 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  v28 = [v27 collectionViewLayout];
  v29 = [v28 layoutAttributesForElementsInRect:{v20, v22, v24, v26}];

  if ([v29 count])
  {
    v30 = [v29 firstObject];
    [v30 frame];
    v20 = v31;
    v22 = v32;
    v24 = v33;
    v26 = v34;
  }

  [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfSupplementalItem:v35 senderRect:v20, v22, v24, v26];
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(AVTAvatarAttributeEditorViewController *)self presetSectionItemForIndexPath:v10];
        if (v11)
        {
          v12 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
          v13 = [v12 preloader];
          [v13 preloadSectionItem:v11 atIndexPath:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
        v12 = [v11 preloader];
        [v12 cancelPreloadForSectionItemIndexPath:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)presetSectionItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v6 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v7 = [v5 numberOfSectionsForCategoryAtIndex:{objc_msgSend(v6, "currentCategoryIndex")}];
  v8 = [v4 section];

  if (v7 <= v8)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v10 = [v4 section];
    v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v12 = [v9 sectionControllerForSectionIndex:v10 inCategoryAtIndex:{objc_msgSend(v11, "currentCategoryIndex")}];

    v13 = [v12 numberOfItems];
    if (v13 <= [v4 item])
    {
      v14 = 0;
    }

    else
    {
      v14 = [v12 prefetchingSectionItemForIndex:{objc_msgSend(v4, "item")}];
    }
  }

  return v14;
}

- (void)groupPicker:(id)a3 didSelectGroupAtIndex:(int64_t)a4 tapped:(BOOL)a5
{
  v5 = a5;
  v8 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v8 currentCategoryIndex];

  if (v9 == a4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = [(AVTAvatarAttributeEditorViewController *)self imageProviderScheduler];
    [v10 cancelAllTasks];

    v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v12 = [v11 categoryAtIndex:a4];

    v13 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    v14 = [v13 buildUIModelWithSelectedCategory:v12 atIndex:a4];

    v15 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v16 = [v15 inMemoryImageCache];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(AVTAvatarAttributeEditorViewController *)self environment];
      v19 = [v18 inMemoryImageCache];
      [v19 clearCache];
    }

    v20 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    [v20 reloadWithCategories:v14 currentCategoryIndex:a4];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__AVTAvatarAttributeEditorViewController_groupPicker_didSelectGroupAtIndex_tapped___block_invoke;
    v29[3] = &unk_1E7F3A9B8;
    v29[4] = self;
    [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:v29];
    v21 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v22 = [v21 currentCategoryIdentifier];

    AVTUIEditorSetMostRecentGroupName();
    v23 = [v12 previewMode];
    -[AVTAvatarAttributeEditorViewController updateHeaderViewForPreviewModeType:](self, "updateHeaderViewForPreviewModeType:", [v23 type]);
  }

  v24 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

  v25 = v9 == a4;
  if (v24)
  {
    v26 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [v26 scrollToTopPreservingHeaderHeight:1 animated:v25];
  }

  else
  {
    v26 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v26 scrollRectToVisible:v25 animated:{0.0, 0.0, 1.0, 1.0}];
  }

LABEL_11:
  v27 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  v28 = [v27 faceTrackingManager];
  [v28 resumeFaceTrackingIfNeededAnimated:1];
}

- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v6 conformsToProtocol:&unk_1F39BBC08])
  {
    v7 = [v6 avatarUpdater];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:v6 controller:v10 reloadSections:v8];
  if ((AVTUIHasDisplayedCategoriesDiscoverability() & 1) == 0)
  {
    v9 = [(AVTAvatarAttributeEditorViewController *)self groupDial];
    [v9 startDiscoverability];
  }
}

- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 section];
  v8 = [v7 sectionItems];
  v9 = [v6 firstObject];
  v10 = [v8 indexOfObject:v9];

  v11 = v10 - 1;
  if (v10 >= 1)
  {
    v12 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    v13 = [v12 editorState];
    v14 = [v20 section];
    v15 = [v14 identifier];
    [v13 setEnabledMulticolorSubpickersIndex:v11 forMulticolorPickerIdentifier:v15];

    v16 = [v20 section];
    v17 = [v16 sectionItems];
    v18 = [v17 objectAtIndexedSubscript:v11];

    v19 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    [v19 updateAvatarByDeletingSectionItems:v6 animated:1];

    [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:v18 controller:v20 reloadSections:1];
  }
}

- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4
{
  v5 = a4;
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    v6 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    [v6 updateAvatarBySelectingSectionItem:v5 animated:0];
  }

  else
  {
    v7 = [(AVTAvatarAttributeEditorViewController *)self lastPosedAvatarImageRenderingTime];
    if (!v7 || (v8 = v7, -[AVTAvatarAttributeEditorViewController lastPosedAvatarImageRenderingTime](self, "lastPosedAvatarImageRenderingTime"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceNow], v11 = v10, v9, v8, v11 < -0.05))
    {
      v12 = objc_opt_new();
      [(AVTAvatarAttributeEditorViewController *)self setLastPosedAvatarImageRenderingTime:v12];

      v13 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
      [v13 cancelAllTasks];

      v14 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__AVTAvatarAttributeEditorViewController_attributeEditorSectionController_didUpdateSectionItem___block_invoke;
      v15[3] = &unk_1E7F3D370;
      v15[4] = self;
      v16 = v5;
      [v14 scheduleTask:v15];
    }
  }
}

void __96__AVTAvatarAttributeEditorViewController_attributeEditorSectionController_didUpdateSectionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) modelManager];
  [v4 updateAvatarBySelectingSectionItem:*(a1 + 40) animated:0];

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__AVTAvatarAttributeEditorViewController_attributeEditorSectionController_didUpdateSectionItem___block_invoke_2;
  v7[3] = &unk_1E7F3AFF8;
  v8 = v3;
  v6 = v3;
  [v5 updateImageViewWithPosedAvatarRecordForcingRender:1 completionHandler:v7];
}

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v3 performBatchUpdates:0 completion:0];
}

- (void)updateForSelectionOfItem:(id)a3 controller:(id)a4 reloadSections:(BOOL)a5
{
  v5 = a5;
  v31 = a3;
  v8 = a4;
  v9 = [v8 section];
  v10 = [v8 indexForItem:v31];
  v11 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v13 = [v11 indexForSection:v9 inCategoryAtIndex:{objc_msgSend(v12, "currentCategoryIndex")}];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't get an index path for item %@ in section %@", v31, v9}];
  }

  v14 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:v13];
  v15 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  v16 = [v15 indexPathsForVisibleItems];
  v17 = [v16 containsObject:v14];

  if (v17)
  {
    v18 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    v19 = [v18 layoutAttributesForItemAtIndexPath:v14];

    [v19 frame];
    v21 = v20;
    v23 = v22;
    v24 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [v24 bounds];
    [v8 sizeForFocusingItemAtIndex:v10 fittingSize:{v25, v26}];
    v28 = v27;
    v30 = v29;

    [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:v31 inSection:v9 senderRect:v5 reloadSections:v21, v23, v28, v30];
  }
}

- (void)updateForSelectionOfItem:(id)a3 inSection:(id)a4 senderRect:(CGRect)a5 reloadSections:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a4;
  v13 = a3;
  v14 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [v14 updateAvatarBySelectingSectionItem:v13 animated:1];

  v15 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [v15 updateEditorStateBySelectingSectionItem:v13 animated:1];

  [(AVTAvatarAttributeEditorViewController *)self rebuildUIModelAfterSelectionInSection:v16 senderRect:v6 reloadSections:x, y, width, height];
}

- (void)updateForSelectionOfSupplementalItem:(id)a3 senderRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [v10 updateAvatarBySelectingSupplementalPickerItem:v9 animated:1];

  [(AVTAvatarAttributeEditorViewController *)self rebuildUIModelAfterSelectionInSection:0 senderRect:x, y, width, height];
}

- (void)rebuildUIModelAfterSelectionInSection:(id)a3 senderRect:(CGRect)a4 reloadSections:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v62[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v54 = v11;
  if (v11)
  {
    v12 = [v11 identifier];
    v62[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v15 = [v14 currentCategoryIndex];

  v16 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v17 = [v16 categoryAtIndex:v15];

  v18 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  v19 = [v18 buildUIModelWithSelectedCategory:v17 atIndex:v15];

  v20 = [v19 objectAtIndex:v15];
  v21 = [(AVTAvatarAttributeEditorViewController *)self environment];
  v22 = [v21 inMemoryImageCache];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v25 = [v24 inMemoryImageCache];
    [v25 clearCache];
  }

  v26 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v52 = v19;
  [v26 reloadWithCategories:v19 currentCategoryIndex:v15];

  v27 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v28 = [v27 indexesForSectionsPresentIn:v20 butNotIn:v17];

  v29 = [MEMORY[0x1E696AD50] indexSet];
  if (v5)
  {
    v30 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v31 = [v30 indexesForSectionsExcludingSectionsWithIdentifiers:v13 inCategoryAtIndex:v15];
    [v29 addIndexes:v31];

    [v29 removeIndexes:v28];
  }

  v53 = v13;
  v32 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v33 = [v32 indexesForSectionsPresentIn:v17 butNotIn:v20];

  v34 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v35 = [v34 numberOfSectionsForCategoryAtIndex:v15];

  [(AVTAvatarAttributeEditorViewController *)self setCollectionViewIsPerformingBatchUpdates:1];
  v36 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke;
  v59[3] = &unk_1E7F3ADB0;
  v59[4] = self;
  v37 = v33;
  v60 = v37;
  v38 = v28;
  v61 = v38;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke_2;
  v55[3] = &unk_1E7F3D398;
  v55[4] = self;
  v57 = v15;
  v58 = v35;
  v39 = v29;
  v56 = v39;
  [v36 performBatchUpdates:v59 completion:v55];

  if (![(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    [(AVTAvatarAttributeEditorViewController *)self updateImageViewWithPosedAvatarRecordForcingRender:1 completionHandler:0];
  }

  v40 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [v40 bounds];
  v42 = v41;
  v43 = [(AVTAvatarAttributeEditorViewController *)self environment];
  [AVTAvatarAttributeEditorSectionController edgeLengthFittingWidth:v43 environment:v42];
  v45 = v44;

  v46 = [v17 previewMode];
  v47 = [v46 type];

  if (v47 == 1)
  {
    v48 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [v48 setIsAnimatingExpansion:1];
  }

  v49 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [v49 expandAnimated:1 withFocusRect:x standardItemHeight:{y, width, height, v45}];

  [(AVTAvatarAttributeEditorViewController *)self updateForChangedSelectionIfNeeded];
  v50 = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  v51 = [v50 faceTrackingManager];
  [v51 resumeFaceTrackingIfNeededAnimated:1];

  [(AVTAvatarAttributeEditorViewController *)self updateBodyEditorHeaderIfNeeded];
}

void __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributesCollectionView];
  [v2 deleteSections:*(a1 + 40)];

  v3 = [*(a1 + 32) attributesCollectionView];
  [v3 insertSections:*(a1 + 48)];
}

void __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCollectionViewIsPerformingBatchUpdates:0];
  v2 = [*(a1 + 32) pendingCollectionViewReloadDataBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingCollectionViewReloadDataBlock];
    v3[2]();

    [*(a1 + 32) setPendingCollectionViewReloadDataBlock:0];
  }

  v4 = *(a1 + 48);
  v10 = [*(a1 + 32) dataSource];
  if (v4 == [v10 currentCategoryIndex])
  {
    v5 = [*(a1 + 32) dataSource];
    v6 = [v5 numberOfSectionsForCategoryAtIndex:*(a1 + 48)];
    v7 = *(a1 + 56);

    if (v6 == v7)
    {
      v8 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke_3;
      v11[3] = &unk_1E7F3AD60;
      v9 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v12 = v9;
      [v8 performWithoutAnimation:v11];
    }
  }

  else
  {
  }
}

void __106__AVTAvatarAttributeEditorViewController_rebuildUIModelAfterSelectionInSection_senderRect_reloadSections___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) attributesCollectionView];
  [v2 reloadSections:*(a1 + 40)];
}

- (void)updateForChangedSelectionIfNeeded
{
  if (![(AVTAvatarAttributeEditorViewController *)self hasMadeAnySelection])
  {
    [(AVTAvatarAttributeEditorViewController *)self setHasMadeAnySelection:1];
    v3 = [(AVTAvatarAttributeEditorViewController *)self delegate];
    [v3 attributeEditorDidMakeFirstSelection:self];
  }
}

- (void)updateBodyEditorHeaderIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [v4 reloadDisplayedSticker];

    v5 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v6 = [v5 view];
    v7 = [v6 superview];

    if (v7)
    {
      v8 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
      [v8 updateStickersforVisibleCells];
    }
  }
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3
{
  v3 = [(AVTAvatarAttributeEditorViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _windowInterfaceOrientation];

  return v5;
}

- (AVTAvatarAttributeEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectCategory:(id)a3 withCompletionDelay:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  dataSource = self->_dataSource;
  v10 = a5;
  v11 = [(AVTAvatarAttributeEditorDataSource *)dataSource groupPickerItemsForCategories];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__AVTAvatarAttributeEditorViewController_UIApplicationTesting__selectCategory_withCompletionDelay_completionHandler___block_invoke;
  v15[3] = &unk_1E7F3D3C0;
  v16 = v8;
  v12 = v8;
  v13 = [v11 indexOfObjectPassingTest:v15];

  [(AVTGroupDial *)self->_groupDial setSelectedGroupIndex:v13 animated:0];
  [(AVTAvatarAttributeEditorViewController *)self groupPicker:self->_groupDial didSelectGroupAtIndex:v13 tapped:1];
  v14 = dispatch_time(0, 1000000000 * a4);
  dispatch_after(v14, MEMORY[0x1E69E96A0], v10);
}

uint64_t __117__AVTAvatarAttributeEditorViewController_UIApplicationTesting__selectCategory_withCompletionDelay_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)prepareForPresetsScrollTestOnCategory:(id)a3 readyHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115__AVTAvatarAttributeEditorViewController_UIApplicationTesting__prepareForPresetsScrollTestOnCategory_readyHandler___block_invoke;
  v8[3] = &unk_1E7F3A8A8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AVTAvatarAttributeEditorViewController *)self selectCategory:a3 withCompletionDelay:3 completionHandler:v8];
}

- (void)configurePPTMemoji:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke;
  v6[3] = &unk_1E7F3ACA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTAvatarAttributeEditorViewController *)self selectCategory:@"Skin" withCompletionDelay:1 completionHandler:v6];
}

void __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:13 inSection:0];
  v3 = [*(a1 + 32) dataSource];
  v4 = [v2 section];
  v5 = [*(a1 + 32) dataSource];
  v6 = [v3 sectionControllerForSectionIndex:v4 inCategoryAtIndex:{objc_msgSend(v5, "currentCategoryIndex")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 selectIndexPath:v2];
  }

  v7 = dispatch_time(0, 1000000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_2;
  v9[3] = &unk_1E7F3ACA0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

void __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_3;
  v2[3] = &unk_1E7F3ACA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 selectCategory:@"Hairstyle" withCompletionDelay:1 completionHandler:v2];
}

void __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v3 = [*(a1 + 32) dataSource];
  v4 = [v2 section];
  v5 = [*(a1 + 32) dataSource];
  v6 = [v3 sectionControllerForSectionIndex:v4 inCategoryAtIndex:{objc_msgSend(v5, "currentCategoryIndex")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 selectIndexPath:v2];
  }

  v7 = *(a1 + 32);
  v8 = v7[140];
  v9 = [MEMORY[0x1E696AC88] indexPathForItem:9 inSection:1];
  [v7 collectionView:v8 didSelectItemAtIndexPath:v9];

  v10 = dispatch_time(0, 1000000000);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_4;
  v12[3] = &unk_1E7F3ACA0;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  dispatch_after(v10, MEMORY[0x1E69E96A0], v12);
}

void __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_5;
  v2[3] = &unk_1E7F3ACA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 selectCategory:@"Eyes" withCompletionDelay:1 completionHandler:v2];
}

void __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke_5(uint64_t a1)
{
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:4 inSection:0];
  v2 = [*(a1 + 32) dataSource];
  v3 = [v7 section];
  v4 = [*(a1 + 32) dataSource];
  v5 = [v2 sectionControllerForSectionIndex:v3 inCategoryAtIndex:{objc_msgSend(v4, "currentCategoryIndex")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 selectIndexPath:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

@end