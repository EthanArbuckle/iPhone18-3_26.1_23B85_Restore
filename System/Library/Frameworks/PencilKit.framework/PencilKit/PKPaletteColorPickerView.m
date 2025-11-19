@interface PKPaletteColorPickerView
+ (id)collectionViewFlowLayoutWithItemSize:(CGSize)a3 minimumLineSpacing:(double)a4 minimumInterItemSpacing:(double)a5;
- (BOOL)_colorPickerAllowsColorSelection;
- (BOOL)_isExtendedColorPickerVisible;
- (BOOL)_shouldDisplayExtendedColorPickerPopoverFromColorSwatch:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)_popoverPresentingSourceRect;
- (CGSize)intrinsicContentSize;
- (CGSize)swatchSize;
- (PKPaletteColorPickerView)initWithFrame:(CGRect)a3;
- (PKPalettePopoverPresenting)delegate;
- (UIColor)selectedColor;
- (id)_popoverPresentingSourceView;
- (id)_selectedSwatch;
- (id)_swatchColorsForTraitCollection:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)colorAtPoint:(CGPoint)a3;
- (id)swatchWithColor:(id)a3;
- (id)swatchWithIdentifier:(id)a3;
- (id)traitCollectionWithCurrentInterfaceStyle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_multicolorSwatchIndexForEdge:(unint64_t)a3;
- (void)_enableOrDisableLongPressGesture;
- (void)_rebuildSwatches;
- (void)_reloadSwatchColorsForTraitCollection:(id)a3;
- (void)_setMulticolorSwatchColor:(id)a3;
- (void)_showExtendedColorPicker;
- (void)_swatchLongPressHandler:(id)a3;
- (void)_updateUI;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)colorPickerControllerDidChangeSelectedColor:(id)a3 isContinuousColorSelection:(BOOL)a4;
- (void)dealloc;
- (void)dismissEyeDropper;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)reloadColorsForCurrentColorPickerMode;
- (void)setColorMaximumLinearExposure:(double)a3;
- (void)setColorPickerMode:(int64_t)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
- (void)setSelectedColor:(id)a3;
- (void)setSupportsAlpha:(BOOL)a3;
- (void)setSwatchColors:(id)a3;
- (void)toggleColorSelectionPopover;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePopoverUI;
@end

@implementation PKPaletteColorPickerView

+ (id)collectionViewFlowLayoutWithItemSize:(CGSize)a3 minimumLineSpacing:(double)a4 minimumInterItemSpacing:(double)a5
{
  height = a3.height;
  width = a3.width;
  v9 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v9 setItemSize:{width, height}];
  [v9 setMinimumLineSpacing:a4];
  [v9 setMinimumInteritemSpacing:a5];

  return v9;
}

- (PKPaletteColorPickerView)initWithFrame:(CGRect)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PKPaletteColorPickerView;
  v3 = [(PKPaletteColorPickerView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v3->_selectedColorAlpha = 1.0;
    v5 = objc_opt_class();
    [(PKPaletteColorPickerView *)v4 swatchSize];
    v35 = [v5 collectionViewFlowLayoutWithItemSize:? minimumLineSpacing:? minimumInterItemSpacing:?];
    v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v7 = [v6 initWithFrame:v35 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    collectionView = v4->_collectionView;
    v4->_collectionView = v7;

    [(UICollectionView *)v4->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v4->_collectionView setBackgroundColor:v9];

    [(UICollectionView *)v4->_collectionView setContentInsetAdjustmentBehavior:2];
    [(UICollectionView *)v4->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v4->_collectionView setShowsHorizontalScrollIndicator:0];
    v4->_colorMaximumLinearExposure = 1.0;
    v10 = v4->_collectionView;
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(UICollectionView *)v10 registerClass:v11 forCellWithReuseIdentifier:v13];

    [(UICollectionView *)v4->_collectionView setDataSource:v4];
    [(UICollectionView *)v4->_collectionView setDelegate:v4];
    [(UICollectionView *)v4->_collectionView setClipsToBounds:0];
    [(UICollectionView *)v4->_collectionView setScrollEnabled:0];
    [(UICollectionView *)v4->_collectionView setDelaysContentTouches:0];
    [(PKPaletteColorPickerView *)v4 addSubview:v4->_collectionView];
    v29 = MEMORY[0x1E696ACD8];
    v34 = [(UICollectionView *)v4->_collectionView topAnchor];
    v33 = [(PKPaletteColorPickerView *)v4 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v31 = [(UICollectionView *)v4->_collectionView bottomAnchor];
    v30 = [(PKPaletteColorPickerView *)v4 bottomAnchor];
    v14 = [v31 constraintEqualToAnchor:v30];
    v37[1] = v14;
    v15 = [(UICollectionView *)v4->_collectionView leadingAnchor];
    v16 = [(PKPaletteColorPickerView *)v4 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v37[2] = v17;
    v18 = [(UICollectionView *)v4->_collectionView trailingAnchor];
    v19 = [(PKPaletteColorPickerView *)v4 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v37[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v29 activateConstraints:v21];

    v22 = [(PKPaletteColorPickerView *)v4 traitCollection];
    v23 = [(PKPaletteColorPickerView *)v4 _swatchColorsForTraitCollection:v22];
    [(PKPaletteColorPickerView *)v4 setSwatchColors:v23];

    v24 = objc_alloc_init(MEMORY[0x1E69DCC48]);
    [(UILongPressGestureRecognizer *)v24 addTarget:v4 action:sel__swatchLongPressHandler_];
    [(UILongPressGestureRecognizer *)v24 setDelegate:v4];
    [(UICollectionView *)v4->_collectionView addGestureRecognizer:v24];
    longPressGestureRecognizer = v4->_longPressGestureRecognizer;
    v4->_longPressGestureRecognizer = v24;
    v26 = v24;

    [(PKPaletteColorPickerView *)v4 _enableOrDisableLongPressGesture];
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v4 selector:sel_didChangePreferredContentSize_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PKPaletteColorPickerView;
  [(PKPaletteColorPickerView *)&v4 dealloc];
}

- (void)setColorMaximumLinearExposure:(double)a3
{
  if (self->_colorMaximumLinearExposure != a3)
  {
    self->_colorMaximumLinearExposure = a3;
    v4 = [(PKPaletteColorPickerView *)self colorPickerController];
    [v4 setColorMaximumLinearExposure:a3];
  }
}

- (void)_enableOrDisableLongPressGesture
{
  v3 = [MEMORY[0x1E69DC8C0] system];
  category = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteColorPickerView *)self addInteraction:v4];
    longPressGestureRecognizer = self->_longPressGestureRecognizer;
    v6 = [v4 gestureRecognizerForExclusionRelationship];
    [(UILongPressGestureRecognizer *)longPressGestureRecognizer requireGestureRecognizerToFail:v6];
  }
}

- (id)_swatchColorsForTraitCollection:(id)a3
{
  v4 = a3;
  if (qword_1EC2913F8 != -1)
  {
    dispatch_once(&qword_1EC2913F8, &__block_literal_global_65);
  }

  v5 = [(PKPaletteColorPickerView *)self window];
  v6 = [v5 windowScene];
  v7 = PKUseCompactSize(v4, v6);

  v8 = _MergedGlobals_21;
  if (!v7)
  {
    v9 = [(PKPaletteColorPickerView *)self edgeLocation];
    v10 = v9 == 2 || v9 == 8;
    v11 = 1;
    if (v10)
    {
      v11 = 2;
    }

    v8 = &_MergedGlobals_21[v11];
  }

  v12 = *v8;
  v13 = *v8;

  return v12;
}

void __60__PKPaletteColorPickerView__swatchColorsForTraitCollection___block_invoke()
{
  v25[5] = *MEMORY[0x1E69E9840];
  if (!_MergedGlobals_21[0])
  {
    _MergedGlobals_21[0] = MEMORY[0x1E695E0F0];
  }

  if (!qword_1EC2913E8)
  {
    v22 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v0 = [PKSwatchColor swatchColor:v22 identifier:@"black"];
    v25[0] = v0;
    v1 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
    v2 = [PKSwatchColor swatchColor:v1 identifier:@"blue"];
    v25[1] = v2;
    v3 = [MEMORY[0x1E69DC888] colorWithRed:0.325490196 green:0.843137255 blue:0.411764706 alpha:1.0];
    v4 = [PKSwatchColor swatchColor:v3 identifier:@"green"];
    v25[2] = v4;
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.815686275 blue:0.188235294 alpha:1.0];
    v6 = [PKSwatchColor swatchColor:v5 identifier:@"yellow"];
    v25[3] = v6;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.988235294 green:0.192156863 blue:0.258823529 alpha:1.0];
    v8 = [PKSwatchColor swatchColor:v7 identifier:@"red"];
    v25[4] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
    v10 = qword_1EC2913E8;
    qword_1EC2913E8 = v9;
  }

  if (!qword_1EC2913F0)
  {
    v23 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.815686275 blue:0.188235294 alpha:1.0];
    v11 = [PKSwatchColor swatchColor:v23 identifier:@"yellow"];
    v24[0] = v11;
    v12 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v13 = [PKSwatchColor swatchColor:v12 identifier:@"black"];
    v24[1] = v13;
    v14 = [MEMORY[0x1E69DC888] colorWithRed:0.988235294 green:0.192156863 blue:0.258823529 alpha:1.0];
    v15 = [PKSwatchColor swatchColor:v14 identifier:@"red"];
    v24[2] = v15;
    v16 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
    v17 = [PKSwatchColor swatchColor:v16 identifier:@"blue"];
    v24[3] = v17;
    v18 = [MEMORY[0x1E69DC888] colorWithRed:0.325490196 green:0.843137255 blue:0.411764706 alpha:1.0];
    v19 = [PKSwatchColor swatchColor:v18 identifier:@"green"];
    v24[4] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
    v21 = qword_1EC2913F0;
    qword_1EC2913F0 = v20;
  }
}

- (void)dismissEyeDropper
{
  v3 = [(PKPaletteColorPickerView *)self colorPickerController];
  [v3 dismissEyeDropper];

  v4 = [(PKPaletteColorPickerView *)self colorPickerController];
  v5 = [v4 viewController];
  [v5 dismissViewControllerAnimated:0 completion:0];

  [(PKPaletteColorPickerView *)self setColorPickerController:0];
}

- (void)setSwatchColors:(id)a3
{
  if (self->_swatchColors != a3)
  {
    v4 = [a3 copy];
    swatchColors = self->_swatchColors;
    self->_swatchColors = v4;

    [(PKPaletteColorPickerView *)self _rebuildSwatches];
  }
}

- (void)_rebuildSwatches
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(PKPaletteColorPickerView *)self swatchColors];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_alloc_init(PKPaletteColorSwatch);
        [(PKPaletteColorSwatch *)v10 setSwatchColor:v9];
        [(PKPaletteColorSwatch *)v10 setColorUserInterfaceStyle:?];
        [v3 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(PKPaletteMulticolorSwatch);
  [(PKPaletteColorPickerView *)self setMulticolorSwatch:v11];

  v12 = [(PKPaletteColorPickerView *)self colorUserInterfaceStyle];
  v13 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [(PKPaletteColorSwatch *)v13 setColorUserInterfaceStyle:v12];

  v14 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [v3 addObject:v14];

  [(PKPaletteColorPickerView *)self setSwatches:v3];
  [(PKPaletteColorPickerView *)self _updateUI];
}

- (void)_updateUI
{
  v3 = [(PKPaletteColorPickerView *)self traitCollection];
  v4 = [(PKPaletteColorPickerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (!v6)
  {
    v7 = [(PKPaletteColorPickerView *)self swatches];
    v8 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    v9 = [v7 indexOfObject:v8];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(PKPaletteColorPickerView *)self _multicolorSwatchIndexForEdge:[(PKPaletteColorPickerView *)self edgeLocation]];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
        if (v9 != v10)
        {
          v12 = [(PKPaletteColorPickerView *)self swatches];
          v13 = [v12 mutableCopy];

          [v13 removeObjectAtIndex:v9];
          v14 = [(PKPaletteColorPickerView *)self multicolorSwatch];
          [v13 insertObject:v14 atIndex:v11];

          [(PKPaletteColorPickerView *)self setSwatches:v13];
        }
      }
    }
  }

  v15 = [(PKPaletteColorPickerView *)self collectionView];
  v19 = [v15 collectionViewLayout];

  [(PKPaletteColorPickerView *)self swatchSize];
  [v19 setItemSize:?];
  [(PKPaletteColorPickerView *)self scalingFactor];
  [v19 setMinimumLineSpacing:floor(v16 * 12.0)];
  [(PKPaletteColorPickerView *)self scalingFactor];
  [v19 setMinimumInteritemSpacing:floor(v17 * 12.0)];
  v18 = [(PKPaletteColorPickerView *)self collectionView];
  [v18 reloadData];
}

- (unint64_t)_multicolorSwatchIndexForEdge:(unint64_t)a3
{
  v5 = [(PKPaletteColorPickerView *)self swatches];
  v6 = [v5 count];

  if (v6 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(PKPaletteColorPickerView *)self swatches];
  v9 = [v8 count];

  if (a3 != 2)
  {
    return v9 - 1;
  }

  v10 = [(PKPaletteColorPickerView *)self swatches];
  v7 = [v10 count] - 2;

  return v7;
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteColorPickerView *)self _updateUI];

    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)swatchSize
{
  v3 = [(PKPaletteColorPickerView *)self traitCollection];
  v4 = [(PKPaletteColorPickerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (v6)
  {

    v7 = PKPaletteColorSwatchSize(1);
  }

  else
  {
    v9 = PKPaletteColorSwatchSize(0);
    v11 = v10;
    [(PKPaletteColorPickerView *)self scalingFactor];
    v13 = v11 * v12;
    v7 = floor(v9 * v12);
    v8 = floor(v13);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_swatchLongPressHandler:(id)a3
{
  v29 = a3;
  v4 = [v29 state];
  switch(v4)
  {
    case 3:
      v26 = [(PKPaletteColorPickerView *)self colorPickerController];
      v27 = [v26 viewController];
      [v27 dismissViewControllerAnimated:1 completion:0];

      v28 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKPaletteColorPickerView *)self analyticsColorChangeCount];
      [PKStatisticsManager recordColorsChangedBeforeChosen:v28];

      v24 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v24 recordColorPanelInvoked:?];
      goto LABEL_8;
    case 2:
      v17 = [(PKPaletteColorPickerView *)self colorPickerController];
      v18 = [v17 viewController];
      v19 = [v18 view];
      [v29 locationInView:v19];
      v21 = v20;
      v23 = v22;

      v24 = [(PKPaletteColorPickerView *)self colorPickerController];
      v25 = [v24 colorPicker];
      [v25 setSelectedColorForPoint:{v21, v23}];

LABEL_8:
      break;
    case 1:
      v5 = [(PKPaletteColorPickerView *)self collectionView];
      [v29 locationInView:v5];
      v7 = v6;
      v9 = v8;

      v10 = [(PKPaletteColorPickerView *)self collectionView];
      v11 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [v10 convertPoint:v11 toView:{v7, v9}];
      v13 = v12;
      v15 = v14;

      v16 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      LODWORD(v11) = [v16 pointInside:0 withEvent:{v13, v15}];

      if (v11)
      {
        [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
      }

      break;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = [a4 view];
  LOBYTE(self) = [v5 isDescendantOfView:self];

  return self;
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    v5 = [(PKPaletteColorPickerView *)self traitCollection];
    [(PKPaletteColorPickerView *)self _reloadSwatchColorsForTraitCollection:v5];

    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];

    [(PKPaletteColorPickerView *)self _updateUI];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKPaletteColorPickerView *)self traitCollection];
  v4 = [(PKPaletteColorPickerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (v6)
  {
    v7 = [(PKPaletteColorPickerView *)self colorPickerMode];
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        v20 = PKPaletteColorSwatchSize(1);
        v10 = v21;
        v22 = [(PKPaletteColorPickerView *)self swatches];
        v23 = v20 * [v22 count];

        v24 = [(PKPaletteColorPickerView *)self swatches];
        v25 = ([v24 count] - 1) * 12.0;

        v8 = v23 + v25;
        goto LABEL_13;
      }

      if (v7)
      {
        v8 = *MEMORY[0x1E695F060];
        v10 = *(MEMORY[0x1E695F060] + 8);
        goto LABEL_13;
      }
    }

    v8 = PKPaletteColorSwatchSize(1);
    v10 = v9;
  }

  else
  {
    v11 = [(PKPaletteColorPickerView *)self edgeLocation];
    v13 = v11 == 2 || v11 == 8;
    v14 = PKPaletteColorSwatchesSize(v13);
    v16 = v15;
    [(PKPaletteColorPickerView *)self scalingFactor];
    v18 = v16 * v17;
    v8 = ceil(v14 * v17);
    v10 = ceil(v18);
  }

LABEL_13:
  v19 = v10;
  result.height = v19;
  result.width = v8;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PKPaletteColorPickerView *)self swatches:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v49 = v6;
  v10 = [v6 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  v11 = [v10 contentView];
  v12 = [v11 subviews];
  [v12 makeObjectsPerformSelector:sel_removeFromSuperview];

  v13 = [(PKPaletteColorPickerView *)self swatches];
  v48 = v7;
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setUserInteractionEnabled:0];
  v15 = [v10 contentView];
  [v15 addSubview:v14];

  [v14 hitTestInsets];
  [v10 setHitTestInsets:?];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = [v10 interactions];
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v50 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 removeInteraction:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v18);
  }

  if (v14)
  {
    v22 = v14[54];
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v10 addInteraction:v23];

  v24 = MEMORY[0x1E69DD250];
  v25 = [v14 swatchColor];
  v26 = [v25 color];
  v27 = [v24 pk_hoverAttributedStringForColor:v26];
  v28 = [v10 contentView];
  [v28 pk_setHoverLabelAttributedString:v27];

  v40 = MEMORY[0x1E696ACD8];
  v46 = [v14 widthAnchor];
  v47 = [v10 contentView];
  v45 = [v47 widthAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v54[0] = v44;
  v42 = [v14 heightAnchor];
  v43 = [v10 contentView];
  v41 = [v43 heightAnchor];
  v39 = [v42 constraintEqualToAnchor:v41];
  v54[1] = v39;
  v38 = [v14 centerXAnchor];
  v29 = [v10 contentView];
  v30 = [v29 centerXAnchor];
  v31 = [v38 constraintEqualToAnchor:v30];
  v54[2] = v31;
  v32 = [v14 centerYAnchor];
  v33 = [v10 contentView];
  v34 = [v33 centerYAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v54[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  [v40 activateConstraints:v36];

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PKPaletteColorPickerView *)self swatches];
  v7 = [v5 row];

  v20 = [v6 objectAtIndexedSubscript:v7];

  v8 = [(PKPaletteColorPickerView *)self multicolorSwatch];

  if ([(PKPaletteColorPickerView *)self _shouldDisplayExtendedColorPickerPopoverFromColorSwatch:v20])
  {
    [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
    v9 = [(PKPaletteColorPickerView *)self colorPickerController];
    v10 = [v9 viewController];
    v11 = [v10 isBeingDismissed];

    if (v11)
    {
      goto LABEL_12;
    }

    v12 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v12 recordColorPanelInvoked:?];
  }

  else
  {
    v13 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    v14 = [v13 isSelected];

    v15 = v20;
    if (v8 != v20 || (v14 & 1) != 0)
    {
      if (v14)
      {
        v18 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        [v18 setSelected:0];

        v15 = v20;
      }

      v17 = [v15 swatchColor];
      v19 = [v17 color];
      [(PKPaletteColorPickerView *)self setSelectedColor:v19];
    }

    else
    {
      v16 = [(PKPaletteColorPickerView *)self _selectedSwatch];
      [v16 setSelected:0];

      v17 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [v17 setSelected:1];
    }

    v12 = [(PKPaletteColorPickerView *)self delegate];
    [v12 colorPickerDidChangeSelectedColor:self isFromExtendedColorPicker:0 isContinuousColorSelection:0];
  }

LABEL_12:
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PKPaletteColorPickerView *)self swatches];
  v7 = [v5 row];

  v9 = [v6 objectAtIndexedSubscript:v7];

  v8 = v9;
  if (v9 && (v9[409] & 1) == 0)
  {
    v9[409] = 1;
    [(PKPaletteColorSwatch *)v9 _updateSelectionHighlight];
    v8 = v9;
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PKPaletteColorPickerView *)self swatches];
  v7 = [v5 row];

  v9 = [v6 objectAtIndexedSubscript:v7];

  v8 = v9;
  if (v9 && v9[409])
  {
    v9[409] = 0;
    [(PKPaletteColorSwatch *)v9 _updateSelectionHighlight];
    v8 = v9;
  }
}

- (BOOL)_shouldDisplayExtendedColorPickerPopoverFromColorSwatch:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteColorPickerView *)self multicolorSwatch];

  v6 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  v7 = [v6 swatchColor];

  v8 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  v9 = [v8 isSelected];

  v10 = v9 | ![(PKPaletteColorPickerView *)self _colorPickerAllowsColorSelection];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (v5 != v4)
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_colorPickerAllowsColorSelection
{
  v3 = [(PKPaletteColorPickerView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(PKPaletteColorPickerView *)self delegate];
  v6 = [v5 colorPickerShouldDisplayColorSelection:self];

  return v6;
}

- (UIColor)selectedColor
{
  v2 = [(PKPaletteColorPickerView *)self _selectedSwatch];
  v3 = [v2 swatchColor];
  v4 = [v3 color];

  return v4;
}

- (void)setSelectedColor:(id)a3
{
  v18 = a3;
  v4 = [(PKPaletteColorPickerView *)self selectedColor];
  if (v4 == v18)
  {
LABEL_13:

LABEL_14:
    v9 = v18;
    goto LABEL_15;
  }

  v5 = [(PKPaletteColorPickerView *)self selectedColor];
  if (!v18 || !v5)
  {

    v9 = v18;
    if (!v18)
    {
      [(PKPaletteColorPickerView *)self setSelectedColorAlpha:1.0];
      v17 = [(PKPaletteColorPickerView *)self _selectedSwatch];
      [v17 setSelected:0];

      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:0];
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v6 = [(PKPaletteColorPickerView *)self selectedColor];
  v7 = [v6 CGColor];
  v8 = v18;
  LOBYTE(v7) = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(v7, [v18 CGColor], 0, 0.000000999999997);

  v9 = v18;
  if ((v7 & 1) == 0)
  {
LABEL_7:
    [v9 alphaComponent];
    [(PKPaletteColorPickerView *)self setSelectedColorAlpha:?];
    v10 = [(PKPaletteColorPickerView *)self _selectedSwatch];
    [v10 setSelected:0];

    v11 = [v18 colorWithAlphaComponent:1.0];
    v4 = [(PKPaletteColorPickerView *)self swatchWithColor:v11];

    if (v4)
    {
      v12 = [(PKPaletteColorPickerView *)self multicolorSwatch];

      if (v4 == v12)
      {
        [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:v18];
        v13 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        [v13 setSelected:1];
      }
    }

    else
    {
      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:v18];
      v14 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [v14 setSelected:1];

      v4 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    }

    [v4 setSelected:1];
    v15 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    v16 = [v15 isSelected];

    if ((v16 & 1) == 0)
    {
      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:0];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)setSupportsAlpha:(BOOL)a3
{
  v3 = a3;
  self->_supportsAlpha = a3;
  v5 = [(PKPaletteColorPickerView *)self colorPickerController];
  v4 = [v5 colorPicker];
  [v4 setSupportsAlpha:v3];
}

- (id)_selectedSwatch
{
  v3 = [(PKPaletteColorPickerView *)self swatches];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_42_0];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PKPaletteColorPickerView *)self swatches];
    v5 = [v6 objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)swatchWithColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaletteColorPickerView *)self swatches];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PKPaletteColorPickerView_swatchWithColor___block_invoke;
    v10[3] = &unk_1E82DAE08;
    v11 = v4;
    v6 = [v5 indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(PKPaletteColorPickerView *)self swatches];
      v7 = [v8 objectAtIndexedSubscript:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __44__PKPaletteColorPickerView_swatchWithColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 swatchColor];
  v4 = [v3 color];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([v4 CGColor]);
  v9 = [v7 CGColor];

  v10 = DKUCGColorCreateConvertedToSRGB(v9);
  IsEqualToColorIgnoringOpacityWithTolerance = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(ConvertedToSRGB, v10, 0, 0.000000999999997);
  CGColorRelease(ConvertedToSRGB);
  CGColorRelease(v10);

  return IsEqualToColorIgnoringOpacityWithTolerance;
}

- (id)swatchWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaletteColorPickerView *)self swatches];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PKPaletteColorPickerView_swatchWithIdentifier___block_invoke;
    v10[3] = &unk_1E82DAE08;
    v11 = v4;
    v6 = [v5 indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(PKPaletteColorPickerView *)self swatches];
      v7 = [v8 objectAtIndexedSubscript:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __49__PKPaletteColorPickerView_swatchWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 swatchColor];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)colorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKPaletteColorPickerView *)self collectionView];
  [(PKPaletteColorPickerView *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(PKPaletteColorPickerView *)self collectionView];
  v12 = [v11 indexPathForItemAtPoint:{v8, v10}];

  if (v12)
  {
    v13 = [(PKPaletteColorPickerView *)self swatches];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];

    v15 = [v14 swatchColor];
    v16 = [v15 color];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if ([a4 userInterfaceIdiom])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)_showExtendedColorPicker
{
  v3 = [(PKPaletteColorPickerView *)self delegate];
  v4 = [v3 palettePopoverPresentingController];

  if (v4)
  {
    v5 = [(PKPaletteColorPickerView *)self colorPickerController];
    v6 = [v5 viewController];
    if (!v6)
    {

      goto LABEL_7;
    }

    v7 = v6;
    if ([v6 isBeingPresented])
    {

      goto LABEL_22;
    }

    v8 = [v7 isBeingDismissed];

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v5 = [(PKPaletteColorPickerView *)self _popoverPresentingSourceView];
      if (!v5)
      {
        v64 = os_log_create("com.apple.pencilkit", "PKPalette");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v64, OS_LOG_TYPE_FAULT, "sourceView shouldn't be nil when presenting a popover", buf, 2u);
        }

        goto LABEL_23;
      }

      v9 = [(PKPaletteColorPickerView *)self colorPickerController];

      if (!v9)
      {
        v10 = +[PKPaletteColorPickerControllerFactory makeColorPickerController];
        [(PKPaletteColorPickerView *)self setColorPickerController:v10];
      }

      [(PKPaletteColorPickerView *)self colorMaximumLinearExposure];
      v12 = v11;
      v13 = [(PKPaletteColorPickerView *)self colorPickerController];
      [v13 setColorMaximumLinearExposure:v12];

      v14 = [(PKPaletteColorPickerView *)self colorUserInterfaceStyle];
      v15 = [(PKPaletteColorPickerView *)self colorPickerController];
      v16 = [v15 colorPicker];
      [v16 setColorUserInterfaceStyle:v14];

      v17 = [(PKPaletteColorPickerView *)self supportsAlpha];
      v18 = [(PKPaletteColorPickerView *)self colorPickerController];
      v19 = [v18 colorPicker];
      [v19 setSupportsAlpha:v17];

      v20 = [(PKPaletteColorPickerView *)self colorPickerController];
      v21 = [v20 viewController];
      [v21 setModalPresentationStyle:7];

      v22 = [(PKPaletteColorPickerView *)self colorPickerController];
      v23 = [v22 viewController];
      v24 = [v23 presentationController];
      [v24 setDelegate:self];

      v25 = [(PKPaletteColorPickerView *)self delegate];
      v26 = [v25 palettePopoverPermittedArrowDirections];
      v27 = [(PKPaletteColorPickerView *)self colorPickerController];
      v28 = [v27 viewController];
      v29 = [v28 popoverPresentationController];
      [v29 setPermittedArrowDirections:v26];

      if (_UISolariumEnabled())
      {
        v30 = [(PKPaletteColorPickerView *)self colorPickerController];
        v31 = [v30 viewController];
        v32 = [v31 popoverPresentationController];
        [v32 _setShouldHideArrow:1];
      }

      [(PKPaletteColorPickerView *)self _popoverPresentingSourceRect];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = [(PKPaletteColorPickerView *)self colorPickerController];
      v42 = [v41 viewController];
      v43 = [v42 popoverPresentationController];
      [v43 setSourceRect:{v34, v36, v38, v40}];

      v44 = [(PKPaletteColorPickerView *)self colorPickerController];
      v45 = [v44 viewController];
      v46 = [v45 popoverPresentationController];
      [v46 setSourceView:v5];

      v47 = [(PKPaletteColorPickerView *)self colorPickerController];
      v48 = [v47 viewController];
      v49 = [v48 popoverPresentationController];
      [v49 _setShouldDisableInteractionDuringTransitions:0];

      v50 = [(PKPaletteColorPickerView *)self delegate];
      v51 = [v50 palettePopoverPassthroughViews];
      v52 = [(PKPaletteColorPickerView *)self colorPickerController];
      v53 = [v52 viewController];
      v54 = [v53 popoverPresentationController];
      [v54 setPassthroughViews:v51];

      v55 = [(PKPaletteColorPickerView *)self colorPickerController];
      v56 = [v55 viewController];
      v57 = [v56 popoverPresentationController];
      [v57 _setIgnoresKeyboardNotifications:1];

      [(PKPaletteColorPickerView *)self updatePopoverUI];
      v58 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      LODWORD(v56) = [v58 isSelected];

      if (v56)
      {
        v59 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        v60 = [v59 swatchColor];
        v61 = [v60 color];
        v62 = [(PKPaletteColorPickerView *)self colorPickerController];
        v63 = [v62 colorPicker];
        [v63 setSelectedColor:v61];
      }

      else
      {
        v65 = [(PKPaletteColorPickerView *)self _selectedSwatch];
        v66 = [v65 swatchColor];
        v59 = [v66 color];

        if ([(PKPaletteColorPickerView *)self supportsAlpha])
        {
          [(PKPaletteColorPickerView *)self selectedColorAlpha];
          v67 = [v59 colorWithAlphaComponent:?];

          v59 = v67;
        }

        v60 = [(PKPaletteColorPickerView *)self colorPickerController];
        v61 = [v60 colorPicker];
        [v61 setSelectedColor:v59];
      }

      v68 = [(PKPaletteColorPickerView *)self delegate];
      v69 = [v68 shouldPalettePresentPopover];

      if (!v69)
      {
LABEL_23:

        goto LABEL_24;
      }

      v70 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v70 recordColorPanelInvoked:?];

      [(PKPaletteColorPickerView *)self setAnalyticsColorChangeCount:0];
      v71 = [(PKPaletteColorPickerView *)self colorPickerController];
      v72 = [v71 colorPicker];
      v73 = [v72 selectedColor];
      [(PKPaletteColorPickerView *)self setAnalyticsInitialColor:v73];

      v7 = [(PKPaletteColorPickerView *)self colorPickerController];
      v74 = [v7 viewController];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __52__PKPaletteColorPickerView__showExtendedColorPicker__block_invoke;
      v75[3] = &unk_1E82D7148;
      v75[4] = self;
      [v4 presentViewController:v74 animated:1 completion:v75];

LABEL_22:
      goto LABEL_23;
    }
  }

LABEL_24:
}

void __52__PKPaletteColorPickerView__showExtendedColorPicker__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 colorPickerController];
  [v2 setDelegate:v1];
}

- (BOOL)_isExtendedColorPickerVisible
{
  v3 = [(PKPaletteColorPickerView *)self colorPickerController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PKPaletteColorPickerView *)self delegate];
  v5 = [v4 palettePopoverPresentingController];

  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [v5 presentedViewController];
    v8 = [(PKPaletteColorPickerView *)self colorPickerController];
    v9 = [v8 viewController];
    v10 = v7 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)_popoverPresentingSourceRect
{
  v3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [v3 bounds];
  v58 = CGRectInset(v57, -5.0, -5.0);
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;

  if (_UISolariumEnabled())
  {
    v8 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(PKPaletteColorPickerView *)self delegate];
    v18 = [v17 colorPickerViewSourceViewForPopoverPresentation:self];

    v19 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    v20 = [v19 superview];
    [v18 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v18 superview];
    [v20 convertRect:v29 fromView:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [(PKPaletteColorPickerView *)self edgeLocation];
    if (v38 == 8)
    {
      v39 = v31;
    }

    else
    {
      v39 = v10;
    }

    if (v38 == 8)
    {
      v40 = v12;
    }

    else
    {
      v40 = v33;
    }

    if (v38 == 8)
    {
      v41 = v35;
    }

    else
    {
      v41 = v14;
    }

    if (v38 == 8)
    {
      v42 = v16;
    }

    else
    {
      v42 = v37;
    }

    if (v38 == 2)
    {
      v39 = v31;
      v40 = v12;
      v41 = v35;
      v42 = v16;
    }

    v59 = CGRectInset(*&v39, -5.0, -5.0);
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
  }

  v43 = [(PKPaletteColorPickerView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_21;
  }

  v44 = [(PKPaletteColorPickerView *)self delegate];
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    v43 = [(PKPaletteColorPickerView *)self delegate];
    if ([v43 wantsCustomPalettePopoverPresentationSource])
    {
      v46 = [(PKPaletteColorPickerView *)self delegate];
      v47 = [(PKPaletteColorPickerView *)self colorPickerController];
      v48 = [v47 viewController];
      [v46 palettePopoverSourceRectToPresentViewController:v48];
      x = v49;
      y = v50;
      width = v51;
      height = v52;
    }

LABEL_21:
  }

  v53 = x;
  v54 = y;
  v55 = width;
  v56 = height;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (id)_popoverPresentingSourceView
{
  v3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  v4 = [(PKPaletteColorPickerView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(PKPaletteColorPickerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKPaletteColorPickerView *)self delegate];
    v8 = [v7 wantsCustomPalettePopoverPresentationSource];

    if (v8)
    {
      v9 = [(PKPaletteColorPickerView *)self delegate];
      v10 = [v9 palettePopoverSourceView];

      if (v10)
      {
        v4 = v10;

        v3 = v4;
      }

      else
      {
        v4 = 0;
      }

LABEL_7:
    }
  }

  return v3;
}

- (void)updatePopoverUI
{
  v5 = [(PKPaletteColorPickerView *)self delegate];
  v3 = [(PKPaletteColorPickerView *)self colorPickerController];
  v4 = [v3 viewController];
  [v5 updatePalettePopover:v4];
}

- (void)colorPickerControllerDidChangeSelectedColor:(id)a3 isContinuousColorSelection:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 colorPicker];
  v10 = [v6 selectedColor];

  v7 = [(PKPaletteColorPickerView *)self _selectedSwatch];
  [v7 setSelected:0];

  v8 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [v8 setSelected:1];

  [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:v10];
  v9 = [(PKPaletteColorPickerView *)self delegate];
  [v9 colorPickerDidChangeSelectedColor:self isFromExtendedColorPicker:1 isContinuousColorSelection:v4];

  [(PKPaletteColorPickerView *)self setAnalyticsColorChangeCount:[(PKPaletteColorPickerView *)self analyticsColorChangeCount]+ 1];
}

- (void)_setMulticolorSwatchColor:(id)a3
{
  if (a3)
  {
    v5 = [PKSwatchColor swatchColor:a3 identifier:@"multi"];
    v4 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [v4 setSwatchColor:v5];
  }

  else
  {
    v5 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [v5 setSwatchColor:0];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v18 = a3;
  v4 = [(PKPaletteColorPickerView *)self colorPickerController];

  if (v4)
  {
    v5 = [(PKPaletteColorPickerView *)self colorPickerController];
    v6 = [v5 viewController];
    if (v6)
    {
      v7 = v6;
      if ([v6 isBeingPresented])
      {

LABEL_11:
        goto LABEL_12;
      }

      v9 = [v7 isBeingDismissed];

      if (v9)
      {
LABEL_12:
        v16 = [(PKPaletteColorPickerView *)self colorPickerController];
        v17 = [v16 viewController];
        [v17 dismissViewControllerAnimated:1 completion:v18];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKPaletteColorPickerView *)self analyticsColorChangeCount];
    [PKStatisticsManager recordColorsChangedBeforeChosen:v10];

    v11 = [(PKPaletteColorPickerView *)self analyticsInitialColor];
    v12 = [(PKPaletteColorPickerView *)self colorPickerController];
    v13 = [v12 colorPicker];
    v14 = [v13 selectedColor];
    v15 = [v11 isEqual:v14];

    if (v15)
    {
      v5 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v5 recordInkPickerNoOp:?];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = v18;
  if (!v18)
  {
    goto LABEL_14;
  }

  (*(v18 + 2))(v18);
LABEL_13:
  v8 = v18;
LABEL_14:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaletteColorPickerView;
  [(PKPaletteColorPickerView *)&v12 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(PKPaletteColorPickerView *)self traitCollection];
    v6 = [v5 verticalSizeClass];
    if (v6 == [v4 verticalSizeClass])
    {
      v7 = [(PKPaletteColorPickerView *)self traitCollection];
      v8 = [v7 horizontalSizeClass];
      if (v8 == [v4 horizontalSizeClass])
      {
        v9 = [(PKPaletteColorPickerView *)self traitCollection];
        v10 = [v9 userInterfaceStyle];
        v11 = [v4 userInterfaceStyle];

        if (v10 == v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    [(PKPaletteColorPickerView *)self updatePopoverUI];
    [(PKPaletteColorPickerView *)self reloadColorsForCurrentColorPickerMode];
    [(PKPaletteColorPickerView *)self _updateUI];
    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];
  }

LABEL_9:
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
    v5 = [(PKPaletteColorPickerView *)self colorPickerController];
    v6 = [v5 colorPicker];
    [v6 setColorUserInterfaceStyle:a3];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(PKPaletteColorPickerView *)self swatches];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(PKPaletteColorSwatch *)*(*(&v12 + 1) + 8 * i) setColorUserInterfaceStyle:a3];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_reloadSwatchColorsForTraitCollection:(id)a3
{
  v11 = a3;
  v4 = [(PKPaletteColorPickerView *)self selectedColor];
  v5 = [(PKPaletteColorPickerView *)self swatchWithColor:v4];
  v6 = [v5 swatchColor];
  v7 = [v6 identifier];

  if ([v7 isEqualToString:@"multi"])
  {

    v7 = 0;
  }

  v8 = [(PKPaletteColorPickerView *)self _swatchColorsForTraitCollection:v11];
  [(PKPaletteColorPickerView *)self setSwatchColors:v8];

  [(PKPaletteColorPickerView *)self _rebuildSwatches];
  v9 = [(PKPaletteColorPickerView *)self swatchWithIdentifier:v7];
  v10 = v9;
  if (v9)
  {
    [v9 setSelected:1];
  }

  else
  {
    [(PKPaletteColorPickerView *)self setSelectedColor:v4];
  }
}

- (void)toggleColorSelectionPopover
{
  v3 = [(PKPaletteColorPickerView *)self colorPickerController];
  v4 = [v3 viewController];
  if ([v4 isBeingPresented])
  {

LABEL_4:

    [(PKPaletteColorPickerView *)self dismissPalettePopoverWithCompletion:0];
    return;
  }

  v5 = [(PKPaletteColorPickerView *)self colorPickerController];
  v6 = [v5 viewController];
  v7 = [v6 presentingViewController];

  if (v7)
  {
    goto LABEL_4;
  }

  [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
}

- (void)setColorPickerMode:(int64_t)a3
{
  if (self->_colorPickerMode != a3)
  {
    self->_colorPickerMode = a3;
    [(PKPaletteColorPickerView *)self reloadColorsForCurrentColorPickerMode];

    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];
  }
}

- (void)reloadColorsForCurrentColorPickerMode
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteColorPickerView *)self colorPickerMode]== 1)
  {
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:2];
    v4 = MEMORY[0x1E69DD1B8];
    v12[0] = v3;
    v5 = [(PKPaletteColorPickerView *)self traitCollectionWithCurrentInterfaceStyle];
    v12[1] = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v12;
LABEL_5:
    v8 = [v6 arrayWithObjects:v7 count:2];
    v9 = [v4 traitCollectionWithTraitsFromCollections:v8];

    [(PKPaletteColorPickerView *)self _reloadSwatchColorsForTraitCollection:v9];
    return;
  }

  if ([(PKPaletteColorPickerView *)self colorPickerMode]== 2)
  {
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:1];
    v4 = MEMORY[0x1E69DD1B8];
    v11[0] = v3;
    v5 = [(PKPaletteColorPickerView *)self traitCollectionWithCurrentInterfaceStyle];
    v11[1] = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v11;
    goto LABEL_5;
  }

  v10 = [(PKPaletteColorPickerView *)self traitCollection];
  [(PKPaletteColorPickerView *)self _reloadSwatchColorsForTraitCollection:?];
}

- (id)traitCollectionWithCurrentInterfaceStyle
{
  v2 = MEMORY[0x1E69DD1B8];
  v3 = [(PKPaletteColorPickerView *)self traitCollection];
  v4 = [v2 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v3, "userInterfaceStyle")}];

  return v4;
}

- (PKPalettePopoverPresenting)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end