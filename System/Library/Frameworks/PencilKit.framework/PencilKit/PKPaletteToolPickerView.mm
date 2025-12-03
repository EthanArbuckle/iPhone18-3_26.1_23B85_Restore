@interface PKPaletteToolPickerView
- (BOOL)_canPresentToolAttributesPopover;
- (BOOL)_canSelectToolView:(id)view fromTap:(BOOL)tap;
- (BOOL)_isAllToolsColorUserInterfaceStyleEqualsTo:(int64_t)to;
- (BOOL)_isAllToolsEdgeLocationEqualsTo:(unint64_t)to;
- (BOOL)_useCompactSize;
- (BOOL)canToggleSelectedToolAndEraser;
- (BOOL)hasToolViewWithIdentifier:(id)identifier;
- (CGRect)sourceRectForPopoverPresentationForTool:(id)tool;
- (NSArray)toolViews;
- (PKPaletteToolPickerView)initWithToolViews:(id)views;
- (PKPaletteToolPickerViewDelegate)delegate;
- (UIScrollViewDelegate)lastScrollViewDelegateBeforeScrollingToolToVisible;
- (double)_widthForToolAtIndex:(unint64_t)index isCompactSize:(BOOL)size;
- (id)_eraserToolView;
- (id)_firstInkingTool;
- (id)sourceViewForPopoverPresentationForTool:(id)tool;
- (int64_t)_stackViewAxis;
- (unint64_t)_selectedToolsCount;
- (void)_addToolView:(id)view updateUI:(BOOL)i;
- (void)_insertToolView:(id)view atIndex:(unint64_t)index updateUI:(BOOL)i;
- (void)_installScrollViewInView:(id)view;
- (void)_installStackViewInScrollView:(id)view;
- (void)_setSelectedToolView:(id)view animated:(BOOL)animated showToolTip:(BOOL)tip notifyDelegate:(BOOL)delegate fromTap:(BOOL)tap;
- (void)_showToolAttributesPopoverFromRect:(CGRect)rect inView:(id)view;
- (void)_toolTapGestureRecognizer:(id)recognizer;
- (void)_updateToolViewVisibilityLayingOutIfNeeded:(BOOL)needed;
- (void)_updateUI;
- (void)dealloc;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadToolViewsWithDataSource:(id)source;
- (void)removeToolView:(id)view updateUI:(BOOL)i;
- (void)removeToolViewsWithIdentifier:(id)identifier;
- (void)scrollSelectedToolViewToVisibleAnimated:(BOOL)animated;
- (void)scrollToolViewAtIndex:(unint64_t)index toVisibleAnimated:(BOOL)animated;
- (void)selectToolViewAtIndex:(unint64_t)index;
- (void)setAllowHDR:(BOOL)r;
- (void)setClippingViewLassoToolEditingViewVisible:(BOOL)visible;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setCornerLocation:(unint64_t)location;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setInterItemToolsSpacing:(double)spacing;
- (void)setScalingFactor:(double)factor;
- (void)setScrollingEnabled:(BOOL)enabled;
- (void)setUnselectedToolsVisible:(BOOL)visible;
- (void)toggleSelectedToolAndEraserAnimated:(BOOL)animated;
- (void)toggleSelectedToolAndLastSelectedToolAnimated:(BOOL)animated;
- (void)toggleSelectedToolAttributesPopoverFromRect:(CGRect)rect inView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateClippingViewEdgesVisibility;
- (void)updatePopoverUI;
@end

@implementation PKPaletteToolPickerView

- (PKPaletteToolPickerView)initWithToolViews:(id)views
{
  v48[4] = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v46.receiver = self;
  v46.super_class = PKPaletteToolPickerView;
  v5 = [(PKPaletteToolPickerView *)&v46 init];
  if (v5)
  {
    v6 = +[PKStatisticsManager sharedStatisticsManager];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 64);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v5->_drawingPaletteStatistics, v8);

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    presentedViewControllers = v5->_presentedViewControllers;
    v5->_presentedViewControllers = weakObjectsHashTable;

    v5->_scalingFactor = 1.0;
    array = [MEMORY[0x1E695DF70] array];
    mutableToolViews = v5->_mutableToolViews;
    v5->_mutableToolViews = array;

    v5->_interItemToolsSpacing = 0.0;
    v5->_unselectedToolsVisible = 1;
    v13 = objc_alloc_init(PKPaletteToolPickerClippingView);
    clippingView = v5->_clippingView;
    v5->_clippingView = v13;

    [(PKPaletteToolPickerClippingView *)v5->_clippingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerView *)v5 addSubview:v5->_clippingView];
    topAnchor = [(PKPaletteToolPickerClippingView *)v5->_clippingView topAnchor];
    topAnchor2 = [(PKPaletteToolPickerView *)v5 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(PKPaletteToolPickerView *)v5 setClippingViewTopConstraint:v17];

    leadingAnchor = [(PKPaletteToolPickerClippingView *)v5->_clippingView leadingAnchor];
    leadingAnchor2 = [(PKPaletteToolPickerView *)v5 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(PKPaletteToolPickerView *)v5 setClippingViewLeadingConstraint:v20];

    bottomAnchor = [(PKPaletteToolPickerClippingView *)v5->_clippingView bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolPickerView *)v5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(PKPaletteToolPickerView *)v5 setClippingViewBottomConstraint:v23];

    trailingAnchor = [(PKPaletteToolPickerClippingView *)v5->_clippingView trailingAnchor];
    trailingAnchor2 = [(PKPaletteToolPickerView *)v5 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(PKPaletteToolPickerView *)v5 setClippingViewTrailingConstraint:v26];

    v27 = MEMORY[0x1E696ACD8];
    clippingViewTopConstraint = [(PKPaletteToolPickerView *)v5 clippingViewTopConstraint];
    v48[0] = clippingViewTopConstraint;
    clippingViewLeadingConstraint = [(PKPaletteToolPickerView *)v5 clippingViewLeadingConstraint];
    v48[1] = clippingViewLeadingConstraint;
    clippingViewBottomConstraint = [(PKPaletteToolPickerView *)v5 clippingViewBottomConstraint];
    v48[2] = clippingViewBottomConstraint;
    clippingViewTrailingConstraint = [(PKPaletteToolPickerView *)v5 clippingViewTrailingConstraint];
    v48[3] = clippingViewTrailingConstraint;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [v27 activateConstraints:v32];

    v33 = v5->_clippingView;
    if (v33)
    {
      v33 = v33->_contentView;
    }

    v34 = v33;
    [(PKPaletteToolPickerView *)v5 _installScrollViewInView:v34];

    [(PKPaletteToolPickerView *)v5 _installStackViewInScrollView:v5->_scrollView];
    if (_UISolariumEnabled())
    {
      [(PKPaletteToolPickerClippingView *)v5->_clippingView setupBackdropViewsWithScrollView:?];
    }

    scrollView = [(PKPaletteToolPickerView *)v5 scrollView];
    [scrollView addObserver:v5 forKeyPath:@"bounds" options:1 context:PKPaletteToolPickerScrollViewObserverContext];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = viewsCopy;
    v37 = [v36 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v43;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v43 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [(PKPaletteToolPickerView *)v5 _addToolView:*(*(&v42 + 1) + 8 * i) updateUI:0, v42];
        }

        v38 = [v36 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v38);
    }

    [(PKPaletteToolPickerView *)v5 _updateUI];
  }

  return v5;
}

- (void)dealloc
{
  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView removeObserver:self forKeyPath:@"bounds" context:PKPaletteToolPickerScrollViewObserverContext];

  v4.receiver = self;
  v4.super_class = PKPaletteToolPickerView;
  [(PKPaletteToolPickerView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (PKPaletteToolPickerScrollViewObserverContext != context)
  {
    goto LABEL_6;
  }

  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  v14 = scrollView;
  if (scrollView != objectCopy)
  {

LABEL_6:
    v16.receiver = self;
    v16.super_class = PKPaletteToolPickerView;
    [(PKPaletteToolPickerView *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_7;
  }

  v15 = [pathCopy isEqualToString:@"bounds"];

  if (!v15)
  {
    goto LABEL_6;
  }

  [(PKPaletteToolPickerView *)self updateClippingViewEdgesVisibility];
LABEL_7:
}

- (NSArray)toolViews
{
  v2 = [(NSMutableArray *)self->_mutableToolViews copy];

  return v2;
}

- (id)_firstInkingTool
{
  v3 = [(NSMutableArray *)self->_mutableToolViews indexOfObjectPassingTest:&__block_literal_global_99];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_mutableToolViews objectAtIndexedSubscript:v3];
  }

  return v4;
}

uint64_t __43__PKPaletteToolPickerView__firstInkingTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 tool];
  if ([v3 isInkingTool])
  {
    v4 = [v2 tool];
    v5 = [v4 isHandwritingTool] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_installScrollViewInView:(id)view
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCEF8];
  viewCopy = view;
  v6 = objc_alloc_init(v4);
  [(PKPaletteToolPickerView *)self setScrollView:v6];

  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView2 setShowsVerticalScrollIndicator:0];

  scrollView3 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView3 setShowsHorizontalScrollIndicator:0];

  scrollView4 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView4 setPagingEnabled:0];

  scrollView5 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView5 setClipsToBounds:0];

  scrollView6 = [(PKPaletteToolPickerView *)self scrollView];
  [viewCopy addSubview:scrollView6];

  scrollView7 = [(PKPaletteToolPickerView *)self scrollView];
  topAnchor = [scrollView7 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewTopConstraint:v16];

  scrollView8 = [(PKPaletteToolPickerView *)self scrollView];
  leadingAnchor = [scrollView8 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewLeadingConstraint:v20];

  scrollView9 = [(PKPaletteToolPickerView *)self scrollView];
  bottomAnchor = [scrollView9 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewBottomConstraint:v24];

  scrollView10 = [(PKPaletteToolPickerView *)self scrollView];
  trailingAnchor = [scrollView10 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewTrailingConstraint:v28];

  scrollView11 = [(PKPaletteToolPickerView *)self scrollView];
  centerXAnchor = [scrollView11 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewCenterXConstraint:v32];

  scrollView12 = [(PKPaletteToolPickerView *)self scrollView];
  centerYAnchor = [scrollView12 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];

  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewCenterYConstraint:v36];

  v37 = MEMORY[0x1E696ACD8];
  scrollViewTopConstraint = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  v43[0] = scrollViewTopConstraint;
  scrollViewLeadingConstraint = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  v43[1] = scrollViewLeadingConstraint;
  scrollViewBottomConstraint = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  v43[2] = scrollViewBottomConstraint;
  scrollViewTrailingConstraint = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  v43[3] = scrollViewTrailingConstraint;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v37 activateConstraints:v42];
}

- (void)_installStackViewInScrollView:(id)view
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  viewCopy = view;
  v6 = objc_alloc_init(v4);
  [(PKPaletteToolPickerView *)self setStackView:v6];

  stackView = [(PKPaletteToolPickerView *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(PKPaletteToolPickerView *)self stackView];
  [stackView2 setAxis:0];

  stackView3 = [(PKPaletteToolPickerView *)self stackView];
  [viewCopy addSubview:stackView3];

  v35 = MEMORY[0x1E696ACD8];
  stackView4 = [(PKPaletteToolPickerView *)self stackView];
  topAnchor = [stackView4 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v39;
  stackView5 = [(PKPaletteToolPickerView *)self stackView];
  bottomAnchor = [stackView5 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[1] = v34;
  stackView6 = [(PKPaletteToolPickerView *)self stackView];
  leftAnchor = [stackView6 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v43[2] = v13;
  stackView7 = [(PKPaletteToolPickerView *)self stackView];
  rightAnchor = [stackView7 rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];

  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v43[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v35 activateConstraints:v18];

  stackView8 = [(PKPaletteToolPickerView *)self stackView];
  heightAnchor = [stackView8 heightAnchor];
  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  heightAnchor2 = [scrollView heightAnchor];
  v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [(PKPaletteToolPickerView *)self setStackViewCompactHeightConstraint:v23];

  scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
  widthAnchor = [scrollView2 widthAnchor];
  stackView9 = [(PKPaletteToolPickerView *)self stackView];
  widthAnchor2 = [stackView9 widthAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [(PKPaletteToolPickerView *)self setScrollViewWidthConstraint:v28];

  scrollView3 = [(PKPaletteToolPickerView *)self scrollView];
  heightAnchor3 = [scrollView3 heightAnchor];
  stackView10 = [(PKPaletteToolPickerView *)self stackView];
  heightAnchor4 = [stackView10 heightAnchor];
  v33 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  [(PKPaletteToolPickerView *)self setScrollViewHeightConstraint:v33];
}

- (void)setAllowHDR:(BOOL)r
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_allowHDR != r)
  {
    rCopy = r;
    self->_allowHDR = r;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_mutableToolViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setAllowHDR:{rCopy, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_addToolView:(id)view updateUI:(BOOL)i
{
  iCopy = i;
  viewCopy = view;
  [viewCopy setAllowHDR:{-[PKPaletteToolPickerView allowHDR](self, "allowHDR")}];
  [(PKPaletteToolPickerView *)self _insertToolView:viewCopy atIndex:[(NSMutableArray *)self->_mutableToolViews count] updateUI:iCopy];
}

- (void)removeToolView:(id)view updateUI:(BOOL)i
{
  iCopy = i;
  viewCopy = view;
  selectedToolView = self->_selectedToolView;
  v10 = viewCopy;
  if (selectedToolView == viewCopy)
  {
    self->_selectedToolView = 0;

    viewCopy = v10;
  }

  lastSelectedToolView = self->_lastSelectedToolView;
  if (lastSelectedToolView == viewCopy)
  {
    self->_lastSelectedToolView = 0;

    viewCopy = v10;
  }

  [(NSMutableArray *)self->_mutableToolViews removeObject:viewCopy];
  stackView = [(PKPaletteToolPickerView *)self stackView];
  [stackView removeArrangedSubview:v10];

  [(PKPaletteToolView *)v10 removeFromSuperview];
  if (iCopy)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_insertToolView:(id)view atIndex:(unint64_t)index updateUI:(BOOL)i
{
  iCopy = i;
  viewCopy = view;
  [viewCopy setAllowHDR:{-[PKPaletteToolPickerView allowHDR](self, "allowHDR")}];
  [(NSMutableArray *)self->_mutableToolViews insertObject:viewCopy atIndex:index];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = [(PKPaletteToolPickerView *)self stackView];
  [stackView insertArrangedSubview:viewCopy atIndex:index];

  v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__toolTapGestureRecognizer_];
  [viewCopy addGestureRecognizer:?];

  if (iCopy)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (BOOL)hasToolViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableToolViews = self->_mutableToolViews;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKPaletteToolPickerView_hasToolViewWithIdentifier___block_invoke;
  v8[3] = &unk_1E82DCD00;
  v9 = identifierCopy;
  v6 = identifierCopy;
  LOBYTE(mutableToolViews) = [(NSMutableArray *)mutableToolViews indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;

  return mutableToolViews;
}

uint64_t __53__PKPaletteToolPickerView_hasToolViewWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tool];
  v4 = [v3 toolIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)removeToolViewsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableArray *)self->_mutableToolViews copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKPaletteToolPickerView_removeToolViewsWithIdentifier___block_invoke;
  v7[3] = &unk_1E82DCD28;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __57__PKPaletteToolPickerView_removeToolViewsWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 tool];
  v4 = [v3 toolIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) removeToolView:v6];
  }
}

- (void)setUnselectedToolsVisible:(BOOL)visible
{
  if (self->_unselectedToolsVisible != visible)
  {
    self->_unselectedToolsVisible = visible;
    [(PKPaletteToolPickerView *)self _updateToolViewVisibilityLayingOutIfNeeded:1];
  }
}

- (void)_updateToolViewVisibilityLayingOutIfNeeded:(BOOL)needed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PKPaletteToolPickerView__updateToolViewVisibilityLayingOutIfNeeded___block_invoke;
  v3[3] = &unk_1E82D90B8;
  v3[4] = self;
  neededCopy = needed;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __70__PKPaletteToolPickerView__updateToolViewVisibilityLayingOutIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexOfSelectedTool];
  v3 = [*(a1 + 32) toolViews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PKPaletteToolPickerView__updateToolViewVisibilityLayingOutIfNeeded___block_invoke_2;
  v4[3] = &unk_1E82DCD50;
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  [v3 enumerateObjectsUsingBlock:v4];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) layoutIfNeeded];
  }
}

uint64_t __70__PKPaletteToolPickerView__updateToolViewVisibilityLayingOutIfNeeded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1 + 32) + 417) ^ 1;
  }

  return [a2 setHidden:v3 & 1];
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)location
{
  if (self->_cornerLocation != location)
  {
    self->_cornerLocation = location;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setInterItemToolsSpacing:(double)spacing
{
  if (vabdd_f64(self->_interItemToolsSpacing, spacing) >= 0.00999999978)
  {
    self->_interItemToolsSpacing = spacing;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_toolTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  if ([recognizerCopy state] == 1)
  {
    v6 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke;
    v29[3] = &unk_1E82D6E70;
    v30 = view;
    selfCopy = self;
    [v6 animateWithDuration:4 delay:v29 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.65 completion:0.0];
    v7 = v30;
LABEL_3:

    goto LABEL_15;
  }

  if ([view isHighlighted])
  {
    v8 = MEMORY[0x1E69DD250];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_2;
    v26[3] = &unk_1E82D6E70;
    v27 = view;
    selfCopy2 = self;
    [v8 animateWithDuration:4 delay:v26 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.65 completion:0.0];
  }

  if ([recognizerCopy state] == 3)
  {
    tool = [view tool];
    isRulerTool = [tool isRulerTool];

    tool2 = [view tool];
    isHandwritingTool = [tool2 isHandwritingTool];

    if (isHandwritingTool && ([view isSelected] & 1) == 0)
    {
      drawingPaletteStatistics = [(PKPaletteToolPickerView *)self drawingPaletteStatistics];
      [drawingPaletteStatistics recordHandwritingToolSelected];
    }

    selectedToolView = [(PKPaletteToolPickerView *)self selectedToolView];
    v15 = (selectedToolView != view) | isRulerTool;

    if ((v15 & 1) == 0)
    {
      [(PKPaletteToolPickerView *)self _showToolAttributesPopoverFromRect:0 inView:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      goto LABEL_15;
    }

    if (!isRulerTool)
    {
      [(PKPaletteToolPickerView *)self _setSelectedToolView:view animated:1 showToolTip:0 notifyDelegate:1 fromTap:1];
      goto LABEL_15;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_3;
    v23[3] = &unk_1E82D6E70;
    v24 = view;
    selfCopy3 = self;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_4;
    v20 = &unk_1E82DC850;
    v21 = v24;
    selfCopy4 = self;
    [PKPaletteToolViewAnimation performSelectionAnimations:v23 completion:&v17];
    v16 = [(PKPaletteToolPickerView *)self delegate:v17];
    [v16 toolPickerDidToggleRulerTool:self];

    v7 = v24;
    goto LABEL_3;
  }

LABEL_15:
}

uint64_t __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:1];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:0];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setSelected:1];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_5;
  v4[3] = &unk_1E82D6E70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  [PKPaletteToolViewAnimation performSelectionAnimations:v4 completion:0];
}

uint64_t __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setSelected:0];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)selectToolViewAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_mutableToolViews objectAtIndex:index];
  [(PKPaletteToolPickerView *)self _setSelectedToolView:v4 animated:0 showToolTip:0 notifyDelegate:0 fromTap:0];
}

- (void)_setSelectedToolView:(id)view animated:(BOOL)animated showToolTip:(BOOL)tip notifyDelegate:(BOOL)delegate fromTap:(BOOL)tap
{
  tapCopy = tap;
  delegateCopy = delegate;
  tipCopy = tip;
  animatedCopy = animated;
  v53 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_selectedToolView != viewCopy)
  {
    if (![(PKPaletteToolPickerView *)self _canSelectToolView:viewCopy fromTap:tapCopy])
    {
      v19 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = viewCopy;
        _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Can't select tool: %@", buf, 0xCu);
      }

      v20 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        selectedToolView = self->_selectedToolView;
        *buf = 138412290;
        v52 = selectedToolView;
        _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, "Currently selected tool is: %@", buf, 0xCu);
      }

      v22 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        lastSelectedToolView = self->_lastSelectedToolView;
        *buf = 138412290;
        v52 = lastSelectedToolView;
        _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEFAULT, "Last selected tool is: %@", buf, 0xCu);
      }

      goto LABEL_34;
    }

    objc_storeStrong(&self->_lastSelectedToolView, self->_selectedToolView);
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v40 = 408;
    v13 = self->_mutableToolViews;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v14)
    {
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v46 + 1) + 8 * i) setSelected:{0, v40}];
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_selectedToolView, view);
    [(PKPaletteToolView *)self->_selectedToolView setSelected:1];
    [(PKPaletteToolPickerView *)self _updateToolViewVisibilityLayingOutIfNeeded:0];
    scrollView = [(PKPaletteToolPickerView *)self scrollView];
    [(PKPaletteToolView *)self->_selectedToolView frame];
    v18 = [scrollView _isRectFullyVisible:?];

    if (v18 & 1 | !animatedCopy)
    {
      if (((animatedCopy | v18) & 1) == 0)
      {
        [(PKPaletteToolPickerView *)self scrollSelectedToolViewToVisibleAnimated:0];
      }
    }

    else
    {
      scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
      delegate = [scrollView2 delegate];
      [(PKPaletteToolPickerView *)self setLastScrollViewDelegateBeforeScrollingToolToVisible:delegate];

      v26 = objc_alloc_init(PKScrollViewDelegateEventsHandler);
      [(PKPaletteToolPickerView *)self setScrollViewDelegateEventsHandler:v26];

      scrollViewDelegateEventsHandler = [(PKPaletteToolPickerView *)self scrollViewDelegateEventsHandler];
      scrollView3 = [(PKPaletteToolPickerView *)self scrollView];
      [scrollView3 setDelegate:scrollViewDelegateEventsHandler];

      objc_initWeak(buf, self);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __92__PKPaletteToolPickerView__setSelectedToolView_animated_showToolTip_notifyDelegate_fromTap___block_invoke;
      v43[3] = &unk_1E82DCD78;
      objc_copyWeak(&v44, buf);
      v45 = tipCopy;
      scrollViewDelegateEventsHandler2 = [(PKPaletteToolPickerView *)self scrollViewDelegateEventsHandler];
      [scrollViewDelegateEventsHandler2 setScrollViewDidEndScrollingAnimationHandler:v43];

      [(PKPaletteToolPickerView *)self scrollSelectedToolViewToVisibleAnimated:1];
      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
    }

    if ((tipCopy & v18) == 1)
    {
      tooltipPresentationHandle = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
      v31 = tooltipPresentationHandle == 0;

      if (!v31)
      {
        v32 = self->_selectedToolView;
        tooltipPresentationHandle2 = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
        [(PKPaletteToolView *)v32 showTooltip:tooltipPresentationHandle2];
      }
    }

    if (animatedCopy)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __92__PKPaletteToolPickerView__setSelectedToolView_animated_showToolTip_notifyDelegate_fromTap___block_invoke_2;
      v42[3] = &unk_1E82D7148;
      v42[4] = self;
      [PKPaletteToolViewAnimation performSelectionAnimations:v42 completion:0];
    }

    v34 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_selectedToolView;
      *buf = 138412290;
      v52 = v35;
      _os_log_impl(&dword_1C7CCA000, v34, OS_LOG_TYPE_DEFAULT, "Did select tool: %@", buf, 0xCu);
    }

    v36 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_lastSelectedToolView;
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&dword_1C7CCA000, v36, OS_LOG_TYPE_DEFAULT, "Last selected tool is: %@", buf, 0xCu);
    }

    if (delegateCopy)
    {
      v38 = [*(&self->super.super.super.isa + v40) indexOfObject:self->_selectedToolView];
      delegate2 = [(PKPaletteToolPickerView *)self delegate];
      [delegate2 toolPicker:self didSelectTool:self->_selectedToolView atIndex:v38];
    }

    if (self->_lastSelectedToolView == self->_selectedToolView)
    {
      v22 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_FAULT, "_lastSelectedToolView == _selectedToolView", buf, 2u);
      }

LABEL_34:
    }
  }
}

void __92__PKPaletteToolPickerView__setSelectedToolView_animated_showToolTip_notifyDelegate_fromTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained lastScrollViewDelegateBeforeScrollingToolToVisible];
  v3 = [WeakRetained scrollView];
  [v3 setDelegate:v2];

  [WeakRetained setLastScrollViewDelegateBeforeScrollingToolToVisible:0];
  v4 = [WeakRetained scrollView];
  v5 = [WeakRetained selectedToolView];
  [v5 frame];
  v6 = [v4 _isRectFullyVisible:?];

  if (*(a1 + 40) == 1)
  {
    if (v6)
    {
      v7 = [WeakRetained tooltipPresentationHandle];

      if (v7)
      {
        v8 = [WeakRetained selectedToolView];
        v9 = [WeakRetained tooltipPresentationHandle];
        [v8 showTooltip:v9];
      }
    }
  }
}

- (BOOL)_canSelectToolView:(id)view fromTap:(BOOL)tap
{
  tapCopy = tap;
  viewCopy = view;
  if (([(NSMutableArray *)self->_mutableToolViews containsObject:viewCopy]& 1) == 0)
  {
    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "tried to select an untracked tool", v13, 2u);
    }

    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 toolPicker:self canSelectTool:viewCopy fromTap:tapCopy];

LABEL_8:
  return v10;
}

- (unint64_t)_selectedToolsCount
{
  v2 = [(NSMutableArray *)self->_mutableToolViews indexesOfObjectsPassingTest:&__block_literal_global_28_0];
  v3 = [v2 count];

  return v3;
}

uint64_t __46__PKPaletteToolPickerView__selectedToolsCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 tool];
  if ([v3 isRulerTool])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 isSelected];
  }

  return v4;
}

- (id)_eraserToolView
{
  v3 = [(NSMutableArray *)self->_mutableToolViews indexOfObjectPassingTest:&__block_literal_global_30_1];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_mutableToolViews objectAtIndexedSubscript:v3];
  }

  return v4;
}

uint64_t __42__PKPaletteToolPickerView__eraserToolView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tool];
  v3 = [v2 isErasingTool];

  return v3;
}

- (void)_showToolAttributesPopoverFromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  delegate = [(PKPaletteToolPickerView *)self delegate];
  palettePopoverPresentingController = [delegate palettePopoverPresentingController];

  if (!palettePopoverPresentingController)
  {
    goto LABEL_32;
  }

  attributeViewController = [(PKPaletteToolView *)self->_selectedToolView attributeViewController];
  [(PKPaletteToolPickerView *)self setToolAttributesPopover:attributeViewController];

  tool = [(PKPaletteToolView *)self->_selectedToolView tool];
  toolIdentifier = [tool toolIdentifier];
  toolAttributesPopover = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  [toolAttributesPopover setToolIdentifier:toolIdentifier];

  toolAttributesPopover2 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (!toolAttributesPopover2)
  {
    goto LABEL_32;
  }

  toolAttributesPopover16 = toolAttributesPopover2;
  toolAttributesPopover3 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (!toolAttributesPopover3)
  {

LABEL_8:
    toolAttributesPopover4 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    [toolAttributesPopover4 setModalPresentationStyle:7];

    toolAttributesPopover5 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController = [toolAttributesPopover5 popoverPresentationController];
    [popoverPresentationController setDelegate:self];

    if (viewCopy)
    {
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v24 = !CGRectIsNull(v66);
    }

    else
    {
      v24 = 0;
    }

    edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
    cornerLocation = [(PKPaletteToolPickerView *)self cornerLocation];
    _useCompactSize = [(PKPaletteToolPickerView *)self _useCompactSize];
    cornerLocation2 = [(PKPaletteToolPickerView *)self cornerLocation];
    if (v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = 2;
    }

    if (!v24 && !_useCompactSize)
    {
      if (cornerLocation2 == -1)
      {
        v30 = PKUIPopoverPermittedArrowDirectionsForEdge(edgeLocation);
      }

      else
      {
        v30 = PKUIPopoverPermittedArrowDirectionsForCorner(cornerLocation);
      }

      v29 = v30;
    }

    toolAttributesPopover6 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController2 = [toolAttributesPopover6 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:v29];

    if (_UISolariumEnabled())
    {
      toolAttributesPopover7 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      popoverPresentationController3 = [toolAttributesPopover7 popoverPresentationController];
      [popoverPresentationController3 _setShouldHideArrow:1];
    }

    if (v24)
    {
      toolAttributesPopover8 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      popoverPresentationController4 = [toolAttributesPopover8 popoverPresentationController];
      [popoverPresentationController4 setSourceRect:{x, y, width, height}];

      v37 = viewCopy;
    }

    else
    {
      [(PKPaletteToolPickerView *)self sourceRectForPopoverPresentationForTool:self->_selectedToolView];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      toolAttributesPopover9 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      popoverPresentationController5 = [toolAttributesPopover9 popoverPresentationController];
      [popoverPresentationController5 setSourceRect:{v39, v41, v43, v45}];

      v37 = [(PKPaletteToolPickerView *)self sourceViewForPopoverPresentationForTool:self->_selectedToolView];
    }

    toolAttributesPopover10 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController6 = [toolAttributesPopover10 popoverPresentationController];
    [popoverPresentationController6 setSourceView:v37];

    if (!v24)
    {
    }

    toolAttributesPopover11 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController7 = [toolAttributesPopover11 popoverPresentationController];
    [popoverPresentationController7 _setShouldDisableInteractionDuringTransitions:0];

    delegate2 = [(PKPaletteToolPickerView *)self delegate];
    palettePopoverPassthroughViews = [delegate2 palettePopoverPassthroughViews];
    toolAttributesPopover12 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController8 = [toolAttributesPopover12 popoverPresentationController];
    [popoverPresentationController8 setPassthroughViews:palettePopoverPassthroughViews];

    toolAttributesPopover13 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    popoverPresentationController9 = [toolAttributesPopover13 popoverPresentationController];
    [popoverPresentationController9 _setIgnoresKeyboardNotifications:1];

    [(PKPaletteToolPickerView *)self updatePopoverUI];
    presentedViewController = [palettePopoverPresentingController presentedViewController];

    if (!presentedViewController)
    {
      presentedViewControllers = [(PKPaletteToolPickerView *)self presentedViewControllers];
      [presentedViewControllers removeAllObjects];
    }

    if ([(PKPaletteToolPickerView *)self _canPresentToolAttributesPopover])
    {
      presentedViewControllers2 = [(PKPaletteToolPickerView *)self presentedViewControllers];
      toolAttributesPopover14 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      [presentedViewControllers2 addObject:toolAttributesPopover14];

      tooltipPresentationHandle = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
      [tooltipPresentationHandle hideFloatingLabel];

      edgeLocation2 = [(PKPaletteToolPickerView *)self edgeLocation];
      toolAttributesPopover15 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      [toolAttributesPopover15 setEdgeLocation:edgeLocation2];

      toolAttributesPopover16 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __69__PKPaletteToolPickerView__showToolAttributesPopoverFromRect_inView___block_invoke;
      v65[3] = &unk_1E82D7148;
      v65[4] = self;
      [palettePopoverPresentingController presentViewController:toolAttributesPopover16 animated:1 completion:v65];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v19 = toolAttributesPopover3;
  if ([toolAttributesPopover3 isBeingPresented])
  {

LABEL_31:
    goto LABEL_32;
  }

  isBeingDismissed = [v19 isBeingDismissed];

  if ((isBeingDismissed & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_32:
}

void __69__PKPaletteToolPickerView__showToolAttributesPopoverFromRect_inView___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) presentedViewControllers];
  v2 = [*(a1 + 32) toolAttributesPopover];
  [v3 removeObject:v2];
}

- (BOOL)_canPresentToolAttributesPopover
{
  toolAttributesPopover = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (toolAttributesPopover)
  {
    toolAttributesPopover2 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    if ([toolAttributesPopover2 isBeingPresented])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      delegate = [(PKPaletteToolPickerView *)self delegate];
      if ([delegate shouldPalettePresentPopover])
      {
        presentedViewControllers = [(PKPaletteToolPickerView *)self presentedViewControllers];
        toolAttributesPopover3 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
        v5 = [presentedViewControllers containsObject:toolAttributesPopover3] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)sourceRectForPopoverPresentationForTool:(id)tool
{
  toolCopy = tool;
  if ([(PKPaletteToolPickerView *)self cornerLocation]!= -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained toolPickerViewSourceRectForPopoverPresentation:self fromCorner:{-[PKPaletteToolPickerView cornerLocation](self, "cornerLocation")}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
LABEL_3:

    goto LABEL_4;
  }

  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  [toolCopy frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  stackView = [(PKPaletteToolPickerView *)self stackView];
  [scrollView convertRect:stackView fromView:{v26, v28, v30, v32}];
  v7 = v34;
  v9 = v35;
  v11 = v36;
  v13 = v37;

  if (_UISolariumEnabled())
  {
    delegate = [(PKPaletteToolPickerView *)self delegate];
    WeakRetained = [delegate toolPickerViewSourceViewForPopoverPresentation:self fromCorner:1];

    scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
    [WeakRetained frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    superview = [WeakRetained superview];
    [scrollView2 convertRect:superview fromView:{v41, v43, v45, v47}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
    if (edgeLocation == 8 || edgeLocation == 2)
    {
      v11 = v54;
      v7 = v50;
    }

    else
    {
      v13 = v56;
      v9 = v52;
    }

    goto LABEL_3;
  }

LABEL_4:
  cornerLocation = [(PKPaletteToolPickerView *)self cornerLocation];
  [(PKPaletteToolPickerView *)self cornerLocation];
  if (cornerLocation == -1)
  {
    v15 = -5.0;
  }

  else
  {
    v15 = 0.0;
  }

  v58.origin.x = v7;
  v58.origin.y = v9;
  v58.size.width = v11;
  v58.size.height = v13;
  v59 = CGRectInset(v58, v15, -5.0);
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)sourceViewForPopoverPresentationForTool:(id)tool
{
  if ([(PKPaletteToolPickerView *)self cornerLocation]== -1)
  {
    scrollView = [(PKPaletteToolPickerView *)self scrollView];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    scrollView = [WeakRetained toolPickerViewSourceViewForPopoverPresentation:self fromCorner:{-[PKPaletteToolPickerView cornerLocation](self, "cornerLocation")}];
  }

  return scrollView;
}

- (void)updatePopoverUI
{
  delegate = [(PKPaletteToolPickerView *)self delegate];
  toolAttributesPopover = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  [delegate updatePalettePopover:toolAttributesPopover];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = PKPaletteToolPickerView;
  [(PKPaletteToolPickerView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteToolPickerView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteToolPickerView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    v9 = horizontalSizeClass != [changeCopy horizontalSizeClass];
  }

  else
  {
    v9 = 1;
  }

  traitCollection3 = [(PKPaletteToolPickerView *)self traitCollection];
  userInterfaceStyle = [traitCollection3 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (v9 || userInterfaceStyle != userInterfaceStyle2)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
    [(PKPaletteToolPickerView *)self updatePopoverUI];
    if (v9)
    {
      delegate = [(PKPaletteToolPickerView *)self delegate];
      [delegate toolPickerViewDidChangeTraitCollectionSizeClass:self];
    }
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  v184 = *MEMORY[0x1E69E9840];
  _stackViewAxis = [(PKPaletteToolPickerView *)self _stackViewAxis];
  stackView = [(PKPaletteToolPickerView *)self stackView];
  [stackView setAxis:_stackViewAxis];

  [(PKPaletteToolPickerView *)self interItemToolsSpacing];
  v6 = v5;
  stackView2 = [(PKPaletteToolPickerView *)self stackView];
  [stackView2 setSpacing:v6];

  isScrollingEnabled = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView setScrollEnabled:isScrollingEnabled];

  isScrollingEnabled2 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  clippingView = [(PKPaletteToolPickerView *)self clippingView];
  v12 = clippingView;
  if (clippingView)
  {
    v13 = *(clippingView + 536);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v14 setClipsToBounds:isScrollingEnabled2];

  [(PKPaletteToolPickerView *)self scalingFactor];
  v16 = v15;
  clippingView2 = [(PKPaletteToolPickerView *)self clippingView];
  [clippingView2 setScalingFactor:v16];

  clippingViewTopConstraint = [(PKPaletteToolPickerView *)self clippingViewTopConstraint];
  [clippingViewTopConstraint setConstant:0.0];

  clippingViewBottomConstraint = [(PKPaletteToolPickerView *)self clippingViewBottomConstraint];
  [clippingViewBottomConstraint setConstant:0.0];

  clippingViewLeadingConstraint = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
  [clippingViewLeadingConstraint setConstant:0.0];

  clippingViewTrailingConstraint = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
  [clippingViewTrailingConstraint setConstant:0.0];

  scrollViewTopConstraint = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  [scrollViewTopConstraint setConstant:0.0];

  scrollViewBottomConstraint = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  [scrollViewBottomConstraint setConstant:0.0];

  scrollViewLeadingConstraint = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  [scrollViewLeadingConstraint setConstant:0.0];

  scrollViewTrailingConstraint = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  [scrollViewTrailingConstraint setConstant:0.0];

  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    mutableToolViews = self->_mutableToolViews;
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __36__PKPaletteToolPickerView__updateUI__block_invoke;
    v175[3] = &unk_1E82DCDA0;
    v175[4] = self;
    [(NSMutableArray *)mutableToolViews enumerateObjectsUsingBlock:v175];
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v27 = self->_mutableToolViews;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v171 objects:v183 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v172;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v172 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v171 + 1) + 8 * i);
          [(PKPaletteToolPickerView *)self scalingFactor];
          [v32 setScalingFactor:?];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v171 objects:v183 count:16];
      }

      while (v29);
    }
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v33 = self->_mutableToolViews;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v167 objects:v182 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v168;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v168 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v167 + 1) + 8 * j);
        [v38 setEdgeLocation:{-[PKPaletteToolPickerView edgeLocation](self, "edgeLocation")}];
        [v38 setColorUserInterfaceStyle:{-[PKPaletteToolPickerView colorUserInterfaceStyle](self, "colorUserInterfaceStyle")}];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v167 objects:v182 count:16];
    }

    while (v35);
  }

  v39 = MEMORY[0x1E696ACD8];
  toolsHeightConstraints = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
  [v39 deactivateConstraints:toolsHeightConstraints];

  v41 = MEMORY[0x1E696ACD8];
  toolsWidthConstraints = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
  [v41 deactivateConstraints:toolsWidthConstraints];

  v43 = MEMORY[0x1E696ACD8];
  toolsWidthCompactConstraints = [(PKPaletteToolPickerView *)self toolsWidthCompactConstraints];
  [v43 deactivateConstraints:toolsWidthCompactConstraints];

  array = [MEMORY[0x1E695DF70] array];
  toolsWidthConstraints = self->_toolsWidthConstraints;
  self->_toolsWidthConstraints = array;

  array2 = [MEMORY[0x1E695DF70] array];
  toolsHeightConstraints = self->_toolsHeightConstraints;
  self->_toolsHeightConstraints = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  toolsWidthCompactConstraints = self->_toolsWidthCompactConstraints;
  self->_toolsWidthCompactConstraints = array3;

  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    v51 = self->_mutableToolViews;
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = __36__PKPaletteToolPickerView__updateUI__block_invoke_2;
    v166[3] = &unk_1E82DCDA0;
    v166[4] = self;
    [(NSMutableArray *)v51 enumerateObjectsUsingBlock:v166];
  }

  else
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v52 = self->_mutableToolViews;
    v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v162 objects:v181 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v163;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v163 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v162 + 1) + 8 * k);
          toolsWidthConstraints2 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
          widthAnchor = [v57 widthAnchor];
          widthAnchor2 = [(PKPaletteToolPickerView *)self widthAnchor];
          v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
          [toolsWidthConstraints2 addObject:v61];

          toolsHeightConstraints2 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
          heightAnchor = [v57 heightAnchor];
          heightAnchor2 = [(PKPaletteToolPickerView *)self heightAnchor];
          v65 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
          [toolsHeightConstraints2 addObject:v65];
        }

        v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v162 objects:v181 count:16];
      }

      while (v54);
    }
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  toolsWidthConstraints3 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
  toolsHeightConstraints3 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
  v68 = [toolsWidthConstraints3 arrayByAddingObjectsFromArray:toolsHeightConstraints3];

  v69 = [v68 countByEnumeratingWithState:&v158 objects:v180 count:16];
  if (v69)
  {
    v71 = v69;
    v72 = *v159;
    do
    {
      for (m = 0; m != v71; ++m)
      {
        if (*v159 != v72)
        {
          objc_enumerationMutation(v68);
        }

        LODWORD(v70) = 1148829696;
        [*(*(&v158 + 1) + 8 * m) setPriority:v70];
      }

      v71 = [v68 countByEnumeratingWithState:&v158 objects:v180 count:16];
    }

    while (v71);
  }

  v155 = MEMORY[0x1E696ACD8];
  stackViewCompactHeightConstraint = [(PKPaletteToolPickerView *)self stackViewCompactHeightConstraint];
  v179[0] = stackViewCompactHeightConstraint;
  scrollViewTopConstraint2 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  v179[1] = scrollViewTopConstraint2;
  scrollViewBottomConstraint2 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  v179[2] = scrollViewBottomConstraint2;
  scrollViewLeadingConstraint2 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  v179[3] = scrollViewLeadingConstraint2;
  scrollViewTrailingConstraint2 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  v179[4] = scrollViewTrailingConstraint2;
  scrollViewCenterXConstraint = [(PKPaletteToolPickerView *)self scrollViewCenterXConstraint];
  v179[5] = scrollViewCenterXConstraint;
  scrollViewCenterYConstraint = [(PKPaletteToolPickerView *)self scrollViewCenterYConstraint];
  v179[6] = scrollViewCenterYConstraint;
  scrollViewWidthConstraint = [(PKPaletteToolPickerView *)self scrollViewWidthConstraint];
  v179[7] = scrollViewWidthConstraint;
  scrollViewHeightConstraint = [(PKPaletteToolPickerView *)self scrollViewHeightConstraint];
  v179[8] = scrollViewHeightConstraint;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:9];
  [v155 deactivateConstraints:v82];

  if ([(PKPaletteToolPickerView *)self isScrollingEnabled])
  {
    edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
    [(PKPaletteToolPickerView *)self scalingFactor];
    v85 = v84;
    _useCompactSize = [(PKPaletteToolPickerView *)self _useCompactSize];
    clippingView3 = [(PKPaletteToolPickerView *)self clippingView];
    v88 = clippingView3;
    if (clippingView3)
    {
      v89 = *(clippingView3 + 523);
    }

    else
    {
      v89 = 0;
    }

    v90 = 0x1E696A000uLL;
    v91 = v89 | ~_UISolariumEnabled();
    v92 = 26.0;
    if (_useCompactSize)
    {
      v92 = 22.0;
    }

    v93 = v85 * v92;
    v94 = 0.0;
    if (v91)
    {
      v95 = 0.0;
    }

    else
    {
      v95 = v93;
    }

    if (v91)
    {
      v96 = 0.0;
    }

    else
    {
      v96 = 6.0;
    }

    if (edgeLocation == 8 || edgeLocation == 2)
    {
      v94 = v95;
      v95 = 0.0;
      v97 = v96;
      v96 = 0.0;
    }

    else
    {
      v97 = 0.0;
    }
  }

  else
  {
    v94 = *MEMORY[0x1E69DDCE0];
    v95 = *(MEMORY[0x1E69DDCE0] + 8);
    v97 = *(MEMORY[0x1E69DDCE0] + 16);
    v96 = *(MEMORY[0x1E69DDCE0] + 24);
    v90 = 0x1E696A000;
  }

  scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView2 setContentInset:{v94, v95, v97, v96}];

  scrollView3 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView3 contentInset];
  v101 = -v100;

  scrollView4 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView4 setContentOffset:{v101, 0.0}];

  [(PKPaletteToolPickerView *)self _useCompactSize];
  [(PKPaletteToolPickerView *)self scalingFactor];
  v104 = v103 * 0.0;
  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    v105 = *(v90 + 3288);
    toolsWidthCompactConstraints2 = [(PKPaletteToolPickerView *)self toolsWidthCompactConstraints];
    scrollViewTopConstraint3 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
    v178[0] = scrollViewTopConstraint3;
    scrollViewBottomConstraint3 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
    v178[1] = scrollViewBottomConstraint3;
    scrollViewLeadingConstraint3 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    v178[2] = scrollViewLeadingConstraint3;
    scrollViewTrailingConstraint3 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    v178[3] = scrollViewTrailingConstraint3;
    stackViewCompactHeightConstraint2 = [(PKPaletteToolPickerView *)self stackViewCompactHeightConstraint];
    v178[4] = stackViewCompactHeightConstraint2;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:5];
    v113 = [toolsWidthCompactConstraints2 arrayByAddingObjectsFromArray:v112];
    [v105 activateConstraints:v113];

    clippingViewLeadingConstraint2 = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
    [clippingViewLeadingConstraint2 setConstant:-v104];

    clippingViewTrailingConstraint2 = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
    [clippingViewTrailingConstraint2 setConstant:v104];

    scrollViewLeadingConstraint4 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    [scrollViewLeadingConstraint4 setConstant:v104];

    scrollViewTrailingConstraint4 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    [scrollViewTrailingConstraint4 setConstant:-v104];
    goto LABEL_69;
  }

  stackView3 = [(PKPaletteToolPickerView *)self stackView];
  [stackView3 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v120 = v119;
  v122 = v121;

  if (PKIsVisionDevice())
  {
    if (PKIsVisionDevice())
    {
      v123 = 534.0;
    }

    else
    {
      v123 = 372.0;
    }
  }

  else
  {
    v123 = 394.0;
  }

  [(PKPaletteToolPickerView *)self scalingFactor];
  v125 = v123 * v124;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PKPaletteToolPickerView__updateUI__block_invoke_3;
  aBlock[3] = &unk_1E82D7148;
  aBlock[4] = self;
  scrollViewTrailingConstraint4 = _Block_copy(aBlock);
  edgeLocation2 = [(PKPaletteToolPickerView *)self edgeLocation];
  if (edgeLocation2 == 8 || edgeLocation2 == 2)
  {
    v127 = *(v90 + 3288);
    toolsWidthConstraints4 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
    [v127 activateConstraints:toolsWidthConstraints4];

    clippingViewTopConstraint2 = [(PKPaletteToolPickerView *)self clippingViewTopConstraint];
    [clippingViewTopConstraint2 setConstant:-v104];

    clippingViewBottomConstraint2 = [(PKPaletteToolPickerView *)self clippingViewBottomConstraint];
    [clippingViewBottomConstraint2 setConstant:v104];

    scrollViewTopConstraint4 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
    [scrollViewTopConstraint4 setConstant:v104];

    scrollViewBottomConstraint4 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
    [scrollViewBottomConstraint4 setConstant:-v104];

    if (v122 < v125)
    {
      v133 = *(v90 + 3288);
      scrollViewCenterYConstraint2 = [(PKPaletteToolPickerView *)self scrollViewCenterYConstraint];
      v177[0] = scrollViewCenterYConstraint2;
      scrollViewHeightConstraint2 = [(PKPaletteToolPickerView *)self scrollViewHeightConstraint];
      v177[1] = scrollViewHeightConstraint2;
      scrollViewLeadingConstraint5 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
      v177[2] = scrollViewLeadingConstraint5;
      scrollViewTrailingConstraint5 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
      v177[3] = scrollViewTrailingConstraint5;
      v138 = MEMORY[0x1E695DEC8];
      v139 = v177;
LABEL_67:
      v146 = [v138 arrayWithObjects:v139 count:4];
      [v133 activateConstraints:v146];

      goto LABEL_69;
    }
  }

  else
  {
    v140 = *(v90 + 3288);
    toolsHeightConstraints4 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
    [v140 activateConstraints:toolsHeightConstraints4];

    clippingViewLeadingConstraint3 = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
    [clippingViewLeadingConstraint3 setConstant:-v104];

    clippingViewTrailingConstraint3 = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
    [clippingViewTrailingConstraint3 setConstant:v104];

    scrollViewLeadingConstraint6 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    [scrollViewLeadingConstraint6 setConstant:v104];

    scrollViewTrailingConstraint6 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    [scrollViewTrailingConstraint6 setConstant:-v104];

    if (v120 < v125)
    {
      v133 = *(v90 + 3288);
      scrollViewCenterYConstraint2 = [(PKPaletteToolPickerView *)self scrollViewCenterXConstraint];
      v176[0] = scrollViewCenterYConstraint2;
      scrollViewHeightConstraint2 = [(PKPaletteToolPickerView *)self scrollViewWidthConstraint];
      v176[1] = scrollViewHeightConstraint2;
      scrollViewLeadingConstraint5 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
      v176[2] = scrollViewLeadingConstraint5;
      scrollViewTrailingConstraint5 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
      v176[3] = scrollViewTrailingConstraint5;
      v138 = MEMORY[0x1E695DEC8];
      v139 = v176;
      goto LABEL_67;
    }
  }

  scrollViewTrailingConstraint4[2](scrollViewTrailingConstraint4);
LABEL_69:

  edgeLocation3 = [(PKPaletteToolPickerView *)self edgeLocation];
  v149 = edgeLocation3 == 2 || edgeLocation3 == 8;
  clippingView4 = [(PKPaletteToolPickerView *)self clippingView];
  v151 = clippingView4;
  if (clippingView4 && *(clippingView4 + 544) != v149)
  {
    *(clippingView4 + 544) = v149;
    [(PKPaletteToolPickerClippingView *)clippingView4 _updateUI];
  }

  v152 = [(PKPaletteToolPickerView *)self edgeLocation]== 8;
  clippingView5 = [(PKPaletteToolPickerView *)self clippingView];
  v154 = clippingView5;
  if (clippingView5 && *(clippingView5 + 520) != v152)
  {
    *(clippingView5 + 520) = v152;
    [(PKPaletteToolPickerClippingView *)clippingView5 _updateUI];
  }

  [(PKPaletteToolPickerView *)self updateClippingViewEdgesVisibility];
}

void __36__PKPaletteToolPickerView__updateUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 toolImageNeedsReload])
  {
    [v10 layoutIfNeeded];
  }

  [v10 intrinsicContentSize];
  v6 = v5;
  [v10 scalingFactor];
  v8 = v6 / v7;
  [*(a1 + 32) _widthForToolAtIndex:a3 isCompactSize:1];
  [v10 setScalingFactor:v9 / v8];
}

void __36__PKPaletteToolPickerView__updateUI__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _widthForToolAtIndex:a3 isCompactSize:1];
  v8 = v7;
  v9 = [v6 widthAnchor];

  v11 = [v9 constraintEqualToConstant:v8];

  v10 = [*(a1 + 32) toolsWidthCompactConstraints];
  [v10 addObject:v11];
}

void __36__PKPaletteToolPickerView__updateUI__block_invoke_3(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD8];
  v3 = [*(a1 + 32) scrollViewTopConstraint];
  v8[0] = v3;
  v4 = [*(a1 + 32) scrollViewBottomConstraint];
  v8[1] = v4;
  v5 = [*(a1 + 32) scrollViewLeadingConstraint];
  v8[2] = v5;
  v6 = [*(a1 + 32) scrollViewTrailingConstraint];
  v8[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  [v2 activateConstraints:v7];
}

- (void)updateClippingViewEdgesVisibility
{
  edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
  if (edgeLocation == 2 || edgeLocation == 8)
  {
    scrollView = [(PKPaletteToolPickerView *)self scrollView];
    [scrollView contentOffset];
    v6 = v5;
  }

  else
  {
    scrollView = [(PKPaletteToolPickerView *)self scrollView];
    [scrollView contentOffset];
    v6 = v7;
  }

  isScrollingEnabled = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v9 = v6 > 10.0 && isScrollingEnabled;
  clippingView = [(PKPaletteToolPickerView *)self clippingView];
  v11 = clippingView;
  if (clippingView && *(clippingView + 521) != v9)
  {
    *(clippingView + 521) = v9;
    [(PKPaletteToolPickerClippingView *)clippingView _updateUI];
  }

  scrollView2 = [(PKPaletteToolPickerView *)self scrollView];
  [scrollView2 _pk_maximumContentOffset];
  v14 = v13;
  v16 = v15;

  edgeLocation2 = [(PKPaletteToolPickerView *)self edgeLocation];
  if (edgeLocation2 == 8 || edgeLocation2 == 2)
  {
    v14 = v16;
  }

  isScrollingEnabled2 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v20 = v6 < v14 + -10.0 && isScrollingEnabled2;
  clippingView2 = [(PKPaletteToolPickerView *)self clippingView];
  if (clippingView2 && clippingView2[522] != v20)
  {
    clippingView2[522] = v20;
    v22 = clippingView2;
    [(PKPaletteToolPickerClippingView *)clippingView2 _updateUI];
    clippingView2 = v22;
  }
}

- (BOOL)_useCompactSize
{
  traitCollection = [(PKPaletteToolPickerView *)self traitCollection];
  window = [(PKPaletteToolPickerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  return v6;
}

- (int64_t)_stackViewAxis
{
  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    return 0;
  }

  edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
  return edgeLocation == 2 || edgeLocation == 8;
}

- (double)_widthForToolAtIndex:(unint64_t)index isCompactSize:(BOOL)size
{
  sizeCopy = size;
  delegate = [(PKPaletteToolPickerView *)self delegate];
  [delegate toolPickerView:self widthForToolAtIndex:index isCompactSize:sizeCopy];
  v9 = v8;

  return v9;
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  toolAttributesPopover = [(PKPaletteToolPickerView *)self toolAttributesPopover];

  if (toolAttributesPopover)
  {
    toolAttributesPopover2 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    [toolAttributesPopover2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (BOOL)canToggleSelectedToolAndEraser
{
  if ([(NSMutableArray *)self->_mutableToolViews count]>= 2)
  {
    selectedToolView = [(PKPaletteToolPickerView *)self selectedToolView];
    tool = [selectedToolView tool];
    if ([tool isErasingTool])
    {
    }

    else
    {
      _eraserToolView = [(PKPaletteToolPickerView *)self _eraserToolView];

      if (_eraserToolView)
      {
        return 1;
      }
    }

    selectedToolView2 = [(PKPaletteToolPickerView *)self selectedToolView];
    tool2 = [selectedToolView2 tool];
    if ([tool2 isErasingTool])
    {
      tool3 = [(PKPaletteToolView *)self->_lastSelectedToolView tool];
      isErasingTool = [tool3 isErasingTool];

      if (!isErasingTool)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)toggleSelectedToolAndEraserAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PKPaletteToolPickerView *)self canToggleSelectedToolAndEraser])
  {
    _eraserToolView = [(PKPaletteToolPickerView *)self _eraserToolView];
    selectedToolView = [(PKPaletteToolPickerView *)self selectedToolView];

    if (selectedToolView == _eraserToolView)
    {
      lastSelectedToolView = self->_lastSelectedToolView;
      if (!lastSelectedToolView)
      {
        mutableToolViews = self->_mutableToolViews;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __63__PKPaletteToolPickerView_toggleSelectedToolAndEraserAnimated___block_invoke;
        v13[3] = &unk_1E82DCD00;
        v13[4] = self;
        v10 = [(NSMutableArray *)mutableToolViews indexOfObjectPassingTest:v13];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [(NSMutableArray *)self->_mutableToolViews objectAtIndex:v10];
          v12 = self->_lastSelectedToolView;
          self->_lastSelectedToolView = v11;
        }

        lastSelectedToolView = self->_lastSelectedToolView;
      }

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = self;
      lastSelectedToolView = _eraserToolView;
    }

    [(PKPaletteToolPickerView *)selfCopy2 _setSelectedToolView:lastSelectedToolView animated:animatedCopy showToolTip:1 notifyDelegate:1 fromTap:0];
    [(PKPaletteToolPickerView *)self dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    _eraserToolView = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(_eraserToolView, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, _eraserToolView, OS_LOG_TYPE_DEFAULT, "Can't toggle between last selected tool and eraser.", buf, 2u);
    }
  }
}

uint64_t __63__PKPaletteToolPickerView_toggleSelectedToolAndEraserAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 456) == v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 tool];
    if ([v5 isInkingTool])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 tool];
      v6 = [v7 isHandwritingTool];
    }
  }

  return v6;
}

- (void)toggleSelectedToolAndLastSelectedToolAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PKPaletteToolPickerView *)self canToggleSelectedToolAndLastSelectedTool])
  {
    lastSelectedToolView = self->_lastSelectedToolView;
    if (!lastSelectedToolView)
    {
      mutableToolViews = self->_mutableToolViews;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __73__PKPaletteToolPickerView_toggleSelectedToolAndLastSelectedToolAnimated___block_invoke;
      v11[3] = &unk_1E82DCD00;
      v11[4] = self;
      v7 = [(NSMutableArray *)mutableToolViews indexOfObjectPassingTest:v11];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [(NSMutableArray *)self->_mutableToolViews objectAtIndex:v7];
        v9 = self->_lastSelectedToolView;
        self->_lastSelectedToolView = v8;
      }

      lastSelectedToolView = self->_lastSelectedToolView;
    }

    [(PKPaletteToolPickerView *)self _setSelectedToolView:lastSelectedToolView animated:animatedCopy showToolTip:1 notifyDelegate:1 fromTap:0];
    [(PKPaletteToolPickerView *)self dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    v10 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Can't toggle between last selected tool and currently selected tool.", buf, 2u);
    }
  }
}

- (void)toggleSelectedToolAttributesPopoverFromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  delegate = [(PKPaletteToolPickerView *)self delegate];
  palettePopoverPresentingController = [delegate palettePopoverPresentingController];

  toolAttributesPopover = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (toolAttributesPopover && (v12 = toolAttributesPopover, [palettePopoverPresentingController presentedViewController], v13 = objc_claimAutoreleasedReturnValue(), -[PKPaletteToolPickerView toolAttributesPopover](self, "toolAttributesPopover"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v13 == v14))
  {
    [(PKPaletteToolPickerView *)self dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    [(PKPaletteToolPickerView *)self _showToolAttributesPopoverFromRect:viewCopy inView:x, y, width, height];
  }
}

- (BOOL)_isAllToolsColorUserInterfaceStyleEqualsTo:(int64_t)to
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_mutableToolViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        colorUserInterfaceStyle = [(PKPaletteToolPickerView *)self colorUserInterfaceStyle];
        v8 &= colorUserInterfaceStyle == [v10 colorUserInterfaceStyle];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_isAllToolsEdgeLocationEqualsTo:(unint64_t)to
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_mutableToolViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        edgeLocation = [(PKPaletteToolPickerView *)self edgeLocation];
        v8 &= edgeLocation == [v10 edgeLocation];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)reloadToolViewsWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(NSMutableArray *)self->_mutableToolViews copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKPaletteToolPickerView_reloadToolViewsWithDataSource___block_invoke;
  v10[3] = &unk_1E82DCDA0;
  v10[4] = self;
  [v5 enumerateObjectsUsingBlock:v10];

  v6 = [sourceCopy numberOfToolsInToolPickerView:self];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [sourceCopy toolPickerView:self viewForToolAtIndex:i];
      [(PKPaletteToolPickerView *)self _addToolView:v9 updateUI:0];
    }
  }

  [(PKPaletteToolPickerView *)self _updateUI];
}

- (void)setScrollingEnabled:(BOOL)enabled
{
  if (self->_scrollingEnabled != enabled)
  {
    self->_scrollingEnabled = enabled;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)scrollSelectedToolViewToVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  selectedToolView = [(PKPaletteToolPickerView *)self selectedToolView];
  [selectedToolView frame];
  [scrollView scrollRectToVisible:animatedCopy animated:?];
}

- (void)scrollToolViewAtIndex:(unint64_t)index toVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  toolViews = [(PKPaletteToolPickerView *)self toolViews];
  v9 = [toolViews objectAtIndex:index];

  scrollView = [(PKPaletteToolPickerView *)self scrollView];
  [v9 frame];
  [scrollView scrollRectToVisible:animatedCopy animated:?];
}

- (void)setClippingViewLassoToolEditingViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  clippingView = [(PKPaletteToolPickerView *)self clippingView];
  if (clippingView && clippingView[523] != visibleCopy)
  {
    clippingView[523] = visibleCopy;
    v5 = clippingView;
    [(PKPaletteToolPickerClippingView *)clippingView _updateUI];
    clippingView = v5;
  }
}

- (PKPaletteToolPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)lastScrollViewDelegateBeforeScrollingToolToVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_lastScrollViewDelegateBeforeScrollingToolToVisible);

  return WeakRetained;
}

@end