@interface _UIFontPickerUIServiceTextFormattingViewController
- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color;
- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
- (void)_presentTypographySettingsForFont:(id)font;
- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data;
- (void)_textFormattingDidFinish;
- (void)loadView;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation _UIFontPickerUIServiceTextFormattingViewController

- (void)loadView
{
  v32.receiver = self;
  v32.super_class = _UIFontPickerUIServiceTextFormattingViewController;
  [(_UIFontPickerUIServiceTextFormattingViewController *)&v32 loadView];
  v3 = objc_opt_new();
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [(_UIFontPickerUIServiceTextFormattingViewController *)self setView:v3];
  view = [(_UIFontPickerUIServiceTextFormattingViewController *)self view];
  [view setOpaque:0];

  v6 = objc_alloc_init(NSClassFromString(@"_UITextFormattingServiceViewController"));
  [v6 willMoveToParentViewController:self];
  selfCopy = self;
  [(_UIFontPickerUIServiceTextFormattingViewController *)self addChildViewController:v6];
  view2 = [v6 view];
  [v3 addSubview:view2];

  [v6 didMoveToParentViewController:self];
  view3 = [v6 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [v6 view];
  topAnchor = [view4 topAnchor];
  safeAreaLayoutGuide = [v3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[0] = v26;
  view5 = [v6 view];
  bottomAnchor = [view5 bottomAnchor];
  safeAreaLayoutGuide2 = [v3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[1] = v21;
  view6 = [v6 view];
  leadingAnchor = [view6 leadingAnchor];
  safeAreaLayoutGuide3 = [v3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[2] = v10;
  view7 = [v6 view];
  trailingAnchor = [view7 trailingAnchor];
  safeAreaLayoutGuide4 = [v3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[3] = v15;
  v16 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  contentViewController = selfCopy->_contentViewController;
  selfCopy->_contentViewController = v6;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = _UIFontPickerUIServiceTextFormattingViewController;
  [(_UIFontPickerUIServiceTextFormattingViewController *)&v7 setPreferredContentSize:?];
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [_hostedWindowScene _setPreferredContentSize:{width, height}];
}

- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data
{
  v6 = [_UITextFormattingActionClientToHost actionForChangeValue:value textAttributesData:data];
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v6];
}

- (void)_textFormattingDidFinish
{
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  v2 = +[_UITextFormattingActionClientToHost actionForDidFinish];
  [_hostedWindowScene sendAction:v2];
}

- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color
{
  v6 = [_UITextFormattingActionClientToHost actionForPresentColorPickerWithRect:color selectedColor:picker.origin.x, picker.origin.y, picker.size.width, picker.size.height];
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v6];
}

- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  v6 = [_UITextFormattingActionClientToHost actionForPresentFontPickerWithConfiguration:configuration selectedFonts:fonts];
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v6];
}

- (void)_presentTypographySettingsForFont:(id)font
{
  v5 = [_UITextFormattingActionClientToHost actionForPresentTypographySettingsForFont:font];
  _hostedWindowScene = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v5];
}

@end