@interface _UIFontPickerUIServiceTextFormattingViewController
- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4;
- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
- (void)_presentTypographySettingsForFont:(id)a3;
- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4;
- (void)_textFormattingDidFinish;
- (void)loadView;
- (void)setPreferredContentSize:(CGSize)a3;
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
  v5 = [(_UIFontPickerUIServiceTextFormattingViewController *)self view];
  [v5 setOpaque:0];

  v6 = objc_alloc_init(NSClassFromString(@"_UITextFormattingServiceViewController"));
  [v6 willMoveToParentViewController:self];
  v31 = self;
  [(_UIFontPickerUIServiceTextFormattingViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  [v3 addSubview:v7];

  [v6 didMoveToParentViewController:self];
  v8 = [v6 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [v6 view];
  v28 = [v30 topAnchor];
  v29 = [v3 safeAreaLayoutGuide];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[0] = v26;
  v25 = [v6 view];
  v23 = [v25 bottomAnchor];
  v24 = [v3 safeAreaLayoutGuide];
  v22 = [v24 bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v33[1] = v21;
  v20 = [v6 view];
  v18 = [v20 leadingAnchor];
  v19 = [v3 safeAreaLayoutGuide];
  v9 = [v19 leadingAnchor];
  v10 = [v18 constraintEqualToAnchor:v9];
  v33[2] = v10;
  v11 = [v6 view];
  v12 = [v11 trailingAnchor];
  v13 = [v3 safeAreaLayoutGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v33[3] = v15;
  v16 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  contentViewController = v31->_contentViewController;
  v31->_contentViewController = v6;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = _UIFontPickerUIServiceTextFormattingViewController;
  [(_UIFontPickerUIServiceTextFormattingViewController *)&v7 setPreferredContentSize:?];
  v6 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [v6 _setPreferredContentSize:{width, height}];
}

- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4
{
  v6 = [_UITextFormattingActionClientToHost actionForChangeValue:a3 textAttributesData:a4];
  v5 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [v5 sendAction:v6];
}

- (void)_textFormattingDidFinish
{
  v3 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  v2 = +[_UITextFormattingActionClientToHost actionForDidFinish];
  [v3 sendAction:v2];
}

- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4
{
  v6 = [_UITextFormattingActionClientToHost actionForPresentColorPickerWithRect:a4 selectedColor:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [v5 sendAction:v6];
}

- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = [_UITextFormattingActionClientToHost actionForPresentFontPickerWithConfiguration:a3 selectedFonts:a4];
  v5 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [v5 sendAction:v6];
}

- (void)_presentTypographySettingsForFont:(id)a3
{
  v5 = [_UITextFormattingActionClientToHost actionForPresentTypographySettingsForFont:a3];
  v4 = [(_UIFontPickerUIServiceTextFormattingViewController *)self _hostedWindowScene];
  [v4 sendAction:v5];
}

@end