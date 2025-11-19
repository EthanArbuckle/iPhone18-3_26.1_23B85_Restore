@interface ButtonsContainerViewController
- (ButtonsContainerViewController)initWithFloatingButtonItems:(id)a3 visualEffectDisabled:(BOOL)a4;
- (void)_updateGroupVCs;
- (void)loadView;
- (void)refreshControls;
- (void)setBlurGroupName:(id)a3;
- (void)updateFloatingButtonItems:(id)a3;
- (void)updateVisibilityForControls:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation ButtonsContainerViewController

- (void)loadView
{
  [(ButtonsContainerViewController *)self _updateGroupVCs];
  stackView = self->_stackView;

  [(ButtonsContainerViewController *)self setView:stackView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ButtonsContainerViewController;
  [(ButtonsContainerViewController *)&v5 viewDidLoad];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setSpacing:10.0];
  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setAxis:1];
  LODWORD(v3) = 1148846080;
  [(UIStackView *)self->_stackView setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [(UIStackView *)self->_stackView setContentCompressionResistancePriority:0 forAxis:v4];
}

- (void)refreshControls
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_groupVCs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 refreshControls];
        [(ButtonsContainerViewController *)self addChildViewController:v9];
        v10 = [v9 view];
        [v3 addObject:v10];

        [v9 didMoveToParentViewController:self];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  stackView = self->_stackView;
  v12 = [v3 copy];
  [(UIStackView *)stackView _maps_setArrangedSubviews:v12];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000261A8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateGroupVCs
{
  v3 = self->_blurGroupName;
  visualEffectDisabled = self->_visualEffectDisabled;
  v5 = objc_alloc_init(NSMutableArray);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100014028;
  v24[3] = &unk_101624350;
  v27 = visualEffectDisabled;
  v19 = v3;
  v25 = v19;
  v18 = v5;
  v26 = v18;
  v6 = objc_retainBlock(v24);
  v7 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_floatingButtonItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 isSeparator] & 1) != 0 || (objc_msgSend(v13, "hidesBackground"))
        {
          if ([v7 count])
          {
            (v6[2])(v6, v7);
            [v7 removeAllObjects];
          }
        }

        else
        {
          [v7 addObject:v13];
        }

        if ([v13 hidesBackground])
        {
          v28 = v13;
          v14 = [NSArray arrayWithObjects:&v28 count:1];
          (v6[2])(v6, v14);
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    (v6[2])(v6, v7);
  }

  v15 = v18;
  v16 = [v18 copy];
  groupVCs = self->_groupVCs;
  self->_groupVCs = v16;
}

- (void)updateFloatingButtonItems:(id)a3
{
  v5 = a3;
  if (self->_floatingButtonItems != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_floatingButtonItems, a3);
    [(ButtonsContainerViewController *)self _updateGroupVCs];
    v5 = v6;
  }
}

- (void)updateVisibilityForControls:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_groupVCs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 updateVisibilityForControls:{a3, v14}];
        v10 = [v9 hasShownControls];
        v11 = [v9 view];
        v12 = [v11 isHidden];

        if (v10 == v12)
        {
          v13 = [v9 view];
          [v13 setHidden:v10 ^ 1];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)setBlurGroupName:(id)a3
{
  v4 = [a3 copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_groupVCs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setBlurGroupName:{self->_blurGroupName, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (ButtonsContainerViewController)initWithFloatingButtonItems:(id)a3 visualEffectDisabled:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = ButtonsContainerViewController;
  v7 = [(ButtonsContainerViewController *)&v13 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = objc_alloc_init(UIStackView);
    stackView = v7->_stackView;
    v7->_stackView = v8;

    [(UIStackView *)v7->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_stackView _maps_applyGlassGroup];
    v7->_visualEffectDisabled = a4;
    v10 = [v6 copy];
    floatingButtonItems = v7->_floatingButtonItems;
    v7->_floatingButtonItems = v10;

    [(ButtonsContainerViewController *)v7 refreshControls];
  }

  return v7;
}

@end