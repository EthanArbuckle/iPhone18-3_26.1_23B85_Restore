@interface QLToolbarController
- (BOOL)_tryToSetUp:(BOOL)a3;
- (BOOL)isAccessoryViewHidden;
- (BOOL)isOriginalToolbarHidden;
- (QLToolbarController)init;
- (UIToolbar)originalToolbar;
- (UIView)accessoryView;
- (UIView)preferredParentViewForSafeAreaInset;
- (UIView)preferredSuperview;
- (double)_computeClippingExtensionContainerBottomConstraint;
- (double)_computeClippingExtensionContainerHeightForCurrentHiddenProgress;
- (double)_originalToolbarHeightIncludingSafeAreaBottomInset:(BOOL)a3;
- (double)_toolbarExtensionHeight;
- (double)_toolbarSafeAreaInsetBottom;
- (double)_totalHeight;
- (double)accessoryViewHiddenProgress;
- (void)_embedAccessoryView;
- (void)_layoutAccessoryView:(id)a3;
- (void)restoreOriginalConfiguration;
- (void)restoreOriginalToolbar;
- (void)setAccessoryView:(id)a3 animated:(BOOL)a4;
- (void)setAccessoryViewHidden:(BOOL)a3;
- (void)setBarTintColor:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setOriginalToolbar:(id)a3;
- (void)setOriginalToolbarAlpha:(double)a3;
- (void)setPreferredAccesoryViewHeight:(double)a3;
- (void)setPreferredSuperview:(id)a3 preferredParentViewForSafeAreaInset:(id)a4;
- (void)updateLayout;
@end

@implementation QLToolbarController

- (QLToolbarController)init
{
  v3.receiver = self;
  v3.super_class = QLToolbarController;
  result = [(QLToolbarController *)&v3 init];
  if (result)
  {
    result->_preferredAccesoryViewHeight = 44.0;
    result->_accessoryViewHidden = 1;
  }

  return result;
}

- (BOOL)_tryToSetUp:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    return 0;
  }

  if (self->_customToolbar)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_originalToolbar);

    if (WeakRetained)
    {
      v8 = [(QLToolbarController *)self preferredSuperview];
      if (v8)
      {
        v9 = v8;
LABEL_11:
        [(QLToolbarController *)self _originalToolbarHeightIncludingSafeAreaBottomInset:1];
        v12 = v11;
        customToolbar = self->_customToolbar;
        if (!customToolbar)
        {
          v14 = objc_opt_new();
          v15 = self->_customToolbar;
          self->_customToolbar = v14;

          [(UIToolbar *)self->_customToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UIToolbar *)self->_customToolbar setAccessibilityIdentifier:@"QLCustomToolBarAccessibilityIdentifier"];
          customToolbar = self->_customToolbar;
        }

        v16 = [(UIToolbar *)customToolbar constraints];
        [(UIToolbar *)customToolbar removeConstraints:v16];

        v17 = [(QLToolbarController *)self preferredSuperview];
        if (!v17)
        {
          goto LABEL_15;
        }

        v18 = v17;
        v19 = [(QLToolbarController *)self preferredSuperview];
        v20 = objc_loadWeakRetained(&self->_originalToolbar);
        v21 = [v19 containsView:v20];

        if (!v21)
        {
          [v9 addSubview:self->_customToolbar];
        }

        else
        {
LABEL_15:
          v22 = self->_customToolbar;
          v23 = objc_loadWeakRetained(&self->_originalToolbar);
          [v9 insertSubview:v22 belowSubview:v23];
        }

        v24 = MEMORY[0x277CCAAD0];
        v25 = _NSDictionaryOfVariableBindings(&cfstr_Customtoolbar.isa, self->_customToolbar, 0);
        v26 = [v24 constraintsWithVisualFormat:@"H:|[_customToolbar]|" options:0 metrics:0 views:v25];
        [v9 addConstraints:v26];

        v27 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_customToolbar attribute:4 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:0.0];
        v28 = [v27 ql_activatedConstraint];
        toolbarBottomConstraint = self->_toolbarBottomConstraint;
        self->_toolbarBottomConstraint = v28;

        v30 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_customToolbar attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v12];
        v31 = [v30 ql_activatedConstraint];
        toolbarHeightConstraint = self->_toolbarHeightConstraint;
        self->_toolbarHeightConstraint = v31;

        v33 = objc_opt_new();
        clippingExtensionContainer = self->_clippingExtensionContainer;
        self->_clippingExtensionContainer = v33;

        [(UIView *)self->_clippingExtensionContainer setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIToolbar *)self->_customToolbar addSubview:self->_clippingExtensionContainer];
        [(UIView *)self->_clippingExtensionContainer setClipsToBounds:1];
        v35 = self->_customToolbar;
        v36 = MEMORY[0x277CCAAD0];
        v37 = _NSDictionaryOfVariableBindings(&cfstr_Clippingextens.isa, self->_clippingExtensionContainer, 0);
        v38 = [v36 constraintsWithVisualFormat:@"H:|[_clippingExtensionContainer]|" options:0 metrics:0 views:v37];
        [(UIToolbar *)v35 addConstraints:v38];

        v39 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_clippingExtensionContainer attribute:4 relatedBy:0 toItem:self->_customToolbar attribute:4 multiplier:1.0 constant:-v12];
        v40 = [v39 ql_activatedConstraint];
        clippingExtensionContainerBottomConstraint = self->_clippingExtensionContainerBottomConstraint;
        self->_clippingExtensionContainerBottomConstraint = v40;

        v42 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_clippingExtensionContainer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
        v43 = [v42 ql_activatedConstraint];
        clippingExtensionContainerHeightConstraint = self->_clippingExtensionContainerHeightConstraint;
        self->_clippingExtensionContainerHeightConstraint = v43;

        v45 = objc_opt_new();
        accessoryViewContainer = self->_accessoryViewContainer;
        self->_accessoryViewContainer = v45;

        [(UIView *)self->_accessoryViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self->_clippingExtensionContainer addSubview:self->_accessoryViewContainer];
        v47 = MEMORY[0x277CCAAD0];
        v48 = self->_clippingExtensionContainer;
        v49 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryviewc.isa, self->_accessoryViewContainer, 0);
        v50 = [v47 constraintsWithVisualFormat:@"H:|[_accessoryViewContainer]|" options:0 metrics:0 views:v49];
        [(UIView *)v48 addConstraints:v50];

        v51 = MEMORY[0x277CCAAD0];
        v52 = self->_clippingExtensionContainer;
        v53 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryviewc.isa, self->_accessoryViewContainer, 0);
        v54 = [v51 constraintsWithVisualFormat:@"V:[_accessoryViewContainer]|" options:0 metrics:0 views:v53];
        [(UIView *)v52 addConstraints:v54];

        [(QLToolbarController *)self _toolbarExtensionHeight];
        self->_derivedToolbarExtensionHeight = v55;
        v56 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_accessoryViewContainer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v55];
        v57 = [v56 ql_activatedConstraint];
        accessoryContainerHeightConstraint = self->_accessoryContainerHeightConstraint;
        self->_accessoryContainerHeightConstraint = v57;

        [(UIToolbar *)self->_customToolbar layoutIfNeeded];
        v59 = objc_loadWeakRetained(&self->_accessoryView);

        if (v59)
        {
          [(QLToolbarController *)self _embedAccessoryView];
          [(UIToolbar *)self->_customToolbar bringSubviewToFront:self->_clippingExtensionContainer];
        }

        [(QLToolbarController *)self updateLayout];

        goto LABEL_20;
      }

      v10 = objc_loadWeakRetained(&self->_originalToolbar);
      v9 = [v10 superview];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_20:
  if (!self->_originalToolbarConfiguration)
  {
    v60 = objc_loadWeakRetained(&self->_originalToolbar);
    v61 = [v60 configuration];
    originalToolbarConfiguration = self->_originalToolbarConfiguration;
    self->_originalToolbarConfiguration = v61;

    v63 = [(_UIToolbarConfiguration *)self->_originalToolbarConfiguration copy];
    customToolbarConfiguration = self->_customToolbarConfiguration;
    self->_customToolbarConfiguration = v63;

    [(_UIToolbarConfiguration *)self->_customToolbarConfiguration setBarTintColor:self->_barTintColor];
    [(UIToolbar *)self->_customToolbar configureWithConfiguration:self->_customToolbarConfiguration];
    v65 = objc_loadWeakRetained(&self->_originalToolbar);
    [v65 configureTransparent];
  }

  return 1;
}

- (double)_toolbarSafeAreaInsetBottom
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredParentViewForSafeAreaInset);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_preferredParentViewForSafeAreaInset);
    [v4 safeAreaInsets];
    v6 = v5;
  }

  else
  {
    v4 = objc_loadWeakRetained(&self->_originalToolbar);
    v7 = [v4 superview];
    [v7 safeAreaInsets];
    v6 = v8;
  }

  return v6;
}

- (double)_computeClippingExtensionContainerBottomConstraint
{
  v3 = [(QLToolbarController *)self isOriginalToolbarHidden];
  v4 = [(QLToolbarController *)self isAccessoryViewHidden];
  result = 0.0;
  if (v3)
  {
    if (v4)
    {
      return result;
    }

    [(QLToolbarController *)self _toolbarSafeAreaInsetBottom];
  }

  else
  {
    if (v4)
    {
      return result;
    }

    [(QLToolbarController *)self _originalToolbarHeightIncludingSafeAreaBottomInset:1, 0.0];
  }

  return -v6;
}

- (double)_computeClippingExtensionContainerHeightForCurrentHiddenProgress
{
  [(QLToolbarController *)self accessoryViewHiddenProgress];
  v4 = (1.0 - v3) * self->_derivedToolbarExtensionHeight;
  if (self->_accessoryViewHiddenProgress > 0.0)
  {
    v4 = v4 + -1.0;
  }

  return fmax(v4, 0.0);
}

- (double)_originalToolbarHeightIncludingSafeAreaBottomInset:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalToolbar);
  [WeakRetained frame];
  Height = CGRectGetHeight(v9);

  if (v3)
  {
    [(QLToolbarController *)self _toolbarSafeAreaInsetBottom];
    return Height + v7;
  }

  return Height;
}

- (void)_layoutAccessoryView:(id)a3
{
  firstValue = a3;
  [(QLToolbarController *)self _toolbarExtensionHeight];
  self->_derivedToolbarExtensionHeight = v4;
  if (firstValue)
  {
    accessoryViewContainer = self->_accessoryViewContainer;
    v6 = MEMORY[0x277CCAAD0];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, firstValue, 0);
    v8 = [v6 constraintsWithVisualFormat:@"H:|[accessoryView]|" options:0 metrics:0 views:v7];
    [(UIView *)accessoryViewContainer addConstraints:v8];

    v9 = self->_accessoryViewContainer;
    v10 = MEMORY[0x277CCAAD0];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, firstValue, 0);
    v12 = [v10 constraintsWithVisualFormat:@"V:|[accessoryView]|" options:0 metrics:0 views:v11];
    [(UIView *)v9 addConstraints:v12];

    [(NSLayoutConstraint *)self->_accessoryContainerHeightConstraint setConstant:self->_derivedToolbarExtensionHeight];
    [(UIView *)self->_accessoryViewContainer layoutIfNeeded];
  }
}

- (double)_totalHeight
{
  v3 = [(QLToolbarController *)self isOriginalToolbarHidden];
  v4 = [(QLToolbarController *)self isAccessoryViewHidden];
  v5 = v4;
  if (v3)
  {
    v6 = 0.0;
    if (!v4)
    {
      [(QLToolbarController *)self _toolbarSafeAreaInsetBottom];
      v6 = v7;
LABEL_5:
      [(QLToolbarController *)self _computeClippingExtensionContainerHeightForCurrentHiddenProgress];
      return v6 + v9;
    }
  }

  else
  {
    [(QLToolbarController *)self _originalToolbarHeightIncludingSafeAreaBottomInset:1];
    v6 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  return v6;
}

- (double)_toolbarExtensionHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryView);
  [WeakRetained intrinsicContentSize];
  v5 = v4;

  if (v5 <= 0.0)
  {
    return self->_preferredAccesoryViewHeight;
  }

  return v5;
}

- (void)_embedAccessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_accessoryView);
    v5 = [v4 superview];

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_accessoryView);
      [v6 removeFromSuperview];
    }

    v7 = objc_loadWeakRetained(&self->_accessoryView);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    accessoryViewContainer = self->_accessoryViewContainer;
    v9 = objc_loadWeakRetained(&self->_accessoryView);
    [(UIView *)accessoryViewContainer addSubview:v9];

    v10 = objc_loadWeakRetained(&self->_accessoryView);
    [(QLToolbarController *)self _layoutAccessoryView:v10];
  }
}

- (void)restoreOriginalToolbar
{
  [(QLToolbarController *)self restoreOriginalConfiguration];
  [(UIToolbar *)self->_customToolbar removeFromSuperview];
  customToolbar = self->_customToolbar;
  self->_customToolbar = 0;

  toolbarHeightConstraint = self->_toolbarHeightConstraint;
  self->_toolbarHeightConstraint = 0;

  clippingExtensionContainerHeightConstraint = self->_clippingExtensionContainerHeightConstraint;
  self->_clippingExtensionContainerHeightConstraint = 0;

  accessoryViewContainer = self->_accessoryViewContainer;
  self->_accessoryViewContainer = 0;

  objc_storeWeak(&self->_originalToolbar, 0);
}

- (void)restoreOriginalConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_originalToolbar);
  [WeakRetained configureWithConfiguration:self->_originalToolbarConfiguration];
}

- (void)updateLayout
{
  [(QLToolbarController *)self _originalToolbarHeightIncludingSafeAreaBottomInset:1];
  v4 = v3;
  [(QLToolbarController *)self _computeClippingExtensionContainerBottomConstraint];
  [(NSLayoutConstraint *)self->_clippingExtensionContainerBottomConstraint setConstant:?];
  [(QLToolbarController *)self _computeClippingExtensionContainerHeightForCurrentHiddenProgress];
  [(NSLayoutConstraint *)self->_clippingExtensionContainerHeightConstraint setConstant:?];
  [(QLToolbarController *)self hiddenProgress];
  v6 = v5;
  [(QLToolbarController *)self _totalHeight];
  [(NSLayoutConstraint *)self->_toolbarBottomConstraint setConstant:v6 * v7];
  [(QLToolbarController *)self _totalHeight];
  [(NSLayoutConstraint *)self->_toolbarHeightConstraint setConstant:?];
  v8 = [(UIToolbar *)self->_customToolbar superview];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);

  if (v10 != v13 || v12 != v14)
  {
    v16 = [(UIToolbar *)self->_customToolbar superview];
    [v16 setNeedsLayout];

    v17 = [(UIToolbar *)self->_customToolbar superview];
    [v17 layoutIfNeeded];
  }

  [(QLToolbarController *)self accessoryViewHiddenProgress];
  [(UIView *)self->_accessoryViewContainer setAlpha:1.0 - v18];
  if (!_os_feature_enabled_impl() || ![(QLToolbarController *)self isOriginalToolbarHidden])
  {
    v19 = [(QLToolbarController *)self originalToolbar];
    v20 = [v19 superview];
    [v20 frame];
    v21 = CGRectGetHeight(v29) - v4;

    if ([(QLToolbarController *)self isOriginalToolbarHidden])
    {
      [(QLToolbarController *)self _totalHeight];
    }

    else
    {
      [(QLToolbarController *)self hiddenProgress];
      v24 = v23;
      [(QLToolbarController *)self _totalHeight];
      v22 = v24 * v25;
    }

    v26 = v21 + v22;
    v27 = [(QLToolbarController *)self originalToolbar];
    [v27 setFrameOrigin:{0.0, v26}];
  }
}

- (void)setPreferredSuperview:(id)a3 preferredParentViewForSafeAreaInset:(id)a4
{
  obj = a3;
  objc_storeWeak(&self->_preferredParentViewForSafeAreaInset, a4);
  WeakRetained = objc_loadWeakRetained(&self->_preferredSuperview);

  v7 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_preferredSuperview, obj);
    [(QLToolbarController *)self _tryToSetUp:1];
    v7 = obj;
  }
}

- (void)setAccessoryViewHidden:(BOOL)a3
{
  self->_accessoryViewHidden = a3;
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  [(QLToolbarController *)self setAccessoryViewHiddenProgress:v3];
}

- (BOOL)isAccessoryViewHidden
{
  if (self->_accessoryViewHidden)
  {
    return 1;
  }

  v3 = [(QLToolbarController *)self accessoryView];
  v2 = v3 == 0;

  return v2;
}

- (double)accessoryViewHiddenProgress
{
  v3 = [(QLToolbarController *)self accessoryView];
  if (v3)
  {
    accessoryViewHiddenProgress = self->_accessoryViewHiddenProgress;
  }

  else
  {
    accessoryViewHiddenProgress = 1.0;
  }

  return accessoryViewHiddenProgress;
}

- (void)setBarTintColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_barTintColor, a3);
  customToolbarConfiguration = self->_customToolbarConfiguration;
  if (customToolbarConfiguration)
  {
    [(_UIToolbarConfiguration *)customToolbarConfiguration setBarTintColor:self->_barTintColor];
    [(UIToolbar *)self->_customToolbar configureWithConfiguration:self->_customToolbarConfiguration];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  [(QLToolbarController *)self _tryToSetUp:0];
  if (self->_hidden != v3)
  {
    self->_hidden = v3;
    v5 = 0.0;
    if (v3)
    {
      v5 = 1.0;
    }

    [(QLToolbarController *)self setHiddenProgress:v5];
  }
}

- (void)setAccessoryView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accessoryView);

  if (WeakRetained != v6)
  {
    v8 = objc_loadWeakRetained(&self->_accessoryView);
    objc_storeWeak(&self->_accessoryView, v6);
    if ([(QLToolbarController *)self _tryToSetUp:0])
    {
      v9 = objc_loadWeakRetained(&self->_accessoryView);

      if (v9)
      {
        [(QLToolbarController *)self _embedAccessoryView];
        if (!v4)
        {
          [v8 removeFromSuperview];
          goto LABEL_12;
        }

        v10 = objc_loadWeakRetained(&self->_accessoryView);
        [v10 setAlpha:0.0];

        v11 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __49__QLToolbarController_setAccessoryView_animated___block_invoke_3;
        v18[3] = &unk_278B57190;
        v19 = v8;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __49__QLToolbarController_setAccessoryView_animated___block_invoke_4;
        v15[3] = &unk_278B57718;
        v16 = v19;
        v17 = self;
        [v11 animateWithDuration:v18 animations:v15 completion:0.15];

        v12 = v19;
      }

      else
      {
        v13 = MEMORY[0x277D75D18];
        if (v4)
        {
          v14 = 0.15;
        }

        else
        {
          v14 = 0.0;
        }

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __49__QLToolbarController_setAccessoryView_animated___block_invoke;
        v22[3] = &unk_278B57190;
        v22[4] = self;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__QLToolbarController_setAccessoryView_animated___block_invoke_2;
        v20[3] = &unk_278B571B8;
        v21 = v8;
        [v13 animateWithDuration:v22 animations:v20 completion:v14];
        v12 = v21;
      }
    }

LABEL_12:
  }
}

uint64_t __49__QLToolbarController_setAccessoryView_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) removeFromSuperview];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__QLToolbarController_setAccessoryView_animated___block_invoke_5;
  v3[3] = &unk_278B57190;
  v3[4] = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0 completion:0.15];
}

void __49__QLToolbarController_setAccessoryView_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  [WeakRetained setAlpha:1.0];
}

- (void)setOriginalToolbar:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalToolbar);

  if (WeakRetained != obj)
  {
    originalToolbarConfiguration = self->_originalToolbarConfiguration;
    self->_originalToolbarConfiguration = 0;

    objc_storeWeak(&self->_originalToolbar, obj);
    [(QLToolbarController *)self _tryToSetUp:0];
  }
}

- (BOOL)isOriginalToolbarHidden
{
  v2 = [(QLToolbarController *)self originalToolbar];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setPreferredAccesoryViewHeight:(double)a3
{
  self->_preferredAccesoryViewHeight = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accessoryView);
  [(QLToolbarController *)self _layoutAccessoryView:WeakRetained];
}

- (void)setOriginalToolbarAlpha:(double)a3
{
  self->_originalToolbarAlpha = a3;
  v4 = [(QLToolbarController *)self originalToolbar];
  [v4 setAlpha:a3];
}

- (UIToolbar)originalToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_originalToolbar);

  return WeakRetained;
}

- (UIView)accessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryView);

  return WeakRetained;
}

- (UIView)preferredSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredSuperview);

  return WeakRetained;
}

- (UIView)preferredParentViewForSafeAreaInset
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredParentViewForSafeAreaInset);

  return WeakRetained;
}

@end