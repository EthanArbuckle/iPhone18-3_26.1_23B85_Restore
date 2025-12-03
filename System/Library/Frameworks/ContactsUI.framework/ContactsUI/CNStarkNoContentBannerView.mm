@interface CNStarkNoContentBannerView
- (CNStarkNoContentBannerView)initWithFrame:(CGRect)frame;
- (NSString)titleString;
- (void)choose;
- (void)clickGestureDidUpdate:(id)update;
- (void)deselect;
- (void)select;
- (void)setSiriButtonEnabled:(BOOL)enabled;
- (void)setTitleString:(id)string;
- (void)setupClickGestureRecognizer;
- (void)setupConstraintsForTitleLabelAndSiriButton;
- (void)setupConstraintsforTitleLabel;
- (void)setupSiriButton;
- (void)setupTitleLabel;
- (void)stateUpdated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation CNStarkNoContentBannerView

- (void)stateUpdated
{
  if ([(CNStarkNoContentBannerView *)self siriButtonSelected]|| [(CNStarkNoContentBannerView *)self isFocused])
  {
    siriButton = [(CNStarkNoContentBannerView *)self siriButton];
    v4 = +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
    [siriButton setTitleColor:v4 forState:0];

    v5 = +[CNUIColorRepository carPlaySiriButtonBackgroundHighlightedColor];
  }

  else
  {
    siriButton2 = [(CNStarkNoContentBannerView *)self siriButton];
    v7 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    [siriButton2 setTitleColor:v7 forState:0];

    v5 = +[CNUIColorRepository carPlaySiriButtonBackgroundColor];
  }

  v9 = v5;
  siriButton3 = [(CNStarkNoContentBannerView *)self siriButton];
  [siriButton3 setBackgroundColor:v9];
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = CNStarkNoContentBannerView;
  [(CNStarkNoContentBannerView *)&v15 traitCollectionDidChange:change];
  v4 = +[CNUIFontRepository carPlayNoContentViewTitleFont];
  titleLabel = [(CNStarkNoContentBannerView *)self titleLabel];
  [titleLabel setFont:v4];

  v6 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
  siriButton = [(CNStarkNoContentBannerView *)self siriButton];
  titleLabel2 = [siriButton titleLabel];
  [titleLabel2 setFont:v6];

  traitCollection = [(CNStarkNoContentBannerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v11 = MEMORY[0x1E6979CF8];
  if (userInterfaceStyle != 2)
  {
    v11 = MEMORY[0x1E6979CE8];
  }

  v12 = [MEMORY[0x1E6979378] filterWithType:*v11];
  siriButton2 = [(CNStarkNoContentBannerView *)self siriButton];
  layer = [siriButton2 layer];
  [layer setCompositingFilter:v12];

  [(CNStarkNoContentBannerView *)self stateUpdated];
}

- (void)choose
{
  v24[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v2 = getkAssistantDirectActionEventKeySymbolLoc_ptr_54888;
  v22 = getkAssistantDirectActionEventKeySymbolLoc_ptr_54888;
  if (!getkAssistantDirectActionEventKeySymbolLoc_ptr_54888)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getkAssistantDirectActionEventKeySymbolLoc_block_invoke_54889;
    v17 = &unk_1E74E7518;
    v18 = &v19;
    __getkAssistantDirectActionEventKeySymbolLoc_block_invoke_54889(&v14);
    v2 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAssistantDirectActionEventKey(void)"];
    [currentHandler handleFailureInFunction:v13 file:@"CNSiriSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v23 = *v2;
  v24[0] = &unk_1F0D4B7C0;
  v3 = MEMORY[0x1E695DF20];
  v4 = v23;
  v5 = [v3 dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = getSiriDirectActionContextClass_softClass_54896;
  v22 = getSiriDirectActionContextClass_softClass_54896;
  if (!getSiriDirectActionContextClass_softClass_54896)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSiriDirectActionContextClass_block_invoke_54897;
    v17 = &unk_1E74E7518;
    v18 = &v19;
    __getSiriDirectActionContextClass_block_invoke_54897(&v14);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v8 = [[v6 alloc] initWithPayload:v5];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getSiriDirectActionSourceClass_softClass_54898;
  v22 = getSiriDirectActionSourceClass_softClass_54898;
  if (!getSiriDirectActionSourceClass_softClass_54898)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSiriDirectActionSourceClass_block_invoke_54899;
    v17 = &unk_1E74E7518;
    v18 = &v19;
    __getSiriDirectActionSourceClass_block_invoke_54899(&v14);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = objc_alloc_init(v9);
  [v11 activateWithContext:v8];
}

- (void)deselect
{
  [(CNStarkNoContentBannerView *)self setSiriButtonSelected:0];

  [(CNStarkNoContentBannerView *)self stateUpdated];
}

- (void)select
{
  if ([(CNStarkNoContentBannerView *)self siriButtonEnabled])
  {
    [(CNStarkNoContentBannerView *)self setSiriButtonSelected:1];

    [(CNStarkNoContentBannerView *)self stateUpdated];
  }
}

- (void)clickGestureDidUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy state] == 3)
  {
    [(CNStarkNoContentBannerView *)self choose];
  }

  else if ([updateCopy state] == 4 || objc_msgSend(updateCopy, "state") == 5)
  {
    [(CNStarkNoContentBannerView *)self deselect];
  }
}

- (NSString)titleString
{
  titleLabel = [(CNStarkNoContentBannerView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  titleLabel = [(CNStarkNoContentBannerView *)self titleLabel];
  [titleLabel setText:stringCopy];
}

- (void)setSiriButtonEnabled:(BOOL)enabled
{
  if (self->_siriButtonEnabled != enabled)
  {
    self->_siriButtonEnabled = enabled;
    [(CNStarkNoContentBannerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setupClickGestureRecognizer
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_clickGestureDidUpdate_];
  [v3 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  [v3 setAllowedPressTypes:&unk_1F0D4BA30];
  [(CNStarkNoContentBannerView *)self addGestureRecognizer:v3];
}

- (void)updateConstraints
{
  v12.receiver = self;
  v12.super_class = CNStarkNoContentBannerView;
  [(CNStarkNoContentBannerView *)&v12 updateConstraints];
  siriButtonEnabled = [(CNStarkNoContentBannerView *)self siriButtonEnabled];
  siriButton = [(CNStarkNoContentBannerView *)self siriButton];
  v5 = siriButton;
  if (siriButtonEnabled)
  {
    [(CNStarkNoContentBannerView *)self addSubview:siriButton];

    v6 = MEMORY[0x1E696ACD8];
    constraintsForTitleLabel = [(CNStarkNoContentBannerView *)self constraintsForTitleLabel];
    [v6 deactivateConstraints:constraintsForTitleLabel];

    v8 = MEMORY[0x1E696ACD8];
    [(CNStarkNoContentBannerView *)self constraintsForTitleLabelAndSiriButton];
  }

  else
  {
    [siriButton removeFromSuperview];

    v9 = MEMORY[0x1E696ACD8];
    constraintsForTitleLabelAndSiriButton = [(CNStarkNoContentBannerView *)self constraintsForTitleLabelAndSiriButton];
    [v9 deactivateConstraints:constraintsForTitleLabelAndSiriButton];

    v8 = MEMORY[0x1E696ACD8];
    [(CNStarkNoContentBannerView *)self constraintsForTitleLabel];
  }
  v11 = ;
  [v8 activateConstraints:v11];
}

- (void)setupConstraintsForTitleLabelAndSiriButton
{
  v38[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:241.0];
  v38[0] = v4;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  safeAreaLayoutGuide = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v38[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [array addObjectsFromArray:v9];

  widthAnchor2 = [(UIButton *)self->_siriButton widthAnchor];
  v11 = [widthAnchor2 constraintEqualToConstant:241.0];
  v37[0] = v11;
  centerXAnchor3 = [(UIButton *)self->_siriButton centerXAnchor];
  safeAreaLayoutGuide2 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  centerXAnchor4 = [safeAreaLayoutGuide2 centerXAnchor];
  v15 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v37[1] = v15;
  heightAnchor = [(UIButton *)self->_siriButton heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:40.0];
  v37[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [array addObjectsFromArray:v18];

  safeAreaLayoutGuide3 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide3 topAnchor];
  titleLabel = [(CNStarkNoContentBannerView *)self titleLabel];
  topAnchor2 = [titleLabel topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v30;
  titleLabel2 = [(CNStarkNoContentBannerView *)self titleLabel];
  bottomAnchor = [titleLabel2 bottomAnchor];
  siriButton = [(CNStarkNoContentBannerView *)self siriButton];
  topAnchor3 = [siriButton topAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v36[1] = v20;
  safeAreaLayoutGuide4 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  siriButton2 = [(CNStarkNoContentBannerView *)self siriButton];
  bottomAnchor3 = [siriButton2 bottomAnchor];
  v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:24.0];
  v36[2] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [array addObjectsFromArray:v26];

  [(CNStarkNoContentBannerView *)self setConstraintsForTitleLabelAndSiriButton:array];
}

- (void)setupConstraintsforTitleLabel
{
  v15[3] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:241.0];
  v15[0] = v13;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  safeAreaLayoutGuide = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v15[1] = v6;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  safeAreaLayoutGuide2 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  centerYAnchor = [safeAreaLayoutGuide2 centerYAnchor];
  v10 = [firstBaselineAnchor constraintEqualToAnchor:centerYAnchor];
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [array addObjectsFromArray:v11];

  [(CNStarkNoContentBannerView *)self setConstraintsForTitleLabel:array];
}

- (void)setupSiriButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  siriButton = self->_siriButton;
  self->_siriButton = v3;

  [(UIButton *)self->_siriButton setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 8.0;
  }

  layer = [(UIButton *)self->_siriButton layer];
  [layer setCornerRadius:v5];

  layer2 = [(UIButton *)self->_siriButton layer];
  [layer2 setAllowsGroupBlending:0];

  titleLabel = [(UIButton *)self->_siriButton titleLabel];
  [titleLabel setTextAlignment:1];

  v9 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
  titleLabel2 = [(UIButton *)self->_siriButton titleLabel];
  [titleLabel2 setFont:v9];

  titleLabel3 = [(UIButton *)self->_siriButton titleLabel];
  [titleLabel3 setNumberOfLines:1];

  titleLabel4 = [(UIButton *)self->_siriButton titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:1];

  v13 = self->_siriButton;
  v14 = CNContactsUIBundle();
  v15 = [v14 localizedStringForKey:@"ASK_SIRI_TO_MAKE_CALL" value:&stru_1F0CE7398 table:@"Localized"];
  [(UIButton *)v13 setTitle:v15 forState:0];

  [(UIButton *)self->_siriButton addTarget:self action:sel_siriButtonTapped_ forControlEvents:64];
  [(UIButton *)self->_siriButton addTarget:self action:sel_siriButtonTouchDown_ forControlEvents:1];
  [(UIButton *)self->_siriButton addTarget:self action:sel_siriButtonTouchUp_ forControlEvents:192];
  v16 = self->_siriButton;

  [(CNStarkNoContentBannerView *)self addSubview:v16];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[CNUIFontRepository carPlayNoContentViewTitleFont];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = +[CNUIColorRepository carPlayTableViewCellTitleTextColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v7 = self->_titleLabel;

  [(CNStarkNoContentBannerView *)self addSubview:v7];
}

- (CNStarkNoContentBannerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CNStarkNoContentBannerView;
  v3 = [(CNStarkNoContentBannerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNStarkNoContentBannerView *)v3 setAutoresizingMask:18];
    v5 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
    [(CNStarkNoContentBannerView *)v4 setBackgroundColor:v5];

    layer = [(CNStarkNoContentBannerView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    v4->_siriButtonEnabled = 1;
    [(CNStarkNoContentBannerView *)v4 setupTitleLabel];
    [(CNStarkNoContentBannerView *)v4 setupSiriButton];
    [(CNStarkNoContentBannerView *)v4 setupConstraintsforTitleLabel];
    [(CNStarkNoContentBannerView *)v4 setupConstraintsForTitleLabelAndSiriButton];
    [(CNStarkNoContentBannerView *)v4 setupClickGestureRecognizer];
    [(CNStarkNoContentBannerView *)v4 stateUpdated];
    v7 = v4;
  }

  return v4;
}

@end