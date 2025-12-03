@interface AVTAvatarAttributeEditorSectionColorController
+ (BOOL)updateCollectionViewLayout:(id)layout containerSize:(CGSize)size environment:(id)environment forExtended:(BOOL)extended withSlider:(BOOL)slider numberOfItems:(int64_t)items;
+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)offset collectionView:(id)view;
+ (CGSize)cellSizeFittingWidth:(double)width environment:(id)environment;
+ (double)edgeLengthFittingWidth:(double)width environment:(id)environment;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionColorController)initWithDataSource:(id)source showsHeader:(BOOL)header environment:(id)environment;
- (AVTAvatarAttributeEditorSectionColorController)initWithEnvironment:(id)environment showsHeader:(BOOL)header;
- (BOOL)evaluateDisplayCondition:(id)condition;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (UICollectionViewFlowLayout)collectionViewLayout;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size;
- (UIView)sectionView;
- (double)currentRelativeContentOffsetX;
- (double)heightForCollectionViewFittingWidth:(double)width;
- (double)heightForSectionHeaderFittingWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)selectedIndex;
- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items;
- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item;
- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update;
- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)colorDataSource:(id)source didChangeDisplayMode:(int64_t)mode previousDisplayMode:(int64_t)displayMode;
- (void)colorDataSource:(id)source didDeselectItemAtIndex:(int64_t)index shouldReloadModel:(BOOL)model;
- (void)colorDataSource:(id)source didSelectItemAtIndex:(int64_t)index shouldReloadModel:(BOOL)model;
- (void)colorSliderDidFinishChangingVariation:(double)variation forItem:(id)item;
- (void)colorSliderVariationChanged:(double)changed forItem:(id)item;
- (void)createCollectionView;
- (void)createSliderContainerView;
- (void)hideSliderAnimated:(BOOL)animated;
- (void)invalidateLayoutForNewContainerSize:(CGSize)size;
- (void)layoutSubviewsForIndex:(int64_t)index;
- (void)reloadData;
- (void)resetToDefaultState;
- (void)scrollCollectionViewToOrigin;
- (void)scrollCollectionViewToSelectedColor;
- (void)setCurrentRelativeContentOffsetX:(double)x;
- (void)setSelectedState:(BOOL)state animated:(BOOL)animated forCellAtIndexPath:(id)path;
- (void)showSliderAnimated:(BOOL)animated;
- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index;
- (void)updateCellLayer:(id)layer withColorItem:(id)item withColorPreset:(id)preset;
- (void)updateCollectionViewLayoutWithContainerSize:(CGSize)size;
- (void)updateSectionItem:(id)item withVariation:(double)variation;
- (void)updateSliderForSectionItemIfNeeded:(id)needed;
- (void)updateWithSection:(id)section;
- (void)willDisplayViewForIndex:(int64_t)index;
@end

@implementation AVTAvatarAttributeEditorSectionColorController

+ (double)edgeLengthFittingWidth:(double)width environment:(id)environment
{
  environmentCopy = environment;
  deviceIsPad = [environmentCopy deviceIsPad];
  v7 = 400.0;
  if (width <= 400.0 || (v7 = 12.0, (deviceIsPad & 1) == 0))
  {
    deviceIsMac = [environmentCopy deviceIsMac];
    v7 = 6.0;
    if (((width > 300.0) & deviceIsMac) != 0)
    {
      v7 = 10.0;
    }
  }

  v9 = floor((width + -24.0 + (v7 + -1.0) * -0.0) / v7);

  return v9;
}

+ (CGSize)cellSizeFittingWidth:(double)width environment:(id)environment
{
  [self edgeLengthFittingWidth:environment environment:width];
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (BOOL)updateCollectionViewLayout:(id)layout containerSize:(CGSize)size environment:(id)environment forExtended:(BOOL)extended withSlider:(BOOL)slider numberOfItems:(int64_t)items
{
  extendedCopy = extended;
  width = size.width;
  layoutCopy = layout;
  environmentCopy = environment;
  [layoutCopy setMinimumInteritemSpacing:0.0];
  [objc_opt_class() cellSizeFittingWidth:environmentCopy environment:width];
  v14 = v13;
  v16 = v15;

  [layoutCopy setItemSize:{v14, v16}];
  v17 = !extendedCopy;
  [layoutCopy setMinimumLineSpacing:0.0];
  scrollDirection = [layoutCopy scrollDirection];
  if (scrollDirection != v17)
  {
    [layoutCopy setScrollDirection:v17];
  }

  [layoutCopy setSectionInset:{12.0, 0.0, 12.0, 0.0}];

  return scrollDirection != v17;
}

+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)offset collectionView:(id)view
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  [viewCopy contentSize];
  v8 = v7;
  [viewCopy contentInset];
  v10 = v8 + v9;
  [viewCopy bounds];
  v11 = v10 - CGRectGetWidth(v18);
  [viewCopy contentInset];
  v13 = v12;

  v14 = -v13;
  if (v11 >= x)
  {
    v15 = x;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= v14)
  {
    v14 = v15;
  }

  v16 = y;
  result.y = v16;
  result.x = v14;
  return result;
}

- (AVTAvatarAttributeEditorSectionColorController)initWithEnvironment:(id)environment showsHeader:(BOOL)header
{
  headerCopy = header;
  environmentCopy = environment;
  v7 = objc_alloc_init(AVTAvatarAttributeEditorSectionColorDataSource);
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self initWithDataSource:v7 showsHeader:headerCopy environment:environmentCopy];

  return v8;
}

- (AVTAvatarAttributeEditorSectionColorController)initWithDataSource:(id)source showsHeader:(BOOL)header environment:(id)environment
{
  sourceCopy = source;
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorSectionColorController;
  v11 = [(AVTAvatarAttributeEditorSectionColorController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_needsScrollToSelected = 1;
    objc_storeStrong(&v11->_dataSource, source);
    [(AVTAvatarAttributeEditorSectionColorDataSource *)v12->_dataSource setDelegate:v12];
    objc_storeStrong(&v12->_environment, environment);
    v12->_showsHeader = header;
  }

  return v12;
}

- (UIView)sectionView
{
  containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (!containerView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(AVTAvatarAttributeEditorSectionColorController *)self setContainerView:v5];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView2 setBackgroundColor:clearColor];
  }

  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];

  if (!collectionView)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self createCollectionView];
  }

  sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];

  if (!sliderContainerView)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self createSliderContainerView];
  }

  return [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
}

- (int64_t)selectedIndex
{
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  selectedItemIndex = [dataSource selectedItemIndex];

  return selectedItemIndex;
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)currentRelativeContentOffsetX
{
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView2 contentInset];
  v8 = v5 + v7;

  return v8;
}

- (void)setCurrentRelativeContentOffsetX:(double)x
{
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView contentSize];
  v7 = v6;
  collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView2 bounds];
  Width = CGRectGetWidth(v30);
  collectionView3 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView3 contentInset];
  v12 = v11;
  collectionView4 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView4 contentInset];
  v15 = Width - (v12 + v14);

  collectionView5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView5 contentInset];
  v18 = v17;

  collectionView6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView6 contentOffset];
  v21 = v20;

  if (v7 <= v15)
  {
    collectionView7 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [collectionView7 contentInset];
    v25 = -v27;
  }

  else
  {
    v22 = objc_opt_class();
    collectionView7 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [v22 clampedContentOffsetForOffset:collectionView7 collectionView:{x - v18, v21}];
    v25 = v24;
    v21 = v26;
  }

  collectionView8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView8 setContentOffset:{v25, v21}];
}

- (void)createCollectionView
{
  if ([(AVTAvatarAttributeEditorSectionColorController *)self showsHeader])
  {
    v3 = [AVTAttributeEditorSectionHeaderView alloc];
    containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView bounds];
    v5 = [(AVTAttributeEditorSectionHeaderView *)v3 initWithFrame:0.0, 0.0, CGRectGetWidth(v47), 40.0];
    [(AVTAvatarAttributeEditorSectionColorController *)self setHeaderView:v5];

    dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection = [dataSource colorSection];
    localizedName = [colorSection localizedName];
    headerView = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [headerView setDisplayString:localizedName];

    containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    headerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [containerView2 addSubview:headerView2];

    headerView3 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [headerView3 setAutoresizingMask:34];
  }

  v13 = objc_alloc(MEMORY[0x1E69DC7F0]);
  containerView3 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [containerView3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  collectionViewLayout = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
  v24 = [v13 initWithFrame:collectionViewLayout collectionViewLayout:{v16, v18, v20, v22}];
  [(AVTAvatarAttributeEditorSectionColorController *)self setCollectionView:v24];

  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView setDataSource:self];

  collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView2 setDelegate:self];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  collectionView3 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView3 setBackgroundColor:clearColor];

  collectionView4 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView4 setShowsHorizontalScrollIndicator:0];

  collectionView5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView5 setAutoresizingMask:2];

  collectionView6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView6 _setAutomaticContentOffsetAdjustmentEnabled:0];

  collectionView7 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  [collectionView7 registerClass:v33 forCellWithReuseIdentifier:v35];

  collectionView8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  [collectionView8 registerClass:v37 forCellWithReuseIdentifier:v39];

  collectionView9 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  [collectionView9 registerClass:v41 forCellWithReuseIdentifier:v43];

  containerView4 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  collectionView10 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [containerView4 addSubview:collectionView10];
}

- (UICollectionViewFlowLayout)collectionViewLayout
{
  collectionViewLayout = self->_collectionViewLayout;
  if (!collectionViewLayout)
  {
    v4 = objc_alloc_init(AVTFlippingCollectionViewFlowLayout);
    v5 = self->_collectionViewLayout;
    self->_collectionViewLayout = &v4->super;

    collectionViewLayout = self->_collectionViewLayout;
  }

  return collectionViewLayout;
}

- (void)createSliderContainerView
{
  containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [containerView bounds];
  v5 = v4;

  v6 = [AVTAvatarColorSliderContainerView alloc];
  environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  v8 = -[AVTAvatarColorSliderContainerView initWithFrame:userInterfaceLayoutDirection:](v6, "initWithFrame:userInterfaceLayoutDirection:", [environment userInterfaceLayoutDirection], 0.0, 0.0, v5, 45.0);
  [(AVTAvatarAttributeEditorSectionColorController *)self setSliderContainerView:v8];

  sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [sliderContainerView setDelegate:self];

  sliderContainerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [sliderContainerView2 setAutoresizingMask:10];

  sliderContainerView3 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [sliderContainerView3 setAlpha:0.0];

  containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  sliderContainerView4 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [containerView2 addSubview:sliderContainerView4];
}

- (void)showSliderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__AVTAvatarAttributeEditorSectionColorController_showSliderAnimated___block_invoke;
  v16[3] = &unk_1E7F3A9B8;
  v16[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__AVTAvatarAttributeEditorSectionColorController_showSliderAnimated___block_invoke_2;
  v15[3] = &unk_1E7F3A9B8;
  v15[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v15);
  v6 = v5;
  if (animatedCopy)
  {
    containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView bounds];
    Height = CGRectGetHeight(v17);
    sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView frame];
    v10 = Height - CGRectGetMinY(v18) + -6.0;

    CGAffineTransformMakeTranslation(&v14, 0.0, v10 + -20.0);
    sliderContainerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    v13 = v14;
    [sliderContainerView2 setTransform:&v13];

    sliderContainerView3 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView3 setAlpha:0.0];

    [(AVTAvatarAttributeEditorSectionColorController *)self animateWithSpringAnimations:v6 completion:0];
  }

  else
  {
    (*(v5 + 16))(v5);
  }
}

void __69__AVTAvatarAttributeEditorSectionColorController_showSliderAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutSubviewsForIndex:0];
  v2 = [*(a1 + 32) containerView];
  [v2 layoutIfNeeded];
}

void __69__AVTAvatarAttributeEditorSectionColorController_showSliderAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sliderContainerView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) sliderContainerView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

- (void)hideSliderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__AVTAvatarAttributeEditorSectionColorController_hideSliderAnimated___block_invoke;
  v12[3] = &unk_1E7F3AA80;
  v12[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v12, a2);
  v6 = v5;
  if (animatedCopy)
  {
    containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView bounds];
    Height = CGRectGetHeight(v13);
    sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView frame];
    v10 = Height - CGRectGetMinY(v14) + -6.0;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__AVTAvatarAttributeEditorSectionColorController_hideSliderAnimated___block_invoke_2;
    v11[3] = &unk_1E7F3C300;
    v11[4] = self;
    *&v11[5] = v10;
    [(AVTAvatarAttributeEditorSectionColorController *)self animateWithSpringAnimations:v11 completion:v6];
  }

  else
  {
    (*(v5 + 16))(v5, 1);
  }
}

void __69__AVTAvatarAttributeEditorSectionColorController_hideSliderAnimated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) sliderContainerView];
    [v3 setAlpha:0.0];

    v4 = [*(a1 + 32) sliderContainerView];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v6[0] = *MEMORY[0x1E695EFD0];
    v6[1] = v5;
    v6[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:v6];
  }
}

void __69__AVTAvatarAttributeEditorSectionColorController_hideSliderAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sliderContainerView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) sliderContainerView];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  CGAffineTransformTranslate(&v7, &v6, 0.0, *(a1 + 40) + -20.0);
  v5 = [*(a1 + 32) sliderContainerView];
  v6 = v7;
  [v5 setTransform:&v6];
}

- (void)updateCollectionViewLayoutWithContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (containerView)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self layoutSubviewsForIndex:0];
    v7 = objc_opt_class();
    collectionViewLayout = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
    environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    isShowingExtended = [dataSource isShowingExtended];
    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    isShowingSlider = [dataSource2 isShowingSlider];
    dataSource3 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    LODWORD(v7) = [v7 updateCollectionViewLayout:collectionViewLayout containerSize:environment environment:isShowingExtended forExtended:isShowingSlider withSlider:objc_msgSend(dataSource3 numberOfItems:{"numberOfItemsInSection:", 0), width, height}];

    if (v7)
    {

      [(AVTAvatarAttributeEditorSectionColorController *)self scrollCollectionViewToOrigin];
    }
  }
}

- (void)scrollCollectionViewToSelectedColor
{
  if ([(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedIndex = [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
    collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    v5 = [collectionView numberOfItemsInSection:0];

    if (selectedIndex < v5)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self inSection:{"selectedIndex"), 0}];
      collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
      [collectionView2 scrollToItemAtIndexPath:v7 atScrollPosition:16 animated:0];
    }
  }
}

- (void)scrollCollectionViewToOrigin
{
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView contentInset];
  v4 = -v3;
  collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView2 setContentOffset:{v4, 0.0}];
}

- (void)reloadData
{
  containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (containerView)
  {
    v4 = objc_opt_class();
    collectionViewLayout = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
    containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView2 bounds];
    v8 = v7;
    v10 = v9;
    environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    isShowingExtended = [dataSource isShowingExtended];
    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    isShowingSlider = [dataSource2 isShowingSlider];
    dataSource3 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    [v4 updateCollectionViewLayout:collectionViewLayout containerSize:environment environment:isShowingExtended forExtended:isShowingSlider withSlider:objc_msgSend(dataSource3 numberOfItems:{"numberOfItemsInSection:", 0), v8, v10}];

    collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [collectionView reloadData];

    collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [collectionView2 layoutIfNeeded];
  }
}

- (void)updateWithSection:(id)section
{
  sectionCopy = section;
  identifier = [sectionCopy identifier];
  identifier2 = [(AVTAvatarAttributeEditorSection *)self->_section identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    self->_needsScrollToSelected = 1;
  }

  objc_storeStrong(&self->_section, section);
  [(AVTAvatarAttributeEditorSectionColorController *)self setDontAnimateSelection:1];
  selectedIndex = [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  [dataSource setColorSection:sectionCopy];

  if (selectedIndex == [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex])
  {
    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v11 = [dataSource2 sectionItemAtIndex:{-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self, "selectedIndex")}];

    [(AVTAvatarAttributeEditorSectionColorController *)self updateSliderForSectionItemIfNeeded:v11];
  }

  [(AVTAvatarAttributeEditorSectionColorController *)self setDontAnimateSelection:0];
  localizedName = [sectionCopy localizedName];
  headerView = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
  [headerView setDisplayString:localizedName];
}

- (void)updateSliderForSectionItemIfNeeded:(id)needed
{
  neededCopy = needed;
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  isShowingSlider = [dataSource isShowingSlider];

  color = [neededCopy color];
  canShowSlider = [color canShowSlider];

  if (canShowSlider)
  {
    sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView setSectionItem:neededCopy animated:isShowingSlider];

    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection = [dataSource2 colorSection];
    colorVariationStore = [colorSection colorVariationStore];
    color2 = [neededCopy color];
    v13 = [colorVariationStore colorPresetFromColor:color2];

    sliderContainerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView2 updateSliderWithColorPreset:v13 animated:isShowingSlider];
  }
}

- (void)willDisplayViewForIndex:(int64_t)index
{
  [(AVTAvatarAttributeEditorSectionColorController *)self layoutSubviewsForIndex:index];
  [(AVTAvatarAttributeEditorSectionColorController *)self reloadData];
  if ([(AVTAvatarAttributeEditorSectionColorController *)self needsScrollToSelected])
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self setNeedsScrollToSelected:0];

    [(AVTAvatarAttributeEditorSectionColorController *)self scrollCollectionViewToSelectedColor];
  }
}

- (void)layoutSubviewsForIndex:(int64_t)index
{
  containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [containerView bounds];
  Width = CGRectGetWidth(v37);

  [(AVTAvatarAttributeEditorSectionColorController *)self heightForSectionHeaderFittingWidth:Width];
  v7 = v6;
  containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [containerView2 bounds];
  v9 = CGRectGetWidth(v38);

  headerView = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
  [headerView setFrame:{0.0, 0.0, v9, v7}];

  [(AVTAvatarAttributeEditorSectionColorController *)self heightForCollectionViewFittingWidth:Width];
  v12 = v11;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v9;
  v39.size.height = v7;
  MaxY = CGRectGetMaxY(v39);
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView setFrame:{0.0, MaxY, Width, v12}];

  collectionView2 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView2 setContentInset:{0.0, 12.0, 0.0, 12.0}];

  collectionView3 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView3 contentOffset];
  v18 = v17;

  if (v18 == 0.0)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self scrollCollectionViewToOrigin];
  }

  collectionView4 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [collectionView4 layoutIfNeeded];

  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  isShowingSlider = [dataSource isShowingSlider];

  if (isShowingSlider)
  {
    v22 = objc_opt_class();
    containerView3 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView3 bounds];
    v25 = v24;
    environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    [v22 edgeLengthFittingWidth:environment environment:v25];
    v28 = v27;

    containerView4 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView4 bounds];
    v31 = v30 - v28 + -12.0;
    containerView5 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView5 bounds];
    v34 = v33;

    sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [sliderContainerView setFrame:{0.0, v31, v34, v28}];
  }
}

- (double)heightForSectionHeaderFittingWidth:(double)width
{
  v21[1] = *MEMORY[0x1E69E9840];
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  colorSection = [dataSource colorSection];

  v7 = 0.0;
  if (-[AVTAvatarAttributeEditorSectionColorController showsHeader](self, "showsHeader") && [colorSection shouldDisplayTitle])
  {
    v8 = +[AVTUIFontRepository attributeTitleFont];
    localizedName = [colorSection localizedName];
    [v8 lineHeight];
    v11 = v10 + v10;
    v20 = *MEMORY[0x1E69DB648];
    v21[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [localizedName boundingRectWithSize:1 options:v12 attributes:0 context:{width + -40.0, v11}];
    v14 = v13;

    v15 = +[AVTUIFontRepository attributeTitleFont];
    [v15 _scaledValueForValue:18.0];
    v17 = v16;

    v18 = 30.0;
    if (v17 <= 30.0)
    {
      v18 = v17;
    }

    v7 = ceil(v14 + v18 * 2.0 + -12.0);
  }

  return v7;
}

- (double)heightForCollectionViewFittingWidth:(double)width
{
  v5 = objc_opt_class();
  environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  [v5 edgeLengthFittingWidth:environment environment:width];
  v8 = v7;

  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  LODWORD(environment) = [dataSource isShowingExtended];

  if (environment)
  {
    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection = [dataSource2 colorSection];
    extendedItems = [colorSection extendedItems];
    v13 = [extendedItems count];

    v8 = (v8 + 0.0) * ceil(v13 / floor((width + -24.0) / (v8 + 0.0)));
  }

  return v8 + 24.0;
}

- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  [(AVTAvatarAttributeEditorSectionColorController *)self heightForCollectionViewFittingWidth:index, size.width, size.height];
  v7 = v6;
  if ([(AVTAvatarAttributeEditorSectionColorController *)self showsHeader])
  {
    dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection = [dataSource colorSection];
    shouldDisplayTitle = [colorSection shouldDisplayTitle];

    if (shouldDisplayTitle)
    {
      [(AVTAvatarAttributeEditorSectionColorController *)self heightForSectionHeaderFittingWidth:width];
      v7 = v7 + v11;
    }
  }

  dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  isShowingSlider = [dataSource2 isShowingSlider];

  if (isShowingSlider)
  {
    v14 = objc_opt_class();
    environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    [v14 edgeLengthFittingWidth:environment environment:width];
    v17 = v16;

    v7 = v7 + v17 + 6.0;
  }

  v18 = width;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index
{
  [cell layoutIfNeeded];

  [(AVTAvatarAttributeEditorSectionColorController *)self willDisplayViewForIndex:index];
}

- (void)resetToDefaultState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__AVTAvatarAttributeEditorSectionColorController_resetToDefaultState__block_invoke;
  v2[3] = &unk_1E7F3A9B8;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __69__AVTAvatarAttributeEditorSectionColorController_resetToDefaultState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 resetToDefaultDisplayMode];

  v3 = *(a1 + 32);

  return [v3 scrollCollectionViewToSelectedColor];
}

- (void)invalidateLayoutForNewContainerSize:(CGSize)size
{
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCollectionViewLayoutWithContainerSize:size.width, size.height];
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index
{
  cellCopy = cell;
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self viewForIndex:index];
  [cellCopy setAttributeView:v7];
}

- (BOOL)evaluateDisplayCondition:(id)condition
{
  if ([condition value])
  {
    return 0;
  }

  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  isShowingSlider = [dataSource isShowingSlider];

  return isShowingSlider;
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  v6 = objc_opt_class();
  environment = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  [v6 cellSizeFittingWidth:environment environment:width];
  v9 = v8;
  v11 = v10;

  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  LODWORD(v6) = [dataSource isShowingSlider];

  if (v6)
  {
    v13 = v11 + v9 + 6.0 + 10.0;
  }

  else
  {
    v13 = v11;
  }

  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v6 = [dataSource numberOfItemsInSection:section];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  indexPathOfExtendedIcon = [dataSource indexPathOfExtendedIcon];
  v10 = [pathCopy isEqual:indexPathOfExtendedIcon];

  if ((v10 & 1) == 0)
  {
    AVTUIEditorShowAssetsName_once();
  }

  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:? forIndexPath:?];

  valueView = [v12 valueView];
  v14 = valueView;
  if (v10)
  {
    if (!valueView)
    {
      v15 = [AVTColorWheelView alloc];
      contentView = [v12 contentView];
      [contentView bounds];
      v14 = [(AVTColorWheelView *)v15 initWithFrame:?];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
    }

    v14 = v14;
    dataSource2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection = [dataSource2 colorSection];
    primaryItems = [colorSection primaryItems];
    dataSource3 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    colorSection2 = [dataSource3 colorSection];
    extendedItems = [colorSection2 extendedItems];
    [(AVTColorWheelView *)v14 updateWithPrimaryItems:primaryItems extendedItems:extendedItems];

    goto LABEL_13;
  }

  if (!valueView)
  {
    v23 = [AVTAttributeValueView alloc];
    contentView2 = [v12 contentView];
    [contentView2 bounds];
    v14 = [(AVTAttributeValueView *)v23 initWithFrame:?];
  }

  dataSource4 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  dataSource2 = [dataSource4 sectionItemAtIndex:{objc_msgSend(pathCopy, "item")}];

  dataSource5 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  colorSection3 = [dataSource5 colorSection];
  colorVariationStore = [colorSection3 colorVariationStore];
  color = [dataSource2 color];
  colorSection = [colorVariationStore colorPresetFromColor:color];

  imageLayer = [(AVTAttributeValueView *)v14 imageLayer];
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCellLayer:imageLayer withColorItem:dataSource2 withColorPreset:colorSection];

  if (AVTUIEditorShowAssetsName_once())
  {
    primaryItems = [dataSource2 localizedName];
    [v12 setLabelString:primaryItems];
LABEL_13:
  }

  [(AVTAttributeValueView *)v14 setSelectionStyle:1];
  [v12 setAttributeView:v14];

  return v12;
}

- (void)updateCellLayer:(id)layer withColorItem:(id)item withColorPreset:(id)preset
{
  presetCopy = preset;
  itemCopy = item;
  layerCopy = layer;
  layerContentProvider = [itemCopy layerContentProvider];
  skinColor = [itemCopy skinColor];

  layerContentProvider[2](layerContentProvider, presetCopy, skinColor, layerCopy);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  item = [path item];
  v9 = item == [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
  v11 = cellCopy;
  [v11 layoutIfNeeded];
  valueView = [v11 valueView];

  [valueView updateSelectedState:v9 animated:0];
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  valueView = [v8 valueView];
  [valueView updateHighlightedState:1 animated:1 completionBlock:0];
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  valueView = [v8 valueView];
  [valueView updateHighlightedState:0 animated:1 completionBlock:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  [dataSource selectSectionItemAtIndexPath:pathCopy];
}

- (void)colorDataSource:(id)source didDeselectItemAtIndex:(int64_t)index shouldReloadModel:(BOOL)model
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:{0, model}];
  [(AVTAvatarAttributeEditorSectionColorController *)self setSelectedState:0 animated:[(AVTAvatarAttributeEditorSectionColorController *)self dontAnimateSelection]^ 1 forCellAtIndexPath:v6];
}

- (void)colorDataSource:(id)source didSelectItemAtIndex:(int64_t)index shouldReloadModel:(BOOL)model
{
  modelCopy = model;
  v8 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  [(AVTAvatarAttributeEditorSectionColorController *)self setSelectedState:1 animated:[(AVTAvatarAttributeEditorSectionColorController *)self dontAnimateSelection]^ 1 forCellAtIndexPath:v8];
  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v10 = [dataSource sectionItemAtIndex:index];

  if (v10)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self updateSliderForSectionItemIfNeeded:v10];
    if (modelCopy)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __105__AVTAvatarAttributeEditorSectionColorController_colorDataSource_didSelectItemAtIndex_shouldReloadModel___block_invoke;
      v11[3] = &unk_1E7F3AD60;
      v11[4] = self;
      v12 = v10;
      [(AVTAvatarAttributeEditorSectionColorController *)self animateWithSpringAnimations:v11 completion:0];
    }
  }
}

void __105__AVTAvatarAttributeEditorSectionColorController_colorDataSource_didSelectItemAtIndex_shouldReloadModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 attributeEditorSectionController:*(a1 + 32) didSelectSectionItem:*(a1 + 40)];
}

- (void)colorDataSource:(id)source didChangeDisplayMode:(int64_t)mode previousDisplayMode:(int64_t)displayMode
{
  sourceCopy = source;
  v8 = mode & 0xFFFFFFFFFFFFFFFDLL;
  v9 = (mode & 0xFFFFFFFFFFFFFFFDLL) == 1;
  v10 = ((mode & 0xFFFFFFFFFFFFFFFELL) == 2) ^ ((displayMode & 0xFFFFFFFFFFFFFFFELL) == 2);
  if (v9 == ((displayMode & 0xFFFFFFFFFFFFFFFDLL) == 1))
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

    containerView = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView bounds];
    [(AVTAvatarAttributeEditorSectionColorController *)self updateCollectionViewLayoutWithContainerSize:v12, v13];
  }

  else
  {
    if (v8 == 1)
    {
      [(AVTAvatarAttributeEditorSectionColorController *)self showSliderAnimated:1];
    }

    else
    {
      [(AVTAvatarAttributeEditorSectionColorController *)self hideSliderAnimated:1];
    }

    containerView2 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [containerView2 bounds];
    [(AVTAvatarAttributeEditorSectionColorController *)self updateCollectionViewLayoutWithContainerSize:v15, v16];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [(AVTAvatarAttributeEditorSectionColorController *)self reloadData];
LABEL_9:
}

- (void)setSelectedState:(BOOL)state animated:(BOOL)animated forCellAtIndexPath:(id)path
{
  animatedCopy = animated;
  stateCopy = state;
  pathCopy = path;
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v11 = [collectionView cellForItemAtIndexPath:pathCopy];

  valueView = [v11 valueView];
  [valueView updateSelectedState:stateCopy animated:animatedCopy];
}

- (void)colorSliderVariationChanged:(double)changed forItem:(id)item
{
  itemCopy = item;
  [(AVTAvatarAttributeEditorSectionColorController *)self updateSectionItem:itemCopy withVariation:changed];
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionController:self didUpdateSectionItem:itemCopy];
}

- (void)colorSliderDidFinishChangingVariation:(double)variation forItem:(id)item
{
  itemCopy = item;
  [(AVTAvatarAttributeEditorSectionColorController *)self updateSectionItem:itemCopy withVariation:variation];
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionController:self didSelectSectionItem:itemCopy];
}

- (void)updateSectionItem:(id)item withVariation:(double)variation
{
  v6 = MEMORY[0x1E696AC88];
  itemCopy = item;
  v21 = [v6 indexPathForItem:-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self inSection:{"selectedIndex"), 0}];
  collectionView = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v9 = [collectionView cellForItemAtIndexPath:v21];

  color = [itemCopy color];
  baseColorPreset = [color baseColorPreset];
  *&v12 = variation;
  v13 = [baseColorPreset colorPresetWithVariation:v12];

  dataSource = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  colorSection = [dataSource colorSection];
  colorVariationStore = [colorSection colorVariationStore];
  color2 = [itemCopy color];
  [colorVariationStore saveColorPreset:v13 forColor:color2];

  valueView = [v9 valueView];
  imageLayer = [valueView imageLayer];
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCellLayer:imageLayer withColorItem:itemCopy withColorPreset:v13];

  sliderContainerView = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [sliderContainerView updateSliderWithColorPreset:v13 animated:0];
}

- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item
{
  itemCopy = item;
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionController:self didSelectSectionItem:itemCopy];
}

- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item
{
  itemCopy = item;
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionController:self didUpdateSectionItem:itemCopy];
}

- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items
{
  itemsCopy = items;
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionController:self didDeleteSectionItems:itemsCopy];
}

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update
{
  delegate = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [delegate attributeEditorSectionControllerNeedsLayoutUpdate:self];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __100__AVTAvatarAttributeEditorSectionColorController_attributeEditorSectionControllerNeedsLayoutUpdate___block_invoke;
  v5[3] = &unk_1E7F3A9B8;
  v5[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
}

void __100__AVTAvatarAttributeEditorSectionColorController_attributeEditorSectionControllerNeedsLayoutUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutSubviewsForIndex:0];
  v2 = *(a1 + 32);
  v5 = [v2 containerView];
  [v5 bounds];
  [v2 updateCollectionViewLayoutWithContainerSize:{v3, v4}];
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end