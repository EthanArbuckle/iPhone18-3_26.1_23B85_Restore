@interface CNStarkNoContentBannerView
- (CNStarkNoContentBannerView)initWithFrame:(CGRect)a3;
- (NSString)titleString;
- (void)choose;
- (void)clickGestureDidUpdate:(id)a3;
- (void)deselect;
- (void)select;
- (void)setSiriButtonEnabled:(BOOL)a3;
- (void)setTitleString:(id)a3;
- (void)setupClickGestureRecognizer;
- (void)setupConstraintsForTitleLabelAndSiriButton;
- (void)setupConstraintsforTitleLabel;
- (void)setupSiriButton;
- (void)setupTitleLabel;
- (void)stateUpdated;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation CNStarkNoContentBannerView

- (void)stateUpdated
{
  if ([(CNStarkNoContentBannerView *)self siriButtonSelected]|| [(CNStarkNoContentBannerView *)self isFocused])
  {
    v3 = [(CNStarkNoContentBannerView *)self siriButton];
    v4 = +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
    [v3 setTitleColor:v4 forState:0];

    v5 = +[CNUIColorRepository carPlaySiriButtonBackgroundHighlightedColor];
  }

  else
  {
    v6 = [(CNStarkNoContentBannerView *)self siriButton];
    v7 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    [v6 setTitleColor:v7 forState:0];

    v5 = +[CNUIColorRepository carPlaySiriButtonBackgroundColor];
  }

  v9 = v5;
  v8 = [(CNStarkNoContentBannerView *)self siriButton];
  [v8 setBackgroundColor:v9];
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = CNStarkNoContentBannerView;
  [(CNStarkNoContentBannerView *)&v15 traitCollectionDidChange:a3];
  v4 = +[CNUIFontRepository carPlayNoContentViewTitleFont];
  v5 = [(CNStarkNoContentBannerView *)self titleLabel];
  [v5 setFont:v4];

  v6 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
  v7 = [(CNStarkNoContentBannerView *)self siriButton];
  v8 = [v7 titleLabel];
  [v8 setFont:v6];

  v9 = [(CNStarkNoContentBannerView *)self traitCollection];
  v10 = [v9 userInterfaceStyle];
  v11 = MEMORY[0x1E6979CF8];
  if (v10 != 2)
  {
    v11 = MEMORY[0x1E6979CE8];
  }

  v12 = [MEMORY[0x1E6979378] filterWithType:*v11];
  v13 = [(CNStarkNoContentBannerView *)self siriButton];
  v14 = [v13 layer];
  [v14 setCompositingFilter:v12];

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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAssistantDirectActionEventKey(void)"];
    [v12 handleFailureInFunction:v13 file:@"CNSiriSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

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

- (void)clickGestureDidUpdate:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(CNStarkNoContentBannerView *)self choose];
  }

  else if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(CNStarkNoContentBannerView *)self deselect];
  }
}

- (NSString)titleString
{
  v2 = [(CNStarkNoContentBannerView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleString:(id)a3
{
  v4 = a3;
  v5 = [(CNStarkNoContentBannerView *)self titleLabel];
  [v5 setText:v4];
}

- (void)setSiriButtonEnabled:(BOOL)a3
{
  if (self->_siriButtonEnabled != a3)
  {
    self->_siriButtonEnabled = a3;
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
  v3 = [(CNStarkNoContentBannerView *)self siriButtonEnabled];
  v4 = [(CNStarkNoContentBannerView *)self siriButton];
  v5 = v4;
  if (v3)
  {
    [(CNStarkNoContentBannerView *)self addSubview:v4];

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNStarkNoContentBannerView *)self constraintsForTitleLabel];
    [v6 deactivateConstraints:v7];

    v8 = MEMORY[0x1E696ACD8];
    [(CNStarkNoContentBannerView *)self constraintsForTitleLabelAndSiriButton];
  }

  else
  {
    [v4 removeFromSuperview];

    v9 = MEMORY[0x1E696ACD8];
    v10 = [(CNStarkNoContentBannerView *)self constraintsForTitleLabelAndSiriButton];
    [v9 deactivateConstraints:v10];

    v8 = MEMORY[0x1E696ACD8];
    [(CNStarkNoContentBannerView *)self constraintsForTitleLabel];
  }
  v11 = ;
  [v8 activateConstraints:v11];
}

- (void)setupConstraintsForTitleLabelAndSiriButton
{
  v38[2] = *MEMORY[0x1E69E9840];
  v35 = [MEMORY[0x1E695DF70] array];
  v3 = [(UILabel *)self->_titleLabel widthAnchor];
  v4 = [v3 constraintEqualToConstant:241.0];
  v38[0] = v4;
  v5 = [(UILabel *)self->_titleLabel centerXAnchor];
  v6 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v7 = [v6 centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v38[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v35 addObjectsFromArray:v9];

  v10 = [(UIButton *)self->_siriButton widthAnchor];
  v11 = [v10 constraintEqualToConstant:241.0];
  v37[0] = v11;
  v12 = [(UIButton *)self->_siriButton centerXAnchor];
  v13 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v14 = [v13 centerXAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v37[1] = v15;
  v16 = [(UIButton *)self->_siriButton heightAnchor];
  v17 = [v16 constraintEqualToConstant:40.0];
  v37[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [v35 addObjectsFromArray:v18];

  v34 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v32 = [v34 topAnchor];
  v33 = [(CNStarkNoContentBannerView *)self titleLabel];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v36[0] = v30;
  v29 = [(CNStarkNoContentBannerView *)self titleLabel];
  v27 = [v29 bottomAnchor];
  v28 = [(CNStarkNoContentBannerView *)self siriButton];
  v19 = [v28 topAnchor];
  v20 = [v27 constraintEqualToAnchor:v19];
  v36[1] = v20;
  v21 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v22 = [v21 bottomAnchor];
  v23 = [(CNStarkNoContentBannerView *)self siriButton];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:24.0];
  v36[2] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [v35 addObjectsFromArray:v26];

  [(CNStarkNoContentBannerView *)self setConstraintsForTitleLabelAndSiriButton:v35];
}

- (void)setupConstraintsforTitleLabel
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = [(UILabel *)self->_titleLabel widthAnchor];
  v13 = [v14 constraintEqualToConstant:241.0];
  v15[0] = v13;
  v12 = [(UILabel *)self->_titleLabel centerXAnchor];
  v4 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v5 = [v4 centerXAnchor];
  v6 = [v12 constraintEqualToAnchor:v5];
  v15[1] = v6;
  v7 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v8 = [(CNStarkNoContentBannerView *)self safeAreaLayoutGuide];
  v9 = [v8 centerYAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v3 addObjectsFromArray:v11];

  [(CNStarkNoContentBannerView *)self setConstraintsForTitleLabel:v3];
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

  v6 = [(UIButton *)self->_siriButton layer];
  [v6 setCornerRadius:v5];

  v7 = [(UIButton *)self->_siriButton layer];
  [v7 setAllowsGroupBlending:0];

  v8 = [(UIButton *)self->_siriButton titleLabel];
  [v8 setTextAlignment:1];

  v9 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
  v10 = [(UIButton *)self->_siriButton titleLabel];
  [v10 setFont:v9];

  v11 = [(UIButton *)self->_siriButton titleLabel];
  [v11 setNumberOfLines:1];

  v12 = [(UIButton *)self->_siriButton titleLabel];
  [v12 setAdjustsFontSizeToFitWidth:1];

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

- (CNStarkNoContentBannerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CNStarkNoContentBannerView;
  v3 = [(CNStarkNoContentBannerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNStarkNoContentBannerView *)v3 setAutoresizingMask:18];
    v5 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
    [(CNStarkNoContentBannerView *)v4 setBackgroundColor:v5];

    v6 = [(CNStarkNoContentBannerView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

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