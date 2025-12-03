@interface AVTAvatarAttributeEditorViewController
- (AVTAvatarAttributeEditorViewController)init;
- (AVTAvatarAttributeEditorViewController)initWithAvatarRecord:(id)record avtViewSessionProvider:(id)provider environment:(id)environment isCreating:(BOOL)creating;
- (AVTAvatarAttributeEditorViewControllerDelegate)delegate;
- (AVTAvatarRecord)avatarRecord;
- (AVTMemoji)avatar;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)adjustedSafeAreaInsets;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)maxGroupLabelWidth;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createAlphaAssetsLabel;
- (id)liveView;
- (id)presetSectionItemForIndexPath:(id)path;
- (id)selectedItemInSection:(id)section;
- (id)visibleLayout;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)applyLayout:(id)layout layoutAvatarView:(BOOL)view recalculateOffsetIfNeeded:(BOOL)needed;
- (void)applyUserInfoViewLayout;
- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items;
- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item;
- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)block;
- (void)collapsibleHeaderController:(id)controller didUpdateHeaderToHeight:(double)height;
- (void)collapsibleHeaderController:(id)controller isUpdatingHeaderWithIncrementalHeight:(double)height;
- (void)collapsibleHeaderController:(id)controller willUpdateHeaderToHeight:(double)height;
- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureAVTViewFromSession:(id)session;
- (void)configurePPTMemoji:(id)memoji;
- (void)configureThrottlerForAVTView:(id)view;
- (void)configureUserInfoLabel;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createVerticleRuleIfNeeded;
- (void)didFinishEditing;
- (void)didTapAvatarView:(id)view;
- (void)faceTrackingManager:(id)manager didUpdateUserInfoWithSize:(CGSize)size;
- (void)groupPicker:(id)picker didSelectGroupAtIndex:(int64_t)index tapped:(BOOL)tapped;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)size;
- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block;
- (void)prepareForPresetsScrollTestOnCategory:(id)category readyHandler:(id)handler;
- (void)rebuildUIModelAfterSelectionInSection:(id)section senderRect:(CGRect)rect reloadSections:(BOOL)sections;
- (void)reloadCollectionViewDataWithCompletion:(id)completion;
- (void)resetAllSectionControllersStateToDefault;
- (void)sectionHeaderView:(id)view didSelectItem:(id)item forPicker:(id)picker sender:(id)sender;
- (void)selectCategory:(id)category withCompletionDelay:(int64_t)delay completionHandler:(id)handler;
- (void)setTransitioningContainerFrame;
- (void)setUpHeaderView;
- (void)setupCollapsibleHeaderIfNeededForLayout:(id)layout withSession:(id)session;
- (void)setupGroupSelectorIfNeeded;
- (void)setupImageView;
- (void)setupPreview:(id)preview;
- (void)setupTapGestureForView:(id)view;
- (void)tearDownCollapsibleHeaderIfNeeded;
- (void)tearDownThrottler;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
- (void)transitionToLiveViewAnimated:(BOOL)animated;
- (void)updateAlphaAssetsLabelFrameIfNeeded;
- (void)updateBodyEditorHeaderIfNeeded;
- (void)updateCollapsibleHeaderHeightConstraintsAnimated:(BOOL)animated;
- (void)updateForChangedSelectionIfNeeded;
- (void)updateForSelectionOfItem:(id)item controller:(id)controller reloadSections:(BOOL)sections;
- (void)updateForSelectionOfItem:(id)item inSection:(id)section senderRect:(CGRect)rect reloadSections:(BOOL)sections;
- (void)updateForSelectionOfSupplementalItem:(id)item senderRect:(CGRect)rect;
- (void)updateHeaderDependentLayoutWithHeaderFrame:(CGRect)frame fittingSize:(CGSize)size;
- (void)updateHeaderViewForPreviewModeType:(unint64_t)type;
- (void)updateImageViewWithPosedAvatarRecordForcingRender:(BOOL)render completionHandler:(id)handler;
- (void)updateLayoutAttributes;
- (void)updateLayoutForAttributesCollectionMaskingView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (AVTAvatarAttributeEditorViewController)initWithAvatarRecord:(id)record avtViewSessionProvider:(id)provider environment:(id)environment isCreating:(BOOL)creating
{
  recordCopy = record;
  providerCopy = provider;
  environmentCopy = environment;
  v52.receiver = self;
  v52.super_class = AVTAvatarAttributeEditorViewController;
  v13 = [(AVTAvatarAttributeEditorViewController *)&v52 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v48 = providerCopy;
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v14->_avtViewSessionProvider, provider);
    coreEnvironment = [environmentCopy coreEnvironment];
    v16 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:coreEnvironment];
    imageProviderScheduler = v14->_imageProviderScheduler;
    v14->_imageProviderScheduler = v16;

    v51 = [[AVTPresetImageProvider alloc] initWithRenderingScheduler:v14->_imageProviderScheduler environment:environmentCopy];
    deviceResourceManager = [environmentCopy deviceResourceManager];
    [deviceResourceManager registerConsumer:v51];

    v50 = objc_alloc_init(AVTColorLayerProvider);
    v19 = [AVTPresetResourceLoader alloc];
    v20 = [(AVTPresetResourceLoader *)v19 initWithEnvironment:environmentCopy renderingScheduler:v14->_imageProviderScheduler callbackQueue:MEMORY[0x1E69E96A0]];
    v21 = [AVTAvatarAttributeEditorPreloader alloc];
    logger = [environmentCopy logger];
    v47 = v20;
    v49 = [(AVTAvatarAttributeEditorPreloader *)v21 initWithResourceLoader:v20 logger:logger];

    v23 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
    v24 = [AVTClippableImageStore alloc];
    coreEnvironment2 = [environmentCopy coreEnvironment];
    imageCacheStoreLocation = [environmentCopy imageCacheStoreLocation];
    v27 = [(AVTImageStore *)v24 initWithEnvironment:coreEnvironment2 validateImages:0 location:imageCacheStoreLocation];

    v28 = [AVTUIStickerRenderer alloc];
    [environmentCopy editorThumbnailAvatar];
    v30 = v29 = creating;
    v31 = [(AVTUIStickerRenderer *)v28 initWithAvatarRecord:recordCopy avatar:v30 stickerGeneratorPool:v23 scheduler:v14->_imageProviderScheduler imageStore:v27 environment:environmentCopy];

    v32 = [AVTAvatarAttributeEditorModelManager alloc];
    editorCoreModel = [environmentCopy editorCoreModel];
    v34 = [(AVTAvatarAttributeEditorModelManager *)v32 initWithAvatarRecord:recordCopy coreModel:editorCoreModel imageProvider:v51 colorLayerProvider:v50 preloader:v49 environment:environmentCopy stickerRenderer:v31];
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
    v38 = [(AVTAvatarAttributeEditorDataSource *)v37 initWithCategories:MEMORY[0x1E695E0F0] currentCategoryIdentifier:v36 renderingScheduler:v14->_imageProviderScheduler environment:environmentCopy];
    dataSource = v14->_dataSource;
    v14->_dataSource = v38;

    [(AVTAvatarAttributeEditorModelManager *)v14->_modelManager setDelegate:v14->_dataSource];
    buildUIModel = [(AVTAvatarAttributeEditorModelManager *)v14->_modelManager buildUIModel];
    [(AVTAvatarAttributeEditorDataSource *)v14->_dataSource reloadWithCategories:buildUIModel currentCategoryIndex:[AVTAvatarAttributeEditorDataSource indexForCurrentCategoryGivenPreferredIdentifier:v36 categories:buildUIModel]];
    v14->_isCreating = v29;
    v14->_allowFacetracking = AVTUIIsFacetrackingSupported();
    v41 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
    headerPreviewImageRenderer = v14->_headerPreviewImageRenderer;
    v14->_headerPreviewImageRenderer = v41;

    if (!v14->_allowFacetracking)
    {
      coreEnvironment3 = [environmentCopy coreEnvironment];
      v44 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:coreEnvironment3];
      headerPreviewScheduler = v14->_headerPreviewScheduler;
      v14->_headerPreviewScheduler = v44;
    }

    providerCopy = v48;
  }

  return v14;
}

- (AVTAvatarRecord)avatarRecord
{
  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  avatarRecord = [modelManager avatarRecord];

  return avatarRecord;
}

- (AVTMemoji)avatar
{
  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  avatar = [modelManager avatar];

  return avatar;
}

- (void)loadView
{
  v3 = [AVTNotifyingContainerView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [(AVTNotifyingContainerView *)v3 initWithFrame:?];

  [(AVTNotifyingContainerView *)v5 setDelegate:self];
  [(AVTAvatarAttributeEditorViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v48 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(AVTAvatarAttributeEditorViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  view2 = [(AVTAvatarAttributeEditorViewController *)self view];
  [view2 frame];
  v7 = [v5 initWithFrame:?];
  attributesContainerView = self->_attributesContainerView;
  self->_attributesContainerView = v7;

  [(UIView *)self->_attributesContainerView setAutoresizingMask:18];
  v9 = +[AVTUIColorRepository editorBackgroundColor];
  [(UIView *)self->_attributesContainerView setBackgroundColor:v9];

  view3 = [(AVTAvatarAttributeEditorViewController *)self view];
  [view3 addSubview:self->_attributesContainerView];

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
  view4 = [(AVTAvatarAttributeEditorViewController *)self view];
  [view4 addSubview:self->_sideGroupContainerView];

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
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_attributesCollectionView setBackgroundColor:clearColor2];

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

  backgroundColor = [(UIView *)self->_attributesContainerView backgroundColor];
  [(UIView *)self->_headerMaskingView setBackgroundColor:backgroundColor];

  v41 = [[AVTShadowView alloc] initWithFrame:v12, v13, v14, v15];
  shadowView = self->_shadowView;
  self->_shadowView = v41;

  [(UIView *)self->_headerMaskingView addSubview:self->_shadowView];
  [(UIView *)self->_attributesContainerView addSubview:self->_headerMaskingView];
  navigationItem = [(AVTAvatarAttributeEditorViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  navigationItem2 = [(AVTAvatarAttributeEditorViewController *)self navigationItem];
  [navigationItem2 _setBackgroundHidden:1];

  [(AVTAvatarAttributeEditorViewController *)self setUpHeaderView];
  if (AVTUIShowAssetsWarning_once())
  {
    createAlphaAssetsLabel = [(AVTAvatarAttributeEditorViewController *)self createAlphaAssetsLabel];
    [(AVTAvatarAttributeEditorViewController *)self setAlphaAssetsLabel:createAlphaAssetsLabel];

    view5 = [(AVTAvatarAttributeEditorViewController *)self view];
    alphaAssetsLabel = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];
    [view5 addSubview:alphaAssetsLabel];
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

  view = [(AVTAvatarAttributeEditorViewController *)self view];
  [view addSubview:self->_headerContainerView];

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
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  avatarRecord = [modelManager avatarRecord];
  v17 = [(AVTBodyCarouselController *)v13 initWithEnvironment:environment avatarRecord:avatarRecord editorPresentationContext:[(AVTAvatarAttributeEditorViewController *)self editorPresentationContext]];
  bodyEditorHeaderViewController = self->_bodyEditorHeaderViewController;
  self->_bodyEditorHeaderViewController = v17;

  view2 = [(AVTBodyCarouselController *)self->_bodyEditorHeaderViewController view];
  [view2 setAutoresizingMask:18];

  bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  [bodyEditorHeaderViewController reloadDisplayedSticker];

  avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  [avtViewSessionProvider avtViewBackingSize];
  v22 = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:?];
  [(AVTAvatarAttributeEditorViewController *)self setAvtViewLayout:v22];

  bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  avtViewLayout = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];
  [bodyEditorHeaderViewController2 prepareViewWithLayout:avtViewLayout];

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
  avtViewLayout = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];

  headerContainerView = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
  [headerContainerView bounds];
  v8 = v7;
  if (avtViewLayout)
  {
    headerContainerView2 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView2 bounds];
    v11 = v10 * 0.85;

    avtViewLayout2 = [(AVTAvatarAttributeEditorViewController *)self avtViewLayout];
    [avtViewLayout2 avatarViewSizeForAvailableContentSize:{v8 * 0.85, v11}];
    v14 = v13;

    headerContainerView3 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView3 bounds];
    v17 = v16;
    headerContainerView4 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView4 bounds];
    v20 = v17 + (v19 - v14) * 0.5;

    headerContainerView = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView bounds];
    v22 = v21;
    headerContainerView5 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView5 bounds];
    v25 = v24;
    transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [transitioningContainer setFrame:{v22, v20, v25, v14}];
  }

  else
  {
    v27 = v4;
    v28 = v5;
    v29 = v6;
    headerContainerView5 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [headerContainerView5 setFrame:{v27, v28, v8, v29}];
  }
}

- (void)didFinishEditing
{
  headerPreviewScheduler = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
  [headerPreviewScheduler cancelAllTasks];

  imageProviderScheduler = [(AVTAvatarAttributeEditorViewController *)self imageProviderScheduler];
  [imageProviderScheduler cancelAllTasks];
}

- (void)setupGroupSelectorIfNeeded
{
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  groupPickerItemsForCategories = [dataSource groupPickerItemsForCategories];

  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  if ([currentLayout showSideGroupPicker])
  {
  }

  else
  {
    groupDialContainerView = self->_groupDialContainerView;

    if (!groupDialContainerView)
    {
      currentLayout2 = +[AVTUIFontRepository groupDialBoldLabelFont];
      [currentLayout2 _scaledValueForValue:18.0];
      if (v14 <= 30.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 30.0;
      }

      v16 = objc_alloc(MEMORY[0x1E69DD250]);
      [currentLayout2 ascender];
      v18 = v17;
      [currentLayout2 descender];
      v20 = [v16 initWithFrame:{0.0, 0.0, 50.0, v18 - v19 + v15 * 2.0}];
      v21 = self->_groupDialContainerView;
      self->_groupDialContainerView = v20;

      view = [(AVTAvatarAttributeEditorViewController *)self view];
      [view addSubview:self->_groupDialContainerView];

      v23 = [AVTGroupDial alloc];
      environment = [(AVTAvatarAttributeEditorViewController *)self environment];
      v25 = [(AVTGroupDial *)v23 initWithGroupItems:groupPickerItemsForCategories environment:environment];
      groupDial = self->_groupDial;
      self->_groupDial = v25;

      [(AVTGroupDial *)self->_groupDial setDelegate:self];
      v27 = self->_groupDial;
      dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      -[AVTGroupDial setSelectedGroupIndex:animated:](v27, "setSelectedGroupIndex:animated:", [dataSource2 currentCategoryIndex], 0);

      [(UIView *)self->_groupDialContainerView bounds];
      [(AVTGroupDial *)self->_groupDial setFrame:?];
      [(AVTGroupDial *)self->_groupDial setAutoresizingMask:18];
      [(AVTGroupDial *)self->_groupDial setContentPadding:v15];
      [(UIView *)self->_groupDialContainerView addSubview:self->_groupDial];
      goto LABEL_11;
    }
  }

  currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  if (![currentLayout2 showSideGroupPicker])
  {
LABEL_11:

    goto LABEL_12;
  }

  groupListView = self->_groupListView;

  if (!groupListView)
  {
    v8 = [AVTGroupListCollectionView alloc];
    environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
    v10 = [(AVTGroupListCollectionView *)v8 initWithGroupItems:groupPickerItemsForCategories environment:environment2];
    v11 = self->_groupListView;
    self->_groupListView = v10;

    v12 = self->_groupListView;
    dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    -[AVTGroupListCollectionView setSelectedGroupIndex:animated:](v12, "setSelectedGroupIndex:animated:", [dataSource3 currentCategoryIndex], 0);

    [(AVTGroupListCollectionView *)self->_groupListView setDelegate:self];
    [(UIView *)self->_sideGroupContainerView bounds];
    [(AVTGroupListCollectionView *)self->_groupListView setFrame:?];
    [(AVTGroupListCollectionView *)self->_groupListView setAutoresizingMask:18];
    [(UIView *)self->_sideGroupContainerView addSubview:self->_groupListView];
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v7 viewWillAppear:appear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v12 viewDidAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  [usageTrackingSession didEnterEditor];

  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  currentCategoryIndex = [dataSource currentCategoryIndex];

  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v10 = [dataSource2 categoryAtIndex:currentCategoryIndex];

  previewMode = [v10 previewMode];
  -[AVTAvatarAttributeEditorViewController updateHeaderViewForPreviewModeType:](self, "updateHeaderViewForPreviewModeType:", [previewMode type]);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorViewController;
  [(AVTAvatarAttributeEditorViewController *)&v8 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  [usageTrackingSession didLeaveEditor];

  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
    [avtViewSession tearDownWithCompletionHandler:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorViewController;
  changeCopy = change;
  [(AVTAvatarAttributeEditorViewController *)&v11 traitCollectionDidChange:changeCopy];
  layoutDirection = [changeCopy layoutDirection];

  traitCollection = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  layoutDirection2 = [traitCollection layoutDirection];

  if (layoutDirection != layoutDirection2)
  {
    [(AVTAvatarAttributeEditorViewController *)self updateLayoutAttributes];
  }

  v8 = [MEMORY[0x1E69DC888] colorNamed:@"verticalRuleColor"];
  cGColor = [v8 CGColor];
  verticleRule = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
  [verticleRule setBackgroundColor:cGColor];
}

- (UIEdgeInsets)adjustedSafeAreaInsets
{
  view = [(AVTAvatarAttributeEditorViewController *)self view];
  [view safeAreaInsets];
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

- (void)notifyingContainerViewDidChangeSize:(CGSize)size
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  indexPathsForVisibleItems = [attributesCollectionView indexPathsForVisibleItems];

  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
        section = [v10 section];
        dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
        v14 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

        view = [(AVTAvatarAttributeEditorViewController *)self view];
        [view bounds];
        [v14 invalidateLayoutForNewContainerSize:{v16, v17}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  if ([environment deviceIsPad])
  {
  }

  else
  {
    environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
    deviceIsMac = [environment2 deviceIsMac];

    if (!deviceIsMac)
    {
      return;
    }
  }

  [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:0];
}

- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__AVTAvatarAttributeEditorViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke;
  v10[3] = &unk_1E7F3C770;
  objc_copyWeak(&v13, &location);
  v8 = layoutCopy;
  v11 = v8;
  v9 = blockCopy;
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

- (void)updateHeaderViewForPreviewModeType:(unint64_t)type
{
  if ([(AVTAvatarAttributeEditorViewController *)self previewModeType]!= type)
  {
    bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];

    if (bodyEditorHeaderViewController)
    {
      [(AVTAvatarAttributeEditorViewController *)self setPreviewModeType:type];
      if (type == 1)
      {
        bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        view = [bodyEditorHeaderViewController2 view];
        superview = [view superview];

        if (superview)
        {
          return;
        }

        bodyEditorHeaderViewController3 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        view2 = [bodyEditorHeaderViewController3 view];
        [view2 setAlpha:1.0];

        bodyEditorHeaderViewController4 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
        [bodyEditorHeaderViewController4 updateStickersforVisibleCells];

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke;
        v39[3] = &unk_1E7F3A9B8;
        v39[4] = self;
        v12 = MEMORY[0x1BFB0DE80](v39);
        avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];

        if (avtViewSession)
        {
          bodyEditorHeaderViewController5 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
          displayedConfiguration = [bodyEditorHeaderViewController5 displayedConfiguration];

          avtViewSession2 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
          avtView = [avtViewSession2 avtView];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_2;
          v37[3] = &unk_1E7F3AFF8;
          v38 = v12;
          v18 = v12;
          [avtView transitionToStickerConfiguration:displayedConfiguration duration:2 style:v37 completionHandler:0.25];

LABEL_15:
          return;
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_3;
        v36[3] = &unk_1E7F3A9B8;
        v36[4] = self;
        avtViewSession4 = MEMORY[0x1BFB0DE80](v36);
        v27 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_4;
        v34[3] = &unk_1E7F3AC00;
        v35 = v12;
        displayedConfiguration = v12;
        [v27 animateWithDuration:avtViewSession4 animations:v34 completion:0.25];
        v28 = v35;
      }

      else
      {
        transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
        superview2 = [transitioningContainer superview];

        if (superview2)
        {
          return;
        }

        modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
        avatar = [modelManager avatar];
        [avatar setShowsBody:0];

        transitioningContainer2 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
        [transitioningContainer2 setAlpha:1.0];

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_5;
        v33[3] = &unk_1E7F3A9B8;
        v33[4] = self;
        displayedConfiguration = MEMORY[0x1BFB0DE80](v33);
        avtViewSession3 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];

        if (avtViewSession3)
        {
          displayedConfiguration[2](displayedConfiguration);
          if (![(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
          {
            goto LABEL_15;
          }

          avtViewSession4 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
          avtView2 = [avtViewSession4 avtView];
          [avtView2 transitionToFaceTrackingWithDuration:2 style:0 completionHandler:0.25];

LABEL_14:
          goto LABEL_15;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_6;
        v32[3] = &unk_1E7F3A9B8;
        v32[4] = self;
        avtViewSession4 = MEMORY[0x1BFB0DE80](v32);
        v29 = MEMORY[0x1E69DD250];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __77__AVTAvatarAttributeEditorViewController_updateHeaderViewForPreviewModeType___block_invoke_7;
        v30[3] = &unk_1E7F3AC00;
        displayedConfiguration = displayedConfiguration;
        v31 = displayedConfiguration;
        [v29 animateWithDuration:avtViewSession4 animations:v30 completion:0.25];
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

- (void)updateImageViewWithPosedAvatarRecordForcingRender:(BOOL)render completionHandler:(id)handler
{
  renderCopy = render;
  handlerCopy = handler;
  avatarRecord = [(AVTAvatarAttributeEditorViewController *)self avatarRecord];

  if (avatarRecord)
  {
    if (self->_isCreating && !renderCopy)
    {
      v8 = MEMORY[0x1E69DCAB8];
      v9 = AVTAvatarUIBundle();
      v10 = [v8 imageNamed:@"newMemojiThumbnail" inBundle:v9 compatibleWithTraitCollection:0];
      transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
      [transitioningContainer setStaticImage:v10];

      if (!handlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    headerPreviewImageRenderer = [(AVTAvatarAttributeEditorViewController *)self headerPreviewImageRenderer];

    if (headerPreviewImageRenderer)
    {
      avatarRecord2 = [(AVTAvatarAttributeEditorViewController *)self avatarRecord];
      v15 = +[AVTRenderingScope listControllerThumbnailScope];
      headerPreviewImageRenderer2 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewImageRenderer];
      modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
      avatar = [modelManager avatar];
      v19 = [headerPreviewImageRenderer2 providerForAvatar:avatar forRecord:avatarRecord2 scope:v15 usingCache:!renderCopy];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __110__AVTAvatarAttributeEditorViewController_updateImageViewWithPosedAvatarRecordForcingRender_completionHandler___block_invoke;
      v23[3] = &unk_1E7F3D2A8;
      v23[4] = self;
      v24 = avatarRecord2;
      v25 = handlerCopy;
      v20 = v19[2];
      v21 = avatarRecord2;
      v22 = v20(v19, v23, 0);
    }
  }

  else
  {
    transitioningContainer2 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [transitioningContainer2 setStaticImage:0];

    if (handlerCopy)
    {
LABEL_7:
      handlerCopy[2](handlerCopy);
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

- (void)transitionToLiveViewAnimated:(BOOL)animated
{
  if (animated)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3042000000;
    v12 = __Block_byref_object_copy__18;
    v13 = __Block_byref_object_dispose__18;
    v14 = 0;
    v4 = [AVTAvatarToLiveTransition alloc];
    v5 = [(AVTAvatarAttributeEditorViewController *)self environment:MEMORY[0x1E69E9820]];
    logger = [v5 logger];
    v7 = [(AVTAvatarToLiveTransition *)v4 initWithModel:self animated:1 setupHandler:0 completionHandler:&v8 logger:logger];

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
  transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [transitioningContainer transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [transitioningContainer transitionLiveViewToFront];
}

- (id)liveView
{
  avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  avtView = [avtViewSession avtView];

  return avtView;
}

- (void)setupPreview:(id)preview
{
  previewCopy = preview;
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    [(AVTAvatarAttributeEditorViewController *)self beginAVTViewSessionWithDidBeginBlock:previewCopy];
  }

  else
  {
    [(AVTAvatarAttributeEditorViewController *)self setupImageView];
    previewCopy[2](previewCopy, 0);
  }
}

- (void)setupImageView
{
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];

  if (currentLayout)
  {
    currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout2 avatarContainerFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    headerContainerView = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView setFrame:{v6, v8, v10, v12}];

    [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
    headerContainerView2 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView2 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    view = [bodyEditorHeaderViewController view];
    [view setFrame:{v16, v18, v20, v22}];
  }

  currentLayout3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [(AVTAvatarAttributeEditorViewController *)self setupCollapsibleHeaderIfNeededForLayout:currentLayout3 withSession:0];
}

- (void)beginAVTViewSessionWithDidBeginBlock:(id)block
{
  blockCopy = block;
  avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  if ([avtViewSession isActive])
  {

    goto LABEL_7;
  }

  allowFacetracking = [(AVTAvatarAttributeEditorViewController *)self allowFacetracking];

  if (!allowFacetracking)
  {
LABEL_7:
    if (blockCopy)
    {
      avtViewSession2 = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
      blockCopy[2](blockCopy, avtViewSession2);
    }

    goto LABEL_9;
  }

  postSessionDidBecomeActiveHandler = [(AVTAvatarAttributeEditorViewController *)self postSessionDidBecomeActiveHandler];

  if (postSessionDidBecomeActiveHandler)
  {
    postSessionDidBecomeActiveHandler2 = [(AVTAvatarAttributeEditorViewController *)self postSessionDidBecomeActiveHandler];
    postSessionDidBecomeActiveHandler2[2](postSessionDidBecomeActiveHandler2, 0);
  }

  [(AVTAvatarAttributeEditorViewController *)self setPostSessionDidBecomeActiveHandler:blockCopy];
  objc_initWeak(&location, self);
  avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
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
  v10 = [avtViewSessionProvider sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
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

- (void)configureThrottlerForAVTView:(id)view
{
  viewCopy = view;
  if (AVTUIAdaptativeFrameRate())
  {
    v4 = [AVTViewThrottler alloc];
    environment = [(AVTAvatarAttributeEditorViewController *)self environment];
    v6 = [(AVTViewThrottler *)v4 initWithAVTView:viewCopy environment:environment];
    [(AVTAvatarAttributeEditorViewController *)self setAvtViewThrottler:v6];

    environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
    deviceResourceManager = [environment2 deviceResourceManager];
    avtViewThrottler = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [deviceResourceManager registerConsumer:avtViewThrottler];
  }
}

- (void)tearDownThrottler
{
  avtViewThrottler = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];

  if (avtViewThrottler)
  {
    avtViewThrottler2 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [avtViewThrottler2 unthrottle];

    environment = [(AVTAvatarAttributeEditorViewController *)self environment];
    deviceResourceManager = [environment deviceResourceManager];
    avtViewThrottler3 = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
    [deviceResourceManager unregisterConsumer:avtViewThrottler3];

    [(AVTAvatarAttributeEditorViewController *)self setAvtViewThrottler:0];
  }
}

- (void)configureAVTViewFromSession:(id)session
{
  sessionCopy = session;
  avtView = [sessionCopy avtView];
  [avtView updateInterfaceOrientation];

  v5 = AVTUIShowTrackingLostReticle_once();
  avtView2 = [sessionCopy avtView];
  [avtView2 setEnableReticle:v5];

  avtView3 = [sessionCopy avtView];
  [avtView3 setEnableFaceTracking:1];

  attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  backgroundColor = [attributesContainerView backgroundColor];
  avtView4 = [sessionCopy avtView];
  [avtView4 setBackgroundColor:backgroundColor];

  if (AVTUIShowPerfHUD_once())
  {
    avtView5 = [sessionCopy avtView];
    [avtView5 setShowPerfHUD:1];
  }
}

- (void)configureUserInfoLabel
{
  if (![(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView]&& [(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
    userInfoView = [faceTrackingManager userInfoView];

    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];

    if (currentLayout)
    {
      currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
      [currentLayout2 userInfoFrame];
      [userInfoView setFrame:?];
    }

    attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    backgroundColor = [attributesContainerView backgroundColor];
    [userInfoView setContainerBackgroundColor:backgroundColor];

    view = [(AVTAvatarAttributeEditorViewController *)self view];
    [view addSubview:userInfoView];
  }
}

- (void)setupCollapsibleHeaderIfNeededForLayout:(id)layout withSession:(id)session
{
  layoutCopy = layout;
  sessionCopy = session;
  if ((!-[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") || -[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") && [sessionCopy isActive]) && objc_msgSend(layoutCopy, "supportedLayoutOrientation") == 1)
  {
    collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

    if (!collapsibleHeaderController)
    {
      v8 = [AVTCollapsibleHeaderController alloc];
      attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      headerContainerView = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
      v11 = [(AVTCollapsibleHeaderController *)v8 initWithScrollView:attributesCollectionView headerView:headerContainerView minHeight:0.0 maxHeight:0.0];
      [(AVTAvatarAttributeEditorViewController *)self setCollapsibleHeaderController:v11];

      collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [collapsibleHeaderController2 setShouldOnlyExpandWhenScrollingAtEdge:1];

      collapsibleHeaderController3 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [collapsibleHeaderController3 setDelegate:self];

      [layoutCopy groupDialContainerFrame];
      v15 = v14;
      collapsibleHeaderController4 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
      [collapsibleHeaderController4 setAdditionalTopContentInset:v15];

      [(AVTAvatarAttributeEditorViewController *)self updateCollapsibleHeaderHeightConstraintsAnimated:0];
    }
  }
}

- (void)updateCollapsibleHeaderHeightConstraintsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  if ([environment deviceIsPad])
  {

LABEL_4:
    v8 = 0x4069000000000000;
    goto LABEL_6;
  }

  environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
  deviceIsMac = [environment2 deviceIsMac];

  if (deviceIsMac)
  {
    goto LABEL_4;
  }

  v8 = 0x4064000000000000;
LABEL_6:
  v9 = *&v8;
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout avatarContainerFrame];
  Height = CGRectGetHeight(v14);

  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController updateMinHeight:animatedCopy maxHeight:v9 animated:Height];
}

- (void)setupTapGestureForView:(id)view
{
  viewCopy = view;
  tapGestureRecognizer = [(AVTAvatarAttributeEditorViewController *)self tapGestureRecognizer];

  if (!tapGestureRecognizer)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapAvatarView_];
    [(AVTAvatarAttributeEditorViewController *)self setTapGestureRecognizer:v6];
  }

  tapGestureRecognizer2 = [(AVTAvatarAttributeEditorViewController *)self tapGestureRecognizer];
  [viewCopy addGestureRecognizer:tapGestureRecognizer2];
}

- (void)tearDownCollapsibleHeaderIfNeeded
{
  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

  if (collapsibleHeaderController)
  {
    collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    headerView = [collapsibleHeaderController2 headerView];

    [(AVTAvatarAttributeEditorViewController *)self setCollapsibleHeaderController:0];
    attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView setDelegate:self];

    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout avatarContainerFrame];
    [headerView setFrame:?];
  }
}

- (void)didTapAvatarView:(id)view
{
  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController expandAnimated:1];

  avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
  [faceTrackingManager resumeFaceTrackingIfNeededAnimated:1];
}

- (id)createAlphaAssetsLabel
{
  v2 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 10.0, 300.0, 30.0}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [v2 setTextColor:systemRedColor];

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

- (void)contentSizeCategoryDidChange:(id)change
{
  groupDial = [(AVTAvatarAttributeEditorViewController *)self groupDial];
  [groupDial reloadData];

  [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:0];

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutAttributes];
}

- (void)updateLayoutAttributes
{
  view = [(AVTAvatarAttributeEditorViewController *)self view];
  [AVTShadowView defaultHeightForSuperview:view];
  v5 = v4;

  headerMaskingView = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView bounds];
  v8 = v7 - v5;
  headerMaskingView2 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView2 bounds];
  v11 = v10;
  shadowView = [(AVTAvatarAttributeEditorViewController *)self shadowView];
  [shadowView setFrame:{0.0, v8, v11, v5}];

  shadowView2 = [(AVTAvatarAttributeEditorViewController *)self shadowView];
  [shadowView2 setAutoresizingMask:10];

  view2 = [(AVTAvatarAttributeEditorViewController *)self view];
  [view2 bounds];
  v16 = v15;
  v18 = v17;
  [(AVTAvatarAttributeEditorViewController *)self adjustedSafeAreaInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout userInfoViewHeight];
  v29 = v28;
  traitCollection = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  v31 = [traitCollection layoutDirection] == 1;
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  [(AVTAvatarAttributeEditorViewController *)self maxGroupLabelWidth];
  v69 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v31 insets:environment userInfoViewHeight:v16 RTL:v18 environment:v20 maxGroupLabelWidth:v22, v24, v26, v29, v33];

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

  groupDial = [(AVTAvatarAttributeEditorViewController *)self groupDial];
  [groupDial setContentPadding:v36];

  [v69 groupDialContainerFrame];
  v39 = v38;
  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController setAdditionalTopContentInset:v39];

  [v69 containerSize];
  v42 = v41;
  v44 = v43;
  currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout2 containerSize];
  if (v42 != v47 || v44 != v46)
  {
    goto LABEL_15;
  }

  contentSizeCategory = [v69 contentSizeCategory];
  currentLayout3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  contentSizeCategory2 = [currentLayout3 contentSizeCategory];
  if (![contentSizeCategory isEqualToString:contentSizeCategory2])
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
  currentLayout4 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout4 edgeInsets];
  if (v54 != v63 || v52 != v60 || v58 != v62 || v56 != v61)
  {

    goto LABEL_14;
  }

  [v69 userInfoViewHeight];
  v65 = v64;
  currentLayout5 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout5 userInfoViewHeight];
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
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  groupPickerItemsForCategories = [dataSource groupPickerItemsForCategories];

  v4 = [groupPickerItemsForCategories countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(groupPickerItemsForCategories);
        }

        localizedName = [*(*(&v15 + 1) + 8 * i) localizedName];
        v11 = +[AVTUIFontRepository groupListLabelFont];
        v19 = v7;
        v20 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [localizedName sizeWithAttributes:v12];
        if (v8 < v13)
        {
          v8 = v13;
        }
      }

      v5 = [groupPickerItemsForCategories countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  return ceil(v8);
}

- (void)applyLayout:(id)layout layoutAvatarView:(BOOL)view recalculateOffsetIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  viewCopy = view;
  layoutCopy = layout;
  [(AVTAvatarAttributeEditorViewController *)self setCurrentLayout:layoutCopy];
  [layoutCopy attributesContentViewFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [attributesContainerView setFrame:{v9, v11, v13, v15}];

  [(AVTAvatarAttributeEditorViewController *)self setupGroupSelectorIfNeeded];
  [layoutCopy groupDialContainerFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  groupDialContainerView = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [groupDialContainerView setFrame:{v18, v20, v22, v24}];

  showSideGroupPicker = [layoutCopy showSideGroupPicker];
  groupDialContainerView2 = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [groupDialContainerView2 setHidden:showSideGroupPicker];

  [layoutCopy sideGroupContainerFrame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sideGroupContainerView = [(AVTAvatarAttributeEditorViewController *)self sideGroupContainerView];
  [sideGroupContainerView setFrame:{v29, v31, v33, v35}];

  LODWORD(sideGroupContainerView) = [layoutCopy showSideGroupPicker];
  sideGroupContainerView2 = [(AVTAvatarAttributeEditorViewController *)self sideGroupContainerView];
  [sideGroupContainerView2 setHidden:sideGroupContainerView ^ 1];

  if (!-[AVTAvatarAttributeEditorViewController allowFacetracking](self, "allowFacetracking") || (-[AVTAvatarAttributeEditorViewController avtViewSession](self, "avtViewSession"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 isActive], v38, v39))
  {
    if ([layoutCopy supportedLayoutOrientation] == 1)
    {
      avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
      [(AVTAvatarAttributeEditorViewController *)self setupCollapsibleHeaderIfNeededForLayout:layoutCopy withSession:avtViewSession];
    }

    else
    {
      [(AVTAvatarAttributeEditorViewController *)self createVerticleRuleIfNeeded];
      [(AVTAvatarAttributeEditorViewController *)self tearDownCollapsibleHeaderIfNeeded];
    }

    [layoutCopy avatarContainerFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    headerContainerView = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView setFrame:{v42, v44, v46, v48}];

    [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
    headerContainerView2 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
    [headerContainerView2 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    view = [bodyEditorHeaderViewController view];
    [view setFrame:{v52, v54, v56, v58}];

    [layoutCopy avatarContainerAlpha];
    v62 = v61;
    transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
    [transitioningContainer setAlpha:v62];

    if (viewCopy)
    {
      headerContainerView3 = [(AVTAvatarAttributeEditorViewController *)self headerContainerView];
      [headerContainerView3 layoutIfNeeded];

      transitioningContainer2 = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
      [transitioningContainer2 layoutIfNeeded];

      bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
      view2 = [bodyEditorHeaderViewController2 view];
      [view2 layoutIfNeeded];
    }

    [(AVTAvatarAttributeEditorViewController *)self applyUserInfoViewLayout];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateAlphaAssetsLabelFrameIfNeeded];
  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController setShouldResizeHeaderForScrolling:0];

  attributesContainerView2 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [attributesContainerView2 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView setFrame:{v71, v73, v75, v77}];

  [layoutCopy headerMaskingViewAlpha];
  v80 = v79;
  headerMaskingView = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView setAlpha:v80];

  [layoutCopy headerMaskingViewFrame];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  headerMaskingView2 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView2 setFrame:{v83, v85, v87, v89}];

  [layoutCopy verticalRuleAlpha];
  v92 = v91;
  verticleRuleContainer = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [verticleRuleContainer setAlpha:v92];

  [layoutCopy verticalRuleFrame];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  verticleRuleContainer2 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [verticleRuleContainer2 setFrame:{v95, v97, v99, v101}];

  verticleRuleContainer3 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
  [verticleRuleContainer3 bounds];
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  verticleRule = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
  [verticleRule setFrame:{v105, v107, v109, v111}];

  attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView2 contentInset];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  [layoutCopy attributesContentViewInsets];
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

  attributesCollectionView3 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView3 contentInset];
  v129 = v128;

  [layoutCopy attributesContentViewInsets];
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  attributesCollectionView4 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView4 setContentInset:{v131, v133, v135, v137}];

  [layoutCopy attributesContentViewScrollIndicatorInsets];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  attributesCollectionView5 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView5 setScrollIndicatorInsets:{v140, v142, v144, v146}];

  if (neededCopy)
  {
    attributesCollectionView6 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView6 contentOffset];
    v150 = v149;
    v152 = v151;

    attributesCollectionView7 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView7 contentInset];
    v155 = v129 - v154;
    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout userInfoViewHeight];
    v158 = v155 + v157;
    +[AVTUserInfoView textVerticalPadding];
    v160 = ceil(v158 + v159);

    if (fabs(v160) > 0.00000011920929)
    {
      attributesCollectionView8 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      [attributesCollectionView8 setContentOffset:{v150, v152 + v160}];
    }
  }

LABEL_18:
  collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController2 setShouldResizeHeaderForScrolling:1];

  [(AVTAvatarAttributeEditorViewController *)self updateCollapsibleHeaderHeightConstraintsAnimated:0];
  collapsibleHeaderController3 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController3 updateInsetsIfNeeded];

  delegate = [(AVTAvatarAttributeEditorViewController *)self delegate];

  v166 = layoutCopy;
  if (delegate)
  {
    delegate2 = [(AVTAvatarAttributeEditorViewController *)self delegate];
    [delegate2 attributeEditor:self didUpdateVisibleLayout:layoutCopy];

    v166 = layoutCopy;
  }

  MEMORY[0x1EEE66BB8](v165, v166);
}

- (void)applyUserInfoViewLayout
{
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking]&& ![(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView])
  {
    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout userInfoFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [collapsibleHeaderController maxHeight];
    v14 = v13;
    collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [collapsibleHeaderController2 currentHeightForHeader];
    v17 = v14 - v16;

    avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
    userInfoView = [faceTrackingManager userInfoView];
    [userInfoView setFrame:{v5, v7 - v17, v9, v11}];
  }
}

- (id)visibleLayout
{
  transitioningContainer = [(AVTAvatarAttributeEditorViewController *)self transitioningContainer];
  [transitioningContainer frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [AVTAvatarAttributeEditorOverridingLayout alloc];
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  v14 = [(AVTAvatarAttributeEditorOverridingLayout *)v12 initWithLayout:currentLayout];

  [(AVTAvatarAttributeEditorOverridingLayout *)v14 setAvatarContainerFrame:v5, v7, v9, v11];

  return v14;
}

- (void)createVerticleRuleIfNeeded
{
  verticleRule = [(AVTAvatarAttributeEditorViewController *)self verticleRule];

  if (!verticleRule)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(AVTAvatarAttributeEditorViewController *)self setVerticleRuleContainer:v5];

    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout verticalRuleAlpha];
    v8 = v7;
    verticleRuleContainer = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    [verticleRuleContainer setAlpha:v8];

    layer = [MEMORY[0x1E6979398] layer];
    [(AVTAvatarAttributeEditorViewController *)self setVerticleRule:layer];

    v11 = [MEMORY[0x1E69DC888] colorNamed:@"verticalRuleColor"];
    cGColor = [v11 CGColor];
    verticleRule2 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
    [verticleRule2 setBackgroundColor:cGColor];

    verticleRuleContainer2 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    layer2 = [verticleRuleContainer2 layer];
    verticleRule3 = [(AVTAvatarAttributeEditorViewController *)self verticleRule];
    [layer2 addSublayer:verticleRule3];

    attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    verticleRuleContainer3 = [(AVTAvatarAttributeEditorViewController *)self verticleRuleContainer];
    [attributesContainerView addSubview:verticleRuleContainer3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v27.receiver = self;
  v27.super_class = AVTAvatarAttributeEditorViewController;
  coordinatorCopy = coordinator;
  [(AVTAvatarAttributeEditorViewController *)&v27 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(AVTAvatarAttributeEditorViewController *)self adjustedSafeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout userInfoViewHeight];
  v18 = v17;
  traitCollection = [(AVTAvatarAttributeEditorViewController *)self traitCollection];
  v20 = [traitCollection layoutDirection] == 1;
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  [(AVTAvatarAttributeEditorViewController *)self maxGroupLabelWidth];
  v23 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v20 insets:environment userInfoViewHeight:width RTL:height environment:v9 maxGroupLabelWidth:v11, v13, v15, v18, v22];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__AVTAvatarAttributeEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_1E7F3D320;
  v25[4] = self;
  v26 = v23;
  v24 = v23;
  [coordinatorCopy animateAlongsideTransition:v25 completion:0];
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

- (void)updateHeaderDependentLayoutWithHeaderFrame:(CGRect)frame fittingSize:(CGSize)size
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [(AVTAvatarAttributeEditorViewController *)self currentLayout:frame.origin.x];
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
  groupDialContainerView = [(AVTAvatarAttributeEditorViewController *)self groupDialContainerView];
  [groupDialContainerView setFrame:{v11, MaxY, v13, v15}];

  headerMaskingView = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView setAlpha:1.0];

  attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [attributesContainerView bounds];
  v21 = v20;
  v46.origin.x = v11;
  v46.origin.y = MaxY;
  v46.size.width = v13;
  v46.size.height = v15;
  v22 = CGRectGetMaxY(v46);
  headerMaskingView2 = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
  [headerMaskingView2 setFrame:{0.0, 0.0, v21, v22}];

  avtViewSession = [(AVTAvatarAttributeEditorViewController *)self avtViewSession];
  if ([avtViewSession isActive])
  {
    shouldHideUserInfoView = [(AVTAvatarAttributeEditorViewController *)self shouldHideUserInfoView];

    if (shouldHideUserInfoView)
    {
      goto LABEL_8;
    }

    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout userInfoFrame];
    v28 = v27;
    v30 = v29;
    v32 = v31;

    avtViewSession = +[AVTUIFontRepository groupDialBoldLabelFont];
    [avtViewSession _scaledValueForValue:18.0];
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
    currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout2 userInfoViewHeight];
    v38 = v35 - v37;

    avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
    faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
    userInfoView = [faceTrackingManager userInfoView];

    [userInfoView setFrame:{v28, v38, v30, v32}];
    attributesContainerView2 = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
    [attributesContainerView2 bringSubviewToFront:userInfoView];
  }

LABEL_8:
  [(AVTAvatarAttributeEditorViewController *)self updateAlphaAssetsLabelFrameIfNeeded];

  [(AVTAvatarAttributeEditorViewController *)self setTransitioningContainerFrame];
}

- (void)faceTrackingManager:(id)manager didUpdateUserInfoWithSize:(CGSize)size
{
  height = size.height;
  v6 = [(AVTAvatarAttributeEditorViewController *)self currentLayout:manager];
  [v6 containerSize];
  v8 = v7;
  v10 = v9;
  currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout edgeInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  v21 = [currentLayout2 RTL];
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  currentLayout3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
  [currentLayout3 maxGroupLabelWidth];
  v25 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v21 insets:environment userInfoViewHeight:v8 RTL:v10 environment:v13 maxGroupLabelWidth:v15, v17, v19, height, v24];

  [(AVTAvatarAttributeEditorViewController *)self setCurrentLayout:v25];
  [(AVTAvatarAttributeEditorViewController *)self applyUserInfoViewLayout];
}

- (void)updateAlphaAssetsLabelFrameIfNeeded
{
  alphaAssetsLabel = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];

  if (alphaAssetsLabel)
  {
    currentLayout = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout avatarContainerFrame];
    v4 = CGRectGetMinX(v14) + 16.0;
    headerMaskingView = [(AVTAvatarAttributeEditorViewController *)self headerMaskingView];
    [headerMaskingView frame];
    MaxY = CGRectGetMaxY(v15);
    currentLayout2 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout2 groupDialContainerFrame];
    v8 = MaxY - CGRectGetHeight(v16) + -45.0;
    currentLayout3 = [(AVTAvatarAttributeEditorViewController *)self currentLayout];
    [currentLayout3 avatarContainerFrame];
    v10 = CGRectGetWidth(v17) + -32.0;
    alphaAssetsLabel2 = [(AVTAvatarAttributeEditorViewController *)self alphaAssetsLabel];
    [alphaAssetsLabel2 setFrame:{v4, v8, v10, 45.0}];
  }
}

- (void)reloadCollectionViewDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __81__AVTAvatarAttributeEditorViewController_reloadCollectionViewDataWithCompletion___block_invoke;
  v10 = &unk_1E7F3ACA0;
  selfCopy = self;
  v12 = completionCopy;
  v5 = completionCopy;
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
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  numberOfSections = [attributesCollectionView numberOfSections];

  if (numberOfSections >= 1)
  {
    v5 = 0;
    do
    {
      dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
      v8 = [dataSource sectionControllerForSectionIndex:v5 inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

      [v8 resetToDefaultState];
      ++v5;
      attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
      numberOfSections2 = [attributesCollectionView2 numberOfSections];
    }

    while (v5 < numberOfSections2);
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
    view = [(AVTAvatarAttributeEditorViewController *)self view];
    [view frame];
    Height = CGRectGetHeight(v20);
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    [(UIView *)self->_attributesCollectionViewMaskingView setFrame:0.0, v13, Width, Height - CGRectGetHeight(v21)];
  }
}

- (void)collapsibleHeaderController:(id)controller willUpdateHeaderToHeight:(double)height
{
  controllerCopy = controller;
  headerView = [controllerCopy headerView];
  [headerView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  attributesContainerView = [(AVTAvatarAttributeEditorViewController *)self attributesContainerView];
  [attributesContainerView bounds];
  [(AVTAvatarAttributeEditorViewController *)self updateHeaderDependentLayoutWithHeaderFrame:v9 fittingSize:v11, v13, height, v15, v16];

  v25 = controllerCopy;
  [v25 minHeight];
  v18 = v17;
  [v25 maxHeight];
  v20 = v19;
  [v25 currentHeightForHeader];
  v22 = v21;

  avtViewThrottler = [(AVTAvatarAttributeEditorViewController *)self avtViewThrottler];
  v24 = avtViewThrottler;
  if (vabdd_f64(v22, v18) >= vabdd_f64(v22, v20))
  {
    [avtViewThrottler unthrottle];
  }

  else
  {
    [avtViewThrottler throttle];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (void)collapsibleHeaderController:(id)controller isUpdatingHeaderWithIncrementalHeight:(double)height
{
  bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  isAnimatingExpansion = [bodyEditorHeaderViewController isAnimatingExpansion];

  if (isAnimatingExpansion)
  {
    bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v9 = [bodyEditorHeaderViewController2 configureLayoutIfNeededWithHeight:height];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (void)collapsibleHeaderController:(id)controller didUpdateHeaderToHeight:(double)height
{
  bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
  isAnimatingExpansion = [bodyEditorHeaderViewController isAnimatingExpansion];

  if (isAnimatingExpansion)
  {
    bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    v9 = [bodyEditorHeaderViewController2 configureLayoutIfNeededWithHeight:height];

    bodyEditorHeaderViewController3 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [bodyEditorHeaderViewController3 setIsAnimatingExpansion:0];
  }

  [(AVTAvatarAttributeEditorViewController *)self updateLayoutForAttributesCollectionMaskingView];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v6 = [dataSource numberOfSectionsForCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v8 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  numberOfItems = [v8 numberOfItems];
  return numberOfItems;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v11 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  section2 = [v11 section];
  options = [section2 options];
  showsLabel = [options showsLabel];

  v15 = off_1E7F39870;
  if (!showsLabel)
  {
    v15 = off_1E7F39858;
  }

  cellIdentifier = [(__objc2_class *)*v15 cellIdentifier];
  v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:pathCopy];

  [v11 updateCell:v17 forItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section3 = [pathCopy section];
  dataSource4 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v21 = [dataSource3 sectionCoordinatorForSectionAtIndex:section3 inCategoryAtIndex:{objc_msgSend(dataSource4, "currentCategoryIndex")}];

  if (v21)
  {
    delegate = [v21 delegate];

    if (delegate != self)
    {
      [v21 setDelegate:self];
    }
  }

  delegate2 = [v11 delegate];

  if (!delegate2)
  {
    [v11 setDelegate:self];
  }

  return v17;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:view];
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionForIndex:section inCategoryAtIndex:{objc_msgSend(dataSource, "currentCategoryIndex")}];

  if ([v9 shouldDisplayTitle])
  {
    v10 = +[AVTUIFontRepository attributeTitleFont];
    localizedName = [v9 localizedName];
    attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView bounds];
    v14 = v13 + -40.0;
    [v10 lineHeight];
    v16 = v15 + v15;
    v30 = *MEMORY[0x1E69DB648];
    v31[0] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [localizedName boundingRectWithSize:1 options:v17 attributes:0 context:{v14, v16}];
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

    attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView2 bounds];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:view];
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionForIndex:section inCategoryAtIndex:{objc_msgSend(dataSource, "currentCategoryIndex")}];

  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [dataSource2 sectionForIndex:section + 1 inCategoryAtIndex:{objc_msgSend(dataSource3, "currentCategoryIndex")}];

  if ([v9 shouldDisplaySeparatorBeforeSection:v12])
  {
    attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView bounds];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  viewCopy = view;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v14 = [dataSource sectionForIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v17 = +[AVTAttributeEditorSectionHeaderView reuseIdentifier];
    v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v17 forIndexPath:pathCopy];

    localizedName = [v14 localizedName];
    [v16 setDisplayString:localizedName];

    supplementalPicker = [v14 supplementalPicker];
    [v16 setSupplementalPicker:supplementalPicker];

    [v16 setDelegate:self];
  }

  else
  {
    v15 = +[AVTAttributeSectionSeparator reuseIdentifier];
    v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

    [v14 separatorInsets];
    [v16 setEdgeInsets:?];
  }

  return v16;
}

- (id)selectedItemInSection:(id)section
{
  v19 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  sectionItems = [sectionCopy sectionItems];
  firstObject = [sectionItems firstObject];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sectionItems2 = [sectionCopy sectionItems];
  v7 = [sectionItems2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sectionItems2);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isSelected])
        {
          v12 = v11;

          firstObject = v12;
          goto LABEL_11;
        }
      }

      v8 = [sectionItems2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return firstObject;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v10 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  v11 = [pathCopy row];
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView bounds];
  [v10 sizeForItemAtIndex:v11 fittingSize:{v13, v14}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v7 = [(AVTAvatarAttributeEditorViewController *)self dataSource:view];
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [v7 sectionControllerForSectionIndex:index inCategoryAtIndex:{objc_msgSend(dataSource, "currentCategoryIndex")}];

  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView bounds];
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

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v12 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  v14 = cellCopy;
  item = [pathCopy item];

  [v12 cell:v14 willDisplayAtIndex:item];
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v11 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  [(AVTAvatarAttributeEditorViewController *)self setIsAnimatingHighlight:1];
  v12 = [viewCopy cellForItemAtIndexPath:pathCopy];
  objc_initWeak(&location, self);
  v13 = [pathCopy row];
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

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __87__AVTAvatarAttributeEditorViewController_collectionView_didUnhighlightItemAtIndexPath___block_invoke;
  v14 = &unk_1E7F3D348;
  objc_copyWeak(&v17, &location);
  v8 = pathCopy;
  v15 = v8;
  v9 = viewCopy;
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

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];

  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v9 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  LOBYTE(dataSource2) = [objc_opt_class() supportsSelection];
  return dataSource2;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  section = [pathCopy section];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v17 = [dataSource sectionControllerForSectionIndex:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v17 inSection:{"selectedIndex"), objc_msgSend(pathCopy, "section")}];
  v12 = [viewCopy cellForItemAtIndexPath:v11];
  valueView = [v12 valueView];
  [valueView updateSelectedState:0 animated:0];

  v14 = [viewCopy cellForItemAtIndexPath:pathCopy];

  valueView2 = [v14 valueView];
  [valueView2 updateSelectedState:1 animated:1];

  v16 = [pathCopy row];
  [v17 didSelectItemAtIndex:v16 cell:v14];
}

- (void)sectionHeaderView:(id)view didSelectItem:(id)item forPicker:(id)picker sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  superview = [senderCopy superview];
  [senderCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [superview convertRect:attributesCollectionView toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  collectionViewLayout = [attributesCollectionView2 collectionViewLayout];
  v29 = [collectionViewLayout layoutAttributesForElementsInRect:{v20, v22, v24, v26}];

  if ([v29 count])
  {
    firstObject = [v29 firstObject];
    [firstObject frame];
    v20 = v31;
    v22 = v32;
    v24 = v33;
    v26 = v34;
  }

  [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfSupplementalItem:itemCopy senderRect:v20, v22, v24, v26];
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(AVTAvatarAttributeEditorViewController *)self presetSectionItemForIndexPath:v10];
        if (v11)
        {
          modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
          preloader = [modelManager preloader];
          [preloader preloadSectionItem:v11 atIndexPath:v10];
        }
      }

      v7 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
        preloader = [modelManager preloader];
        [preloader cancelPreloadForSectionItemIndexPath:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)presetSectionItemForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v7 = [dataSource numberOfSectionsForCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];
  section = [pathCopy section];

  if (v7 <= section)
  {
    v14 = 0;
  }

  else
  {
    dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    section2 = [pathCopy section];
    dataSource4 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v12 = [dataSource3 sectionControllerForSectionIndex:section2 inCategoryAtIndex:{objc_msgSend(dataSource4, "currentCategoryIndex")}];

    numberOfItems = [v12 numberOfItems];
    if (numberOfItems <= [pathCopy item])
    {
      v14 = 0;
    }

    else
    {
      v14 = [v12 prefetchingSectionItemForIndex:{objc_msgSend(pathCopy, "item")}];
    }
  }

  return v14;
}

- (void)groupPicker:(id)picker didSelectGroupAtIndex:(int64_t)index tapped:(BOOL)tapped
{
  tappedCopy = tapped;
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  currentCategoryIndex = [dataSource currentCategoryIndex];

  if (currentCategoryIndex == index)
  {
    if (!tappedCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    imageProviderScheduler = [(AVTAvatarAttributeEditorViewController *)self imageProviderScheduler];
    [imageProviderScheduler cancelAllTasks];

    dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v12 = [dataSource2 categoryAtIndex:index];

    modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    v14 = [modelManager buildUIModelWithSelectedCategory:v12 atIndex:index];

    environment = [(AVTAvatarAttributeEditorViewController *)self environment];
    inMemoryImageCache = [environment inMemoryImageCache];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
      inMemoryImageCache2 = [environment2 inMemoryImageCache];
      [inMemoryImageCache2 clearCache];
    }

    dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    [dataSource3 reloadWithCategories:v14 currentCategoryIndex:index];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__AVTAvatarAttributeEditorViewController_groupPicker_didSelectGroupAtIndex_tapped___block_invoke;
    v29[3] = &unk_1E7F3A9B8;
    v29[4] = self;
    [(AVTAvatarAttributeEditorViewController *)self reloadCollectionViewDataWithCompletion:v29];
    dataSource4 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    currentCategoryIdentifier = [dataSource4 currentCategoryIdentifier];

    AVTUIEditorSetMostRecentGroupName();
    previewMode = [v12 previewMode];
    -[AVTAvatarAttributeEditorViewController updateHeaderViewForPreviewModeType:](self, "updateHeaderViewForPreviewModeType:", [previewMode type]);
  }

  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];

  v25 = currentCategoryIndex == index;
  if (collapsibleHeaderController)
  {
    collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
    [collapsibleHeaderController2 scrollToTopPreservingHeaderHeight:1 animated:v25];
  }

  else
  {
    collapsibleHeaderController2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [collapsibleHeaderController2 scrollRectToVisible:v25 animated:{0.0, 0.0, 1.0, 1.0}];
  }

LABEL_11:
  avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
  [faceTrackingManager resumeFaceTrackingIfNeededAnimated:1];
}

- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_1F39BBC08])
  {
    avatarUpdater = [itemCopy avatarUpdater];
    v8 = avatarUpdater != 0;
  }

  else
  {
    v8 = 1;
  }

  [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:itemCopy controller:controllerCopy reloadSections:v8];
  if ((AVTUIHasDisplayedCategoriesDiscoverability() & 1) == 0)
  {
    groupDial = [(AVTAvatarAttributeEditorViewController *)self groupDial];
    [groupDial startDiscoverability];
  }
}

- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items
{
  controllerCopy = controller;
  itemsCopy = items;
  section = [controllerCopy section];
  sectionItems = [section sectionItems];
  firstObject = [itemsCopy firstObject];
  v10 = [sectionItems indexOfObject:firstObject];

  v11 = v10 - 1;
  if (v10 >= 1)
  {
    modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    editorState = [modelManager editorState];
    section2 = [controllerCopy section];
    identifier = [section2 identifier];
    [editorState setEnabledMulticolorSubpickersIndex:v11 forMulticolorPickerIdentifier:identifier];

    section3 = [controllerCopy section];
    sectionItems2 = [section3 sectionItems];
    v18 = [sectionItems2 objectAtIndexedSubscript:v11];

    modelManager2 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    [modelManager2 updateAvatarByDeletingSectionItems:itemsCopy animated:1];

    [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:v18 controller:controllerCopy reloadSections:1];
  }
}

- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item
{
  itemCopy = item;
  if ([(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
    [modelManager updateAvatarBySelectingSectionItem:itemCopy animated:0];
  }

  else
  {
    lastPosedAvatarImageRenderingTime = [(AVTAvatarAttributeEditorViewController *)self lastPosedAvatarImageRenderingTime];
    if (!lastPosedAvatarImageRenderingTime || (v8 = lastPosedAvatarImageRenderingTime, -[AVTAvatarAttributeEditorViewController lastPosedAvatarImageRenderingTime](self, "lastPosedAvatarImageRenderingTime"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceNow], v11 = v10, v9, v8, v11 < -0.05))
    {
      v12 = objc_opt_new();
      [(AVTAvatarAttributeEditorViewController *)self setLastPosedAvatarImageRenderingTime:v12];

      headerPreviewScheduler = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
      [headerPreviewScheduler cancelAllTasks];

      headerPreviewScheduler2 = [(AVTAvatarAttributeEditorViewController *)self headerPreviewScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__AVTAvatarAttributeEditorViewController_attributeEditorSectionController_didUpdateSectionItem___block_invoke;
      v15[3] = &unk_1E7F3D370;
      v15[4] = self;
      v16 = itemCopy;
      [headerPreviewScheduler2 scheduleTask:v15];
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

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update
{
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView performBatchUpdates:0 completion:0];
}

- (void)updateForSelectionOfItem:(id)item controller:(id)controller reloadSections:(BOOL)sections
{
  sectionsCopy = sections;
  itemCopy = item;
  controllerCopy = controller;
  section = [controllerCopy section];
  v10 = [controllerCopy indexForItem:itemCopy];
  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v13 = [dataSource indexForSection:section inCategoryAtIndex:{objc_msgSend(dataSource2, "currentCategoryIndex")}];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't get an index path for item %@ in section %@", itemCopy, section}];
  }

  v14 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:v13];
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  indexPathsForVisibleItems = [attributesCollectionView indexPathsForVisibleItems];
  v17 = [indexPathsForVisibleItems containsObject:v14];

  if (v17)
  {
    attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    v19 = [attributesCollectionView2 layoutAttributesForItemAtIndexPath:v14];

    [v19 frame];
    v21 = v20;
    v23 = v22;
    attributesCollectionView3 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
    [attributesCollectionView3 bounds];
    [controllerCopy sizeForFocusingItemAtIndex:v10 fittingSize:{v25, v26}];
    v28 = v27;
    v30 = v29;

    [(AVTAvatarAttributeEditorViewController *)self updateForSelectionOfItem:itemCopy inSection:section senderRect:sectionsCopy reloadSections:v21, v23, v28, v30];
  }
}

- (void)updateForSelectionOfItem:(id)item inSection:(id)section senderRect:(CGRect)rect reloadSections:(BOOL)sections
{
  sectionsCopy = sections;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sectionCopy = section;
  itemCopy = item;
  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [modelManager updateAvatarBySelectingSectionItem:itemCopy animated:1];

  modelManager2 = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [modelManager2 updateEditorStateBySelectingSectionItem:itemCopy animated:1];

  [(AVTAvatarAttributeEditorViewController *)self rebuildUIModelAfterSelectionInSection:sectionCopy senderRect:sectionsCopy reloadSections:x, y, width, height];
}

- (void)updateForSelectionOfSupplementalItem:(id)item senderRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  [modelManager updateAvatarBySelectingSupplementalPickerItem:itemCopy animated:1];

  [(AVTAvatarAttributeEditorViewController *)self rebuildUIModelAfterSelectionInSection:0 senderRect:x, y, width, height];
}

- (void)rebuildUIModelAfterSelectionInSection:(id)section senderRect:(CGRect)rect reloadSections:(BOOL)sections
{
  sectionsCopy = sections;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v62[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v54 = sectionCopy;
  if (sectionCopy)
  {
    identifier = [sectionCopy identifier];
    v62[0] = identifier;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  dataSource = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  currentCategoryIndex = [dataSource currentCategoryIndex];

  dataSource2 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v17 = [dataSource2 categoryAtIndex:currentCategoryIndex];

  modelManager = [(AVTAvatarAttributeEditorViewController *)self modelManager];
  v19 = [modelManager buildUIModelWithSelectedCategory:v17 atIndex:currentCategoryIndex];

  v20 = [v19 objectAtIndex:currentCategoryIndex];
  environment = [(AVTAvatarAttributeEditorViewController *)self environment];
  inMemoryImageCache = [environment inMemoryImageCache];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    environment2 = [(AVTAvatarAttributeEditorViewController *)self environment];
    inMemoryImageCache2 = [environment2 inMemoryImageCache];
    [inMemoryImageCache2 clearCache];
  }

  dataSource3 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v52 = v19;
  [dataSource3 reloadWithCategories:v19 currentCategoryIndex:currentCategoryIndex];

  dataSource4 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v28 = [dataSource4 indexesForSectionsPresentIn:v20 butNotIn:v17];

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (sectionsCopy)
  {
    dataSource5 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
    v31 = [dataSource5 indexesForSectionsExcludingSectionsWithIdentifiers:v13 inCategoryAtIndex:currentCategoryIndex];
    [indexSet addIndexes:v31];

    [indexSet removeIndexes:v28];
  }

  v53 = v13;
  dataSource6 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v33 = [dataSource6 indexesForSectionsPresentIn:v17 butNotIn:v20];

  dataSource7 = [(AVTAvatarAttributeEditorViewController *)self dataSource];
  v35 = [dataSource7 numberOfSectionsForCategoryAtIndex:currentCategoryIndex];

  [(AVTAvatarAttributeEditorViewController *)self setCollectionViewIsPerformingBatchUpdates:1];
  attributesCollectionView = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
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
  v57 = currentCategoryIndex;
  v58 = v35;
  v39 = indexSet;
  v56 = v39;
  [attributesCollectionView performBatchUpdates:v59 completion:v55];

  if (![(AVTAvatarAttributeEditorViewController *)self allowFacetracking])
  {
    [(AVTAvatarAttributeEditorViewController *)self updateImageViewWithPosedAvatarRecordForcingRender:1 completionHandler:0];
  }

  attributesCollectionView2 = [(AVTAvatarAttributeEditorViewController *)self attributesCollectionView];
  [attributesCollectionView2 bounds];
  v42 = v41;
  environment3 = [(AVTAvatarAttributeEditorViewController *)self environment];
  [AVTAvatarAttributeEditorSectionController edgeLengthFittingWidth:environment3 environment:v42];
  v45 = v44;

  previewMode = [v17 previewMode];
  type = [previewMode type];

  if (type == 1)
  {
    bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [bodyEditorHeaderViewController setIsAnimatingExpansion:1];
  }

  collapsibleHeaderController = [(AVTAvatarAttributeEditorViewController *)self collapsibleHeaderController];
  [collapsibleHeaderController expandAnimated:1 withFocusRect:x standardItemHeight:{y, width, height, v45}];

  [(AVTAvatarAttributeEditorViewController *)self updateForChangedSelectionIfNeeded];
  avtViewSessionProvider = [(AVTAvatarAttributeEditorViewController *)self avtViewSessionProvider];
  faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
  [faceTrackingManager resumeFaceTrackingIfNeededAnimated:1];

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
    delegate = [(AVTAvatarAttributeEditorViewController *)self delegate];
    [delegate attributeEditorDidMakeFirstSelection:self];
  }
}

- (void)updateBodyEditorHeaderIfNeeded
{
  bodyEditorHeaderViewController = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];

  if (bodyEditorHeaderViewController)
  {
    bodyEditorHeaderViewController2 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    [bodyEditorHeaderViewController2 reloadDisplayedSticker];

    bodyEditorHeaderViewController3 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
    view = [bodyEditorHeaderViewController3 view];
    superview = [view superview];

    if (superview)
    {
      bodyEditorHeaderViewController4 = [(AVTAvatarAttributeEditorViewController *)self bodyEditorHeaderViewController];
      [bodyEditorHeaderViewController4 updateStickersforVisibleCells];
    }
  }
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager
{
  view = [(AVTAvatarAttributeEditorViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  return _windowInterfaceOrientation;
}

- (AVTAvatarAttributeEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectCategory:(id)category withCompletionDelay:(int64_t)delay completionHandler:(id)handler
{
  categoryCopy = category;
  dataSource = self->_dataSource;
  handlerCopy = handler;
  groupPickerItemsForCategories = [(AVTAvatarAttributeEditorDataSource *)dataSource groupPickerItemsForCategories];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__AVTAvatarAttributeEditorViewController_UIApplicationTesting__selectCategory_withCompletionDelay_completionHandler___block_invoke;
  v15[3] = &unk_1E7F3D3C0;
  v16 = categoryCopy;
  v12 = categoryCopy;
  v13 = [groupPickerItemsForCategories indexOfObjectPassingTest:v15];

  [(AVTGroupDial *)self->_groupDial setSelectedGroupIndex:v13 animated:0];
  [(AVTAvatarAttributeEditorViewController *)self groupPicker:self->_groupDial didSelectGroupAtIndex:v13 tapped:1];
  v14 = dispatch_time(0, 1000000000 * delay);
  dispatch_after(v14, MEMORY[0x1E69E96A0], handlerCopy);
}

uint64_t __117__AVTAvatarAttributeEditorViewController_UIApplicationTesting__selectCategory_withCompletionDelay_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)prepareForPresetsScrollTestOnCategory:(id)category readyHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115__AVTAvatarAttributeEditorViewController_UIApplicationTesting__prepareForPresetsScrollTestOnCategory_readyHandler___block_invoke;
  v8[3] = &unk_1E7F3A8A8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(AVTAvatarAttributeEditorViewController *)self selectCategory:category withCompletionDelay:3 completionHandler:v8];
}

- (void)configurePPTMemoji:(id)memoji
{
  memojiCopy = memoji;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__AVTAvatarAttributeEditorViewController_UIApplicationTesting__configurePPTMemoji___block_invoke;
  v6[3] = &unk_1E7F3ACA0;
  v6[4] = self;
  v7 = memojiCopy;
  v5 = memojiCopy;
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