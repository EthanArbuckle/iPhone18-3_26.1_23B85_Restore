@interface _SFSettingsAlertContentController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSArray)items;
- (_SFSettingsAlertContentController)initWithNibName:(id)name bundle:(id)bundle;
- (_SFSettingsAlertController)alertController;
- (id)_createViewForItem:(id)item;
- (void)_addGroupSeparatorIfNeededBeforeItemAtIndex:(unint64_t)index;
- (void)_addViewForItem:(id)item;
- (void)_alignButtonImageView:(id)view;
- (void)_panRecognized:(id)recognized;
- (void)_scrollToBottomIfNeeded;
- (void)_stepperValueChanged:(id)changed;
- (void)_tappedItemView:(id)view;
- (void)_updateFocusedItemConstraints;
- (void)_updatePreferredContentSize;
- (void)_updateSeparators;
- (void)addDivider;
- (void)addItem:(id)item;
- (void)alertItemViewContentSizeDidChange:(id)change;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllItems;
- (void)setFocusedItem:(id)item;
- (void)setNeedsUpdatePreferredContentSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _SFSettingsAlertContentController

- (_SFSettingsAlertContentController)initWithNibName:(id)name bundle:(id)bundle
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _SFSettingsAlertContentController;
  v4 = [(_SFSettingsAlertContentController *)&v13 initWithNibName:name bundle:bundle];
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    items = v4->_items;
    v4->_items = array;

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    groupStartIndices = v4->_groupStartIndices;
    v4->_groupStartIndices = indexSet;

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

        viewAsUIView = [*(*(&v23 + 1) + 8 * v7) viewAsUIView];
        [viewAsUIView removeObserver:self forKeyPath:@"highlighted" context:kvoContext_1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  array = [MEMORY[0x1E695DF70] array];
  items = self->_items;
  self->_items = array;

  lastViewForAlignment = self->_lastViewForAlignment;
  self->_lastViewForAlignment = 0;

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  groupStartIndices = self->_groupStartIndices;
  self->_groupStartIndices = indexSet;

  subviews = [(UIStackView *)self->_stackView subviews];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [subviews countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v19 + 1) + 8 * v18++) removeFromSuperview];
      }

      while (v16 != v18);
      v16 = [subviews countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kvoContext_1 == context && [pathCopy isEqualToString:@"highlighted"])
  {
    [(_SFSettingsAlertContentController *)self _updateSeparators];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SFSettingsAlertContentController;
    [(_SFSettingsAlertContentController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [contentLayoutGuide topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [contentLayoutGuide bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v38[0] = v11;
  v38[1] = v33;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  stackViewTopBottomConstraints = self->_stackViewTopBottomConstraints;
  self->_stackViewTopBottomConstraints = v14;

  widthAnchor = [(UIStackView *)self->_stackView widthAnchor];
  safeAreaLayoutGuide = [(UIScrollView *)self->_scrollView safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  stackViewWidthConstraint = self->_stackViewWidthConstraint;
  self->_stackViewWidthConstraint = v19;

  v21 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  v23 = contentLayoutGuide;
  v34 = contentLayoutGuide;
  leadingAnchor2 = [contentLayoutGuide leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[0] = v25;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [v23 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  popoverPresentationController = [(_SFSettingsAlertContentController *)self popoverPresentationController];
  [popoverPresentationController popoverLayoutMargins];
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
  containerView = [v14 containerView];
  [containerView bounds];
  v45.origin.x = v40 + v16;
  v45.origin.y = v42 + v17;
  v45.size.width = v18 - (v38 + v40);
  v45.size.height = v19 - (v41 + v42);
  v20 = fmin(CGRectGetWidth(v45), 414.0);

  widthAnchor = [(UIStackView *)self->_stackView widthAnchor];
  v43 = [widthAnchor constraintLessThanOrEqualToConstant:v20];

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
    viewAsUIView = [(_SFSettingsAlertItem *)focusedItem viewAsUIView];
    [viewAsUIView systemLayoutSizeFittingSize:{v22, v23}];
    v30 = v29;

    v31 = self->_focusedItem;
    lastObject = [(NSMutableArray *)self->_items lastObject];

    if (v31 != lastObject)
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
  alertController = [(_SFSettingsAlertContentController *)self alertController];
  _rootContentController = [alertController _rootContentController];

  if (_rootContentController != self)
  {
    view = [alertController view];
    [view bounds];
    v26 = fmax(v26, CGRectGetWidth(v46));
  }

  [(_SFSettingsAlertContentController *)self setPreferredContentSize:v26, v30];
  [alertController setPreferredContentSize:{v26, v30}];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = _SFSettingsAlertContentController;
  [(_SFSettingsAlertContentController *)&v9 viewWillAppear:?];
  navigationController = [(_SFSettingsAlertContentController *)self navigationController];
  navigationController2 = [(_SFSettingsAlertContentController *)self navigationController];
  viewControllers = [navigationController2 viewControllers];
  firstObject = [viewControllers firstObject];
  [navigationController setNavigationBarHidden:firstObject == self animated:appearCopy];

  [(_SFSettingsAlertContentController *)self _updateSeparators];
  [(_SFSettingsAlertContentController *)self _updatePreferredContentSize];
  if (self->_usesReverseOrder)
  {
    self->_updateScrollPositionAfterLayout = 1;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _SFSettingsAlertContentController;
  [(_SFSettingsAlertContentController *)&v4 viewDidAppear:appear];
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
  view = [(_SFSettingsAlertContentController *)self view];
  [view setNeedsLayout];
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_items copy];

  return v2;
}

- (void)setFocusedItem:(id)item
{
  itemCopy = item;
  if (self->_focusedItem != itemCopy)
  {
    objc_storeStrong(&self->_focusedItem, item);
    [(UIScrollView *)self->_scrollView setScrollEnabled:itemCopy == 0];
    viewAsUIView = [(_SFSettingsAlertItem *)self->_focusedItem viewAsUIView];
    [viewAsUIView layoutIfNeeded];

    [(_SFSettingsAlertContentController *)self _updateFocusedItemConstraints];
    view = [(_SFSettingsAlertContentController *)self view];
    [view setNeedsLayout];
    v8 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___SFSettingsAlertContentController_setFocusedItem___block_invoke;
    v10[3] = &unk_1E848F548;
    v11 = view;
    selfCopy = self;
    v9 = view;
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
    viewAsUIView = [(_SFSettingsAlertItem *)focusedItem viewAsUIView];
    view = [(_SFSettingsAlertContentController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];

    topAnchor = [viewAsUIView topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v10 = 0.0;
    if (self->_usesReverseOrder)
    {
      _SFOnePixel();
      v10 = -v11;
    }

    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
    v19[0] = v12;
    heightAnchor = [(UIStackView *)self->_stackView heightAnchor];
    [(UIStackView *)self->_stackView bounds];
    v14 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v21)];
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

- (void)addItem:(id)item
{
  items = self->_items;
  itemCopy = item;
  [(NSMutableArray *)items addObject:itemCopy];
  [(_SFSettingsAlertContentController *)self _addGroupSeparatorIfNeededBeforeItemAtIndex:[(NSMutableArray *)self->_items count]- 1];
  [(_SFSettingsAlertContentController *)self _addViewForItem:itemCopy];
}

- (void)addDivider
{
  groupStartIndices = self->_groupStartIndices;
  v3 = [(NSMutableArray *)self->_items count];

  [(NSMutableIndexSet *)groupStartIndices addIndex:v3];
}

- (void)_addGroupSeparatorIfNeededBeforeItemAtIndex:(unint64_t)index
{
  isViewLoaded = [(_SFSettingsAlertContentController *)self isViewLoaded];
  if (index && isViewLoaded && [(NSMutableIndexSet *)self->_groupStartIndices containsIndex:index])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [v10 heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:8.0];
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

- (void)_addViewForItem:(id)item
{
  itemCopy = item;
  if ([(_SFSettingsAlertContentController *)self isViewLoaded])
  {
    v4 = [(_SFSettingsAlertContentController *)self _createViewForItem:itemCopy];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setItem:itemCopy];
    [v4 setDelegate:self];
    [itemCopy setView:v4];
    viewConfigurationBlock = [itemCopy viewConfigurationBlock];

    if (viewConfigurationBlock)
    {
      viewConfigurationBlock2 = [itemCopy viewConfigurationBlock];
      (viewConfigurationBlock2)[2](viewConfigurationBlock2, v4);
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

    [itemCopy updateOptionsGroupDetailLabel];
  }
}

- (void)_alignButtonImageView:(id)view
{
  obj = [view trailingView];
  superview = [obj superview];

  if (superview)
  {
    if (self->_lastViewForAlignment)
    {
      centerXAnchor = [obj centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_lastViewForAlignment centerXAnchor];
      v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      LODWORD(v8) = 1146388480;
      [v7 setPriority:v8];
      [v7 setActive:1];
    }

    objc_storeStrong(&self->_lastViewForAlignment, obj);
  }
}

- (id)_createViewForItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  if (type <= 5)
  {
    if (((1 << type) & 0x1B) != 0)
    {
      v7 = objc_alloc_init(_SFSettingsAlertButton);
      v3 = v7;
      if (self->_usesReverseOrder)
      {
        [(_SFSettingsAlertControl *)v7 setDefaultBackgroundMode:2];
      }

      attributedTitle = [itemCopy attributedTitle];

      if (attributedTitle)
      {
        attributedTitle2 = [itemCopy attributedTitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setAttributedText:attributedTitle2];
      }

      else
      {
        attributedTitle2 = [itemCopy title];
        [(_SFSettingsAlertCustomViewContainer *)v3 setText:attributedTitle2];
      }

      attributedSubtitle = [itemCopy attributedSubtitle];

      if (attributedSubtitle)
      {
        attributedSubtitle2 = [itemCopy attributedSubtitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setAttributedDetailText:attributedSubtitle2];
      }

      else
      {
        attributedSubtitle2 = [itemCopy subtitle];
        [(_SFSettingsAlertCustomViewContainer *)v3 setDetailText:attributedSubtitle2];
      }

      tintColor = [itemCopy tintColor];
      [(_SFSettingsAlertCustomViewContainer *)v3 setTintColor:tintColor];

      textStyle = [itemCopy textStyle];
      [(_SFSettingsAlertCustomViewContainer *)v3 setTextStyle:textStyle];

      icon = [itemCopy icon];
      [(_SFSettingsAlertCustomViewContainer *)v3 setImage:icon];

      -[_SFSettingsAlertCustomViewContainer setEnabled:](v3, "setEnabled:", [itemCopy isEnabled]);
      -[_SFSettingsAlertCustomViewContainer setSelected:](v3, "setSelected:", [itemCopy isSelected]);
      componentsArrangement = [itemCopy componentsArrangement];
      [(_SFSettingsAlertCustomViewContainer *)v3 setComponentsArrangement:componentsArrangement];

      -[_SFSettingsAlertCustomViewContainer setLimitToSingleLine:](v3, "setLimitToSingleLine:", [itemCopy type] == 1);
      -[_SFSettingsAlertCustomViewContainer setShowsIndicatorDot:](v3, "setShowsIndicatorDot:", [itemCopy showsIndicatorDot]);
      badgeView = [itemCopy badgeView];
      [(_SFSettingsAlertCustomViewContainer *)v3 setAccessoryView:badgeView];

      statusImageView = [itemCopy statusImageView];
      [(_SFSettingsAlertCustomViewContainer *)v3 setStatusImageView:statusImageView];

      [(_SFSettingsAlertCustomViewContainer *)v3 addTarget:self action:sel__tappedItemView_ forControlEvents:0x2000];
    }

    else
    {
      if (type == 2)
      {
        controller = [itemCopy controller];
        v11 = [[_SFSettingsAlertStepper alloc] initUsingResetButton:objc_opt_respondsToSelector() & 1 usingTopSeparator:self->_usesReverseOrder];
        v3 = v11;
        if (self->_usesReverseOrder)
        {
          [(_SFSettingsAlertCustomViewContainer *)v11 setDefaultBackgroundMode:2];
        }

        [controller prepareStepper:v3];
        [(_SFSettingsAlertCustomViewContainer *)v3 addTarget:self action:sel__stepperValueChanged_ forControlEvents:4096];
      }

      else
      {
        controller2 = [itemCopy controller];
        controller = [controller2 customPaletteView];

        v3 = [[_SFSettingsAlertCustomViewContainer alloc] initWithContentView:controller];
      }
    }
  }

  return v3;
}

- (void)_stepperValueChanged:(id)changed
{
  changedCopy = changed;
  item = [changedCopy item];
  controller = [item controller];
  value = [changedCopy value];
  switch(value)
  {
    case 2:
      if (objc_opt_respondsToSelector())
      {
        [controller resetValue:changedCopy];
      }

      break;
    case 1:
      [controller decrementValue:changedCopy];
      break;
    case 0:
      [controller incrementValue:changedCopy];
      break;
  }

  handler = [item handler];
  alertController = [(_SFSettingsAlertContentController *)self alertController];
  if (handler)
  {
    (handler)[2](handler, alertController, item);
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] _sf_didPerformFormatMenuAction:objc_msgSend(item provenance:{"actionType"), objc_msgSend(alertController, "provenance")}];
  }
}

- (void)_tappedItemView:(id)view
{
  item = [view item];
  handler = [item handler];
  alertController = [(_SFSettingsAlertContentController *)self alertController];
  (handler)[2](handler, alertController, item);
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] _sf_didPerformFormatMenuAction:objc_msgSend(item provenance:{"actionType"), objc_msgSend(alertController, "provenance")}];

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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
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

- (void)_panRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v4 = self->_controlHighlightedForPan;
  view = [(_SFSettingsAlertContentController *)self view];
  [recognizedCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(_SFSettingsAlertContentController *)self view];
  v11 = [view2 hitTest:0 withEvent:{v7, v9}];

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
    state = [recognizedCopy state];
    if ((state - 1) < 2)
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

    if (state == 3)
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

- (void)alertItemViewContentSizeDidChange:(id)change
{
  viewIfLoaded = [(_SFSettingsAlertContentController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
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