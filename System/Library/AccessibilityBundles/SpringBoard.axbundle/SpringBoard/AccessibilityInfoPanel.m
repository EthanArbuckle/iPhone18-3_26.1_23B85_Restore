@interface AccessibilityInfoPanel
- (AccessibilityInfoPanel)init;
- (AccessibilityInfoPanel)initWithTitle:(id)a3;
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

- (AccessibilityInfoPanel)initWithTitle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AccessibilityInfoPanel;
  v5 = [(AccessibilityInfoPanel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AccessibilityInfoPanel *)v5 setTitle:v4];
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
  v6 = [(AccessibilityInfoPanel *)self _rootView];
  v3 = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelView];
  v4 = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelWindow];
  v5 = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelController];
  [v4 addSubview:v6];
  [v6 addSubview:v3];
  [v5 setView:v3];
  [v6 layoutSubviews];
}

- (void)show
{
  v3 = [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow isHidden];
  accessibilityInfoPanelView = self->_accessibilityInfoPanelView;
  if (v3)
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
  v3 = [MEMORY[0x29EDC7C40] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  displayOnBottomEdge = self->_displayOnBottomEdge;
  v9 = [MEMORY[0x29EDC7A58] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = -v5;
  if (displayOnBottomEdge)
  {
    v12 = v7 + -80.0;
    if (v10 == 1)
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
    if (v10 == 1)
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
    v4 = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelController];
    v5 = [AccessibilityInfoPanelWindow alloc];
    v6 = [MEMORY[0x29EDC7C40] mainScreen];
    [v6 bounds];
    v7 = [(AccessibilityInfoPanelWindow *)v5 initWithFrame:?];
    v8 = self->_accessibilityInfoPanelWindow;
    self->_accessibilityInfoPanelWindow = v7;

    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setAlpha:1.0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setHidden:1];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setWindowLevel:10000022.0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setAccessibilityElementsHidden:1];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow _setAccessibilityWindowVisible:0];
    v9 = self->_accessibilityInfoPanelWindow;
    v10 = [MEMORY[0x29EDC7A00] clearColor];
    [(AccessibilityInfoPanelWindow *)v9 setBackgroundColor:v10];

    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setRootViewController:v4];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setUserInteractionEnabled:0];
    [(AccessibilityInfoPanelWindow *)self->_accessibilityInfoPanelWindow setDelegate:v4];

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
    v11 = [MEMORY[0x29EDC7A00] clearColor];
    [(UIView *)v10 setBackgroundColor:v11];

    v12 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [(UIView *)self->_accessibilityInfoPanelView bounds];
    v13 = [v12 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v13;

    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    v15 = self->_backgroundView;
    v16 = [MEMORY[0x29EDC7A00] grayColor];
    [(UIView *)v15 setBackgroundColor:v16];

    v17 = [(UIView *)self->_backgroundView layer];
    [v17 setCornerRadius:5.0];

    v18 = [(UIView *)self->_backgroundView layer];
    [v18 setShadowOffset:{3.0, 3.0}];

    v19 = [(UIView *)self->_backgroundView layer];
    LODWORD(v20) = 0.75;
    [v19 setShadowOpacity:v20];

    [(UIView *)self->_backgroundView setTag:100];
    [(UIView *)self->_accessibilityInfoPanelView addSubview:self->_backgroundView];
    v21 = [MEMORY[0x29EDC76B0] systemFontOfSize:18.0];
    v22 = objc_allocWithZone(MEMORY[0x29EDC7B38]);
    [(UIView *)self->_accessibilityInfoPanelView bounds];
    v23 = [v22 initWithFrame:?];
    labelView = self->_labelView;
    self->_labelView = v23;

    v25 = self->_labelView;
    v26 = [MEMORY[0x29EDC7A00] clearColor];
    [(UILabel *)v25 setBackgroundColor:v26];

    [(UILabel *)self->_labelView setTextAlignment:1];
    [(UILabel *)self->_labelView setLineBreakMode:0];
    v27 = self->_labelView;
    v28 = [MEMORY[0x29EDC7A00] whiteColor];
    [(UILabel *)v27 setTextColor:v28];

    [(UILabel *)self->_labelView setNumberOfLines:0];
    [(UILabel *)self->_labelView setTag:200];
    v29 = self->_labelView;
    v30 = [MEMORY[0x29EDC7A00] blackColor];
    v31 = [v30 colorWithAlphaComponent:0.75];
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
    v4 = [(AccessibilityInfoPanel *)self _accessibilityInfoPanelWindow];
    v5 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [v4 bounds];
    v6 = [v5 initWithFrame:?];
    v7 = self->_rootView;
    self->_rootView = v6;

    [(UIView *)self->_rootView setAccessibilityElementsHidden:1];
    rootView = self->_rootView;
  }

  return rootView;
}

@end