@interface _SFSettingsAlertContentController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSArray)items;
- (_SFSettingsAlertContentController)initWithNibName:(id)a3 bundle:(id)a4;
- (_SFSettingsAlertController)alertController;
- (id)_createViewForItem:(id)a3;
- (void)_addGroupSeparatorIfNeededBeforeItemAtIndex:(unint64_t)a3;
- (void)_addViewForItem:(id)a3;
- (void)_alignButtonImageView:(id)a3;
- (void)_panRecognized:(id)a3;
- (void)_scrollToBottomIfNeeded;
- (void)_stepperValueChanged:(id)a3;
- (void)_tappedItemView:(id)a3;
- (void)_updateFocusedItemConstraints;
- (void)_updatePreferredContentSize;
- (void)_updateSeparators;
- (void)addDivider;
- (void)addItem:(id)a3;
- (void)alertItemViewContentSizeDidChange:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllItems;
- (void)setFocusedItem:(id)a3;
- (void)setNeedsUpdatePreferredContentSize;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _SFSettingsAlertContentController

- (_SFSettingsAlertContentController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _SFSettingsAlertContentController;
  v4 = [(_SFSettingsAlertContentController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    items = v4->_items;
    v4->_items = v5;

    v7 = [MEMORY[0x1E696AD50] indexSet];
    groupStartIndices = v4->_groupStartIndices;
    v4->_groupStartIndices = v7;

    v14[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [(_SFSettingsAlertContentController *)v4 registerForTraitChanges:v9 withTarget:v4 action:sel_setNeedsUpdatePreferredContentSize];

    v11 = v4;
  }

  return v4;
}

- (void)removeAllItems
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_items;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * v7) viewAsUIView];
        [v8 removeObserver:self forKeyPath:@"highlighted" context:kvoContext_1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x1E695DF70] array];
  items = self->_items;
  self->_items = v9;

  lastViewForAlignment = self->_lastViewForAlignment;
  self->_lastViewForAlignment = 0;

  v12 = [MEMORY[0x1E696AD50] indexSet];
  groupStartIndices = self->_groupStartIndices;
  self->_groupStartIndices = v12;

  v14 = [(UIStackView *)self->_stackView subviews];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) removeFromSuperview];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kvoContext_1 == a6 && [v10 isEqualToString:@"highlighted"])
  {
    [(_SFSettingsAlertContentController *)self _updateSeparators];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SFSettingsAlertContentController;
    [(_SFSettingsAlertContentController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)loadView
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"FontStack"];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:3];
  UIEdgeInsetsMakeWithEdges();
  [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:?];
  [(_SFSettingsAlertContentController *)self setView:self->_scrollView];
  v5 = MEMORY[0x1E69DCF90];
  v35 = self->_scrollView;
  v6 = [[v5 alloc] initWithFrame:{0.0, 0.0, 320.0, 480.0}];
  stackView = self->_stackView;
  self->_stackView = v6;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIScrollView *)v35 addSubview:self->_stackView];
  v8 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v9 = [(UIStackView *)self->_stackView topAnchor];
  v10 = [v8 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = [(UIStackView *)self->_stackView bottomAnchor];
  v13 = [v8 bottomAnchor];
  v33 = [v12 constraintEqualToAnchor:v13];

  v38[0] = v11;
  v38[1] = v33;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  stackViewTopBottomConstraints = self->_stackViewTopBottomConstraints;
  self->_stackViewTopBottomConstraints = v14;

  v16 = [(UIStackView *)self->_stackView widthAnchor];
  v17 = [(UIScrollView *)self->_scrollView safeAreaLayoutGuide];
  v18 = [v17 widthAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  stackViewWidthConstraint = self->_stackViewWidthConstraint;
  self->_stackViewWidthConstraint = v19;

  v21 = MEMORY[0x1E696ACD8];
  v22 = [(UIStackView *)self->_stackView leadingAnchor];
  v23 = v8;
  v34 = v8;
  v24 = [v8 leadingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v37[0] = v25;
  v26 = [(UIStackView *)self->_stackView trailingAnchor];
  v27 = [v23 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v37[1] = v28;
  v37[2] = v11;
  v29 = self->_stackViewWidthConstraint;
  v37[3] = v33;
  v37[4] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [v21 activateConstraints:v30];

  items = self->_items;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __45___SFSettingsAlertContentController_loadView__block_invoke;
  v36[3] = &unk_1E8493CE0;
  v36[4] = self;
  [(NSMutableArray *)items enumerateObjectsUsingBlock:v36];
  v32 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__panRecognized_];
  [v32 setMaximumNumberOfTouches:1];
  [v32 setDelegate:self];
  [(UIScrollView *)v35 addGestureRecognizer:v32];
}

- (void)_updatePreferredContentSize
{
  v3 = [(_SFSettingsAlertContentController *)self popoverPresentationController];
  [v3 popoverLayoutMargins];
  v41 = v5;
  v42 = v4;
  v37 = v7;
  v39 = v6;

  v8.f64[0] = v42;
  *&v8.f64[1] = v39;
  v9.f64[0] = v41;
  *&v9.f64[1] = v37;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *MEMORY[0x1E69DDCE0]), vceqq_f64(v9, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    UIEdgeInsetsMakeWithEdges();
    v41 = v11;
    v42 = v10;
    v37 = v13;
    v39 = v12;
  }

  v14 = [(_SFSettingsAlertContentController *)self popoverPresentationController:v37];
  v15 = [v14 containerView];
  [v15 bounds];
  v45.origin.x = v40 + v16;
  v45.origin.y = v42 + v17;
  v45.size.width = v18 - (v38 + v40);
  v45.size.height = v19 - (v41 + v42);
  v20 = fmin(CGRectGetWidth(v45), 414.0);

  v21 = [(UIStackView *)self->_stackView widthAnchor];
  v43 = [v21 constraintLessThanOrEqualToConstant:v20];

  [v43 setActive:1];
  [(NSLayoutConstraint *)self->_stackViewWidthConstraint setActive:0];
  [(UIStackView *)self->_stackView layoutIfNeeded];
  v22 = *MEMORY[0x1E69DE090];
  v23 = *(MEMORY[0x1E69DE090] + 8);
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], v23];
  v26 = v25;
  focusedItem = self->_focusedItem;
  if (focusedItem)
  {
    v28 = [(_SFSettingsAlertItem *)focusedItem viewAsUIView];
    [v28 systemLayoutSizeFittingSize:{v22, v23}];
    v30 = v29;

    v31 = self->_focusedItem;
    v32 = [(NSMutableArray *)self->_items lastObject];

    if (v31 != v32)
    {
      _SFOnePixel();
      v30 = v30 - v33;
      [(UIScrollView *)self->_scrollView setContentSize:v26, v30];
    }
  }

  else
  {
    v30 = v24;
  }

  [v43 setActive:0];
  [(NSLayoutConstraint *)self->_stackViewWidthConstraint setActive:1];
  v34 = [(_SFSettingsAlertContentController *)self alertController];
  v35 = [v34 _rootContentController];

  if (v35 != self)
  {
    v36 = [v34 view];
    [v36 bounds];
    v26 = fmax(v26, CGRectGetWidth(v46));
  }

  [(_SFSettingsAlertContentController *)self setPreferredContentSize:v26, v30];
  [v34 setPreferredContentSize:{v26, v30}];
}

- (void)_scrollToBottomIfNeeded
{
  self->_updateScrollPositionAfterLayout = 0;
  if (self->_usesReverseOrder)
  {
    [(UIScrollView *)self->_scrollView contentSize];
    v5 = v4;
    [(UIScrollView *)self->_scrollView bounds];
    v6 = v5 - CGRectGetHeight(v9);
    [(UIScrollView *)self->_scrollView adjustedContentInset];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:0 animated:0.0, v6 + v7];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = _SFSettingsAlertContentController;
  [(_SFSettingsAlertContentController *)&v9 viewWillAppear:?];
  v5 = [(_SFSettingsAlertContentController *)self navigationController];
  v6 = [(_SFSettingsAlertContentController *)self navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 firstObject];
  [v5 setNavigationBarHidden:v8 == self animated:v3];

  [(_SFSettingsAlertContentController *)self _updateSeparators];
  [(_SFSettingsAlertContentController *)self _updatePreferredContentSize];
  if (self->_usesReverseOrder)
  {
    self->_updateScrollPositionAfterLayout = 1;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertContentController;
  [(_SFSettingsAlertContentController *)&v4 viewDidAppear:a3];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SFSettingsAlertContentController;
  [(_SFSettingsAlertContentController *)&v3 viewDidLayoutSubviews];
  if (self->_updatePreferredContentSizeAfterLayout)
  {
    self->_updatePreferredContentSizeAfterLayout = 0;
    [(_SFSettingsAlertContentController *)self _updatePreferredContentSize];
  }

  if (self->_updateScrollPositionAfterLayout)
  {
    [(_SFSettingsAlertContentController *)self _scrollToBottomIfNeeded];
  }
}

- (void)setNeedsUpdatePreferredContentSize
{
  self->_updatePreferredContentSizeAfterLayout = 1;
  v2 = [(_SFSettingsAlertContentController *)self view];
  [v2 setNeedsLayout];
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_items copy];

  return v2;
}

- (void)setFocusedItem:(id)a3
{
  v5 = a3;
  if (self->_focusedItem != v5)
  {
    objc_storeStrong(&self->_focusedItem, a3);
    [(UIScrollView *)self->_scrollView setScrollEnabled:v5 == 0];
    v6 = [(_SFSettingsAlertItem *)self->_focusedItem viewAsUIView];
    [v6 layoutIfNeeded];

    [(_SFSettingsAlertContentController *)self _updateFocusedItemConstraints];
    v7 = [(_SFSettingsAlertContentController *)self view];
    [v7 setNeedsLayout];
    v8 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___SFSettingsAlertContentController_setFocusedItem___block_invoke;
    v10[3] = &unk_1E848F548;
    v11 = v7;
    v12 = self;
    v9 = v7;
    [v8 _animateUsingDefaultTimingWithOptions:2 animations:v10 completion:0];
  }
}

- (void)_updateFocusedItemConstraints
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (self->_focusedItemConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    focusedItemConstraints = self->_focusedItemConstraints;
    self->_focusedItemConstraints = 0;
  }

  focusedItem = self->_focusedItem;
  if (focusedItem)
  {
    v5 = [(_SFSettingsAlertItem *)focusedItem viewAsUIView];
    v6 = [(_SFSettingsAlertContentController *)self view];
    v7 = [v6 safeAreaLayoutGuide];

    v8 = [v5 topAnchor];
    v9 = [v7 topAnchor];
    v10 = 0.0;
    if (self->_usesReverseOrder)
    {
      _SFOnePixel();
      v10 = -v11;
    }

    v12 = [v8 constraintEqualToAnchor:v9 constant:v10];
    v19[0] = v12;
    v13 = [(UIStackView *)self->_stackView heightAnchor];
    [(UIStackView *)self->_stackView bounds];
    v14 = [v13 constraintEqualToConstant:CGRectGetHeight(v21)];
    v19[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = self->_focusedItemConstraints;
    self->_focusedItemConstraints = v15;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_focusedItemConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_stackViewTopBottomConstraints];
  }

  else
  {
    v17 = MEMORY[0x1E696ACD8];
    stackViewTopBottomConstraints = self->_stackViewTopBottomConstraints;

    [v17 activateConstraints:stackViewTopBottomConstraints];
  }
}

- (void)addItem:(id)a3
{
  items = self->_items;
  v5 = a3;
  [(NSMutableArray *)items addObject:v5];
  [(_SFSettingsAlertContentController *)self _addGroupSeparatorIfNeededBeforeItemAtIndex:[(NSMutableArray *)self->_items count]- 1];
  [(_SFSettingsAlertContentController *)self _addViewForItem:v5];
}

- (void)addDivider
{
  groupStartIndices = self->_groupStartIndices;
  v3 = [(NSMutableArray *)self->_items count];

  [(NSMutableIndexSet *)groupStartIndices addIndex:v3];
}

- (void)_addGroupSeparatorIfNeededBeforeItemAtIndex:(unint64_t)a3
{
  v5 = [(_SFSettingsAlertContentController *)self isViewLoaded];
  if (a3 && v5 && [(NSMutableIndexSet *)self->_groupStartIndices containsIndex:a3])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v10 heightAnchor];
    v7 = [v6 constraintEqualToConstant:8.0];
    [v10 addConstraint:v7];

    v8 = [MEMORY[0x1E69DC888] sf_colorNamed:@"settingsAlertDividerBackground"];
    [v10 setBackgroundColor:v8];

    stackView = self->_stackView;
    if (self->_usesReverseOrder)
    {
      [(UIStackView *)stackView insertArrangedSubview:v10 atIndex:0];
    }

    else
    {
      [(UIStackView *)stackView addArrangedSubview:v10];
    }
  }
}

- (void)_addViewForItem:(id)a3
{
  v8 = a3;
  if ([(_SFSettingsAlertContentController *)self isViewLoaded])
  {
    v4 = [(_SFSettingsAlertContentController *)self _createViewForItem:v8];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setItem:v8];
    [v4 setDelegate:self];
    [v8 setView:v4];
    v5 = [v8 viewConfigurationBlock];

    if (v5)
    {
      v6 = [v8 viewConfigurationBlock];
      (v6)[2](v6, v4);
    }

    stackView = self->_stackView;
    if (self->_usesReverseOrder)
    {
      [(UIStackView *)stackView insertArrangedSubview:v4 atIndex:0];
    }

    else
    {
      [(UIStackView *)stackView addArrangedSubview:v4];
    }

    [v4 addObserver:self forKeyPath:@"highlighted" options:0 context:kvoContext_1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFSettingsAlertContentController *)self _alignButtonImageView:v4];
    }

    [v8 updateOptionsGroupDetailLabel];
  }
}

- (void)_alignButtonImageView:(id)a3
{
  obj = [a3 trailingView];
  v4 = [obj superview];

  if (v4)
  {
    if (self->_lastViewForAlignment)
    {
      v5 = [obj centerXAnchor];
      v6 = [(UIView *)self->_lastViewForAlignment centerXAnchor];
      v7 = [v5 constraintEqualToAnchor:v6];

      LODWORD(v8) = 1146388480;
      [v7 setPriority:v8];
      [v7 setActive:1];
    }

    objc_storeStrong(&self->_lastViewForAlignment, obj);
  }
}

- (id)_createViewForItem:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 <= 5)
  {
    if (((1 << v6) & 0x1B) != 0)
    {
      v7 = objc_alloc_init(_SFSettingsAlertButton);
      v3 = v7;
      if (self->_usesReverseOrder)
      {
        [(_SFSettingsAlertControl *)v7 setDefaultBackgroundMode:2];
      }

      v8 = [v5 attributedTitle];

      if (v8)
      {
        v9 = [v5 attributedTitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setAttributedText:v9];
      }

      else
      {
        v9 = [v5 title];
        [(_SFSettingsAlertCustomViewContainer *)v3 setText:v9];
      }

      v12 = [v5 attributedSubtitle];

      if (v12)
      {
        v13 = [v5 attributedSubtitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setAttributedDetailText:v13];
      }

      else
      {
        v13 = [v5 subtitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setDetailText:v13];
      }

      v14 = [v5 tintColor];
      [(_SFSettingsAlertCustomViewContainer *)v3 setTintColor:v14];

      v15 = [v5 textStyle];
      [(_SFSettingsAlertCustomViewContainer *)v3 setTextStyle:v15];

      v16 = [v5 icon];
      [(_SFSettingsAlertCustomViewContainer *)v3 setImage:v16];

      -[_SFSettingsAlertCustomViewContainer setEnabled:](v3, "setEnabled:", [v5 isEnabled]);
      -[_SFSettingsAlertCustomViewContainer setSelected:](v3, "setSelected:", [v5 isSelected]);
      v17 = [v5 componentsArrangement];
      [(_SFSettingsAlertCustomViewContainer *)v3 setComponentsArrangement:v17];

      -[_SFSettingsAlertCustomViewContainer setLimitToSingleLine:](v3, "setLimitToSingleLine:", [v5 type] == 1);
      -[_SFSettingsAlertCustomViewContainer setShowsIndicatorDot:](v3, "setShowsIndicatorDot:", [v5 showsIndicatorDot]);
      v18 = [v5 badgeView];
      [(_SFSettingsAlertCustomViewContainer *)v3 setAccessoryView:v18];

      v19 = [v5 statusImageView];
      [(_SFSettingsAlertCustomViewContainer *)v3 setStatusImageView:v19];

      [(_SFSettingsAlertCustomViewContainer *)v3 addTarget:self action:sel__tappedItemView_ forControlEvents:0x2000];
    }

    else
    {
      if (v6 == 2)
      {
        v10 = [v5 controller];
        v11 = [[_SFSettingsAlertStepper alloc] initUsingResetButton:objc_opt_respondsToSelector() & 1 usingTopSeparator:self->_usesReverseOrder];
        v3 = v11;
        if (self->_usesReverseOrder)
        {
          [(_SFSettingsAlertCustomViewContainer *)v11 setDefaultBackgroundMode:2];
        }

        [v10 prepareStepper:v3];
        [(_SFSettingsAlertCustomViewContainer *)v3 addTarget:self action:sel__stepperValueChanged_ forControlEvents:4096];
      }

      else
      {
        v20 = [v5 controller];
        v10 = [v20 customPaletteView];

        v3 = [[_SFSettingsAlertCustomViewContainer alloc] initWithContentView:v10];
      }
    }
  }

  return v3;
}

- (void)_stepperValueChanged:(id)a3
{
  v10 = a3;
  v4 = [v10 item];
  v5 = [v4 controller];
  v6 = [v10 value];
  switch(v6)
  {
    case 2:
      if (objc_opt_respondsToSelector())
      {
        [v5 resetValue:v10];
      }

      break;
    case 1:
      [v5 decrementValue:v10];
      break;
    case 0:
      [v5 incrementValue:v10];
      break;
  }

  v7 = [v4 handler];
  v8 = [(_SFSettingsAlertContentController *)self alertController];
  if (v7)
  {
    (v7)[2](v7, v8, v4);
    v9 = [MEMORY[0x1E69C8810] sharedLogger];
    [v9 _sf_didPerformFormatMenuAction:objc_msgSend(v4 provenance:{"actionType"), objc_msgSend(v8, "provenance")}];
  }
}

- (void)_tappedItemView:(id)a3
{
  v7 = [a3 item];
  v4 = [v7 handler];
  v5 = [(_SFSettingsAlertContentController *)self alertController];
  (v4)[2](v4, v5, v7);
  v6 = [MEMORY[0x1E69C8810] sharedLogger];
  [v6 _sf_didPerformFormatMenuAction:objc_msgSend(v7 provenance:{"actionType"), objc_msgSend(v5, "provenance")}];

  [(_SFSettingsAlertContentController *)self _updateSeparators];
}

- (void)_updateSeparators
{
  items = self->_items;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___SFSettingsAlertContentController__updateSeparators__block_invoke_2;
  v3[3] = &unk_1E8493D28;
  v3[4] = self;
  v4 = &__block_literal_global_389;
  [(NSMutableArray *)items enumerateObjectsUsingBlock:v3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  if (self->_focusedItem)
  {
    return 1;
  }

  v7 = v4;
  v8 = v5;
  [(UIScrollView *)self->_scrollView bounds];
  Height = CGRectGetHeight(v17);
  [(UIScrollView *)self->_scrollView contentSize];
  v11 = v8 + v7 + v10;
  v12 = _SFOnePixel();
  v13.n128_u64[0] = v14.n128_u64[0];
  v14.n128_f64[0] = Height;
  v15.n128_f64[0] = v11;

  return MEMORY[0x1EEE1E530](v12, v14, v15, v13);
}

- (void)_panRecognized:(id)a3
{
  v20 = a3;
  v4 = self->_controlHighlightedForPan;
  v5 = [(_SFSettingsAlertContentController *)self view];
  [v20 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_SFSettingsAlertContentController *)self view];
  v11 = [v10 hitTest:0 withEvent:{v7, v9}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if ([(UIControl *)v13 isEnabled])
  {
    v14 = [v20 state];
    if ((v14 - 1) < 2)
    {
      if (v13 != v4 && ![(UIControl *)v13 isHighlighted])
      {
        feedbackGenerator = self->_feedbackGenerator;
        if (!feedbackGenerator)
        {
          v16 = objc_alloc_init(MEMORY[0x1E69DCF40]);
          v17 = self->_feedbackGenerator;
          self->_feedbackGenerator = v16;

          feedbackGenerator = self->_feedbackGenerator;
        }

        [(UISelectionFeedbackGenerator *)feedbackGenerator selectionChanged];
        [(UIControl *)v4 setHighlighted:0];
        [(UIControl *)v13 setHighlighted:1];
      }

      v18 = v13;
      goto LABEL_18;
    }

    if (v14 == 3)
    {
      [(UIControl *)v13 sendActionsForControlEvents:0x2000];
    }

    [(UIControl *)v13 setHighlighted:0];
LABEL_17:
    v18 = 0;
LABEL_18:
    controlHighlightedForPan = self->_controlHighlightedForPan;
    self->_controlHighlightedForPan = v18;

    goto LABEL_19;
  }

  [(UIControl *)v4 setHighlighted:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_17;
  }

LABEL_19:
}

- (void)alertItemViewContentSizeDidChange:(id)a3
{
  v4 = [(_SFSettingsAlertContentController *)self viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {

    [(_SFSettingsAlertContentController *)self setNeedsUpdatePreferredContentSize];
  }
}

- (_SFSettingsAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end