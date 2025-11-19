@interface PKPaletteToolPickerView
- (BOOL)_canPresentToolAttributesPopover;
- (BOOL)_canSelectToolView:(id)a3 fromTap:(BOOL)a4;
- (BOOL)_isAllToolsColorUserInterfaceStyleEqualsTo:(int64_t)a3;
- (BOOL)_isAllToolsEdgeLocationEqualsTo:(unint64_t)a3;
- (BOOL)_useCompactSize;
- (BOOL)canToggleSelectedToolAndEraser;
- (BOOL)hasToolViewWithIdentifier:(id)a3;
- (CGRect)sourceRectForPopoverPresentationForTool:(id)a3;
- (NSArray)toolViews;
- (PKPaletteToolPickerView)initWithToolViews:(id)a3;
- (PKPaletteToolPickerViewDelegate)delegate;
- (UIScrollViewDelegate)lastScrollViewDelegateBeforeScrollingToolToVisible;
- (double)_widthForToolAtIndex:(unint64_t)a3 isCompactSize:(BOOL)a4;
- (id)_eraserToolView;
- (id)_firstInkingTool;
- (id)sourceViewForPopoverPresentationForTool:(id)a3;
- (int64_t)_stackViewAxis;
- (unint64_t)_selectedToolsCount;
- (void)_addToolView:(id)a3 updateUI:(BOOL)a4;
- (void)_insertToolView:(id)a3 atIndex:(unint64_t)a4 updateUI:(BOOL)a5;
- (void)_installScrollViewInView:(id)a3;
- (void)_installStackViewInScrollView:(id)a3;
- (void)_setSelectedToolView:(id)a3 animated:(BOOL)a4 showToolTip:(BOOL)a5 notifyDelegate:(BOOL)a6 fromTap:(BOOL)a7;
- (void)_showToolAttributesPopoverFromRect:(CGRect)a3 inView:(id)a4;
- (void)_toolTapGestureRecognizer:(id)a3;
- (void)_updateToolViewVisibilityLayingOutIfNeeded:(BOOL)a3;
- (void)_updateUI;
- (void)dealloc;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadToolViewsWithDataSource:(id)a3;
- (void)removeToolView:(id)a3 updateUI:(BOOL)a4;
- (void)removeToolViewsWithIdentifier:(id)a3;
- (void)scrollSelectedToolViewToVisibleAnimated:(BOOL)a3;
- (void)scrollToolViewAtIndex:(unint64_t)a3 toVisibleAnimated:(BOOL)a4;
- (void)selectToolViewAtIndex:(unint64_t)a3;
- (void)setAllowHDR:(BOOL)a3;
- (void)setClippingViewLassoToolEditingViewVisible:(BOOL)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setCornerLocation:(unint64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setInterItemToolsSpacing:(double)a3;
- (void)setScalingFactor:(double)a3;
- (void)setScrollingEnabled:(BOOL)a3;
- (void)setUnselectedToolsVisible:(BOOL)a3;
- (void)toggleSelectedToolAndEraserAnimated:(BOOL)a3;
- (void)toggleSelectedToolAndLastSelectedToolAnimated:(BOOL)a3;
- (void)toggleSelectedToolAttributesPopoverFromRect:(CGRect)a3 inView:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateClippingViewEdgesVisibility;
- (void)updatePopoverUI;
@end

@implementation PKPaletteToolPickerView

- (PKPaletteToolPickerView)initWithToolViews:(id)a3
{
  v48[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    presentedViewControllers = v5->_presentedViewControllers;
    v5->_presentedViewControllers = v9;

    v5->_scalingFactor = 1.0;
    v11 = [MEMORY[0x1E695DF70] array];
    mutableToolViews = v5->_mutableToolViews;
    v5->_mutableToolViews = v11;

    v5->_interItemToolsSpacing = 0.0;
    v5->_unselectedToolsVisible = 1;
    v13 = objc_alloc_init(PKPaletteToolPickerClippingView);
    clippingView = v5->_clippingView;
    v5->_clippingView = v13;

    [(PKPaletteToolPickerClippingView *)v5->_clippingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerView *)v5 addSubview:v5->_clippingView];
    v15 = [(PKPaletteToolPickerClippingView *)v5->_clippingView topAnchor];
    v16 = [(PKPaletteToolPickerView *)v5 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [(PKPaletteToolPickerView *)v5 setClippingViewTopConstraint:v17];

    v18 = [(PKPaletteToolPickerClippingView *)v5->_clippingView leadingAnchor];
    v19 = [(PKPaletteToolPickerView *)v5 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [(PKPaletteToolPickerView *)v5 setClippingViewLeadingConstraint:v20];

    v21 = [(PKPaletteToolPickerClippingView *)v5->_clippingView bottomAnchor];
    v22 = [(PKPaletteToolPickerView *)v5 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(PKPaletteToolPickerView *)v5 setClippingViewBottomConstraint:v23];

    v24 = [(PKPaletteToolPickerClippingView *)v5->_clippingView trailingAnchor];
    v25 = [(PKPaletteToolPickerView *)v5 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [(PKPaletteToolPickerView *)v5 setClippingViewTrailingConstraint:v26];

    v27 = MEMORY[0x1E696ACD8];
    v28 = [(PKPaletteToolPickerView *)v5 clippingViewTopConstraint];
    v48[0] = v28;
    v29 = [(PKPaletteToolPickerView *)v5 clippingViewLeadingConstraint];
    v48[1] = v29;
    v30 = [(PKPaletteToolPickerView *)v5 clippingViewBottomConstraint];
    v48[2] = v30;
    v31 = [(PKPaletteToolPickerView *)v5 clippingViewTrailingConstraint];
    v48[3] = v31;
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

    v35 = [(PKPaletteToolPickerView *)v5 scrollView];
    [v35 addObserver:v5 forKeyPath:@"bounds" options:1 context:PKPaletteToolPickerScrollViewObserverContext];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v4;
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
  v3 = [(PKPaletteToolPickerView *)self scrollView];
  [v3 removeObserver:self forKeyPath:@"bounds" context:PKPaletteToolPickerScrollViewObserverContext];

  v4.receiver = self;
  v4.super_class = PKPaletteToolPickerView;
  [(PKPaletteToolPickerView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (PKPaletteToolPickerScrollViewObserverContext != a6)
  {
    goto LABEL_6;
  }

  v13 = [(PKPaletteToolPickerView *)self scrollView];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_6:
    v16.receiver = self;
    v16.super_class = PKPaletteToolPickerView;
    [(PKPaletteToolPickerView *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v15 = [v10 isEqualToString:@"bounds"];

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

- (void)_installScrollViewInView:(id)a3
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCEF8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(PKPaletteToolPickerView *)self setScrollView:v6];

  v7 = [(PKPaletteToolPickerView *)self scrollView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(PKPaletteToolPickerView *)self scrollView];
  [v8 setShowsVerticalScrollIndicator:0];

  v9 = [(PKPaletteToolPickerView *)self scrollView];
  [v9 setShowsHorizontalScrollIndicator:0];

  v10 = [(PKPaletteToolPickerView *)self scrollView];
  [v10 setPagingEnabled:0];

  v11 = [(PKPaletteToolPickerView *)self scrollView];
  [v11 setClipsToBounds:0];

  v12 = [(PKPaletteToolPickerView *)self scrollView];
  [v5 addSubview:v12];

  v13 = [(PKPaletteToolPickerView *)self scrollView];
  v14 = [v13 topAnchor];
  v15 = [v5 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [(PKPaletteToolPickerView *)self setScrollViewTopConstraint:v16];

  v17 = [(PKPaletteToolPickerView *)self scrollView];
  v18 = [v17 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [(PKPaletteToolPickerView *)self setScrollViewLeadingConstraint:v20];

  v21 = [(PKPaletteToolPickerView *)self scrollView];
  v22 = [v21 bottomAnchor];
  v23 = [v5 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [(PKPaletteToolPickerView *)self setScrollViewBottomConstraint:v24];

  v25 = [(PKPaletteToolPickerView *)self scrollView];
  v26 = [v25 trailingAnchor];
  v27 = [v5 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [(PKPaletteToolPickerView *)self setScrollViewTrailingConstraint:v28];

  v29 = [(PKPaletteToolPickerView *)self scrollView];
  v30 = [v29 centerXAnchor];
  v31 = [v5 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [(PKPaletteToolPickerView *)self setScrollViewCenterXConstraint:v32];

  v33 = [(PKPaletteToolPickerView *)self scrollView];
  v34 = [v33 centerYAnchor];
  v35 = [v5 centerYAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  [(PKPaletteToolPickerView *)self setScrollViewCenterYConstraint:v36];

  v37 = MEMORY[0x1E696ACD8];
  v38 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  v43[0] = v38;
  v39 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  v43[1] = v39;
  v40 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  v43[2] = v40;
  v41 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  v43[3] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v37 activateConstraints:v42];
}

- (void)_installStackViewInScrollView:(id)a3
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(PKPaletteToolPickerView *)self setStackView:v6];

  v7 = [(PKPaletteToolPickerView *)self stackView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(PKPaletteToolPickerView *)self stackView];
  [v8 setAxis:0];

  v9 = [(PKPaletteToolPickerView *)self stackView];
  [v5 addSubview:v9];

  v35 = MEMORY[0x1E696ACD8];
  v42 = [(PKPaletteToolPickerView *)self stackView];
  v41 = [v42 topAnchor];
  v40 = [v5 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v43[0] = v39;
  v38 = [(PKPaletteToolPickerView *)self stackView];
  v37 = [v38 bottomAnchor];
  v36 = [v5 bottomAnchor];
  v34 = [v37 constraintEqualToAnchor:v36];
  v43[1] = v34;
  v10 = [(PKPaletteToolPickerView *)self stackView];
  v11 = [v10 leftAnchor];
  v12 = [v5 leftAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v43[2] = v13;
  v14 = [(PKPaletteToolPickerView *)self stackView];
  v15 = [v14 rightAnchor];
  v16 = [v5 rightAnchor];

  v17 = [v15 constraintEqualToAnchor:v16];
  v43[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v35 activateConstraints:v18];

  v19 = [(PKPaletteToolPickerView *)self stackView];
  v20 = [v19 heightAnchor];
  v21 = [(PKPaletteToolPickerView *)self scrollView];
  v22 = [v21 heightAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [(PKPaletteToolPickerView *)self setStackViewCompactHeightConstraint:v23];

  v24 = [(PKPaletteToolPickerView *)self scrollView];
  v25 = [v24 widthAnchor];
  v26 = [(PKPaletteToolPickerView *)self stackView];
  v27 = [v26 widthAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [(PKPaletteToolPickerView *)self setScrollViewWidthConstraint:v28];

  v29 = [(PKPaletteToolPickerView *)self scrollView];
  v30 = [v29 heightAnchor];
  v31 = [(PKPaletteToolPickerView *)self stackView];
  v32 = [v31 heightAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [(PKPaletteToolPickerView *)self setScrollViewHeightConstraint:v33];
}

- (void)setAllowHDR:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_allowHDR != a3)
  {
    v3 = a3;
    self->_allowHDR = a3;
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

          [*(*(&v9 + 1) + 8 * v8++) setAllowHDR:{v3, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_addToolView:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setAllowHDR:{-[PKPaletteToolPickerView allowHDR](self, "allowHDR")}];
  [(PKPaletteToolPickerView *)self _insertToolView:v6 atIndex:[(NSMutableArray *)self->_mutableToolViews count] updateUI:v4];
}

- (void)removeToolView:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  selectedToolView = self->_selectedToolView;
  v10 = v6;
  if (selectedToolView == v6)
  {
    self->_selectedToolView = 0;

    v6 = v10;
  }

  lastSelectedToolView = self->_lastSelectedToolView;
  if (lastSelectedToolView == v6)
  {
    self->_lastSelectedToolView = 0;

    v6 = v10;
  }

  [(NSMutableArray *)self->_mutableToolViews removeObject:v6];
  v9 = [(PKPaletteToolPickerView *)self stackView];
  [v9 removeArrangedSubview:v10];

  [(PKPaletteToolView *)v10 removeFromSuperview];
  if (v4)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_insertToolView:(id)a3 atIndex:(unint64_t)a4 updateUI:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [v8 setAllowHDR:{-[PKPaletteToolPickerView allowHDR](self, "allowHDR")}];
  [(NSMutableArray *)self->_mutableToolViews insertObject:v8 atIndex:a4];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(PKPaletteToolPickerView *)self stackView];
  [v9 insertArrangedSubview:v8 atIndex:a4];

  v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__toolTapGestureRecognizer_];
  [v8 addGestureRecognizer:?];

  if (v5)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (BOOL)hasToolViewWithIdentifier:(id)a3
{
  v4 = a3;
  mutableToolViews = self->_mutableToolViews;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKPaletteToolPickerView_hasToolViewWithIdentifier___block_invoke;
  v8[3] = &unk_1E82DCD00;
  v9 = v4;
  v6 = v4;
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

- (void)removeToolViewsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_mutableToolViews copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKPaletteToolPickerView_removeToolViewsWithIdentifier___block_invoke;
  v7[3] = &unk_1E82DCD28;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)setUnselectedToolsVisible:(BOOL)a3
{
  if (self->_unselectedToolsVisible != a3)
  {
    self->_unselectedToolsVisible = a3;
    [(PKPaletteToolPickerView *)self _updateToolViewVisibilityLayingOutIfNeeded:1];
  }
}

- (void)_updateToolViewVisibilityLayingOutIfNeeded:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PKPaletteToolPickerView__updateToolViewVisibilityLayingOutIfNeeded___block_invoke;
  v3[3] = &unk_1E82D90B8;
  v3[4] = self;
  v4 = a3;
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

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)a3
{
  if (self->_cornerLocation != a3)
  {
    self->_cornerLocation = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)setInterItemToolsSpacing:(double)a3
{
  if (vabdd_f64(self->_interItemToolsSpacing, a3) >= 0.00999999978)
  {
    self->_interItemToolsSpacing = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_toolTapGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if ([v4 state] == 1)
  {
    v6 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke;
    v29[3] = &unk_1E82D6E70;
    v30 = v5;
    v31 = self;
    [v6 animateWithDuration:4 delay:v29 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.65 completion:0.0];
    v7 = v30;
LABEL_3:

    goto LABEL_15;
  }

  if ([v5 isHighlighted])
  {
    v8 = MEMORY[0x1E69DD250];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_2;
    v26[3] = &unk_1E82D6E70;
    v27 = v5;
    v28 = self;
    [v8 animateWithDuration:4 delay:v26 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.65 completion:0.0];
  }

  if ([v4 state] == 3)
  {
    v9 = [v5 tool];
    v10 = [v9 isRulerTool];

    v11 = [v5 tool];
    v12 = [v11 isHandwritingTool];

    if (v12 && ([v5 isSelected] & 1) == 0)
    {
      v13 = [(PKPaletteToolPickerView *)self drawingPaletteStatistics];
      [v13 recordHandwritingToolSelected];
    }

    v14 = [(PKPaletteToolPickerView *)self selectedToolView];
    v15 = (v14 != v5) | v10;

    if ((v15 & 1) == 0)
    {
      [(PKPaletteToolPickerView *)self _showToolAttributesPopoverFromRect:0 inView:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      goto LABEL_15;
    }

    if (!v10)
    {
      [(PKPaletteToolPickerView *)self _setSelectedToolView:v5 animated:1 showToolTip:0 notifyDelegate:1 fromTap:1];
      goto LABEL_15;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_3;
    v23[3] = &unk_1E82D6E70;
    v24 = v5;
    v25 = self;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __53__PKPaletteToolPickerView__toolTapGestureRecognizer___block_invoke_4;
    v20 = &unk_1E82DC850;
    v21 = v24;
    v22 = self;
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

- (void)selectToolViewAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_mutableToolViews objectAtIndex:a3];
  [(PKPaletteToolPickerView *)self _setSelectedToolView:v4 animated:0 showToolTip:0 notifyDelegate:0 fromTap:0];
}

- (void)_setSelectedToolView:(id)a3 animated:(BOOL)a4 showToolTip:(BOOL)a5 notifyDelegate:(BOOL)a6 fromTap:(BOOL)a7
{
  v7 = a7;
  v41 = a6;
  v8 = a5;
  v9 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (self->_selectedToolView != v12)
  {
    if (![(PKPaletteToolPickerView *)self _canSelectToolView:v12 fromTap:v7])
    {
      v19 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v12;
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

    objc_storeStrong(&self->_selectedToolView, a3);
    [(PKPaletteToolView *)self->_selectedToolView setSelected:1];
    [(PKPaletteToolPickerView *)self _updateToolViewVisibilityLayingOutIfNeeded:0];
    v17 = [(PKPaletteToolPickerView *)self scrollView];
    [(PKPaletteToolView *)self->_selectedToolView frame];
    v18 = [v17 _isRectFullyVisible:?];

    if (v18 & 1 | !v9)
    {
      if (((v9 | v18) & 1) == 0)
      {
        [(PKPaletteToolPickerView *)self scrollSelectedToolViewToVisibleAnimated:0];
      }
    }

    else
    {
      v24 = [(PKPaletteToolPickerView *)self scrollView];
      v25 = [v24 delegate];
      [(PKPaletteToolPickerView *)self setLastScrollViewDelegateBeforeScrollingToolToVisible:v25];

      v26 = objc_alloc_init(PKScrollViewDelegateEventsHandler);
      [(PKPaletteToolPickerView *)self setScrollViewDelegateEventsHandler:v26];

      v27 = [(PKPaletteToolPickerView *)self scrollViewDelegateEventsHandler];
      v28 = [(PKPaletteToolPickerView *)self scrollView];
      [v28 setDelegate:v27];

      objc_initWeak(buf, self);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __92__PKPaletteToolPickerView__setSelectedToolView_animated_showToolTip_notifyDelegate_fromTap___block_invoke;
      v43[3] = &unk_1E82DCD78;
      objc_copyWeak(&v44, buf);
      v45 = v8;
      v29 = [(PKPaletteToolPickerView *)self scrollViewDelegateEventsHandler];
      [v29 setScrollViewDidEndScrollingAnimationHandler:v43];

      [(PKPaletteToolPickerView *)self scrollSelectedToolViewToVisibleAnimated:1];
      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
    }

    if ((v8 & v18) == 1)
    {
      v30 = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
      v31 = v30 == 0;

      if (!v31)
      {
        v32 = self->_selectedToolView;
        v33 = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
        [(PKPaletteToolView *)v32 showTooltip:v33];
      }
    }

    if (v9)
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

    if (v41)
    {
      v38 = [*(&self->super.super.super.isa + v40) indexOfObject:self->_selectedToolView];
      v39 = [(PKPaletteToolPickerView *)self delegate];
      [v39 toolPicker:self didSelectTool:self->_selectedToolView atIndex:v38];
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

- (BOOL)_canSelectToolView:(id)a3 fromTap:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([(NSMutableArray *)self->_mutableToolViews containsObject:v6]& 1) == 0)
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
  v10 = [v9 toolPicker:self canSelectTool:v6 fromTap:v4];

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

- (void)_showToolAttributesPopoverFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PKPaletteToolPickerView *)self delegate];
  v11 = [v10 palettePopoverPresentingController];

  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = [(PKPaletteToolView *)self->_selectedToolView attributeViewController];
  [(PKPaletteToolPickerView *)self setToolAttributesPopover:v12];

  v13 = [(PKPaletteToolView *)self->_selectedToolView tool];
  v14 = [v13 toolIdentifier];
  v15 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  [v15 setToolIdentifier:v14];

  v16 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = v16;
  v18 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (!v18)
  {

LABEL_8:
    v21 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    [v21 setModalPresentationStyle:7];

    v22 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v23 = [v22 popoverPresentationController];
    [v23 setDelegate:self];

    if (v9)
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

    v25 = [(PKPaletteToolPickerView *)self edgeLocation];
    v26 = [(PKPaletteToolPickerView *)self cornerLocation];
    v27 = [(PKPaletteToolPickerView *)self _useCompactSize];
    v28 = [(PKPaletteToolPickerView *)self cornerLocation];
    if (v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = 2;
    }

    if (!v24 && !v27)
    {
      if (v28 == -1)
      {
        v30 = PKUIPopoverPermittedArrowDirectionsForEdge(v25);
      }

      else
      {
        v30 = PKUIPopoverPermittedArrowDirectionsForCorner(v26);
      }

      v29 = v30;
    }

    v31 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v32 = [v31 popoverPresentationController];
    [v32 setPermittedArrowDirections:v29];

    if (_UISolariumEnabled())
    {
      v33 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      v34 = [v33 popoverPresentationController];
      [v34 _setShouldHideArrow:1];
    }

    if (v24)
    {
      v35 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      v36 = [v35 popoverPresentationController];
      [v36 setSourceRect:{x, y, width, height}];

      v37 = v9;
    }

    else
    {
      [(PKPaletteToolPickerView *)self sourceRectForPopoverPresentationForTool:self->_selectedToolView];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      v47 = [v46 popoverPresentationController];
      [v47 setSourceRect:{v39, v41, v43, v45}];

      v37 = [(PKPaletteToolPickerView *)self sourceViewForPopoverPresentationForTool:self->_selectedToolView];
    }

    v48 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v49 = [v48 popoverPresentationController];
    [v49 setSourceView:v37];

    if (!v24)
    {
    }

    v50 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v51 = [v50 popoverPresentationController];
    [v51 _setShouldDisableInteractionDuringTransitions:0];

    v52 = [(PKPaletteToolPickerView *)self delegate];
    v53 = [v52 palettePopoverPassthroughViews];
    v54 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v55 = [v54 popoverPresentationController];
    [v55 setPassthroughViews:v53];

    v56 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    v57 = [v56 popoverPresentationController];
    [v57 _setIgnoresKeyboardNotifications:1];

    [(PKPaletteToolPickerView *)self updatePopoverUI];
    v58 = [v11 presentedViewController];

    if (!v58)
    {
      v59 = [(PKPaletteToolPickerView *)self presentedViewControllers];
      [v59 removeAllObjects];
    }

    if ([(PKPaletteToolPickerView *)self _canPresentToolAttributesPopover])
    {
      v60 = [(PKPaletteToolPickerView *)self presentedViewControllers];
      v61 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      [v60 addObject:v61];

      v62 = [(PKPaletteToolPickerView *)self tooltipPresentationHandle];
      [v62 hideFloatingLabel];

      v63 = [(PKPaletteToolPickerView *)self edgeLocation];
      v64 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      [v64 setEdgeLocation:v63];

      v17 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __69__PKPaletteToolPickerView__showToolAttributesPopoverFromRect_inView___block_invoke;
      v65[3] = &unk_1E82D7148;
      v65[4] = self;
      [v11 presentViewController:v17 animated:1 completion:v65];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v19 = v18;
  if ([v18 isBeingPresented])
  {

LABEL_31:
    goto LABEL_32;
  }

  v20 = [v19 isBeingDismissed];

  if ((v20 & 1) == 0)
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
  v3 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (v3)
  {
    v4 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    if ([v4 isBeingPresented])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [(PKPaletteToolPickerView *)self delegate];
      if ([v6 shouldPalettePresentPopover])
      {
        v7 = [(PKPaletteToolPickerView *)self presentedViewControllers];
        v8 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
        v5 = [v7 containsObject:v8] ^ 1;
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

- (CGRect)sourceRectForPopoverPresentationForTool:(id)a3
{
  v4 = a3;
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

  v24 = [(PKPaletteToolPickerView *)self scrollView];
  [v4 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(PKPaletteToolPickerView *)self stackView];
  [v24 convertRect:v33 fromView:{v26, v28, v30, v32}];
  v7 = v34;
  v9 = v35;
  v11 = v36;
  v13 = v37;

  if (_UISolariumEnabled())
  {
    v38 = [(PKPaletteToolPickerView *)self delegate];
    WeakRetained = [v38 toolPickerViewSourceViewForPopoverPresentation:self fromCorner:1];

    v39 = [(PKPaletteToolPickerView *)self scrollView];
    [WeakRetained frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [WeakRetained superview];
    [v39 convertRect:v48 fromView:{v41, v43, v45, v47}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [(PKPaletteToolPickerView *)self edgeLocation];
    if (v57 == 8 || v57 == 2)
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
  v14 = [(PKPaletteToolPickerView *)self cornerLocation];
  [(PKPaletteToolPickerView *)self cornerLocation];
  if (v14 == -1)
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

- (id)sourceViewForPopoverPresentationForTool:(id)a3
{
  if ([(PKPaletteToolPickerView *)self cornerLocation]== -1)
  {
    v5 = [(PKPaletteToolPickerView *)self scrollView];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained toolPickerViewSourceViewForPopoverPresentation:self fromCorner:{-[PKPaletteToolPickerView cornerLocation](self, "cornerLocation")}];
  }

  return v5;
}

- (void)updatePopoverUI
{
  v4 = [(PKPaletteToolPickerView *)self delegate];
  v3 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  [v4 updatePalettePopover:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaletteToolPickerView;
  [(PKPaletteToolPickerView *)&v14 traitCollectionDidChange:v4];
  v5 = [(PKPaletteToolPickerView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteToolPickerView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = v8 != [v4 horizontalSizeClass];
  }

  else
  {
    v9 = 1;
  }

  v10 = [(PKPaletteToolPickerView *)self traitCollection];
  v11 = [v10 userInterfaceStyle];
  v12 = [v4 userInterfaceStyle];

  if (v9 || v11 != v12)
  {
    [(PKPaletteToolPickerView *)self _updateUI];
    [(PKPaletteToolPickerView *)self updatePopoverUI];
    if (v9)
    {
      v13 = [(PKPaletteToolPickerView *)self delegate];
      [v13 toolPickerViewDidChangeTraitCollectionSizeClass:self];
    }
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  v184 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteToolPickerView *)self _stackViewAxis];
  v4 = [(PKPaletteToolPickerView *)self stackView];
  [v4 setAxis:v3];

  [(PKPaletteToolPickerView *)self interItemToolsSpacing];
  v6 = v5;
  v7 = [(PKPaletteToolPickerView *)self stackView];
  [v7 setSpacing:v6];

  v8 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v9 = [(PKPaletteToolPickerView *)self scrollView];
  [v9 setScrollEnabled:v8];

  v10 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v11 = [(PKPaletteToolPickerView *)self clippingView];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 536);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v14 setClipsToBounds:v10];

  [(PKPaletteToolPickerView *)self scalingFactor];
  v16 = v15;
  v17 = [(PKPaletteToolPickerView *)self clippingView];
  [v17 setScalingFactor:v16];

  v18 = [(PKPaletteToolPickerView *)self clippingViewTopConstraint];
  [v18 setConstant:0.0];

  v19 = [(PKPaletteToolPickerView *)self clippingViewBottomConstraint];
  [v19 setConstant:0.0];

  v20 = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
  [v20 setConstant:0.0];

  v21 = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
  [v21 setConstant:0.0];

  v22 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  [v22 setConstant:0.0];

  v23 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  [v23 setConstant:0.0];

  v24 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  [v24 setConstant:0.0];

  v25 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  [v25 setConstant:0.0];

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
  v40 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
  [v39 deactivateConstraints:v40];

  v41 = MEMORY[0x1E696ACD8];
  v42 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
  [v41 deactivateConstraints:v42];

  v43 = MEMORY[0x1E696ACD8];
  v44 = [(PKPaletteToolPickerView *)self toolsWidthCompactConstraints];
  [v43 deactivateConstraints:v44];

  v45 = [MEMORY[0x1E695DF70] array];
  toolsWidthConstraints = self->_toolsWidthConstraints;
  self->_toolsWidthConstraints = v45;

  v47 = [MEMORY[0x1E695DF70] array];
  toolsHeightConstraints = self->_toolsHeightConstraints;
  self->_toolsHeightConstraints = v47;

  v49 = [MEMORY[0x1E695DF70] array];
  toolsWidthCompactConstraints = self->_toolsWidthCompactConstraints;
  self->_toolsWidthCompactConstraints = v49;

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
          v58 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
          v59 = [v57 widthAnchor];
          v60 = [(PKPaletteToolPickerView *)self widthAnchor];
          v61 = [v59 constraintEqualToAnchor:v60];
          [v58 addObject:v61];

          v62 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
          v63 = [v57 heightAnchor];
          v64 = [(PKPaletteToolPickerView *)self heightAnchor];
          v65 = [v63 constraintEqualToAnchor:v64];
          [v62 addObject:v65];
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
  v66 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
  v67 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
  v68 = [v66 arrayByAddingObjectsFromArray:v67];

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
  v156 = [(PKPaletteToolPickerView *)self stackViewCompactHeightConstraint];
  v179[0] = v156;
  v74 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
  v179[1] = v74;
  v75 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
  v179[2] = v75;
  v76 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
  v179[3] = v76;
  v77 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
  v179[4] = v77;
  v78 = [(PKPaletteToolPickerView *)self scrollViewCenterXConstraint];
  v179[5] = v78;
  v79 = [(PKPaletteToolPickerView *)self scrollViewCenterYConstraint];
  v179[6] = v79;
  v80 = [(PKPaletteToolPickerView *)self scrollViewWidthConstraint];
  v179[7] = v80;
  v81 = [(PKPaletteToolPickerView *)self scrollViewHeightConstraint];
  v179[8] = v81;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:9];
  [v155 deactivateConstraints:v82];

  if ([(PKPaletteToolPickerView *)self isScrollingEnabled])
  {
    v83 = [(PKPaletteToolPickerView *)self edgeLocation];
    [(PKPaletteToolPickerView *)self scalingFactor];
    v85 = v84;
    v86 = [(PKPaletteToolPickerView *)self _useCompactSize];
    v87 = [(PKPaletteToolPickerView *)self clippingView];
    v88 = v87;
    if (v87)
    {
      v89 = *(v87 + 523);
    }

    else
    {
      v89 = 0;
    }

    v90 = 0x1E696A000uLL;
    v91 = v89 | ~_UISolariumEnabled();
    v92 = 26.0;
    if (v86)
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

    if (v83 == 8 || v83 == 2)
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

  v98 = [(PKPaletteToolPickerView *)self scrollView];
  [v98 setContentInset:{v94, v95, v97, v96}];

  v99 = [(PKPaletteToolPickerView *)self scrollView];
  [v99 contentInset];
  v101 = -v100;

  v102 = [(PKPaletteToolPickerView *)self scrollView];
  [v102 setContentOffset:{v101, 0.0}];

  [(PKPaletteToolPickerView *)self _useCompactSize];
  [(PKPaletteToolPickerView *)self scalingFactor];
  v104 = v103 * 0.0;
  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    v105 = *(v90 + 3288);
    v106 = [(PKPaletteToolPickerView *)self toolsWidthCompactConstraints];
    v107 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
    v178[0] = v107;
    v108 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
    v178[1] = v108;
    v109 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    v178[2] = v109;
    v110 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    v178[3] = v110;
    v111 = [(PKPaletteToolPickerView *)self stackViewCompactHeightConstraint];
    v178[4] = v111;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:5];
    v113 = [v106 arrayByAddingObjectsFromArray:v112];
    [v105 activateConstraints:v113];

    v114 = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
    [v114 setConstant:-v104];

    v115 = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
    [v115 setConstant:v104];

    v116 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    [v116 setConstant:v104];

    v117 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    [v117 setConstant:-v104];
    goto LABEL_69;
  }

  v118 = [(PKPaletteToolPickerView *)self stackView];
  [v118 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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
  v117 = _Block_copy(aBlock);
  v126 = [(PKPaletteToolPickerView *)self edgeLocation];
  if (v126 == 8 || v126 == 2)
  {
    v127 = *(v90 + 3288);
    v128 = [(PKPaletteToolPickerView *)self toolsWidthConstraints];
    [v127 activateConstraints:v128];

    v129 = [(PKPaletteToolPickerView *)self clippingViewTopConstraint];
    [v129 setConstant:-v104];

    v130 = [(PKPaletteToolPickerView *)self clippingViewBottomConstraint];
    [v130 setConstant:v104];

    v131 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
    [v131 setConstant:v104];

    v132 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
    [v132 setConstant:-v104];

    if (v122 < v125)
    {
      v133 = *(v90 + 3288);
      v134 = [(PKPaletteToolPickerView *)self scrollViewCenterYConstraint];
      v177[0] = v134;
      v135 = [(PKPaletteToolPickerView *)self scrollViewHeightConstraint];
      v177[1] = v135;
      v136 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
      v177[2] = v136;
      v137 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
      v177[3] = v137;
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
    v141 = [(PKPaletteToolPickerView *)self toolsHeightConstraints];
    [v140 activateConstraints:v141];

    v142 = [(PKPaletteToolPickerView *)self clippingViewLeadingConstraint];
    [v142 setConstant:-v104];

    v143 = [(PKPaletteToolPickerView *)self clippingViewTrailingConstraint];
    [v143 setConstant:v104];

    v144 = [(PKPaletteToolPickerView *)self scrollViewLeadingConstraint];
    [v144 setConstant:v104];

    v145 = [(PKPaletteToolPickerView *)self scrollViewTrailingConstraint];
    [v145 setConstant:-v104];

    if (v120 < v125)
    {
      v133 = *(v90 + 3288);
      v134 = [(PKPaletteToolPickerView *)self scrollViewCenterXConstraint];
      v176[0] = v134;
      v135 = [(PKPaletteToolPickerView *)self scrollViewWidthConstraint];
      v176[1] = v135;
      v136 = [(PKPaletteToolPickerView *)self scrollViewTopConstraint];
      v176[2] = v136;
      v137 = [(PKPaletteToolPickerView *)self scrollViewBottomConstraint];
      v176[3] = v137;
      v138 = MEMORY[0x1E695DEC8];
      v139 = v176;
      goto LABEL_67;
    }
  }

  v117[2](v117);
LABEL_69:

  v147 = [(PKPaletteToolPickerView *)self edgeLocation];
  v149 = v147 == 2 || v147 == 8;
  v150 = [(PKPaletteToolPickerView *)self clippingView];
  v151 = v150;
  if (v150 && *(v150 + 544) != v149)
  {
    *(v150 + 544) = v149;
    [(PKPaletteToolPickerClippingView *)v150 _updateUI];
  }

  v152 = [(PKPaletteToolPickerView *)self edgeLocation]== 8;
  v153 = [(PKPaletteToolPickerView *)self clippingView];
  v154 = v153;
  if (v153 && *(v153 + 520) != v152)
  {
    *(v153 + 520) = v152;
    [(PKPaletteToolPickerClippingView *)v153 _updateUI];
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
  v3 = [(PKPaletteToolPickerView *)self edgeLocation];
  if (v3 == 2 || v3 == 8)
  {
    v4 = [(PKPaletteToolPickerView *)self scrollView];
    [v4 contentOffset];
    v6 = v5;
  }

  else
  {
    v4 = [(PKPaletteToolPickerView *)self scrollView];
    [v4 contentOffset];
    v6 = v7;
  }

  v8 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v9 = v6 > 10.0 && v8;
  v10 = [(PKPaletteToolPickerView *)self clippingView];
  v11 = v10;
  if (v10 && *(v10 + 521) != v9)
  {
    *(v10 + 521) = v9;
    [(PKPaletteToolPickerClippingView *)v10 _updateUI];
  }

  v12 = [(PKPaletteToolPickerView *)self scrollView];
  [v12 _pk_maximumContentOffset];
  v14 = v13;
  v16 = v15;

  v17 = [(PKPaletteToolPickerView *)self edgeLocation];
  if (v17 == 8 || v17 == 2)
  {
    v14 = v16;
  }

  v19 = [(PKPaletteToolPickerView *)self isScrollingEnabled];
  v20 = v6 < v14 + -10.0 && v19;
  v21 = [(PKPaletteToolPickerView *)self clippingView];
  if (v21 && v21[522] != v20)
  {
    v21[522] = v20;
    v22 = v21;
    [(PKPaletteToolPickerClippingView *)v21 _updateUI];
    v21 = v22;
  }
}

- (BOOL)_useCompactSize
{
  v3 = [(PKPaletteToolPickerView *)self traitCollection];
  v4 = [(PKPaletteToolPickerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  return v6;
}

- (int64_t)_stackViewAxis
{
  if ([(PKPaletteToolPickerView *)self _useCompactSize])
  {
    return 0;
  }

  v4 = [(PKPaletteToolPickerView *)self edgeLocation];
  return v4 == 2 || v4 == 8;
}

- (double)_widthForToolAtIndex:(unint64_t)a3 isCompactSize:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKPaletteToolPickerView *)self delegate];
  [v7 toolPickerView:self widthForToolAtIndex:a3 isCompactSize:v4];
  v9 = v8;

  return v9;
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PKPaletteToolPickerView *)self toolAttributesPopover];

  if (v4)
  {
    v5 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (BOOL)canToggleSelectedToolAndEraser
{
  if ([(NSMutableArray *)self->_mutableToolViews count]>= 2)
  {
    v3 = [(PKPaletteToolPickerView *)self selectedToolView];
    v4 = [v3 tool];
    if ([v4 isErasingTool])
    {
    }

    else
    {
      v5 = [(PKPaletteToolPickerView *)self _eraserToolView];

      if (v5)
      {
        return 1;
      }
    }

    v6 = [(PKPaletteToolPickerView *)self selectedToolView];
    v7 = [v6 tool];
    if ([v7 isErasingTool])
    {
      v8 = [(PKPaletteToolView *)self->_lastSelectedToolView tool];
      v9 = [v8 isErasingTool];

      if (!v9)
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

- (void)toggleSelectedToolAndEraserAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PKPaletteToolPickerView *)self canToggleSelectedToolAndEraser])
  {
    v5 = [(PKPaletteToolPickerView *)self _eraserToolView];
    v6 = [(PKPaletteToolPickerView *)self selectedToolView];

    if (v6 == v5)
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

      v7 = self;
    }

    else
    {
      v7 = self;
      lastSelectedToolView = v5;
    }

    [(PKPaletteToolPickerView *)v7 _setSelectedToolView:lastSelectedToolView animated:v3 showToolTip:1 notifyDelegate:1 fromTap:0];
    [(PKPaletteToolPickerView *)self dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Can't toggle between last selected tool and eraser.", buf, 2u);
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

- (void)toggleSelectedToolAndLastSelectedToolAnimated:(BOOL)a3
{
  v3 = a3;
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

    [(PKPaletteToolPickerView *)self _setSelectedToolView:lastSelectedToolView animated:v3 showToolTip:1 notifyDelegate:1 fromTap:0];
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

- (void)toggleSelectedToolAttributesPopoverFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v9 = [(PKPaletteToolPickerView *)self delegate];
  v10 = [v9 palettePopoverPresentingController];

  v11 = [(PKPaletteToolPickerView *)self toolAttributesPopover];
  if (v11 && (v12 = v11, [v10 presentedViewController], v13 = objc_claimAutoreleasedReturnValue(), -[PKPaletteToolPickerView toolAttributesPopover](self, "toolAttributesPopover"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v13 == v14))
  {
    [(PKPaletteToolPickerView *)self dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    [(PKPaletteToolPickerView *)self _showToolAttributesPopoverFromRect:v15 inView:x, y, width, height];
  }
}

- (BOOL)_isAllToolsColorUserInterfaceStyleEqualsTo:(int64_t)a3
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
        v11 = [(PKPaletteToolPickerView *)self colorUserInterfaceStyle];
        v8 &= v11 == [v10 colorUserInterfaceStyle];
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

- (BOOL)_isAllToolsEdgeLocationEqualsTo:(unint64_t)a3
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
        v11 = [(PKPaletteToolPickerView *)self edgeLocation];
        v8 &= v11 == [v10 edgeLocation];
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

- (void)reloadToolViewsWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_mutableToolViews copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKPaletteToolPickerView_reloadToolViewsWithDataSource___block_invoke;
  v10[3] = &unk_1E82DCDA0;
  v10[4] = self;
  [v5 enumerateObjectsUsingBlock:v10];

  v6 = [v4 numberOfToolsInToolPickerView:self];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v4 toolPickerView:self viewForToolAtIndex:i];
      [(PKPaletteToolPickerView *)self _addToolView:v9 updateUI:0];
    }
  }

  [(PKPaletteToolPickerView *)self _updateUI];
}

- (void)setScrollingEnabled:(BOOL)a3
{
  if (self->_scrollingEnabled != a3)
  {
    self->_scrollingEnabled = a3;
    [(PKPaletteToolPickerView *)self _updateUI];
  }
}

- (void)scrollSelectedToolViewToVisibleAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(PKPaletteToolPickerView *)self scrollView];
  v5 = [(PKPaletteToolPickerView *)self selectedToolView];
  [v5 frame];
  [v6 scrollRectToVisible:v3 animated:?];
}

- (void)scrollToolViewAtIndex:(unint64_t)a3 toVisibleAnimated:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKPaletteToolPickerView *)self toolViews];
  v9 = [v7 objectAtIndex:a3];

  v8 = [(PKPaletteToolPickerView *)self scrollView];
  [v9 frame];
  [v8 scrollRectToVisible:v4 animated:?];
}

- (void)setClippingViewLassoToolEditingViewVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPaletteToolPickerView *)self clippingView];
  if (v4 && v4[523] != v3)
  {
    v4[523] = v3;
    v5 = v4;
    [(PKPaletteToolPickerClippingView *)v4 _updateUI];
    v4 = v5;
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