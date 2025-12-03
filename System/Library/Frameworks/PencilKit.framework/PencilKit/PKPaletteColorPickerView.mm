@interface PKPaletteColorPickerView
+ (id)collectionViewFlowLayoutWithItemSize:(CGSize)size minimumLineSpacing:(double)spacing minimumInterItemSpacing:(double)itemSpacing;
- (BOOL)_colorPickerAllowsColorSelection;
- (BOOL)_isExtendedColorPickerVisible;
- (BOOL)_shouldDisplayExtendedColorPickerPopoverFromColorSwatch:(id)swatch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_popoverPresentingSourceRect;
- (CGSize)intrinsicContentSize;
- (CGSize)swatchSize;
- (PKPaletteColorPickerView)initWithFrame:(CGRect)frame;
- (PKPalettePopoverPresenting)delegate;
- (UIColor)selectedColor;
- (id)_popoverPresentingSourceView;
- (id)_selectedSwatch;
- (id)_swatchColorsForTraitCollection:(id)collection;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)colorAtPoint:(CGPoint)point;
- (id)swatchWithColor:(id)color;
- (id)swatchWithIdentifier:(id)identifier;
- (id)traitCollectionWithCurrentInterfaceStyle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_multicolorSwatchIndexForEdge:(unint64_t)edge;
- (void)_enableOrDisableLongPressGesture;
- (void)_rebuildSwatches;
- (void)_reloadSwatchColorsForTraitCollection:(id)collection;
- (void)_setMulticolorSwatchColor:(id)color;
- (void)_showExtendedColorPicker;
- (void)_swatchLongPressHandler:(id)handler;
- (void)_updateUI;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection;
- (void)dealloc;
- (void)dismissEyeDropper;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)reloadColorsForCurrentColorPickerMode;
- (void)setColorMaximumLinearExposure:(double)exposure;
- (void)setColorPickerMode:(int64_t)mode;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
- (void)setSelectedColor:(id)color;
- (void)setSupportsAlpha:(BOOL)alpha;
- (void)setSwatchColors:(id)colors;
- (void)toggleColorSelectionPopover;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePopoverUI;
@end

@implementation PKPaletteColorPickerView

+ (id)collectionViewFlowLayoutWithItemSize:(CGSize)size minimumLineSpacing:(double)spacing minimumInterItemSpacing:(double)itemSpacing
{
  height = size.height;
  width = size.width;
  v9 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v9 setItemSize:{width, height}];
  [v9 setMinimumLineSpacing:spacing];
  [v9 setMinimumInteritemSpacing:itemSpacing];

  return v9;
}

- (PKPaletteColorPickerView)initWithFrame:(CGRect)frame
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PKPaletteColorPickerView;
  v3 = [(PKPaletteColorPickerView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v4->_collectionView setBackgroundColor:clearColor];

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
    topAnchor = [(UICollectionView *)v4->_collectionView topAnchor];
    topAnchor2 = [(PKPaletteColorPickerView *)v4 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[0] = v32;
    bottomAnchor = [(UICollectionView *)v4->_collectionView bottomAnchor];
    bottomAnchor2 = [(PKPaletteColorPickerView *)v4 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[1] = v14;
    leadingAnchor = [(UICollectionView *)v4->_collectionView leadingAnchor];
    leadingAnchor2 = [(PKPaletteColorPickerView *)v4 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[2] = v17;
    trailingAnchor = [(UICollectionView *)v4->_collectionView trailingAnchor];
    trailingAnchor2 = [(PKPaletteColorPickerView *)v4 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v29 activateConstraints:v21];

    traitCollection = [(PKPaletteColorPickerView *)v4 traitCollection];
    v23 = [(PKPaletteColorPickerView *)v4 _swatchColorsForTraitCollection:traitCollection];
    [(PKPaletteColorPickerView *)v4 setSwatchColors:v23];

    v24 = objc_alloc_init(MEMORY[0x1E69DCC48]);
    [(UILongPressGestureRecognizer *)v24 addTarget:v4 action:sel__swatchLongPressHandler_];
    [(UILongPressGestureRecognizer *)v24 setDelegate:v4];
    [(UICollectionView *)v4->_collectionView addGestureRecognizer:v24];
    longPressGestureRecognizer = v4->_longPressGestureRecognizer;
    v4->_longPressGestureRecognizer = v24;
    v26 = v24;

    [(PKPaletteColorPickerView *)v4 _enableOrDisableLongPressGesture];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_didChangePreferredContentSize_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PKPaletteColorPickerView;
  [(PKPaletteColorPickerView *)&v4 dealloc];
}

- (void)setColorMaximumLinearExposure:(double)exposure
{
  if (self->_colorMaximumLinearExposure != exposure)
  {
    self->_colorMaximumLinearExposure = exposure;
    colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
    [colorPickerController setColorMaximumLinearExposure:exposure];
  }
}

- (void)_enableOrDisableLongPressGesture
{
  system = [MEMORY[0x1E69DC8C0] system];
  category = [system preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteColorPickerView *)self addInteraction:v4];
    longPressGestureRecognizer = self->_longPressGestureRecognizer;
    gestureRecognizerForExclusionRelationship = [v4 gestureRecognizerForExclusionRelationship];
    [(UILongPressGestureRecognizer *)longPressGestureRecognizer requireGestureRecognizerToFail:gestureRecognizerForExclusionRelationship];
  }
}

- (id)_swatchColorsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (qword_1EC2913F8 != -1)
  {
    dispatch_once(&qword_1EC2913F8, &__block_literal_global_65);
  }

  window = [(PKPaletteColorPickerView *)self window];
  windowScene = [window windowScene];
  v7 = PKUseCompactSize(collectionCopy, windowScene);

  v8 = _MergedGlobals_21;
  if (!v7)
  {
    edgeLocation = [(PKPaletteColorPickerView *)self edgeLocation];
    v10 = edgeLocation == 2 || edgeLocation == 8;
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
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
  [colorPickerController dismissEyeDropper];

  colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];
  viewController = [colorPickerController2 viewController];
  [viewController dismissViewControllerAnimated:0 completion:0];

  [(PKPaletteColorPickerView *)self setColorPickerController:0];
}

- (void)setSwatchColors:(id)colors
{
  if (self->_swatchColors != colors)
  {
    v4 = [colors copy];
    swatchColors = self->_swatchColors;
    self->_swatchColors = v4;

    [(PKPaletteColorPickerView *)self _rebuildSwatches];
  }
}

- (void)_rebuildSwatches
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  swatchColors = [(PKPaletteColorPickerView *)self swatchColors];
  v5 = [swatchColors countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(swatchColors);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_alloc_init(PKPaletteColorSwatch);
        [(PKPaletteColorSwatch *)v10 setSwatchColor:v9];
        [(PKPaletteColorSwatch *)v10 setColorUserInterfaceStyle:?];
        [array addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [swatchColors countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(PKPaletteMulticolorSwatch);
  [(PKPaletteColorPickerView *)self setMulticolorSwatch:v11];

  colorUserInterfaceStyle = [(PKPaletteColorPickerView *)self colorUserInterfaceStyle];
  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [(PKPaletteColorSwatch *)multicolorSwatch setColorUserInterfaceStyle:colorUserInterfaceStyle];

  multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [array addObject:multicolorSwatch2];

  [(PKPaletteColorPickerView *)self setSwatches:array];
  [(PKPaletteColorPickerView *)self _updateUI];
}

- (void)_updateUI
{
  traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
  window = [(PKPaletteColorPickerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  if (!v6)
  {
    swatches = [(PKPaletteColorPickerView *)self swatches];
    multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
    v9 = [swatches indexOfObject:multicolorSwatch];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(PKPaletteColorPickerView *)self _multicolorSwatchIndexForEdge:[(PKPaletteColorPickerView *)self edgeLocation]];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
        if (v9 != v10)
        {
          swatches2 = [(PKPaletteColorPickerView *)self swatches];
          v13 = [swatches2 mutableCopy];

          [v13 removeObjectAtIndex:v9];
          multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
          [v13 insertObject:multicolorSwatch2 atIndex:v11];

          [(PKPaletteColorPickerView *)self setSwatches:v13];
        }
      }
    }
  }

  collectionView = [(PKPaletteColorPickerView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [(PKPaletteColorPickerView *)self swatchSize];
  [collectionViewLayout setItemSize:?];
  [(PKPaletteColorPickerView *)self scalingFactor];
  [collectionViewLayout setMinimumLineSpacing:floor(v16 * 12.0)];
  [(PKPaletteColorPickerView *)self scalingFactor];
  [collectionViewLayout setMinimumInteritemSpacing:floor(v17 * 12.0)];
  collectionView2 = [(PKPaletteColorPickerView *)self collectionView];
  [collectionView2 reloadData];
}

- (unint64_t)_multicolorSwatchIndexForEdge:(unint64_t)edge
{
  swatches = [(PKPaletteColorPickerView *)self swatches];
  v6 = [swatches count];

  if (v6 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  swatches2 = [(PKPaletteColorPickerView *)self swatches];
  v9 = [swatches2 count];

  if (edge != 2)
  {
    return v9 - 1;
  }

  swatches3 = [(PKPaletteColorPickerView *)self swatches];
  v7 = [swatches3 count] - 2;

  return v7;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteColorPickerView *)self _updateUI];

    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)swatchSize
{
  traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
  window = [(PKPaletteColorPickerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

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

- (void)_swatchLongPressHandler:(id)handler
{
  handlerCopy = handler;
  state = [handlerCopy state];
  switch(state)
  {
    case 3:
      colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController = [colorPickerController viewController];
      [viewController dismissViewControllerAnimated:1 completion:0];

      v28 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKPaletteColorPickerView *)self analyticsColorChangeCount];
      [PKStatisticsManager recordColorsChangedBeforeChosen:v28];

      colorPickerController3 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)colorPickerController3 recordColorPanelInvoked:?];
      goto LABEL_8;
    case 2:
      colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController2 = [colorPickerController2 viewController];
      view = [viewController2 view];
      [handlerCopy locationInView:view];
      v21 = v20;
      v23 = v22;

      colorPickerController3 = [(PKPaletteColorPickerView *)self colorPickerController];
      colorPicker = [colorPickerController3 colorPicker];
      [colorPicker setSelectedColorForPoint:{v21, v23}];

LABEL_8:
      break;
    case 1:
      collectionView = [(PKPaletteColorPickerView *)self collectionView];
      [handlerCopy locationInView:collectionView];
      v7 = v6;
      v9 = v8;

      collectionView2 = [(PKPaletteColorPickerView *)self collectionView];
      multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [collectionView2 convertPoint:multicolorSwatch toView:{v7, v9}];
      v13 = v12;
      v15 = v14;

      multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      LODWORD(multicolorSwatch) = [multicolorSwatch2 pointInside:0 withEvent:{v13, v15}];

      if (multicolorSwatch)
      {
        [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
      }

      break;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
  LOBYTE(self) = [view isDescendantOfView:self];

  return self;
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
    [(PKPaletteColorPickerView *)self _reloadSwatchColorsForTraitCollection:traitCollection];

    [(PKPaletteColorPickerView *)self invalidateIntrinsicContentSize];

    [(PKPaletteColorPickerView *)self _updateUI];
  }
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
  window = [(PKPaletteColorPickerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  if (v6)
  {
    colorPickerMode = [(PKPaletteColorPickerView *)self colorPickerMode];
    if (colorPickerMode != 2)
    {
      if (colorPickerMode == 1)
      {
        v20 = PKPaletteColorSwatchSize(1);
        v10 = v21;
        swatches = [(PKPaletteColorPickerView *)self swatches];
        v23 = v20 * [swatches count];

        swatches2 = [(PKPaletteColorPickerView *)self swatches];
        v25 = ([swatches2 count] - 1) * 12.0;

        v8 = v23 + v25;
        goto LABEL_13;
      }

      if (colorPickerMode)
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
    edgeLocation = [(PKPaletteColorPickerView *)self edgeLocation];
    v13 = edgeLocation == 2 || edgeLocation == 8;
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PKPaletteColorPickerView *)self swatches:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v56 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v49 = viewCopy;
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  contentView = [v10 contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  swatches = [(PKPaletteColorPickerView *)self swatches];
  v48 = pathCopy;
  v14 = [swatches objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setUserInteractionEnabled:0];
  contentView2 = [v10 contentView];
  [contentView2 addSubview:v14];

  [v14 hitTestInsets];
  [v10 setHitTestInsets:?];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  interactions = [v10 interactions];
  v17 = [interactions countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          objc_enumerationMutation(interactions);
        }

        v21 = *(*(&v50 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 removeInteraction:v21];
        }
      }

      v18 = [interactions countByEnumeratingWithState:&v50 objects:v55 count:16];
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
  swatchColor = [v14 swatchColor];
  color = [swatchColor color];
  v27 = [v24 pk_hoverAttributedStringForColor:color];
  contentView3 = [v10 contentView];
  [contentView3 pk_setHoverLabelAttributedString:v27];

  v40 = MEMORY[0x1E696ACD8];
  widthAnchor = [v14 widthAnchor];
  contentView4 = [v10 contentView];
  widthAnchor2 = [contentView4 widthAnchor];
  v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v54[0] = v44;
  heightAnchor = [v14 heightAnchor];
  contentView5 = [v10 contentView];
  heightAnchor2 = [contentView5 heightAnchor];
  v39 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v54[1] = v39;
  centerXAnchor = [v14 centerXAnchor];
  contentView6 = [v10 contentView];
  centerXAnchor2 = [contentView6 centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v54[2] = v31;
  centerYAnchor = [v14 centerYAnchor];
  contentView7 = [v10 contentView];
  centerYAnchor2 = [contentView7 centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v54[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  [v40 activateConstraints:v36];

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  swatches = [(PKPaletteColorPickerView *)self swatches];
  v7 = [pathCopy row];

  v20 = [swatches objectAtIndexedSubscript:v7];

  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];

  if ([(PKPaletteColorPickerView *)self _shouldDisplayExtendedColorPickerPopoverFromColorSwatch:v20])
  {
    [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
    colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
    viewController = [colorPickerController viewController];
    isBeingDismissed = [viewController isBeingDismissed];

    if (isBeingDismissed)
    {
      goto LABEL_12;
    }

    delegate = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)delegate recordColorPanelInvoked:?];
  }

  else
  {
    multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    isSelected = [multicolorSwatch2 isSelected];

    v15 = v20;
    if (multicolorSwatch != v20 || (isSelected & 1) != 0)
    {
      if (isSelected)
      {
        multicolorSwatch3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        [multicolorSwatch3 setSelected:0];

        v15 = v20;
      }

      swatchColor = [v15 swatchColor];
      color = [swatchColor color];
      [(PKPaletteColorPickerView *)self setSelectedColor:color];
    }

    else
    {
      _selectedSwatch = [(PKPaletteColorPickerView *)self _selectedSwatch];
      [_selectedSwatch setSelected:0];

      swatchColor = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [swatchColor setSelected:1];
    }

    delegate = [(PKPaletteColorPickerView *)self delegate];
    [delegate colorPickerDidChangeSelectedColor:self isFromExtendedColorPicker:0 isContinuousColorSelection:0];
  }

LABEL_12:
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  swatches = [(PKPaletteColorPickerView *)self swatches];
  v7 = [pathCopy row];

  v9 = [swatches objectAtIndexedSubscript:v7];

  v8 = v9;
  if (v9 && (v9[409] & 1) == 0)
  {
    v9[409] = 1;
    [(PKPaletteColorSwatch *)v9 _updateSelectionHighlight];
    v8 = v9;
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  swatches = [(PKPaletteColorPickerView *)self swatches];
  v7 = [pathCopy row];

  v9 = [swatches objectAtIndexedSubscript:v7];

  v8 = v9;
  if (v9 && v9[409])
  {
    v9[409] = 0;
    [(PKPaletteColorSwatch *)v9 _updateSelectionHighlight];
    v8 = v9;
  }
}

- (BOOL)_shouldDisplayExtendedColorPickerPopoverFromColorSwatch:(id)swatch
{
  swatchCopy = swatch;
  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];

  multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  swatchColor = [multicolorSwatch2 swatchColor];

  multicolorSwatch3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
  isSelected = [multicolorSwatch3 isSelected];

  v10 = isSelected | ![(PKPaletteColorPickerView *)self _colorPickerAllowsColorSelection];
  if (swatchColor)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (multicolorSwatch != swatchCopy)
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_colorPickerAllowsColorSelection
{
  delegate = [(PKPaletteColorPickerView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(PKPaletteColorPickerView *)self delegate];
  v6 = [delegate2 colorPickerShouldDisplayColorSelection:self];

  return v6;
}

- (UIColor)selectedColor
{
  _selectedSwatch = [(PKPaletteColorPickerView *)self _selectedSwatch];
  swatchColor = [_selectedSwatch swatchColor];
  color = [swatchColor color];

  return color;
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  selectedColor = [(PKPaletteColorPickerView *)self selectedColor];
  if (selectedColor == colorCopy)
  {
LABEL_13:

LABEL_14:
    v9 = colorCopy;
    goto LABEL_15;
  }

  selectedColor2 = [(PKPaletteColorPickerView *)self selectedColor];
  if (!colorCopy || !selectedColor2)
  {

    v9 = colorCopy;
    if (!colorCopy)
    {
      [(PKPaletteColorPickerView *)self setSelectedColorAlpha:1.0];
      _selectedSwatch = [(PKPaletteColorPickerView *)self _selectedSwatch];
      [_selectedSwatch setSelected:0];

      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:0];
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  selectedColor3 = [(PKPaletteColorPickerView *)self selectedColor];
  cGColor = [selectedColor3 CGColor];
  v8 = colorCopy;
  LOBYTE(cGColor) = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(cGColor, [colorCopy CGColor], 0, 0.000000999999997);

  v9 = colorCopy;
  if ((cGColor & 1) == 0)
  {
LABEL_7:
    [v9 alphaComponent];
    [(PKPaletteColorPickerView *)self setSelectedColorAlpha:?];
    _selectedSwatch2 = [(PKPaletteColorPickerView *)self _selectedSwatch];
    [_selectedSwatch2 setSelected:0];

    v11 = [colorCopy colorWithAlphaComponent:1.0];
    selectedColor = [(PKPaletteColorPickerView *)self swatchWithColor:v11];

    if (selectedColor)
    {
      multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];

      if (selectedColor == multicolorSwatch)
      {
        [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:colorCopy];
        multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        [multicolorSwatch2 setSelected:1];
      }
    }

    else
    {
      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:colorCopy];
      multicolorSwatch3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
      [multicolorSwatch3 setSelected:1];

      selectedColor = [(PKPaletteColorPickerView *)self multicolorSwatch];
    }

    [selectedColor setSelected:1];
    multicolorSwatch4 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    isSelected = [multicolorSwatch4 isSelected];

    if ((isSelected & 1) == 0)
    {
      [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:0];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)setSupportsAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  self->_supportsAlpha = alpha;
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
  colorPicker = [colorPickerController colorPicker];
  [colorPicker setSupportsAlpha:alphaCopy];
}

- (id)_selectedSwatch
{
  swatches = [(PKPaletteColorPickerView *)self swatches];
  v4 = [swatches indexOfObjectPassingTest:&__block_literal_global_42_0];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    swatches2 = [(PKPaletteColorPickerView *)self swatches];
    v5 = [swatches2 objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)swatchWithColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    swatches = [(PKPaletteColorPickerView *)self swatches];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PKPaletteColorPickerView_swatchWithColor___block_invoke;
    v10[3] = &unk_1E82DAE08;
    v11 = colorCopy;
    v6 = [swatches indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      swatches2 = [(PKPaletteColorPickerView *)self swatches];
      v7 = [swatches2 objectAtIndexedSubscript:v6];
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

- (id)swatchWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    swatches = [(PKPaletteColorPickerView *)self swatches];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PKPaletteColorPickerView_swatchWithIdentifier___block_invoke;
    v10[3] = &unk_1E82DAE08;
    v11 = identifierCopy;
    v6 = [swatches indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      swatches2 = [(PKPaletteColorPickerView *)self swatches];
      v7 = [swatches2 objectAtIndexedSubscript:v6];
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

- (id)colorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(PKPaletteColorPickerView *)self collectionView];
  [(PKPaletteColorPickerView *)self convertPoint:collectionView toView:x, y];
  v8 = v7;
  v10 = v9;

  collectionView2 = [(PKPaletteColorPickerView *)self collectionView];
  v12 = [collectionView2 indexPathForItemAtPoint:{v8, v10}];

  if (v12)
  {
    swatches = [(PKPaletteColorPickerView *)self swatches];
    v14 = [swatches objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];

    swatchColor = [v14 swatchColor];
    color = [swatchColor color];
  }

  else
  {
    color = 0;
  }

  return color;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection userInterfaceIdiom])
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
  delegate = [(PKPaletteColorPickerView *)self delegate];
  palettePopoverPresentingController = [delegate palettePopoverPresentingController];

  if (palettePopoverPresentingController)
  {
    colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
    viewController = [colorPickerController viewController];
    if (!viewController)
    {

      goto LABEL_7;
    }

    colorPickerController17 = viewController;
    if ([viewController isBeingPresented])
    {

      goto LABEL_22;
    }

    isBeingDismissed = [colorPickerController17 isBeingDismissed];

    if ((isBeingDismissed & 1) == 0)
    {
LABEL_7:
      colorPickerController = [(PKPaletteColorPickerView *)self _popoverPresentingSourceView];
      if (!colorPickerController)
      {
        v64 = os_log_create("com.apple.pencilkit", "PKPalette");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v64, OS_LOG_TYPE_FAULT, "sourceView shouldn't be nil when presenting a popover", buf, 2u);
        }

        goto LABEL_23;
      }

      colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];

      if (!colorPickerController2)
      {
        v10 = +[PKPaletteColorPickerControllerFactory makeColorPickerController];
        [(PKPaletteColorPickerView *)self setColorPickerController:v10];
      }

      [(PKPaletteColorPickerView *)self colorMaximumLinearExposure];
      v12 = v11;
      colorPickerController3 = [(PKPaletteColorPickerView *)self colorPickerController];
      [colorPickerController3 setColorMaximumLinearExposure:v12];

      colorUserInterfaceStyle = [(PKPaletteColorPickerView *)self colorUserInterfaceStyle];
      colorPickerController4 = [(PKPaletteColorPickerView *)self colorPickerController];
      colorPicker = [colorPickerController4 colorPicker];
      [colorPicker setColorUserInterfaceStyle:colorUserInterfaceStyle];

      supportsAlpha = [(PKPaletteColorPickerView *)self supportsAlpha];
      colorPickerController5 = [(PKPaletteColorPickerView *)self colorPickerController];
      colorPicker2 = [colorPickerController5 colorPicker];
      [colorPicker2 setSupportsAlpha:supportsAlpha];

      colorPickerController6 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController2 = [colorPickerController6 viewController];
      [viewController2 setModalPresentationStyle:7];

      colorPickerController7 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController3 = [colorPickerController7 viewController];
      presentationController = [viewController3 presentationController];
      [presentationController setDelegate:self];

      delegate2 = [(PKPaletteColorPickerView *)self delegate];
      palettePopoverPermittedArrowDirections = [delegate2 palettePopoverPermittedArrowDirections];
      colorPickerController8 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController4 = [colorPickerController8 viewController];
      popoverPresentationController = [viewController4 popoverPresentationController];
      [popoverPresentationController setPermittedArrowDirections:palettePopoverPermittedArrowDirections];

      if (_UISolariumEnabled())
      {
        colorPickerController9 = [(PKPaletteColorPickerView *)self colorPickerController];
        viewController5 = [colorPickerController9 viewController];
        popoverPresentationController2 = [viewController5 popoverPresentationController];
        [popoverPresentationController2 _setShouldHideArrow:1];
      }

      [(PKPaletteColorPickerView *)self _popoverPresentingSourceRect];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      colorPickerController10 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController6 = [colorPickerController10 viewController];
      popoverPresentationController3 = [viewController6 popoverPresentationController];
      [popoverPresentationController3 setSourceRect:{v34, v36, v38, v40}];

      colorPickerController11 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController7 = [colorPickerController11 viewController];
      popoverPresentationController4 = [viewController7 popoverPresentationController];
      [popoverPresentationController4 setSourceView:colorPickerController];

      colorPickerController12 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController8 = [colorPickerController12 viewController];
      popoverPresentationController5 = [viewController8 popoverPresentationController];
      [popoverPresentationController5 _setShouldDisableInteractionDuringTransitions:0];

      delegate3 = [(PKPaletteColorPickerView *)self delegate];
      palettePopoverPassthroughViews = [delegate3 palettePopoverPassthroughViews];
      colorPickerController13 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController9 = [colorPickerController13 viewController];
      popoverPresentationController6 = [viewController9 popoverPresentationController];
      [popoverPresentationController6 setPassthroughViews:palettePopoverPassthroughViews];

      colorPickerController14 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController10 = [colorPickerController14 viewController];
      popoverPresentationController7 = [viewController10 popoverPresentationController];
      [popoverPresentationController7 _setIgnoresKeyboardNotifications:1];

      [(PKPaletteColorPickerView *)self updatePopoverUI];
      multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
      LODWORD(viewController10) = [multicolorSwatch isSelected];

      if (viewController10)
      {
        multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
        swatchColor = [multicolorSwatch2 swatchColor];
        color = [swatchColor color];
        colorPickerController15 = [(PKPaletteColorPickerView *)self colorPickerController];
        colorPicker3 = [colorPickerController15 colorPicker];
        [colorPicker3 setSelectedColor:color];
      }

      else
      {
        _selectedSwatch = [(PKPaletteColorPickerView *)self _selectedSwatch];
        swatchColor2 = [_selectedSwatch swatchColor];
        multicolorSwatch2 = [swatchColor2 color];

        if ([(PKPaletteColorPickerView *)self supportsAlpha])
        {
          [(PKPaletteColorPickerView *)self selectedColorAlpha];
          v67 = [multicolorSwatch2 colorWithAlphaComponent:?];

          multicolorSwatch2 = v67;
        }

        swatchColor = [(PKPaletteColorPickerView *)self colorPickerController];
        color = [swatchColor colorPicker];
        [color setSelectedColor:multicolorSwatch2];
      }

      delegate4 = [(PKPaletteColorPickerView *)self delegate];
      shouldPalettePresentPopover = [delegate4 shouldPalettePresentPopover];

      if (!shouldPalettePresentPopover)
      {
LABEL_23:

        goto LABEL_24;
      }

      v70 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v70 recordColorPanelInvoked:?];

      [(PKPaletteColorPickerView *)self setAnalyticsColorChangeCount:0];
      colorPickerController16 = [(PKPaletteColorPickerView *)self colorPickerController];
      colorPicker4 = [colorPickerController16 colorPicker];
      selectedColor = [colorPicker4 selectedColor];
      [(PKPaletteColorPickerView *)self setAnalyticsInitialColor:selectedColor];

      colorPickerController17 = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController11 = [colorPickerController17 viewController];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __52__PKPaletteColorPickerView__showExtendedColorPicker__block_invoke;
      v75[3] = &unk_1E82D7148;
      v75[4] = self;
      [palettePopoverPresentingController presentViewController:viewController11 animated:1 completion:v75];

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
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];

  if (!colorPickerController)
  {
    return 0;
  }

  delegate = [(PKPaletteColorPickerView *)self delegate];
  palettePopoverPresentingController = [delegate palettePopoverPresentingController];

  presentedViewController = [palettePopoverPresentingController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [palettePopoverPresentingController presentedViewController];
    colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];
    viewController = [colorPickerController2 viewController];
    v10 = presentedViewController2 == viewController;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)_popoverPresentingSourceRect
{
  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [multicolorSwatch bounds];
  v58 = CGRectInset(v57, -5.0, -5.0);
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;

  if (_UISolariumEnabled())
  {
    multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [multicolorSwatch2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    delegate = [(PKPaletteColorPickerView *)self delegate];
    v18 = [delegate colorPickerViewSourceViewForPopoverPresentation:self];

    multicolorSwatch3 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    superview = [multicolorSwatch3 superview];
    [v18 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    superview2 = [v18 superview];
    [superview convertRect:superview2 fromView:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    edgeLocation = [(PKPaletteColorPickerView *)self edgeLocation];
    if (edgeLocation == 8)
    {
      v39 = v31;
    }

    else
    {
      v39 = v10;
    }

    if (edgeLocation == 8)
    {
      v40 = v12;
    }

    else
    {
      v40 = v33;
    }

    if (edgeLocation == 8)
    {
      v41 = v35;
    }

    else
    {
      v41 = v14;
    }

    if (edgeLocation == 8)
    {
      v42 = v16;
    }

    else
    {
      v42 = v37;
    }

    if (edgeLocation == 2)
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

  delegate2 = [(PKPaletteColorPickerView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_21;
  }

  delegate3 = [(PKPaletteColorPickerView *)self delegate];
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    delegate2 = [(PKPaletteColorPickerView *)self delegate];
    if ([delegate2 wantsCustomPalettePopoverPresentationSource])
    {
      delegate4 = [(PKPaletteColorPickerView *)self delegate];
      colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
      viewController = [colorPickerController viewController];
      [delegate4 palettePopoverSourceRectToPresentViewController:viewController];
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
  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
  delegate = [(PKPaletteColorPickerView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  delegate2 = [(PKPaletteColorPickerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate3 = [(PKPaletteColorPickerView *)self delegate];
    wantsCustomPalettePopoverPresentationSource = [delegate3 wantsCustomPalettePopoverPresentationSource];

    if (wantsCustomPalettePopoverPresentationSource)
    {
      delegate4 = [(PKPaletteColorPickerView *)self delegate];
      palettePopoverSourceView = [delegate4 palettePopoverSourceView];

      if (palettePopoverSourceView)
      {
        delegate = palettePopoverSourceView;

        multicolorSwatch = delegate;
      }

      else
      {
        delegate = 0;
      }

LABEL_7:
    }
  }

  return multicolorSwatch;
}

- (void)updatePopoverUI
{
  delegate = [(PKPaletteColorPickerView *)self delegate];
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
  viewController = [colorPickerController viewController];
  [delegate updatePalettePopover:viewController];
}

- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  colorPicker = [color colorPicker];
  selectedColor = [colorPicker selectedColor];

  _selectedSwatch = [(PKPaletteColorPickerView *)self _selectedSwatch];
  [_selectedSwatch setSelected:0];

  multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
  [multicolorSwatch setSelected:1];

  [(PKPaletteColorPickerView *)self _setMulticolorSwatchColor:selectedColor];
  delegate = [(PKPaletteColorPickerView *)self delegate];
  [delegate colorPickerDidChangeSelectedColor:self isFromExtendedColorPicker:1 isContinuousColorSelection:selectionCopy];

  [(PKPaletteColorPickerView *)self setAnalyticsColorChangeCount:[(PKPaletteColorPickerView *)self analyticsColorChangeCount]+ 1];
}

- (void)_setMulticolorSwatchColor:(id)color
{
  if (color)
  {
    multicolorSwatch2 = [PKSwatchColor swatchColor:color identifier:@"multi"];
    multicolorSwatch = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [multicolorSwatch setSwatchColor:multicolorSwatch2];
  }

  else
  {
    multicolorSwatch2 = [(PKPaletteColorPickerView *)self multicolorSwatch];
    [multicolorSwatch2 setSwatchColor:0];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];

  if (colorPickerController)
  {
    colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];
    viewController = [colorPickerController2 viewController];
    if (viewController)
    {
      v7 = viewController;
      if ([viewController isBeingPresented])
      {

LABEL_11:
        goto LABEL_12;
      }

      isBeingDismissed = [v7 isBeingDismissed];

      if (isBeingDismissed)
      {
LABEL_12:
        colorPickerController3 = [(PKPaletteColorPickerView *)self colorPickerController];
        viewController2 = [colorPickerController3 viewController];
        [viewController2 dismissViewControllerAnimated:1 completion:completionCopy];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKPaletteColorPickerView *)self analyticsColorChangeCount];
    [PKStatisticsManager recordColorsChangedBeforeChosen:v10];

    analyticsInitialColor = [(PKPaletteColorPickerView *)self analyticsInitialColor];
    colorPickerController4 = [(PKPaletteColorPickerView *)self colorPickerController];
    colorPicker = [colorPickerController4 colorPicker];
    selectedColor = [colorPicker selectedColor];
    v15 = [analyticsInitialColor isEqual:selectedColor];

    if (v15)
    {
      colorPickerController2 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)colorPickerController2 recordInkPickerNoOp:?];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_14;
  }

  (*(completionCopy + 2))(completionCopy);
LABEL_13:
  v8 = completionCopy;
LABEL_14:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = PKPaletteColorPickerView;
  [(PKPaletteColorPickerView *)&v12 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];
    if (verticalSizeClass == [changeCopy verticalSizeClass])
    {
      traitCollection2 = [(PKPaletteColorPickerView *)self traitCollection];
      horizontalSizeClass = [traitCollection2 horizontalSizeClass];
      if (horizontalSizeClass == [changeCopy horizontalSizeClass])
      {
        traitCollection3 = [(PKPaletteColorPickerView *)self traitCollection];
        userInterfaceStyle = [traitCollection3 userInterfaceStyle];
        userInterfaceStyle2 = [changeCopy userInterfaceStyle];

        if (userInterfaceStyle == userInterfaceStyle2)
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

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
    colorPicker = [colorPickerController colorPicker];
    [colorPicker setColorUserInterfaceStyle:style];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    swatches = [(PKPaletteColorPickerView *)self swatches];
    v8 = [swatches countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(swatches);
          }

          [(PKPaletteColorSwatch *)*(*(&v12 + 1) + 8 * i) setColorUserInterfaceStyle:style];
        }

        v9 = [swatches countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_reloadSwatchColorsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selectedColor = [(PKPaletteColorPickerView *)self selectedColor];
  v5 = [(PKPaletteColorPickerView *)self swatchWithColor:selectedColor];
  swatchColor = [v5 swatchColor];
  identifier = [swatchColor identifier];

  if ([identifier isEqualToString:@"multi"])
  {

    identifier = 0;
  }

  v8 = [(PKPaletteColorPickerView *)self _swatchColorsForTraitCollection:collectionCopy];
  [(PKPaletteColorPickerView *)self setSwatchColors:v8];

  [(PKPaletteColorPickerView *)self _rebuildSwatches];
  v9 = [(PKPaletteColorPickerView *)self swatchWithIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [v9 setSelected:1];
  }

  else
  {
    [(PKPaletteColorPickerView *)self setSelectedColor:selectedColor];
  }
}

- (void)toggleColorSelectionPopover
{
  colorPickerController = [(PKPaletteColorPickerView *)self colorPickerController];
  viewController = [colorPickerController viewController];
  if ([viewController isBeingPresented])
  {

LABEL_4:

    [(PKPaletteColorPickerView *)self dismissPalettePopoverWithCompletion:0];
    return;
  }

  colorPickerController2 = [(PKPaletteColorPickerView *)self colorPickerController];
  viewController2 = [colorPickerController2 viewController];
  presentingViewController = [viewController2 presentingViewController];

  if (presentingViewController)
  {
    goto LABEL_4;
  }

  [(PKPaletteColorPickerView *)self _showExtendedColorPicker];
}

- (void)setColorPickerMode:(int64_t)mode
{
  if (self->_colorPickerMode != mode)
  {
    self->_colorPickerMode = mode;
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
    traitCollectionWithCurrentInterfaceStyle = [(PKPaletteColorPickerView *)self traitCollectionWithCurrentInterfaceStyle];
    v12[1] = traitCollectionWithCurrentInterfaceStyle;
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
    traitCollectionWithCurrentInterfaceStyle = [(PKPaletteColorPickerView *)self traitCollectionWithCurrentInterfaceStyle];
    v11[1] = traitCollectionWithCurrentInterfaceStyle;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v11;
    goto LABEL_5;
  }

  traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
  [(PKPaletteColorPickerView *)self _reloadSwatchColorsForTraitCollection:?];
}

- (id)traitCollectionWithCurrentInterfaceStyle
{
  v2 = MEMORY[0x1E69DD1B8];
  traitCollection = [(PKPaletteColorPickerView *)self traitCollection];
  v4 = [v2 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  return v4;
}

- (PKPalettePopoverPresenting)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end