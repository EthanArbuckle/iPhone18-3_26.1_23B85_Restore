@interface EKEventGenericDetailViewControllerOOPWrapperImpl
- (CGSize)preferredContentSize;
- (EKEventGenericDetailViewControllerOOPWrapperImpl)initWithTitle:(id)a3 viewID:(id)a4 event:(id)a5 leftBarButtonActions:(id)a6 rightBarButtonActions:(id)a7;
- (UIColor)oopContentBackgroundColor;
- (id)_statusButtonsContainerView;
- (id)_statusButtonsView;
- (void)_updateBottomButtons;
- (void)bottomStatusButtonTapped:(int64_t)a3;
- (void)leftBarButtonTapped:(id)a3;
- (void)rightBarButtonTapped:(id)a3;
- (void)setBottomStatusButtonActions:(id)a3;
- (void)setLeftBarButtonActions:(id)a3;
- (void)setOopContentBackgroundColor:(id)a3;
- (void)setRightBarButtonActions:(id)a3;
- (void)viewDidLoad;
@end

@implementation EKEventGenericDetailViewControllerOOPWrapperImpl

- (EKEventGenericDetailViewControllerOOPWrapperImpl)initWithTitle:(id)a3 viewID:(id)a4 event:(id)a5 leftBarButtonActions:(id)a6 rightBarButtonActions:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = EKEventGenericDetailViewControllerOOPWrapperImpl;
  v17 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)&v20 init];
  if (v17)
  {
    EKUILogInitIfNeeded();
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setTitle:v12];
    objc_storeStrong(&v17->_viewID, a4);
    objc_storeStrong(&v17->_event, a5);
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setLeftBarButtonActions:v15];
    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)v17 setRightBarButtonActions:v16];
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

  v4 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v5 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v7 didMoveToParentViewController:self];

  v8 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = MEMORY[0x1E696ACD8];
  v35 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v34 = [v35 view];
  v32 = [v34 leadingAnchor];
  v33 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v37[0] = v30;
  v29 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v28 = [v29 view];
  v26 = [v28 topAnchor];
  v27 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v25 = [v27 topAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v37[1] = v23;
  v22 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v21 = [v22 view];
  v20 = [v21 trailingAnchor];
  v10 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v20 constraintEqualToAnchor:v11];
  v37[2] = v12;
  v13 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  v14 = [v13 view];
  v15 = [v14 bottomAnchor];
  v16 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
  v3 = [v2 oopContentBackgroundColor];

  return v3;
}

- (void)setOopContentBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v5 setOopContentBackgroundColor:v4];
}

- (void)setLeftBarButtonActions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_leftBarButtonActions, a3);
  if ([(NSArray *)self->_leftBarButtonActions count])
  {
    [MEMORY[0x1E695DF70] array];
    v20 = v19 = v5;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
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

    v5 = v19;
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v15;
  v17 = v15;

  v18 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationItem];
  [v18 setLeftBarButtonItems:v17];
}

- (void)setRightBarButtonActions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_rightBarButtonActions, a3);
  if (![(NSArray *)self->_rightBarButtonActions count])
  {
    v19 = 0;
    goto LABEL_17;
  }

  [MEMORY[0x1E695DF70] array];
  v24 = v23 = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
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

  v5 = v23;
  v19 = v24;
LABEL_17:
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v19;
  v21 = v19;

  v22 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationItem];
  [v22 setRightBarButtonItems:v21];
}

- (void)setBottomStatusButtonActions:(id)a3
{
  objc_storeStrong(&self->_bottomStatusButtonActions, a3);

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
  v4 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
  [v4 setActions:bottomStatusButtonActions];

  v5 = [(NSArray *)self->_bottomStatusButtonActions count];
  v6 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self navigationController];
  v7 = v6;
  if (v5)
  {
    [v6 setToolbarHidden:0];

    v8 = CalSolariumEnabled();
    v9 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self toolbarItems];
    v10 = v9;
    if (v8)
    {

      if (!v10)
      {
        v11 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
        v35 = [v11 statusButtons];

        v12 = objc_opt_new();
        if ([v35 count])
        {
          v13 = 0;
          do
          {
            v14 = objc_alloc(MEMORY[0x1E69DC708]);
            v15 = [v35 objectAtIndexedSubscript:v13];
            v16 = [v14 initWithCustomView:v15];

            [v12 addObject:v16];
            ++v13;
          }

          while ([v35 count] > v13);
        }

        [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:v12 animated:1];
      }
    }

    else if (!v9 || (statusButtonsContainerView = self->_statusButtonsContainerView, v9, !statusButtonsContainerView))
    {
      v18 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsContainerView];
      v19 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self _statusButtonsView];
      [v18 addSubview:v19];
      v30 = MEMORY[0x1E696ACD8];
      v36 = [v19 leadingAnchor];
      v34 = [v18 leadingAnchor];
      v33 = [v36 constraintEqualToAnchor:v34];
      v38[0] = v33;
      v32 = [v19 trailingAnchor];
      v31 = [v18 trailingAnchor];
      v29 = [v32 constraintEqualToAnchor:v31];
      v38[1] = v29;
      v20 = [v19 topAnchor];
      v21 = [v18 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v38[2] = v22;
      v23 = [v19 bottomAnchor];
      v24 = [v18 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v38[3] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      [v30 activateConstraints:v26];

      v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v18];
      v37 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:v28 animated:1];
    }
  }

  else
  {
    [v6 setToolbarHidden:1];

    [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self setToolbarItems:0 animated:1];
  }
}

- (void)leftBarButtonTapped:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_leftBarButtonActions count]&& [(NSArray *)self->_leftBarButtonItems count])
  {
    v5 = [(NSArray *)self->_leftBarButtonItems indexOfObject:v4];
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

- (void)rightBarButtonTapped:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_rightBarButtonActions count]&& [(NSArray *)self->_rightBarButtonItems count])
  {
    v5 = [(NSArray *)self->_rightBarButtonItems indexOfObject:v4];
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

- (void)bottomStatusButtonTapped:(int64_t)a3
{
  v4 = [(EKEventGenericDetailViewControllerOOPWrapperImpl *)self vc];
  [v4 bottomStatusButtonTapped:a3];
}

@end