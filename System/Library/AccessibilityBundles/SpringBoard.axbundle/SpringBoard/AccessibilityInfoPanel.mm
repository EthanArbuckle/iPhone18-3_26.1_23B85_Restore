@interface AccessibilityInfoPanel
- (AccessibilityInfoPanel)init;
- (AccessibilityInfoPanel)initWithTitle:(id)title;
- (CGRect)_displayFrame;
- (id)_accessibilityInfoPanelController;
- (id)_accessibilityInfoPanelView;
- (id)_accessibilityInfoPanelWindow;
- (id)_rootView;
- (void)_layoutSubviews;
- (void)_setup;
- (void)dealloc;
- (void)fadeOut;
- (void)show;
@end

@implementation AccessibilityInfoPanel

- (AccessibilityInfoPanel)init
{
  v3.receiver = self;
  v3.super_class = AccessibilityInfoPanel;
  return [(AccessibilityInfoPanel *)&v3 init];
}

- (AccessibilityInfoPanel)initWithTitle:(id)title
{
  titleCopy = title;
  v8.receiver = self;
  v8.super_class = AccessibilityInfoPanel;
  v5 = [(AccessibilityInfoPanel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AccessibilityInfoPanel *)v5 setTitle:titleCopy];
    [(AccessibilityInfoPanel *)v6 _setup];
  }

  return v6;
}

- (void)dealloc
{
  [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setHidden:1];
  [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setRootViewController:0];
  [(UIViewController *)self->_accessibilityInfoPanelController setView:0];
  [(UILabel *)self->_labelView removeFromSuperview];
  [(UIView *)self->_backgroundView removeFromSuperview];
  [(UIView *)self->_accessibilityInfoPanelView removeFromSuperview];
  [(UIView *)self->_rootView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = AccessibilityInfoPanel;
  [(AccessibilityInfoPanel *)&v3 dealloc];
}

- (void)_setup
{
  _rootView = [(AccessibilityInfoPanel *)self _rootView];
  _accessibilityInfoPanelView = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelView];
  _accessibilityInfoPanelWindow = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelWindow];
  _accessibilityInfoPanelController = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelController];
  [_accessibilityInfoPanelWindow addSubview:_rootView];
  [_rootView addSubview:_accessibilityInfoPanelView];
  [_accessibilityInfoPanelController setView:_accessibilityInfoPanelView];
  [_rootView layoutSubviews];
}

- (void)show
{
  isHidden = [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow isHidden];
  accessibilityInfoPanelView = self->_accessibilityInfoPanelView;
  if (isHidden)
  {
    [(UIView *)accessibilityInfoPanelView setAlpha:0.0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setHidden:0];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __30__AccessibilityInfoPanel_show__block_invoke;
    v6[3] = &unk_29F2FBA40;
    v6[4] = self;
    [MEMORY[0x29EDC7DA0] animateWithDuration:v6 animations:0.5];
  }

  else
  {
    [(UIView *)accessibilityInfoPanelView setAlpha:1.0];
    [(UILabel *)self->_labelView setAlpha:1.0];
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setAlpha:0.6];
  }
}

uint64_t __30__AccessibilityInfoPanel_show__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAlpha:1.0];
  [*(*(a1 + 32) + 40) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 48);

  return [v2 setAlpha:0.6];
}

- (void)fadeOut
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __33__AccessibilityInfoPanel_fadeOut__block_invoke;
  v3[3] = &unk_29F2FBA40;
  v3[4] = self;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __33__AccessibilityInfoPanel_fadeOut__block_invoke_2;
  v2[3] = &unk_29F2FBBC8;
  v2[4] = self;
  [MEMORY[0x29EDC7DA0] animateWithDuration:v3 animations:v2 completion:1.0];
}

- (CGRect)_displayFrame
{
  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  displayOnBottomEdge = self->_displayOnBottomEdge;
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v11 = -v5;
  if (displayOnBottomEdge)
  {
    v12 = v7 + -80.0;
    if (userInterfaceIdiom == 1)
    {
      v13 = 0.75;
    }

    else
    {
      v13 = 0.9;
    }

    v14 = v5 + v11 * v13;
  }

  else
  {
    if (userInterfaceIdiom == 1)
    {
      v13 = 0.75;
      v14 = v5 + v11 * 0.75;
      *&v15 = 80.0;
    }

    else
    {
      v13 = 0.9;
      v14 = v5 + v11 * 0.9;
      *&v15 = 40.0;
    }

    v12 = *&v15;
  }

  v16 = v5 * v13;
  v17 = v14 * 0.5;
  v18 = 60.0;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v12;
  result.origin.x = v17;
  return result;
}

- (id)_accessibilityInfoPanelController
{
  accessibilityInfoPanelController = self->_accessibilityInfoPanelController;
  if (!accessibilityInfoPanelController)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
    v5 = self->_accessibilityInfoPanelController;
    self->_accessibilityInfoPanelController = v4;

    accessibilityInfoPanelController = self->_accessibilityInfoPanelController;
  }

  return accessibilityInfoPanelController;
}

- (id)_accessibilityInfoPanelWindow
{
  accessibilityInfoPanelWindow = self->_accessibilityInfoPanelWindow;
  if (!accessibilityInfoPanelWindow)
  {
    _accessibilityInfoPanelController = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelController];
    v5 = [AccessibilityInfoPanelWindow alloc];
    mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
    [mainScreen bounds];
    v7 = [(AccessibilityInfoPanelWindow *)v5 initWithFrame:?];
    v8 = self->_accessibilityInfoPanelWindow;
    self->_accessibilityInfoPanelWindow = v7;

    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setAlpha:1.0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setHidden:1];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setWindowLevel:10000022.0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setAccessibilityElementsHidden:1];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow _setAccessibilityWindowVisible:0];
    v9 = self->_accessibilityInfoPanelWindow;
    clearColor = [MEMORY[0x29EDC7A00] clearColor];
    [(AccessibilityInfoPanelWindow *)v9 setBackgroundColor:clearColor];

    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setRootViewController:_accessibilityInfoPanelController];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setUserInteractionEnabled:0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setDelegate:_accessibilityInfoPanelController];

    accessibilityInfoPanelWindow = self->_accessibilityInfoPanelWindow;
  }

  return accessibilityInfoPanelWindow;
}

- (void)_layoutSubviews
{
  [(AccessibilityInfoPanel *)self _displayFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_accessibilityInfoPanelView setFrame:?];
  backgroundView = self->_backgroundView;
  [(UIView *)self->_accessibilityInfoPanelView bounds];
  [(UIView *)backgroundView setFrame:?];
  labelView = self->_labelView;
  [(UIView *)self->_accessibilityInfoPanelView bounds];
  [(UILabel *)labelView setFrame:?];
  v17 = [MEMORY[0x29EDC76B0] systemFontOfSize:18.0];
  [(NSString *)self->_title _legacy_sizeWithFont:v8 constrainedToSize:3.40282347e38 lineBreakMode:?];
  if (v13 > v10)
  {
    v14 = v13 + 10.0;
    v15 = v6 + v10 - (v13 + 10.0);
    if (v6 > 160.0)
    {
      v6 = v15;
    }

    v10 = v14;
  }

  [(UIView *)self->_accessibilityInfoPanelView setFrame:v4, v6, v8, v10];
  v16 = self->_labelView;
  [(UIView *)self->_accessibilityInfoPanelView bounds];
  [(UILabel *)v16 setFrame:?];
}

- (id)_accessibilityInfoPanelView
{
  accessibilityInfoPanelView = self->_accessibilityInfoPanelView;
  if (!accessibilityInfoPanelView)
  {
    [(AccessibilityInfoPanel *)self _displayFrame];
    v8 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v4, v5, v6, v7}];
    v9 = self->_accessibilityInfoPanelView;
    self->_accessibilityInfoPanelView = v8;

    [(UIView *)self->_accessibilityInfoPanelView setAccessibilityElementsHidden:1];
    [(UIView *)self->_accessibilityInfoPanelView setUserInteractionEnabled:0];
    v10 = self->_accessibilityInfoPanelView;
    clearColor = [MEMORY[0x29EDC7A00] clearColor];
    [(UIView *)v10 setBackgroundColor:clearColor];

    v12 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [(UIView *)self->_accessibilityInfoPanelView bounds];
    v13 = [v12 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v13;

    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    v15 = self->_backgroundView;
    grayColor = [MEMORY[0x29EDC7A00] grayColor];
    [(UIView *)v15 setBackgroundColor:grayColor];

    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:5.0];

    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setShadowOffset:{3.0, 3.0}];

    layer3 = [(UIView *)self->_backgroundView layer];
    LODWORD(v20) = 0.75;
    [layer3 setShadowOpacity:v20];

    [(UIView *)self->_backgroundView setTag:100];
    [(UIView *)self->_accessibilityInfoPanelView addSubview:self->_backgroundView];
    v21 = [MEMORY[0x29EDC76B0] systemFontOfSize:18.0];
    v22 = objc_allocWithZone(MEMORY[0x29EDC7B38]);
    [(UIView *)self->_accessibilityInfoPanelView bounds];
    v23 = [v22 initWithFrame:?];
    labelView = self->_labelView;
    self->_labelView = v23;

    v25 = self->_labelView;
    clearColor2 = [MEMORY[0x29EDC7A00] clearColor];
    [(UILabel *)v25 setBackgroundColor:clearColor2];

    [(UILabel *)self->_labelView setTextAlignment:1];
    [(UILabel *)self->_labelView setLineBreakMode:0];
    v27 = self->_labelView;
    whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
    [(UILabel *)v27 setTextColor:whiteColor];

    [(UILabel *)self->_labelView setNumberOfLines:0];
    [(UILabel *)self->_labelView setTag:200];
    v29 = self->_labelView;
    blackColor = [MEMORY[0x29EDC7A00] blackColor];
    v31 = [blackColor colorWithAlphaComponent:0.75];
    [(UILabel *)v29 setShadowColor:v31];

    [(UILabel *)self->_labelView setShadowOffset:1.0, 1.0];
    [(UILabel *)self->_labelView setText:self->_title];
    [(UILabel *)self->_labelView setFont:v21];
    [(UILabel *)self->_labelView setUserInteractionEnabled:0];
    [(UIView *)self->_accessibilityInfoPanelView addSubview:self->_labelView];
    [(AccessibilityInfoPanel *)self _layoutSubviews];

    accessibilityInfoPanelView = self->_accessibilityInfoPanelView;
  }

  return accessibilityInfoPanelView;
}

- (id)_rootView
{
  rootView = self->_rootView;
  if (!rootView)
  {
    _accessibilityInfoPanelWindow = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelWindow];
    v5 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [_accessibilityInfoPanelWindow bounds];
    v6 = [v5 initWithFrame:?];
    v7 = self->_rootView;
    self->_rootView = v6;

    [(UIView *)self->_rootView setAccessibilityElementsHidden:1];
    rootView = self->_rootView;
  }

  return rootView;
}

@end