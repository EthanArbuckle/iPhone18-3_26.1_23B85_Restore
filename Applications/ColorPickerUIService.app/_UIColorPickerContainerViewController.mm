@interface _UIColorPickerContainerViewController
- (_UIColorPickerContainerViewController)initWithCoder:(id)coder;
- (_UIColorPickerContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_UIColorPickerViewProvidingDelegate)_delegate;
- (void)_commonInit;
- (void)_pickerDidFinish;
- (void)_pickerDidShowEyedropperWithSelectionBlock:(id)block dismissBlock:(id)dismissBlock;
- (void)_setConfiguration:(id)configuration;
- (void)_updateContentViewConfiguration;
- (void)buildMenuWithBuilder:(id)builder;
- (void)eyedropperDidDismiss;
- (void)eyedropperDidSelectColor:(id)color;
- (void)invokeEyedropper;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewLayoutMarginsDidChange;
@end

@implementation _UIColorPickerContainerViewController

- (_UIColorPickerContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = _UIColorPickerContainerViewController;
  v4 = [(_UIColorPickerContainerViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(_UIColorPickerContainerViewController *)v4 _commonInit];
  }

  return v5;
}

- (_UIColorPickerContainerViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIColorPickerContainerViewController;
  v3 = [(_UIColorPickerContainerViewController *)&v6 initWithCoder:coder];
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

- (void)_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  [(_UIColorPickerContainerViewController *)self _updateContentViewConfiguration];
  if ([configurationCopy _isInPopoverPresentation])
  {
    _isEmbedded = 1;
  }

  else
  {
    _isEmbedded = [configurationCopy _isEmbedded];
  }

  [(UIVisualEffectView *)self->_visualEffectView setHidden:_isEmbedded];
}

- (void)_pickerDidFinish
{
  _delegate = [(_UIColorPickerContainerViewController *)self _delegate];
  [_delegate _pickerDidFinish];
}

- (void)_pickerDidShowEyedropperWithSelectionBlock:(id)block dismissBlock:(id)dismissBlock
{
  dismissBlockCopy = dismissBlock;
  blockCopy = block;
  view = [(_UIColorPickerContainerViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(_UIColorPickerContainerViewController *)self invokeEyedropper];
  _delegate = [(_UIColorPickerContainerViewController *)self _delegate];
  [_delegate _pickerDidShowEyedropper];

  v10 = objc_retainBlock(dismissBlockCopy);
  eyeDropperDismissBlock = self->_eyeDropperDismissBlock;
  self->_eyeDropperDismissBlock = v10;

  v12 = objc_retainBlock(blockCopy);
  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  self->_eyeDropperSelectionBlock = v12;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  system = [builderCopy system];
  v4 = +[UIMenuSystem mainSystem];

  if (system == v4)
  {
    v5 = [UIMenu menuWithTitle:&stru_10006E618 image:0 identifier:UIMenuRoot options:0 children:&__NSArray0__struct];
    [builderCopy replaceMenuForIdentifier:UIMenuRoot withMenu:v5];
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
    view = [(_UIColorPickerContainerViewController *)self view];
    [view addSubview:self->_visualEffectView];
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
  layer = [(UIView *)v12 layer];
  [layer setHitTestsAsOpaque:1];

  [(UIScrollView *)v11 addSubview:v12];
  touchExtensionView = self->_touchExtensionView;
  self->_touchExtensionView = v12;
  v41 = v12;

  v15 = objc_alloc_init(NSClassFromString(@"_UIColorPickerContentViewController"));
  [(_UIColorPickerContainerViewController *)self addChildViewController:v15];
  view2 = [v15 view];
  [(UIScrollView *)v11 addSubview:view2];

  [v15 didMoveToParentViewController:self];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v15;
  v34 = v15;

  [(UIScrollView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(_UIColorPickerContainerViewController *)self view];
  [view3 addSubview:v11];

  leadingAnchor = [(UIScrollView *)v11 leadingAnchor];
  view4 = [(_UIColorPickerContainerViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v36;
  trailingAnchor = [(UIScrollView *)v11 trailingAnchor];
  view5 = [(_UIColorPickerContainerViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[1] = v30;
  topAnchor = [(UIScrollView *)v11 topAnchor];
  view6 = [(_UIColorPickerContainerViewController *)self view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v21;
  bottomAnchor = [(UIScrollView *)v11 bottomAnchor];
  view7 = [(_UIColorPickerContainerViewController *)self view];
  keyboardLayoutGuide = [view7 keyboardLayoutGuide];
  topAnchor3 = [keyboardLayoutGuide topAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v42[3] = v26;
  v27 = [NSArray arrayWithObjects:v42 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  if (self->_contentViewController == container)
  {
    [container preferredContentSize];
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
        view = [(_UIColorPickerViewProviding *)self->_contentViewController view];
        [view setFrame:{0.0, 0.0, v8, 10000.0}];

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
    view = [(_UIColorPickerContainerViewController *)self view];
    [view safeAreaInsets];
    v8 = v5 - v7;
    view2 = [(_UIColorPickerContainerViewController *)self view];
    [view2 safeAreaInsets];
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

- (void)eyedropperDidSelectColor:(id)color
{
  colorCopy = color;
  _delegate = [(_UIColorPickerContainerViewController *)self _delegate];
  [_delegate _pickerDidSelectColor:colorCopy colorSpace:0 isVolatile:0];

  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  if (eyeDropperSelectionBlock)
  {
    eyeDropperSelectionBlock[2](eyeDropperSelectionBlock, colorCopy);
  }
}

- (void)eyedropperDidDismiss
{
  view = [(_UIColorPickerContainerViewController *)self view];
  [view setUserInteractionEnabled:1];

  _delegate = [(_UIColorPickerContainerViewController *)self _delegate];
  [_delegate _pickerDidDismissEyedropper];

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