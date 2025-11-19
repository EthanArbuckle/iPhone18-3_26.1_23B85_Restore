@interface AVTAvatarAttributeEditorSectionColorController
+ (BOOL)updateCollectionViewLayout:(id)a3 containerSize:(CGSize)a4 environment:(id)a5 forExtended:(BOOL)a6 withSlider:(BOOL)a7 numberOfItems:(int64_t)a8;
+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)a3 collectionView:(id)a4;
+ (CGSize)cellSizeFittingWidth:(double)a3 environment:(id)a4;
+ (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionColorController)initWithDataSource:(id)a3 showsHeader:(BOOL)a4 environment:(id)a5;
- (AVTAvatarAttributeEditorSectionColorController)initWithEnvironment:(id)a3 showsHeader:(BOOL)a4;
- (BOOL)evaluateDisplayCondition:(id)a3;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (UICollectionViewFlowLayout)collectionViewLayout;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3;
- (UIView)sectionView;
- (double)currentRelativeContentOffsetX;
- (double)heightForCollectionViewFittingWidth:(double)a3;
- (double)heightForSectionHeaderFittingWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)selectedIndex;
- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3;
- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)colorDataSource:(id)a3 didChangeDisplayMode:(int64_t)a4 previousDisplayMode:(int64_t)a5;
- (void)colorDataSource:(id)a3 didDeselectItemAtIndex:(int64_t)a4 shouldReloadModel:(BOOL)a5;
- (void)colorDataSource:(id)a3 didSelectItemAtIndex:(int64_t)a4 shouldReloadModel:(BOOL)a5;
- (void)colorSliderDidFinishChangingVariation:(double)a3 forItem:(id)a4;
- (void)colorSliderVariationChanged:(double)a3 forItem:(id)a4;
- (void)createCollectionView;
- (void)createSliderContainerView;
- (void)hideSliderAnimated:(BOOL)a3;
- (void)invalidateLayoutForNewContainerSize:(CGSize)a3;
- (void)layoutSubviewsForIndex:(int64_t)a3;
- (void)reloadData;
- (void)resetToDefaultState;
- (void)scrollCollectionViewToOrigin;
- (void)scrollCollectionViewToSelectedColor;
- (void)setCurrentRelativeContentOffsetX:(double)a3;
- (void)setSelectedState:(BOOL)a3 animated:(BOOL)a4 forCellAtIndexPath:(id)a5;
- (void)showSliderAnimated:(BOOL)a3;
- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)updateCellLayer:(id)a3 withColorItem:(id)a4 withColorPreset:(id)a5;
- (void)updateCollectionViewLayoutWithContainerSize:(CGSize)a3;
- (void)updateSectionItem:(id)a3 withVariation:(double)a4;
- (void)updateSliderForSectionItemIfNeeded:(id)a3;
- (void)updateWithSection:(id)a3;
- (void)willDisplayViewForIndex:(int64_t)a3;
@end

@implementation AVTAvatarAttributeEditorSectionColorController

+ (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4
{
  v5 = a4;
  v6 = [v5 deviceIsPad];
  v7 = 400.0;
  if (a3 <= 400.0 || (v7 = 12.0, (v6 & 1) == 0))
  {
    v8 = [v5 deviceIsMac];
    v7 = 6.0;
    if (((a3 > 300.0) & v8) != 0)
    {
      v7 = 10.0;
    }
  }

  v9 = floor((a3 + -24.0 + (v7 + -1.0) * -0.0) / v7);

  return v9;
}

+ (CGSize)cellSizeFittingWidth:(double)a3 environment:(id)a4
{
  [a1 edgeLengthFittingWidth:a4 environment:a3];
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (BOOL)updateCollectionViewLayout:(id)a3 containerSize:(CGSize)a4 environment:(id)a5 forExtended:(BOOL)a6 withSlider:(BOOL)a7 numberOfItems:(int64_t)a8
{
  v8 = a6;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  [v11 setMinimumInteritemSpacing:0.0];
  [objc_opt_class() cellSizeFittingWidth:v12 environment:width];
  v14 = v13;
  v16 = v15;

  [v11 setItemSize:{v14, v16}];
  v17 = !v8;
  [v11 setMinimumLineSpacing:0.0];
  v18 = [v11 scrollDirection];
  if (v18 != v17)
  {
    [v11 setScrollDirection:v17];
  }

  [v11 setSectionInset:{12.0, 0.0, 12.0, 0.0}];

  return v18 != v17;
}

+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)a3 collectionView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 contentSize];
  v8 = v7;
  [v6 contentInset];
  v10 = v8 + v9;
  [v6 bounds];
  v11 = v10 - CGRectGetWidth(v18);
  [v6 contentInset];
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

- (AVTAvatarAttributeEditorSectionColorController)initWithEnvironment:(id)a3 showsHeader:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(AVTAvatarAttributeEditorSectionColorDataSource);
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self initWithDataSource:v7 showsHeader:v4 environment:v6];

  return v8;
}

- (AVTAvatarAttributeEditorSectionColorController)initWithDataSource:(id)a3 showsHeader:(BOOL)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorSectionColorController;
  v11 = [(AVTAvatarAttributeEditorSectionColorController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_needsScrollToSelected = 1;
    objc_storeStrong(&v11->_dataSource, a3);
    [(AVTAvatarAttributeEditorSectionColorDataSource *)v12->_dataSource setDelegate:v12];
    objc_storeStrong(&v12->_environment, a5);
    v12->_showsHeader = a4;
  }

  return v12;
}

- (UIView)sectionView
{
  v3 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(AVTAvatarAttributeEditorSectionColorController *)self setContainerView:v5];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    v7 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v7 setBackgroundColor:v6];
  }

  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];

  if (!v8)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self createCollectionView];
  }

  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];

  if (!v9)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self createSliderContainerView];
  }

  return [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
}

- (int64_t)selectedIndex
{
  v2 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v3 = [v2 selectedItemIndex];

  return v3;
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3
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
  v3 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v6 contentInset];
  v8 = v5 + v7;

  return v8;
}

- (void)setCurrentRelativeContentOffsetX:(double)a3
{
  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v5 contentSize];
  v7 = v6;
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v8 bounds];
  Width = CGRectGetWidth(v30);
  v10 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v10 contentInset];
  v12 = v11;
  v13 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v13 contentInset];
  v15 = Width - (v12 + v14);

  v16 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v16 contentInset];
  v18 = v17;

  v19 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v19 contentOffset];
  v21 = v20;

  if (v7 <= v15)
  {
    v23 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [v23 contentInset];
    v25 = -v27;
  }

  else
  {
    v22 = objc_opt_class();
    v23 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [v22 clampedContentOffsetForOffset:v23 collectionView:{a3 - v18, v21}];
    v25 = v24;
    v21 = v26;
  }

  v28 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v28 setContentOffset:{v25, v21}];
}

- (void)createCollectionView
{
  if ([(AVTAvatarAttributeEditorSectionColorController *)self showsHeader])
  {
    v3 = [AVTAttributeEditorSectionHeaderView alloc];
    v4 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v4 bounds];
    v5 = [(AVTAttributeEditorSectionHeaderView *)v3 initWithFrame:0.0, 0.0, CGRectGetWidth(v47), 40.0];
    [(AVTAvatarAttributeEditorSectionColorController *)self setHeaderView:v5];

    v6 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v7 = [v6 colorSection];
    v8 = [v7 localizedName];
    v9 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [v9 setDisplayString:v8];

    v10 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    v11 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [v10 addSubview:v11];

    v12 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
    [v12 setAutoresizingMask:34];
  }

  v13 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v14 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
  v24 = [v13 initWithFrame:v23 collectionViewLayout:{v16, v18, v20, v22}];
  [(AVTAvatarAttributeEditorSectionColorController *)self setCollectionView:v24];

  v25 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v25 setDataSource:self];

  v26 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v26 setDelegate:self];

  v27 = [MEMORY[0x1E69DC888] clearColor];
  v28 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v28 setBackgroundColor:v27];

  v29 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v29 setShowsHorizontalScrollIndicator:0];

  v30 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v30 setAutoresizingMask:2];

  v31 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v31 _setAutomaticContentOffsetAdjustmentEnabled:0];

  v32 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  [v32 registerClass:v33 forCellWithReuseIdentifier:v35];

  v36 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  [v36 registerClass:v37 forCellWithReuseIdentifier:v39];

  v40 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  [v40 registerClass:v41 forCellWithReuseIdentifier:v43];

  v45 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  v44 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v45 addSubview:v44];
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
  v3 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [v3 bounds];
  v5 = v4;

  v6 = [AVTAvatarColorSliderContainerView alloc];
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  v8 = -[AVTAvatarColorSliderContainerView initWithFrame:userInterfaceLayoutDirection:](v6, "initWithFrame:userInterfaceLayoutDirection:", [v7 userInterfaceLayoutDirection], 0.0, 0.0, v5, 45.0);
  [(AVTAvatarAttributeEditorSectionColorController *)self setSliderContainerView:v8];

  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [v9 setDelegate:self];

  v10 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [v10 setAutoresizingMask:10];

  v11 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [v11 setAlpha:0.0];

  v13 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  v12 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [v13 addSubview:v12];
}

- (void)showSliderAnimated:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
  {
    v7 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v7 bounds];
    Height = CGRectGetHeight(v17);
    v9 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v9 frame];
    v10 = Height - CGRectGetMinY(v18) + -6.0;

    CGAffineTransformMakeTranslation(&v14, 0.0, v10 + -20.0);
    v11 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    v13 = v14;
    [v11 setTransform:&v13];

    v12 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v12 setAlpha:0.0];

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

- (void)hideSliderAnimated:(BOOL)a3
{
  v3 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__AVTAvatarAttributeEditorSectionColorController_hideSliderAnimated___block_invoke;
  v12[3] = &unk_1E7F3AA80;
  v12[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v12, a2);
  v6 = v5;
  if (v3)
  {
    v7 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v7 bounds];
    Height = CGRectGetHeight(v13);
    v9 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v9 frame];
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

- (void)updateCollectionViewLayoutWithContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (v6)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self layoutSubviewsForIndex:0];
    v7 = objc_opt_class();
    v8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
    v9 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    v10 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v11 = [v10 isShowingExtended];
    v12 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v13 = [v12 isShowingSlider];
    v14 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    LODWORD(v7) = [v7 updateCollectionViewLayout:v8 containerSize:v9 environment:v11 forExtended:v13 withSlider:objc_msgSend(v14 numberOfItems:{"numberOfItemsInSection:", 0), width, height}];

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
    v3 = [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
    v4 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    v5 = [v4 numberOfItemsInSection:0];

    if (v3 < v5)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self inSection:{"selectedIndex"), 0}];
      v6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
      [v6 scrollToItemAtIndexPath:v7 atScrollPosition:16 animated:0];
    }
  }
}

- (void)scrollCollectionViewToOrigin
{
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v6 contentInset];
  v4 = -v3;
  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v5 setContentOffset:{v4, 0.0}];
}

- (void)reloadData
{
  v3 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionViewLayout];
    v6 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v11 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    v12 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v13 = [v12 isShowingExtended];
    v14 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v15 = [v14 isShowingSlider];
    v16 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    [v4 updateCollectionViewLayout:v5 containerSize:v11 environment:v13 forExtended:v15 withSlider:objc_msgSend(v16 numberOfItems:{"numberOfItemsInSection:", 0), v8, v10}];

    v17 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [v17 reloadData];

    v18 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
    [v18 layoutIfNeeded];
  }
}

- (void)updateWithSection:(id)a3
{
  v14 = a3;
  v5 = [v14 identifier];
  v6 = [(AVTAvatarAttributeEditorSection *)self->_section identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    self->_needsScrollToSelected = 1;
  }

  objc_storeStrong(&self->_section, a3);
  [(AVTAvatarAttributeEditorSectionColorController *)self setDontAnimateSelection:1];
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  [v9 setColorSection:v14];

  if (v8 == [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex])
  {
    v10 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v11 = [v10 sectionItemAtIndex:{-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self, "selectedIndex")}];

    [(AVTAvatarAttributeEditorSectionColorController *)self updateSliderForSectionItemIfNeeded:v11];
  }

  [(AVTAvatarAttributeEditorSectionColorController *)self setDontAnimateSelection:0];
  v12 = [v14 localizedName];
  v13 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
  [v13 setDisplayString:v12];
}

- (void)updateSliderForSectionItemIfNeeded:(id)a3
{
  v15 = a3;
  v4 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v5 = [v4 isShowingSlider];

  v6 = [v15 color];
  v7 = [v6 canShowSlider];

  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v8 setSectionItem:v15 animated:v5];

    v9 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v10 = [v9 colorSection];
    v11 = [v10 colorVariationStore];
    v12 = [v15 color];
    v13 = [v11 colorPresetFromColor:v12];

    v14 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v14 updateSliderWithColorPreset:v13 animated:v5];
  }
}

- (void)willDisplayViewForIndex:(int64_t)a3
{
  [(AVTAvatarAttributeEditorSectionColorController *)self layoutSubviewsForIndex:a3];
  [(AVTAvatarAttributeEditorSectionColorController *)self reloadData];
  if ([(AVTAvatarAttributeEditorSectionColorController *)self needsScrollToSelected])
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self setNeedsScrollToSelected:0];

    [(AVTAvatarAttributeEditorSectionColorController *)self scrollCollectionViewToSelectedColor];
  }
}

- (void)layoutSubviewsForIndex:(int64_t)a3
{
  v4 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [v4 bounds];
  Width = CGRectGetWidth(v37);

  [(AVTAvatarAttributeEditorSectionColorController *)self heightForSectionHeaderFittingWidth:Width];
  v7 = v6;
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
  [v8 bounds];
  v9 = CGRectGetWidth(v38);

  v10 = [(AVTAvatarAttributeEditorSectionColorController *)self headerView];
  [v10 setFrame:{0.0, 0.0, v9, v7}];

  [(AVTAvatarAttributeEditorSectionColorController *)self heightForCollectionViewFittingWidth:Width];
  v12 = v11;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v9;
  v39.size.height = v7;
  MaxY = CGRectGetMaxY(v39);
  v14 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v14 setFrame:{0.0, MaxY, Width, v12}];

  v15 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v15 setContentInset:{0.0, 12.0, 0.0, 12.0}];

  v16 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v16 contentOffset];
  v18 = v17;

  if (v18 == 0.0)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self scrollCollectionViewToOrigin];
  }

  v19 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  [v19 layoutIfNeeded];

  v20 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v21 = [v20 isShowingSlider];

  if (v21)
  {
    v22 = objc_opt_class();
    v23 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v23 bounds];
    v25 = v24;
    v26 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    [v22 edgeLengthFittingWidth:v26 environment:v25];
    v28 = v27;

    v29 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v29 bounds];
    v31 = v30 - v28 + -12.0;
    v32 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v32 bounds];
    v34 = v33;

    v35 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
    [v35 setFrame:{0.0, v31, v34, v28}];
  }
}

- (double)heightForSectionHeaderFittingWidth:(double)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v6 = [v5 colorSection];

  v7 = 0.0;
  if (-[AVTAvatarAttributeEditorSectionColorController showsHeader](self, "showsHeader") && [v6 shouldDisplayTitle])
  {
    v8 = +[AVTUIFontRepository attributeTitleFont];
    v9 = [v6 localizedName];
    [v8 lineHeight];
    v11 = v10 + v10;
    v20 = *MEMORY[0x1E69DB648];
    v21[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v9 boundingRectWithSize:1 options:v12 attributes:0 context:{a3 + -40.0, v11}];
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

- (double)heightForCollectionViewFittingWidth:(double)a3
{
  v5 = objc_opt_class();
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  [v5 edgeLengthFittingWidth:v6 environment:a3];
  v8 = v7;

  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  LODWORD(v6) = [v9 isShowingExtended];

  if (v6)
  {
    v10 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v11 = [v10 colorSection];
    v12 = [v11 extendedItems];
    v13 = [v12 count];

    v8 = (v8 + 0.0) * ceil(v13 / floor((a3 + -24.0) / (v8 + 0.0)));
  }

  return v8 + 24.0;
}

- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  [(AVTAvatarAttributeEditorSectionColorController *)self heightForCollectionViewFittingWidth:a3, a4.width, a4.height];
  v7 = v6;
  if ([(AVTAvatarAttributeEditorSectionColorController *)self showsHeader])
  {
    v8 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v9 = [v8 colorSection];
    v10 = [v9 shouldDisplayTitle];

    if (v10)
    {
      [(AVTAvatarAttributeEditorSectionColorController *)self heightForSectionHeaderFittingWidth:width];
      v7 = v7 + v11;
    }
  }

  v12 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v13 = [v12 isShowingSlider];

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
    [v14 edgeLengthFittingWidth:v15 environment:width];
    v17 = v16;

    v7 = v7 + v17 + 6.0;
  }

  v18 = width;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4
{
  [a3 layoutIfNeeded];

  [(AVTAvatarAttributeEditorSectionColorController *)self willDisplayViewForIndex:a4];
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

- (void)invalidateLayoutForNewContainerSize:(CGSize)a3
{
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCollectionViewLayoutWithContainerSize:a3.width, a3.height];
  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v4 = [v5 collectionViewLayout];
  [v4 invalidateLayout];
}

- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self viewForIndex:a4];
  [v6 setAttributeView:v7];
}

- (BOOL)evaluateDisplayCondition:(id)a3
{
  if ([a3 value])
  {
    return 0;
  }

  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v6 = [v5 isShowingSlider];

  return v6;
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v6 = objc_opt_class();
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self environment];
  [v6 cellSizeFittingWidth:v7 environment:width];
  v9 = v8;
  v11 = v10;

  v12 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  LODWORD(v6) = [v12 isShowingSlider];

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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v9 = [v8 indexPathOfExtendedIcon];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    AVTUIEditorShowAssetsName_once();
  }

  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:? forIndexPath:?];

  v13 = [v12 valueView];
  v14 = v13;
  if (v10)
  {
    if (!v13)
    {
      v15 = [AVTColorWheelView alloc];
      v16 = [v12 contentView];
      [v16 bounds];
      v14 = [(AVTColorWheelView *)v15 initWithFrame:?];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
    }

    v14 = v14;
    v17 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v18 = [v17 colorSection];
    v19 = [v18 primaryItems];
    v20 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
    v21 = [v20 colorSection];
    v22 = [v21 extendedItems];
    [(AVTColorWheelView *)v14 updateWithPrimaryItems:v19 extendedItems:v22];

    goto LABEL_13;
  }

  if (!v13)
  {
    v23 = [AVTAttributeValueView alloc];
    v24 = [v12 contentView];
    [v24 bounds];
    v14 = [(AVTAttributeValueView *)v23 initWithFrame:?];
  }

  v25 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v17 = [v25 sectionItemAtIndex:{objc_msgSend(v6, "item")}];

  v26 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v27 = [v26 colorSection];
  v28 = [v27 colorVariationStore];
  v29 = [v17 color];
  v18 = [v28 colorPresetFromColor:v29];

  v30 = [(AVTAttributeValueView *)v14 imageLayer];
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCellLayer:v30 withColorItem:v17 withColorPreset:v18];

  if (AVTUIEditorShowAssetsName_once())
  {
    v19 = [v17 localizedName];
    [v12 setLabelString:v19];
LABEL_13:
  }

  [(AVTAttributeValueView *)v14 setSelectionStyle:1];
  [v12 setAttributeView:v14];

  return v12;
}

- (void)updateCellLayer:(id)a3 withColorItem:(id)a4 withColorPreset:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [v8 layerContentProvider];
  v10 = [v8 skinColor];

  v11[2](v11, v7, v10, v9);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a5 item];
  v9 = v8 == [(AVTAvatarAttributeEditorSectionColorController *)self selectedIndex];
  v11 = v7;
  [v11 layoutIfNeeded];
  v10 = [v11 valueView];

  [v10 updateSelectedState:v9 animated:0];
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v8 = [v6 cellForItemAtIndexPath:v5];

  v7 = [v8 valueView];
  [v7 updateHighlightedState:1 animated:1 completionBlock:0];
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v8 = [v6 cellForItemAtIndexPath:v5];

  v7 = [v8 valueView];
  [v7 updateHighlightedState:0 animated:1 completionBlock:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  [v6 selectSectionItemAtIndexPath:v5];
}

- (void)colorDataSource:(id)a3 didDeselectItemAtIndex:(int64_t)a4 shouldReloadModel:(BOOL)a5
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a4 inSection:{0, a5}];
  [(AVTAvatarAttributeEditorSectionColorController *)self setSelectedState:0 animated:[(AVTAvatarAttributeEditorSectionColorController *)self dontAnimateSelection]^ 1 forCellAtIndexPath:v6];
}

- (void)colorDataSource:(id)a3 didSelectItemAtIndex:(int64_t)a4 shouldReloadModel:(BOOL)a5
{
  v5 = a5;
  v8 = [MEMORY[0x1E696AC88] indexPathForItem:a4 inSection:0];
  [(AVTAvatarAttributeEditorSectionColorController *)self setSelectedState:1 animated:[(AVTAvatarAttributeEditorSectionColorController *)self dontAnimateSelection]^ 1 forCellAtIndexPath:v8];
  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v10 = [v9 sectionItemAtIndex:a4];

  if (v10)
  {
    [(AVTAvatarAttributeEditorSectionColorController *)self updateSliderForSectionItemIfNeeded:v10];
    if (v5)
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

- (void)colorDataSource:(id)a3 didChangeDisplayMode:(int64_t)a4 previousDisplayMode:(int64_t)a5
{
  v17 = a3;
  v8 = a4 & 0xFFFFFFFFFFFFFFFDLL;
  v9 = (a4 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  v10 = ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2) ^ ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2);
  if (v9 == ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 1))
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v11 bounds];
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

    v14 = [(AVTAvatarAttributeEditorSectionColorController *)self containerView];
    [v14 bounds];
    [(AVTAvatarAttributeEditorSectionColorController *)self updateCollectionViewLayoutWithContainerSize:v15, v16];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [(AVTAvatarAttributeEditorSectionColorController *)self reloadData];
LABEL_9:
}

- (void)setSelectedState:(BOOL)a3 animated:(BOOL)a4 forCellAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v11 = [v9 cellForItemAtIndexPath:v8];

  v10 = [v11 valueView];
  [v10 updateSelectedState:v6 animated:v5];
}

- (void)colorSliderVariationChanged:(double)a3 forItem:(id)a4
{
  v6 = a4;
  [(AVTAvatarAttributeEditorSectionColorController *)self updateSectionItem:v6 withVariation:a3];
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v7 attributeEditorSectionController:self didUpdateSectionItem:v6];
}

- (void)colorSliderDidFinishChangingVariation:(double)a3 forItem:(id)a4
{
  v6 = a4;
  [(AVTAvatarAttributeEditorSectionColorController *)self updateSectionItem:v6 withVariation:a3];
  v7 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v7 attributeEditorSectionController:self didSelectSectionItem:v6];
}

- (void)updateSectionItem:(id)a3 withVariation:(double)a4
{
  v6 = MEMORY[0x1E696AC88];
  v7 = a3;
  v21 = [v6 indexPathForItem:-[AVTAvatarAttributeEditorSectionColorController selectedIndex](self inSection:{"selectedIndex"), 0}];
  v8 = [(AVTAvatarAttributeEditorSectionColorController *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v21];

  v10 = [v7 color];
  v11 = [v10 baseColorPreset];
  *&v12 = a4;
  v13 = [v11 colorPresetWithVariation:v12];

  v14 = [(AVTAvatarAttributeEditorSectionColorController *)self dataSource];
  v15 = [v14 colorSection];
  v16 = [v15 colorVariationStore];
  v17 = [v7 color];
  [v16 saveColorPreset:v13 forColor:v17];

  v18 = [v9 valueView];
  v19 = [v18 imageLayer];
  [(AVTAvatarAttributeEditorSectionColorController *)self updateCellLayer:v19 withColorItem:v7 withColorPreset:v13];

  v20 = [(AVTAvatarAttributeEditorSectionColorController *)self sliderContainerView];
  [v20 updateSliderWithColorPreset:v13 animated:0];
}

- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v6 attributeEditorSectionController:self didSelectSectionItem:v5];
}

- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v6 attributeEditorSectionController:self didUpdateSectionItem:v5];
}

- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v6 attributeEditorSectionController:self didDeleteSectionItems:v5];
}

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3
{
  v4 = [(AVTAvatarAttributeEditorSectionColorController *)self delegate];
  [v4 attributeEditorSectionControllerNeedsLayoutUpdate:self];

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