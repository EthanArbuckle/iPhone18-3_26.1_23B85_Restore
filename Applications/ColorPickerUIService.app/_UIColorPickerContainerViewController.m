@interface _UIColorPickerContainerViewController
- (_UIColorPickerContainerViewController)initWithCoder:(id)a3;
- (_UIColorPickerContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_UIColorPickerViewProvidingDelegate)_delegate;
- (void)_commonInit;
- (void)_pickerDidFinish;
- (void)_pickerDidShowEyedropperWithSelectionBlock:(id)a3 dismissBlock:(id)a4;
- (void)_setConfiguration:(id)a3;
- (void)_updateContentViewConfiguration;
- (void)buildMenuWithBuilder:(id)a3;
- (void)eyedropperDidDismiss;
- (void)eyedropperDidSelectColor:(id)a3;
- (void)invokeEyedropper;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewLayoutMarginsDidChange;
@end

@implementation _UIColorPickerContainerViewController

- (_UIColorPickerContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIColorPickerContainerViewController;
  v4 = [(_UIColorPickerContainerViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(_UIColorPickerContainerViewController *)v4 _commonInit];
  }

  return v5;
}

- (_UIColorPickerContainerViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIColorPickerContainerViewController;
  v3 = [(_UIColorPickerContainerViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIColorPickerContainerViewController *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = +[UIMenuSystem mainSystem];
  [v3 _setInitialBuildingResponder:self];
}

- (void)_setConfiguration:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_configuration, a3);
  [(_UIColorPickerContainerViewController *)self _updateContentViewConfiguration];
  if ([v6 _isInPopoverPresentation])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 _isEmbedded];
  }

  [(UIVisualEffectView *)self->_visualEffectView setHidden:v5];
}

- (void)_pickerDidFinish
{
  v2 = [(_UIColorPickerContainerViewController *)self _delegate];
  [v2 _pickerDidFinish];
}

- (void)_pickerDidShowEyedropperWithSelectionBlock:(id)a3 dismissBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIColorPickerContainerViewController *)self view];
  [v8 setUserInteractionEnabled:0];

  [(_UIColorPickerContainerViewController *)self invokeEyedropper];
  v9 = [(_UIColorPickerContainerViewController *)self _delegate];
  [v9 _pickerDidShowEyedropper];

  v10 = objc_retainBlock(v6);
  eyeDropperDismissBlock = self->_eyeDropperDismissBlock;
  self->_eyeDropperDismissBlock = v10;

  v12 = objc_retainBlock(v7);
  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  self->_eyeDropperSelectionBlock = v12;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v6 = a3;
  v3 = [v6 system];
  v4 = +[UIMenuSystem mainSystem];

  if (v3 == v4)
  {
    v5 = [UIMenu menuWithTitle:&stru_10006E618 image:0 identifier:UIMenuRoot options:0 children:&__NSArray0__struct];
    [v6 replaceMenuForIdentifier:UIMenuRoot withMenu:v5];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(_UIColorPickerContainerViewController *)self setView:v3];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [UIBlurEffect effectWithStyle:9];
    v6 = [v4 initWithEffect:v5];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v6;

    [(UIVisualEffectView *)self->_visualEffectView setAutoresizingMask:18];
    v8 = [(_UIColorPickerContainerViewController *)self view];
    [v8 addSubview:self->_visualEffectView];
  }

  v9 = objc_alloc_init(UIScrollView);
  [(UIScrollView *)v9 setClipsToBounds:0];
  [(UIScrollView *)v9 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v9 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v9 _setTouchInsets:0.0, 0.0, -1.79769313e308, 0.0];
  scrollView = self->_scrollView;
  self->_scrollView = v9;
  v11 = v9;

  v12 = objc_alloc_init(UIView);
  v13 = [(UIView *)v12 layer];
  [v13 setHitTestsAsOpaque:1];

  [(UIScrollView *)v11 addSubview:v12];
  touchExtensionView = self->_touchExtensionView;
  self->_touchExtensionView = v12;
  v41 = v12;

  v15 = objc_alloc_init(NSClassFromString(@"_UIColorPickerContentViewController"));
  [(_UIColorPickerContainerViewController *)self addChildViewController:v15];
  v16 = [v15 view];
  [(UIScrollView *)v11 addSubview:v16];

  [v15 didMoveToParentViewController:self];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v15;
  v34 = v15;

  [(UIScrollView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(_UIColorPickerContainerViewController *)self view];
  [v18 addSubview:v11];

  v39 = [(UIScrollView *)v11 leadingAnchor];
  v40 = [(_UIColorPickerContainerViewController *)self view];
  v38 = [v40 safeAreaLayoutGuide];
  v37 = [v38 leadingAnchor];
  v36 = [v39 constraintEqualToAnchor:v37];
  v42[0] = v36;
  v33 = [(UIScrollView *)v11 trailingAnchor];
  v35 = [(_UIColorPickerContainerViewController *)self view];
  v32 = [v35 safeAreaLayoutGuide];
  v31 = [v32 trailingAnchor];
  v30 = [v33 constraintEqualToAnchor:v31];
  v42[1] = v30;
  v28 = [(UIScrollView *)v11 topAnchor];
  v29 = [(_UIColorPickerContainerViewController *)self view];
  v19 = [v29 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v28 constraintEqualToAnchor:v20];
  v42[2] = v21;
  v22 = [(UIScrollView *)v11 bottomAnchor];
  v23 = [(_UIColorPickerContainerViewController *)self view];
  v24 = [v23 keyboardLayoutGuide];
  v25 = [v24 topAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  v42[3] = v26;
  v27 = [NSArray arrayWithObjects:v42 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  if (self->_contentViewController == a3)
  {
    [a3 preferredContentSize];
    scrollView = self->_scrollView;
    UISizeRoundToViewScale();
    if (v5 > 0.0)
    {
      v7 = v6;
      if (v6 > 0.0)
      {
        v8 = v5;
        [(UIScrollView *)self->_scrollView frame];
        if (v9 > 0.0)
        {
          [(UIScrollView *)self->_scrollView frame];
          if (v10 < v8)
          {
            v8 = v10;
          }
        }

        [(UIScrollView *)self->_scrollView setContentSize:v8, v7];
        v11 = [(_UIColorPickerViewProviding *)self->_contentViewController view];
        [v11 setFrame:{0.0, 0.0, v8, 10000.0}];

        [(UIView *)self->_touchExtensionView setFrame:0.0, 0.0, v8, 10000.0];

        [(_UIColorPickerContainerViewController *)self setPreferredContentSize:v8, v7];
      }
    }
  }
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIColorPickerContainerViewController;
  [(_UIColorPickerContainerViewController *)&v3 viewLayoutMarginsDidChange];
  [(_UIColorPickerContainerViewController *)self _updateContentViewConfiguration];
}

- (void)_updateContentViewConfiguration
{
  v3 = [(_UIColorPickerViewControllerConfiguration *)self->_configuration copy];
  if (v3)
  {
    v11 = v3;
    [v3 _preferredWidth];
    v5 = v4;
    v6 = [(_UIColorPickerContainerViewController *)self view];
    [v6 safeAreaInsets];
    v8 = v5 - v7;
    v9 = [(_UIColorPickerContainerViewController *)self view];
    [v9 safeAreaInsets];
    [v11 set_preferredWidth:v8 - v10];

    [(_UIColorPickerViewProviding *)self->_contentViewController _setConfiguration:v11];
    v3 = v11;
  }
}

- (void)invokeEyedropper
{
  colorSampler = self->_colorSampler;
  if (!colorSampler)
  {
    [(_UIColorPickerViewControllerConfiguration *)self->_configuration maxGain];
    v5 = [[_UIColorSamplerSettings alloc] initWithHeadroomMode:v4 > 1.0];
    v6 = [[_UIColorSampler alloc] initWithSettings:v5];
    v7 = self->_colorSampler;
    self->_colorSampler = v6;

    [(_UIColorSampler *)self->_colorSampler setFloatEyedropperOnStart:0];
    colorSampler = self->_colorSampler;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000488EC;
  v8[3] = &unk_10006E5F8;
  v8[4] = self;
  [(_UIColorSampler *)colorSampler showSamplerWithSelectionHandler:v8];
}

- (void)eyedropperDidSelectColor:(id)a3
{
  v6 = a3;
  v4 = [(_UIColorPickerContainerViewController *)self _delegate];
  [v4 _pickerDidSelectColor:v6 colorSpace:0 isVolatile:0];

  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  if (eyeDropperSelectionBlock)
  {
    eyeDropperSelectionBlock[2](eyeDropperSelectionBlock, v6);
  }
}

- (void)eyedropperDidDismiss
{
  v3 = [(_UIColorPickerContainerViewController *)self view];
  [v3 setUserInteractionEnabled:1];

  v4 = [(_UIColorPickerContainerViewController *)self _delegate];
  [v4 _pickerDidDismissEyedropper];

  eyeDropperDismissBlock = self->_eyeDropperDismissBlock;
  if (eyeDropperDismissBlock)
  {
    eyeDropperDismissBlock[2]();
    v6 = self->_eyeDropperDismissBlock;
  }

  else
  {
    v6 = 0;
  }

  self->_eyeDropperDismissBlock = 0;

  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  self->_eyeDropperSelectionBlock = 0;
}

- (_UIColorPickerViewProvidingDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end