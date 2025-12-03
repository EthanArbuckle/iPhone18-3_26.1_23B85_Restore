@interface EKEventGenericDetailViewControllerOOPWrapperImpl
- (CGSize)preferredContentSize;
- (EKEventGenericDetailViewControllerOOPWrapperImpl)initWithTitle:(id)title viewID:(id)d event:(id)event leftBarButtonActions:(id)actions rightBarButtonActions:(id)buttonActions;
- (UIColor)oopContentBackgroundColor;
- (id)_statusButtonsContainerView;
- (id)_statusButtonsView;
- (void)_updateBottomButtons;
- (void)bottomStatusButtonTapped:(int64_t)tapped;
- (void)leftBarButtonTapped:(id)tapped;
- (void)rightBarButtonTapped:(id)tapped;
- (void)setBottomStatusButtonActions:(id)actions;
- (void)setLeftBarButtonActions:(id)actions;
- (void)setOopContentBackgroundColor:(id)color;
- (void)setRightBarButtonActions:(id)actions;
- (void)viewDidLoad;
@end

@implementation EKEventGenericDetailViewControllerOOPWrapperImpl

- (EKEventGenericDetailViewControllerOOPWrapperImpl)initWithTitle:(id)title viewID:(id)d event:(id)event leftBarButtonActions:(id)actions rightBarButtonActions:(id)buttonActions
{
  titleCopy = title;
  dCopy = d;
  eventCopy = event;
  actionsCopy = actions;
  buttonActionsCopy = buttonActions;
  v20.receiver = self;
  v20.super_class = EKEventGenericDetailViewControllerOOPWrapperImpl;
  v17 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)&v20 init];
  if (v17)
  {
    EKUILogInitIfNeeded();
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setTitle:titleCopy];
    objc_storeStrong(&v17->_viewID, d);
    objc_storeStrong(&v17->_event, event);
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setLeftBarButtonActions:actionsCopy];
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setRightBarButtonActions:buttonActionsCopy];
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setBottomStatusButtonActions:MEMORY[0x1E695E0F0]];
    v18 = [[_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl alloc] initWithHostViewID:v17->_viewID];
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setVc:v18];
  }

  return v17;
}

- (void)viewDidLoad
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = EKEventGenericDetailViewControllerOOPWrapperImpl;
  [(EKEventGenericDetailViewControllerOOPWrapperImpl *)&v36 viewDidLoad];
  v3 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self addChildViewController:v3];

  view = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v5 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view2 = [v5 view];
  [view addSubview:view2];

  v7 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v7 didMoveToParentViewController:self];

  v8 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view3 = [v8 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = MEMORY[0x1E696ACD8];
  v35 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view4 = [v35 view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[0] = v30;
  v29 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view6 = [v29 view];
  topAnchor = [view6 topAnchor];
  view7 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  topAnchor2 = [view7 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[1] = v23;
  v22 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view8 = [v22 view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[2] = v12;
  v13 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  view10 = [v13 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v24 activateConstraints:v19];
}

- (CGSize)preferredContentSize
{
  v2 = EKUIContainedControllerIdealWidth();
  v3 = EKUIContainedControllerIdealHeight();
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (UIColor)oopContentBackgroundColor
{
  v2 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  oopContentBackgroundColor = [v2 oopContentBackgroundColor];

  return oopContentBackgroundColor;
}

- (void)setOopContentBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v5 setOopContentBackgroundColor:colorCopy];
}

- (void)setLeftBarButtonActions:(id)actions
{
  v26 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  objc_storeStrong(&self->_leftBarButtonActions, actions);
  if ([(NSArray *)self->_leftBarButtonActions count])
  {
    [MEMORY[0x1E695DF70] array];
    v20 = v19 = actionsCopy;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = actionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v12 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
          LODWORD(v11) = [v11 isEqual:v12];

          if (v11)
          {
            v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_leftBarButtonTapped_];
            if (v13)
            {
              v14 = v13;
              [(NSArray *)v20 addObject:v13];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    actionsCopy = v19;
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v15;
  v17 = v15;

  navigationItem = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v17];
}

- (void)setRightBarButtonActions:(id)actions
{
  v30 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  objc_storeStrong(&self->_rightBarButtonActions, actions);
  if (![(NSArray *)self->_rightBarButtonActions count])
  {
    v19 = 0;
    goto LABEL_17;
  }

  [MEMORY[0x1E695DF70] array];
  v24 = v23 = actionsCopy;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = actionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v26;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      v12 = +[_TtC10EventKitUI22EKRemoteUIButtonAction PresentShareSheet];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel_rightBarButtonTapped_];
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = +[_TtC10EventKitUI22EKRemoteUIButtonAction PresentEmailCompose];
        v16 = [v11 isEqual:v15];

        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x1E69DC708]);
          v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
          v14 = [v17 initWithImage:v18 style:0 target:self action:sel_rightBarButtonTapped_];

          if (v14)
          {
LABEL_12:
            [(NSArray *)v24 addObject:v14];

            continue;
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v8);
LABEL_15:

  actionsCopy = v23;
  v19 = v24;
LABEL_17:
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v19;
  v21 = v19;

  navigationItem = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationItem];
  [navigationItem setRightBarButtonItems:v21];
}

- (void)setBottomStatusButtonActions:(id)actions
{
  objc_storeStrong(&self->_bottomStatusButtonActions, actions);

  [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _updateBottomButtons];
}

- (id)_statusButtonsView
{
  statusButtonsView = self->_statusButtonsView;
  if (!statusButtonsView)
  {
    v4 = [EKUIEventStatusButtonsView alloc];
    v5 = [(EKUIEventStatusButtonsView *)v4 initWithFrame:self->_bottomStatusButtonActions actions:self delegate:1 options:1 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_statusButtonsView;
    self->_statusButtonsView = v5;

    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setDisableButtonHighlights:1];
    statusButtonsView = self->_statusButtonsView;
  }

  return statusButtonsView;
}

- (id)_statusButtonsContainerView
{
  statusButtonsContainerView = self->_statusButtonsContainerView;
  if (!statusButtonsContainerView)
  {
    v4 = [SingleToolbarItemContainerView alloc];
    v5 = [(SingleToolbarItemContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_statusButtonsContainerView;
    self->_statusButtonsContainerView = v5;

    [(SingleToolbarItemContainerView *)self->_statusButtonsContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    statusButtonsContainerView = self->_statusButtonsContainerView;
  }

  return statusButtonsContainerView;
}

- (void)_updateBottomButtons
{
  v38[4] = *MEMORY[0x1E69E9840];
  bottomStatusButtonActions = self->_bottomStatusButtonActions;
  _statusButtonsView = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
  [_statusButtonsView setActions:bottomStatusButtonActions];

  v5 = [(NSArray *)self->_bottomStatusButtonActions count];
  navigationController = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationController];
  v7 = navigationController;
  if (v5)
  {
    [navigationController setToolbarHidden:0];

    v8 = CalSolariumEnabled();
    toolbarItems = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self toolbarItems];
    v10 = toolbarItems;
    if (v8)
    {

      if (!v10)
      {
        _statusButtonsView2 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
        statusButtons = [_statusButtonsView2 statusButtons];

        v12 = objc_opt_new();
        if ([statusButtons count])
        {
          v13 = 0;
          do
          {
            v14 = objc_alloc(MEMORY[0x1E69DC708]);
            v15 = [statusButtons objectAtIndexedSubscript:v13];
            v16 = [v14 initWithCustomView:v15];

            [v12 addObject:v16];
            ++v13;
          }

          while ([statusButtons count] > v13);
        }

        [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:v12 animated:1];
      }
    }

    else if (!toolbarItems || (statusButtonsContainerView = self->_statusButtonsContainerView, toolbarItems, !statusButtonsContainerView))
    {
      _statusButtonsContainerView = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsContainerView];
      _statusButtonsView3 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
      [_statusButtonsContainerView addSubview:_statusButtonsView3];
      v30 = MEMORY[0x1E696ACD8];
      leadingAnchor = [_statusButtonsView3 leadingAnchor];
      leadingAnchor2 = [_statusButtonsContainerView leadingAnchor];
      v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v38[0] = v33;
      trailingAnchor = [_statusButtonsView3 trailingAnchor];
      trailingAnchor2 = [_statusButtonsContainerView trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v38[1] = v29;
      topAnchor = [_statusButtonsView3 topAnchor];
      topAnchor2 = [_statusButtonsContainerView topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v38[2] = v22;
      bottomAnchor = [_statusButtonsView3 bottomAnchor];
      bottomAnchor2 = [_statusButtonsContainerView bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v38[3] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      [v30 activateConstraints:v26];

      v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:_statusButtonsContainerView];
      v37 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:v28 animated:1];
    }
  }

  else
  {
    [navigationController setToolbarHidden:1];

    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:0 animated:1];
  }
}

- (void)leftBarButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(NSArray *)self->_leftBarButtonActions count]&& [(NSArray *)self->_leftBarButtonItems count])
  {
    v5 = [(NSArray *)self->_leftBarButtonItems indexOfObject:tappedCopy];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, v5 >= [(NSArray *)self->_leftBarButtonActions count]))
    {
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEventGenericDetailViewControllerOOPWrapperImpl leftBarButtonTapped:];
      }
    }

    else
    {
      v7 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEFAULT, "EKEventGenericDetailViewControllerOOPWrapperImpl leftBarButtonTapped", v10, 2u);
      }

      v8 = [(NSArray *)self->_leftBarButtonActions objectAtIndexedSubscript:v6];
      v9 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
      [v9 leftBarButtonTapped:v8];
    }
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventGenericDetailViewControllerOOPWrapperImpl leftBarButtonTapped:];
  }
}

- (void)rightBarButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(NSArray *)self->_rightBarButtonActions count]&& [(NSArray *)self->_rightBarButtonItems count])
  {
    v5 = [(NSArray *)self->_rightBarButtonItems indexOfObject:tappedCopy];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, v5 >= [(NSArray *)self->_rightBarButtonActions count]))
    {
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEventGenericDetailViewControllerOOPWrapperImpl rightBarButtonTapped:];
      }
    }

    else
    {
      v7 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEFAULT, "EKEventGenericDetailViewControllerOOPWrapperImpl rightBarButtonTapped", v10, 2u);
      }

      v8 = [(NSArray *)self->_rightBarButtonActions objectAtIndexedSubscript:v6];
      v9 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
      [v9 rightBarButtonTapped:v8];
    }
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventGenericDetailViewControllerOOPWrapperImpl rightBarButtonTapped:];
  }
}

- (void)bottomStatusButtonTapped:(int64_t)tapped
{
  v4 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v4 bottomStatusButtonTapped:tapped];
}

@end