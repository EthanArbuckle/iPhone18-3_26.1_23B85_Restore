@interface MFComposeStyleSelectorViewController
- (CGSize)preferredContentSize;
- (MFComposeFontSelectorButton)fontSelectorButton;
- (MFComposeStyleSelectorViewControllerDelegate)styleDelegate;
- (MFComposeTextColorButton)textColorButton;
- (MFRoundedCornersStackView)indentStackView;
- (MFRoundedCornersStackView)justifyStackView;
- (MFRoundedCornersStackView)listStackView;
- (MFRoundedCornersStackView)quoteLevelStackView;
- (MFRoundedCornersStackView)textAttributeStackView;
- (UIStackView)containerStackView;
- (UIStackView)fontAttributeStackView;
- (UIStackView)fontTextAttributeStackView;
- (UIStackView)listJustifyStackView;
- (UIStackView)quoteIndentListJustifyStackView;
- (UIStackView)quoteIndentStackView;
- (double)preferredHeightForTraitCollection:(id)collection;
- (id)_composeStyleSelectorButtonForAttributeType:(int64_t)type;
- (id)_roundedEquallyFilledHorizontalStackView;
- (void)_setupButtons;
- (void)_setupContainer;
- (void)_updateFontsButton:(id)button;
- (void)changeFontSizeAction:(id)action;
- (void)closeStyleSelector:(id)selector;
- (void)colorPicker:(id)picker didChangeSelectedColor:(id)color;
- (void)colorPickerDidCancel:(id)cancel;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)fontPickerViewControllerDidCancel:(id)cancel;
- (void)fontPickerViewControllerDidPickFont:(id)font;
- (void)loadView;
- (void)pickFontAction:(id)action;
- (void)pickTextColor:(id)color;
- (void)styleSelectorAction:(id)action;
- (void)traitCollectionDidChange:(id)change;
- (void)updateStateUsingFontAttributes:(id)attributes;
- (void)viewDidLoad;
@end

@implementation MFComposeStyleSelectorViewController

- (UIStackView)containerStackView
{
  v16[2] = *MEMORY[0x1E69E9840];
  containerStackView = self->_containerStackView;
  if (!containerStackView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    fontTextAttributeStackView = [(MFComposeStyleSelectorViewController *)self fontTextAttributeStackView];
    v16[0] = fontTextAttributeStackView;
    quoteIndentListJustifyStackView = [(MFComposeStyleSelectorViewController *)self quoteIndentListJustifyStackView];
    v16[1] = quoteIndentListJustifyStackView;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_containerStackView;
    self->_containerStackView = v8;

    [(UIStackView *)self->_containerStackView setAxis:1];
    [(UIStackView *)self->_containerStackView setAlignment:0];
    [(UIStackView *)self->_containerStackView setDistribution:0];
    [(UIStackView *)self->_containerStackView setSpacing:8.0];
    [(UIStackView *)self->_containerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    fontTextAttributeStackView2 = [(MFComposeStyleSelectorViewController *)self fontTextAttributeStackView];
    heightAnchor = [fontTextAttributeStackView2 heightAnchor];
    quoteIndentListJustifyStackView2 = [(MFComposeStyleSelectorViewController *)self quoteIndentListJustifyStackView];
    heightAnchor2 = [quoteIndentListJustifyStackView2 heightAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    [v14 setActive:1];

    containerStackView = self->_containerStackView;
  }

  return containerStackView;
}

- (UIStackView)quoteIndentStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  quoteIndentStackView = self->_quoteIndentStackView;
  if (!quoteIndentStackView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    quoteLevelStackView = [(MFComposeStyleSelectorViewController *)self quoteLevelStackView];
    v11[0] = quoteLevelStackView;
    indentStackView = [(MFComposeStyleSelectorViewController *)self indentStackView];
    v11[1] = indentStackView;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_quoteIndentStackView;
    self->_quoteIndentStackView = v8;

    [(UIStackView *)self->_quoteIndentStackView setAxis:0];
    [(UIStackView *)self->_quoteIndentStackView setAlignment:0];
    [(UIStackView *)self->_quoteIndentStackView setDistribution:1];
    [(UIStackView *)self->_quoteIndentStackView setSpacing:8.0];
    quoteIndentStackView = self->_quoteIndentStackView;
  }

  return quoteIndentStackView;
}

- (UIStackView)quoteIndentListJustifyStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  quoteIndentListJustifyStackView = self->_quoteIndentListJustifyStackView;
  if (!quoteIndentListJustifyStackView)
  {
    mf_equallyFilledVerticalStackView = [MEMORY[0x1E69DCF90] mf_equallyFilledVerticalStackView];
    v5 = self->_quoteIndentListJustifyStackView;
    self->_quoteIndentListJustifyStackView = mf_equallyFilledVerticalStackView;

    [(UIStackView *)self->_quoteIndentListJustifyStackView setSpacing:8.0];
    v6 = self->_quoteIndentListJustifyStackView;
    listJustifyStackView = [(MFComposeStyleSelectorViewController *)self listJustifyStackView];
    v11[0] = listJustifyStackView;
    quoteIndentStackView = [(MFComposeStyleSelectorViewController *)self quoteIndentStackView];
    v11[1] = quoteIndentStackView;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(UIStackView *)v6 mf_addArrangedSubviews:v9];

    quoteIndentListJustifyStackView = self->_quoteIndentListJustifyStackView;
  }

  return quoteIndentListJustifyStackView;
}

- (UIStackView)fontTextAttributeStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  fontTextAttributeStackView = self->_fontTextAttributeStackView;
  if (!fontTextAttributeStackView)
  {
    mf_equallyFilledVerticalStackView = [MEMORY[0x1E69DCF90] mf_equallyFilledVerticalStackView];
    v5 = self->_fontTextAttributeStackView;
    self->_fontTextAttributeStackView = mf_equallyFilledVerticalStackView;

    [(UIStackView *)self->_fontTextAttributeStackView setSpacing:8.0];
    v6 = self->_fontTextAttributeStackView;
    textAttributeStackView = [(MFComposeStyleSelectorViewController *)self textAttributeStackView];
    v11[0] = textAttributeStackView;
    fontAttributeStackView = [(MFComposeStyleSelectorViewController *)self fontAttributeStackView];
    v11[1] = fontAttributeStackView;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(UIStackView *)v6 mf_addArrangedSubviews:v9];

    fontTextAttributeStackView = self->_fontTextAttributeStackView;
  }

  return fontTextAttributeStackView;
}

- (UIStackView)fontAttributeStackView
{
  v40[2] = *MEMORY[0x1E69E9840];
  fontAttributeStackView = self->_fontAttributeStackView;
  if (!fontAttributeStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    decreaseFontSizeButton = [(MFComposeStyleSelectorViewController *)self decreaseFontSizeButton];
    v40[0] = decreaseFontSizeButton;
    increaseFontSizeButton = [(MFComposeStyleSelectorViewController *)self increaseFontSizeButton];
    v40[1] = increaseFontSizeButton;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    [_roundedEquallyFilledHorizontalStackView mf_addArrangedSubviews:v6];

    v7 = objc_alloc(MEMORY[0x1E69DCF90]);
    v39[0] = _roundedEquallyFilledHorizontalStackView;
    textColorButton = [(MFComposeStyleSelectorViewController *)self textColorButton];
    v39[1] = textColorButton;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v36 = [v7 initWithArrangedSubviews:v9];

    [v36 setAxis:0];
    [v36 setAlignment:0];
    [v36 setDistribution:0];
    [v36 setSpacing:16.0];
    v10 = objc_alloc(MEMORY[0x1E69DCF90]);
    fontSelectorButton = [(MFComposeStyleSelectorViewController *)self fontSelectorButton];
    v38[0] = fontSelectorButton;
    v38[1] = v36;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v13 = [v10 initWithArrangedSubviews:v12];
    v14 = self->_fontAttributeStackView;
    self->_fontAttributeStackView = v13;

    [(UIStackView *)self->_fontAttributeStackView setAxis:0];
    [(UIStackView *)self->_fontAttributeStackView setAlignment:3];
    [(UIStackView *)self->_fontAttributeStackView setDistribution:1];
    [(UIStackView *)self->_fontAttributeStackView setSpacing:8.0];
    v15 = MEMORY[0x1E696ACD8];
    fontSelectorButton2 = [(MFComposeStyleSelectorViewController *)self fontSelectorButton];
    heightAnchor = [fontSelectorButton2 heightAnchor];
    heightAnchor2 = [(UIStackView *)self->_fontAttributeStackView heightAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:?];
    v37[0] = v29;
    textColorButton2 = [(MFComposeStyleSelectorViewController *)self textColorButton];
    widthAnchor = [textColorButton2 widthAnchor];
    heightAnchor3 = [(UIStackView *)self->_fontAttributeStackView heightAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:?];
    v37[1] = v26;
    textColorButton3 = [(MFComposeStyleSelectorViewController *)self textColorButton];
    heightAnchor4 = [textColorButton3 heightAnchor];
    textColorButton4 = [(MFComposeStyleSelectorViewController *)self textColorButton];
    widthAnchor2 = [textColorButton4 widthAnchor];
    v18 = [heightAnchor4 constraintEqualToAnchor:widthAnchor2];
    v37[2] = v18;
    heightAnchor5 = [_roundedEquallyFilledHorizontalStackView heightAnchor];
    heightAnchor6 = [(UIStackView *)self->_fontAttributeStackView heightAnchor];
    v21 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v37[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v15 activateConstraints:v22];

    [MEMORY[0x1E69DB878] mf_defaultComposeFontPixelSize];
    [(MFComposeStyleSelectorViewController *)self setCurrentFontSize:v23];

    fontAttributeStackView = self->_fontAttributeStackView;
  }

  return fontAttributeStackView;
}

- (UIStackView)listJustifyStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  listJustifyStackView = self->_listJustifyStackView;
  if (!listJustifyStackView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    listStackView = [(MFComposeStyleSelectorViewController *)self listStackView];
    v11[0] = listStackView;
    justifyStackView = [(MFComposeStyleSelectorViewController *)self justifyStackView];
    v11[1] = justifyStackView;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_listJustifyStackView;
    self->_listJustifyStackView = v8;

    [(UIStackView *)self->_listJustifyStackView setAxis:0];
    [(UIStackView *)self->_listJustifyStackView setAlignment:0];
    [(UIStackView *)self->_listJustifyStackView setDistribution:1];
    [(UIStackView *)self->_listJustifyStackView setSpacing:8.0];
    listJustifyStackView = self->_listJustifyStackView;
  }

  return listJustifyStackView;
}

- (MFRoundedCornersStackView)textAttributeStackView
{
  v13[4] = *MEMORY[0x1E69E9840];
  textAttributeStackView = self->_textAttributeStackView;
  if (!textAttributeStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    v5 = self->_textAttributeStackView;
    self->_textAttributeStackView = _roundedEquallyFilledHorizontalStackView;

    v6 = self->_textAttributeStackView;
    boldButton = [(MFComposeStyleSelectorViewController *)self boldButton];
    v13[0] = boldButton;
    italicsButton = [(MFComposeStyleSelectorViewController *)self italicsButton];
    v13[1] = italicsButton;
    underlineButton = [(MFComposeStyleSelectorViewController *)self underlineButton];
    v13[2] = underlineButton;
    strikethroughButton = [(MFComposeStyleSelectorViewController *)self strikethroughButton];
    v13[3] = strikethroughButton;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    [(MFRoundedCornersStackView *)v6 mf_addArrangedSubviews:v11];

    textAttributeStackView = self->_textAttributeStackView;
  }

  return textAttributeStackView;
}

- (MFRoundedCornersStackView)listStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  listStackView = self->_listStackView;
  if (!listStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    v5 = self->_listStackView;
    self->_listStackView = _roundedEquallyFilledHorizontalStackView;

    v6 = self->_listStackView;
    numberedListButton = [(MFComposeStyleSelectorViewController *)self numberedListButton];
    v11[0] = numberedListButton;
    bulletListButton = [(MFComposeStyleSelectorViewController *)self bulletListButton];
    v11[1] = bulletListButton;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(MFRoundedCornersStackView *)v6 mf_addArrangedSubviews:v9];

    listStackView = self->_listStackView;
  }

  return listStackView;
}

- (MFRoundedCornersStackView)indentStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  indentStackView = self->_indentStackView;
  if (!indentStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    v5 = self->_indentStackView;
    self->_indentStackView = _roundedEquallyFilledHorizontalStackView;

    v6 = self->_indentStackView;
    indentLeftButton = [(MFComposeStyleSelectorViewController *)self indentLeftButton];
    v11[0] = indentLeftButton;
    indentRightButton = [(MFComposeStyleSelectorViewController *)self indentRightButton];
    v11[1] = indentRightButton;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(MFRoundedCornersStackView *)v6 mf_addArrangedSubviews:v9];

    indentStackView = self->_indentStackView;
  }

  return indentStackView;
}

- (MFRoundedCornersStackView)justifyStackView
{
  v12[3] = *MEMORY[0x1E69E9840];
  justifyStackView = self->_justifyStackView;
  if (!justifyStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    v5 = self->_justifyStackView;
    self->_justifyStackView = _roundedEquallyFilledHorizontalStackView;

    v6 = self->_justifyStackView;
    justifyLeftButton = [(MFComposeStyleSelectorViewController *)self justifyLeftButton];
    justifyCenterButton = [(MFComposeStyleSelectorViewController *)self justifyCenterButton];
    v12[1] = justifyCenterButton;
    justifyRightButton = [(MFComposeStyleSelectorViewController *)self justifyRightButton];
    v12[2] = justifyRightButton;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    [(MFRoundedCornersStackView *)v6 mf_addArrangedSubviews:v10];

    justifyStackView = self->_justifyStackView;
  }

  return justifyStackView;
}

- (MFRoundedCornersStackView)quoteLevelStackView
{
  v11[2] = *MEMORY[0x1E69E9840];
  quoteLevelStackView = self->_quoteLevelStackView;
  if (!quoteLevelStackView)
  {
    _roundedEquallyFilledHorizontalStackView = [(MFComposeStyleSelectorViewController *)self _roundedEquallyFilledHorizontalStackView];
    v5 = self->_quoteLevelStackView;
    self->_quoteLevelStackView = _roundedEquallyFilledHorizontalStackView;

    v6 = self->_quoteLevelStackView;
    decreaseQuoteButton = [(MFComposeStyleSelectorViewController *)self decreaseQuoteButton];
    v11[0] = decreaseQuoteButton;
    increaseQuoteButton = [(MFComposeStyleSelectorViewController *)self increaseQuoteButton];
    v11[1] = increaseQuoteButton;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(MFRoundedCornersStackView *)v6 mf_addArrangedSubviews:v9];

    quoteLevelStackView = self->_quoteLevelStackView;
  }

  return quoteLevelStackView;
}

- (MFComposeFontSelectorButton)fontSelectorButton
{
  fontSelectorButton = self->_fontSelectorButton;
  if (!fontSelectorButton)
  {
    v4 = *MEMORY[0x1E69DDCF8];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v6 = [MFComposeFontSelectorButton buttonWithFont:v5];
    v7 = self->_fontSelectorButton;
    self->_fontSelectorButton = v6;

    layer = [(MFComposeFontSelectorButton *)self->_fontSelectorButton layer];
    [layer setCornerRadius:10.0];

    layer2 = [(MFComposeFontSelectorButton *)self->_fontSelectorButton layer];
    [layer2 setMasksToBounds:1];

    [(MFComposeFontSelectorButton *)self->_fontSelectorButton addTarget:self action:sel_pickFontAction_ forControlEvents:64];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
    [(MFComposeStyleSelectorViewController *)self _updateFontsButton:v10];

    fontSelectorButton = self->_fontSelectorButton;
  }

  return fontSelectorButton;
}

- (MFComposeTextColorButton)textColorButton
{
  textColorButton = self->_textColorButton;
  if (!textColorButton)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v5 = [MFComposeTextColorButton buttonWithColor:labelColor];
    v6 = self->_textColorButton;
    self->_textColorButton = v5;

    [(MFComposeTextColorButton *)self->_textColorButton addTarget:self action:sel_pickTextColor_ forControlEvents:64];
    textColorButton = self->_textColorButton;
  }

  return textColorButton;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MFComposeStyleSelectorViewController;
  [(MFComposeStyleSelectorViewController *)&v9 loadView];
  mailStyleSheetBackground = [MEMORY[0x1E69DC888] mailStyleSheetBackground];
  view = [(MFComposeStyleSelectorViewController *)self view];
  [view setBackgroundColor:mailStyleSheetBackground];

  [(MFComposeStyleSelectorViewController *)self _setupButtons];
  [(MFComposeStyleSelectorViewController *)self _setupContainer];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FORMAT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  [(MFComposeStyleSelectorViewController *)self setTitle:v6];

  mailStyleSheetBackground2 = [MEMORY[0x1E69DC888] mailStyleSheetBackground];
  popoverPresentationController = [(MFComposeStyleSelectorViewController *)self popoverPresentationController];
  [popoverPresentationController setArrowBackgroundColor:mailStyleSheetBackground2];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = MFComposeStyleSelectorViewController;
  [(MFComposeStyleSelectorViewController *)&v15 viewDidLoad];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FORMAT_TITLE" value:&stru_1F3CF3758 table:@"Main"];

  popoverPresentationController = [(MFComposeStyleSelectorViewController *)self popoverPresentationController];

  if (popoverPresentationController)
  {
    [(MFComposeStyleSelectorViewController *)self setTitle:v4];
  }

  else
  {
    v6 = [MFComposeActionCardTitleView alloc];
    v7 = [(MFComposeActionCardTitleView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FORMAT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    titleLabel = [(MFComposeActionCardTitleView *)v7 titleLabel];
    [titleLabel setText:v9];

    closeButton = [(MFComposeActionCardTitleView *)v7 closeButton];
    [closeButton addTarget:self action:sel_closeStyleSelector_ forEvents:64];

    navigationItem = [(MFComposeStyleSelectorViewController *)self navigationItem];
    [navigationItem setTitleView:v7];

    navigationItem2 = [(MFComposeStyleSelectorViewController *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceProgress:0.0];

    navigationItem3 = [(MFComposeStyleSelectorViewController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];
  }
}

- (CGSize)preferredContentSize
{
  traitCollection = [(MFComposeStyleSelectorViewController *)self traitCollection];
  [(MFComposeStyleSelectorViewController *)self preferredHeightForTraitCollection:traitCollection];
  v5 = v4;

  v6 = 375.0;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MFComposeStyleSelectorViewController;
  [(MFComposeStyleSelectorViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFComposeStyleSelectorViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  fontTextAttributeStackView = [(MFComposeStyleSelectorViewController *)self fontTextAttributeStackView];
  if (verticalSizeClass == 1)
  {
    [fontTextAttributeStackView setAxis:0];

    quoteIndentListJustifyStackView = [(MFComposeStyleSelectorViewController *)self quoteIndentListJustifyStackView];
    [quoteIndentListJustifyStackView setAxis:0];
  }

  else
  {
    [fontTextAttributeStackView setAxis:1];

    quoteIndentListJustifyStackView = [(MFComposeStyleSelectorViewController *)self quoteIndentListJustifyStackView];
    [quoteIndentListJustifyStackView setAxis:1];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(MFComposeStyleSelectorViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(MFComposeStyleSelectorViewController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:animatedCopy completion:0];
  }

  v9.receiver = self;
  v9.super_class = MFComposeStyleSelectorViewController;
  [(MFComposeStyleSelectorViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)styleSelectorAction:(id)action
{
  actionCopy = action;
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  v5 = +[MFComposeTextStyle composeTextStyleForTextStyleType:](MFComposeTextStyle, "composeTextStyleForTextStyleType:", [actionCopy styleType]);
  [styleDelegate composeStyleSelector:self didSelectStyle:v5];
}

- (void)closeStyleSelector:(id)selector
{
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  [styleDelegate composeStyleSelectorDidCancel:self];
}

- (void)pickTextColor:(id)color
{
  v25[1] = *MEMORY[0x1E69E9840];
  presentedViewController = [(MFComposeStyleSelectorViewController *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([presentedViewController topViewController], v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_colorPicker, v5, v5 != v6))
  {
    popoverPresentationController = [(MFComposeStyleSelectorViewController *)self popoverPresentationController];

    v8 = [MFComposeColorPickerController alloc];
    textColorButton = [(MFComposeStyleSelectorViewController *)self textColorButton];
    color = [textColorButton color];
    v11 = [(MFComposeColorPickerController *)v8 initWithSelectedColor:color shouldShowTitleBar:popoverPresentationController == 0];
    colorPicker = self->_colorPicker;
    self->_colorPicker = v11;

    [(MFComposeColorPickerController *)self->_colorPicker setDelegate:self];
    if (popoverPresentationController)
    {
      navigationController = [(MFComposeStyleSelectorViewController *)self navigationController];
      [navigationController pushViewController:self->_colorPicker animated:1];
    }

    else
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_colorPicker];
      presentationController = [v16 presentationController];
      objc_initWeak(&location, self);
      v18 = MEMORY[0x1E69DCF58];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__MFComposeStyleSelectorViewController_pickTextColor___block_invoke;
      v22[3] = &unk_1E806D3D0;
      objc_copyWeak(&v23, &location);
      v19 = [v18 _detentWithIdentifier:v15 resolutionContextBlock:v22];
      v25[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [presentationController setDetents:v20];

      [presentationController setLargestUndimmedDetentIdentifier:v15];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__MFComposeStyleSelectorViewController_pickTextColor___block_invoke_2;
      v21[3] = &unk_1E806C570;
      v21[4] = self;
      [(MFComposeStyleSelectorViewController *)self presentViewController:v16 animated:1 completion:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

double __54__MFComposeStyleSelectorViewController_pickTextColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 _containerTraitCollection];
  [WeakRetained preferredHeightForTraitCollection:v5];
  v7 = v6;

  return v7;
}

void __54__MFComposeStyleSelectorViewController_pickTextColor___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) styleDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 composeStyleSelectorDidPresentColorPicker:*(a1 + 32)];
  }
}

- (void)pickFontAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(MEMORY[0x1E69DCA50]);
  [v4 setIncludeFaces:0];
  v5 = [objc_alloc(MEMORY[0x1E69DCA48]) initWithConfiguration:v4];
  representedFont = [actionCopy representedFont];
  fontDescriptor = [representedFont fontDescriptor];
  [v5 setSelectedFontDescriptor:fontDescriptor];

  [v5 setDelegate:self];
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([styleDelegate presentingViewControllerForComposeStyleSelector:self], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    selfCopy = v9;
    [(MFComposeStyleSelectorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    selfCopy = self;
  }

  [(MFComposeStyleSelectorViewController *)selfCopy presentViewController:v5 animated:1 completion:0];
}

- (void)changeFontSizeAction:(id)action
{
  actionCopy = action;
  if ([actionCopy styleType] == 6 && -[MFComposeStyleSelectorViewController currentFontSize](self, "currentFontSize") <= 999)
  {
    v4 = [(MFComposeStyleSelectorViewController *)self currentFontSize]+ 1;
LABEL_7:
    [(MFComposeStyleSelectorViewController *)self setCurrentFontSize:v4];
    goto LABEL_8;
  }

  if ([actionCopy styleType] == 5 && -[MFComposeStyleSelectorViewController currentFontSize](self, "currentFontSize") >= 3)
  {
    v4 = [(MFComposeStyleSelectorViewController *)self currentFontSize]- 1;
    goto LABEL_7;
  }

LABEL_8:
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  [styleDelegate composeStyleSelector:self didChangeFontSize:{-[MFComposeStyleSelectorViewController currentFontSize](self, "currentFontSize")}];
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  popoverPresentationController = [(MFComposeStyleSelectorViewController *)self popoverPresentationController];

  v6 = 0.0;
  if (!popoverPresentationController)
  {
    [MFComposeActionCardTitleView heightForTraitCollection:collectionCopy];
    v6 = v7;
  }

  verticalSizeClass = [collectionCopy verticalSizeClass];
  v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [v9 lineHeight];
  if (verticalSizeClass == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4;
  }

  v12 = ceil(v10);
  v13 = v12 + v12;

  return v6 + (v11 - 1) * 8.0 + v11 * fmax(v13, 46.0) + 10.0 + 25.0;
}

- (void)updateStateUsingFontAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v5 = v4;
  if (v4)
  {
    [v4 pointSize];
    [(MFComposeStyleSelectorViewController *)self setCurrentFontSize:v6];
    traits = [v5 traits];
    boldButton = [(MFComposeStyleSelectorViewController *)self boldButton];
    [boldButton setSelected:(traits >> 1) & 1];

    LOBYTE(traits) = [v5 traits];
    italicsButton = [(MFComposeStyleSelectorViewController *)self italicsButton];
    [italicsButton setSelected:traits & 1];

    [(MFComposeStyleSelectorViewController *)self _updateFontsButton:v5];
  }

  v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  underlineButton = [(MFComposeStyleSelectorViewController *)self underlineButton];
  [underlineButton setSelected:v10 != 0];

  v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  strikethroughButton = [(MFComposeStyleSelectorViewController *)self strikethroughButton];
  [strikethroughButton setSelected:v12 != 0];

  v14 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  labelColor = v14;
  if (!v14)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  textColorButton = [(MFComposeStyleSelectorViewController *)self textColorButton];
  [textColorButton setColor:labelColor];

  if (!v14)
  {
  }

  v17 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  if (v17)
  {
    justifyLeftButton = [(MFComposeStyleSelectorViewController *)self justifyLeftButton];
    [justifyLeftButton setSelected:0];

    justifyCenterButton = [(MFComposeStyleSelectorViewController *)self justifyCenterButton];
    [justifyCenterButton setSelected:0];

    justifyRightButton = [(MFComposeStyleSelectorViewController *)self justifyRightButton];
    [justifyRightButton setSelected:0];

    alignment = [v17 alignment];
    if (alignment)
    {
      if (alignment == 1)
      {
        justifyCenterButton2 = [(MFComposeStyleSelectorViewController *)self justifyCenterButton];
        [justifyCenterButton2 setSelected:1];
      }

      else
      {
        if (alignment != 2)
        {
LABEL_15:
          bulletListButton = [(MFComposeStyleSelectorViewController *)self bulletListButton];
          [bulletListButton setSelected:0];

          numberedListButton = [(MFComposeStyleSelectorViewController *)self numberedListButton];
          [numberedListButton setSelected:0];

          textLists = [v17 textLists];
          if ([textLists count])
          {
            lastObject = [textLists lastObject];
            markerFormat = [lastObject markerFormat];
            v28 = [MFComposeTextStyle isTextListStyleOrdered:markerFormat];

            if (v28)
            {
              [(MFComposeStyleSelectorViewController *)self numberedListButton];
            }

            else
            {
              [(MFComposeStyleSelectorViewController *)self bulletListButton];
            }
            v29 = ;
            [v29 setSelected:1];
          }

          goto LABEL_21;
        }

        justifyCenterButton2 = [(MFComposeStyleSelectorViewController *)self justifyRightButton];
        [justifyCenterButton2 setSelected:1];
      }
    }

    else
    {
      justifyCenterButton2 = [(MFComposeStyleSelectorViewController *)self justifyLeftButton];
      [justifyCenterButton2 setSelected:1];
    }

    goto LABEL_15;
  }

LABEL_21:
}

- (void)colorPickerDidCancel:(id)cancel
{
  colorPicker = [(MFComposeStyleSelectorViewController *)self colorPicker];
  [colorPicker dismissViewControllerAnimated:1 completion:0];

  [(MFComposeStyleSelectorViewController *)self setColorPicker:0];
}

- (void)colorPicker:(id)picker didChangeSelectedColor:(id)color
{
  colorCopy = color;
  textColorButton = [(MFComposeStyleSelectorViewController *)self textColorButton];
  [textColorButton setColor:colorCopy];

  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  [styleDelegate composeStyleSelector:self didChangeTextColor:colorCopy];
}

- (void)fontPickerViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  if (objc_opt_respondsToSelector())
  {
    [styleDelegate composeStyleSelectorDidDismissFontPicker:self];
  }

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  fontCopy = font;
  v5 = MEMORY[0x1E69DB878];
  v9 = fontCopy;
  selectedFontDescriptor = [fontCopy selectedFontDescriptor];
  v7 = [v5 fontWithDescriptor:selectedFontDescriptor size:{-[MFComposeStyleSelectorViewController currentFontSize](self, "currentFontSize")}];

  [(MFComposeStyleSelectorViewController *)self _updateFontsButton:v7];
  styleDelegate = [(MFComposeStyleSelectorViewController *)self styleDelegate];
  [styleDelegate composeStyleSelector:self didChangeFont:v7];

  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (void)_setupContainer
{
  v31[4] = *MEMORY[0x1E69E9840];
  view = [(MFComposeStyleSelectorViewController *)self view];
  containerStackView = [(MFComposeStyleSelectorViewController *)self containerStackView];
  [view addSubview:containerStackView];

  v5 = MEMORY[0x1E696ACD8];
  containerStackView2 = [(MFComposeStyleSelectorViewController *)self containerStackView];
  topAnchor = [containerStackView2 topAnchor];
  view2 = [(MFComposeStyleSelectorViewController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:10.0 constant:?];
  v31[0] = v23;
  containerStackView3 = [(MFComposeStyleSelectorViewController *)self containerStackView];
  leadingAnchor = [containerStackView3 leadingAnchor];
  view3 = [(MFComposeStyleSelectorViewController *)self view];
  layoutMarginsGuide2 = [view3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:?];
  v31[1] = v18;
  containerStackView4 = [(MFComposeStyleSelectorViewController *)self containerStackView];
  trailingAnchor = [containerStackView4 trailingAnchor];
  view4 = [(MFComposeStyleSelectorViewController *)self view];
  layoutMarginsGuide3 = [view4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[2] = v7;
  view5 = [(MFComposeStyleSelectorViewController *)self view];
  layoutMarginsGuide4 = [view5 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
  containerStackView5 = [(MFComposeStyleSelectorViewController *)self containerStackView];
  bottomAnchor2 = [containerStackView5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:25.0];
  v31[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v5 activateConstraints:v14];
}

- (id)_roundedEquallyFilledHorizontalStackView
{
  v2 = +[(UIStackView *)MFRoundedCornersStackView];
  [v2 setSpacing:1.0];
  [v2 setCornerRadius:10.0];

  return v2;
}

- (id)_composeStyleSelectorButtonForAttributeType:(int64_t)type
{
  v3 = [MFComposeStyleSelectorButton buttonWithStyleType:type target:self action:sel_styleSelectorAction_ maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];

  return v3;
}

- (void)_setupButtons
{
  v3 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:1];
  boldButton = self->_boldButton;
  self->_boldButton = v3;

  v5 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:2];
  italicsButton = self->_italicsButton;
  self->_italicsButton = v5;

  v7 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:3];
  underlineButton = self->_underlineButton;
  self->_underlineButton = v7;

  v9 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:4];
  strikethroughButton = self->_strikethroughButton;
  self->_strikethroughButton = v9;

  v11 = *MEMORY[0x1E69DDC40];
  v12 = [MFComposeStyleSelectorButton buttonWithStyleType:5 target:self action:sel_changeFontSizeAction_ maximumContentSizeCategory:v11];
  decreaseFontSizeButton = self->_decreaseFontSizeButton;
  self->_decreaseFontSizeButton = v12;

  v14 = v11;
  v15 = [MFComposeStyleSelectorButton buttonWithStyleType:6 target:self action:sel_changeFontSizeAction_ maximumContentSizeCategory:v14];
  increaseFontSizeButton = self->_increaseFontSizeButton;
  self->_increaseFontSizeButton = v15;

  v17 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:7];
  numberedListButton = self->_numberedListButton;
  self->_numberedListButton = v17;

  v19 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:8];
  bulletListButton = self->_bulletListButton;
  self->_bulletListButton = v19;

  v21 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:13];
  justifyLeftButton = self->_justifyLeftButton;
  self->_justifyLeftButton = v21;

  v23 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:14];
  justifyCenterButton = self->_justifyCenterButton;
  self->_justifyCenterButton = v23;

  v25 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:15];
  justifyRightButton = self->_justifyRightButton;
  self->_justifyRightButton = v25;

  v27 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:11];
  increaseQuoteButton = self->_increaseQuoteButton;
  self->_increaseQuoteButton = v27;

  v29 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:12];
  decreaseQuoteButton = self->_decreaseQuoteButton;
  self->_decreaseQuoteButton = v29;

  v31 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:9];
  indentLeftButton = self->_indentLeftButton;
  self->_indentLeftButton = v31;

  v33 = [(MFComposeStyleSelectorViewController *)self _composeStyleSelectorButtonForAttributeType:10];
  indentRightButton = self->_indentRightButton;
  self->_indentRightButton = v33;
}

- (void)_updateFontsButton:(id)button
{
  buttonCopy = button;
  [MEMORY[0x1E69DB878] mf_defaultComposeFontPixelSize];
  v4 = [buttonCopy fontWithSize:?];
  fontSelectorButton = [(MFComposeStyleSelectorViewController *)self fontSelectorButton];
  [fontSelectorButton setRepresentedFont:v4];
}

- (MFComposeStyleSelectorViewControllerDelegate)styleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_styleDelegate);

  return WeakRetained;
}

@end