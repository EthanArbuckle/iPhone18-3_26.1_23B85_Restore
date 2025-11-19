@interface CNContactListPrivacyTitleView
- (CNContactListPrivacyTitleView)initWithTitle:(id)a3 hasIcon:(BOOL)a4;
- (id)_titleTextWithIcon:(id)a3;
- (void)_setupTitleLabel;
- (void)_updateTitleLabel;
- (void)setHasIcon:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation CNContactListPrivacyTitleView

- (id)_titleTextWithIcon:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = a3;
  v5 = [v3 configurationWithPointSize:24.0];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v24[0] = v7;
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v6 configurationWithPaletteColors:v9];

  v11 = [v5 configurationByApplyingConfiguration:v10];

  v12 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised.square.fill" withConfiguration:v11];
  [v12 setImage:v13];

  v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v15 = MEMORY[0x1E696AAB0];
  v22 = *MEMORY[0x1E69DB610];
  v23 = &unk_1F0D4B3F8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v17 = [v15 attributedStringWithAttachment:v12 attributes:v16];
  [v14 appendAttributedString:v17];

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [@" " stringByAppendingString:v4];

  v20 = [v18 initWithString:v19];
  [v14 appendAttributedString:v20];

  return v14;
}

- (void)_updateTitleLabel
{
  if ([(CNContactListPrivacyTitleView *)self hasIcon])
  {
    v3 = [(CNContactListPrivacyTitleView *)self _titleTextWithIcon:self->_title];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_title];
  }

  v4 = v3;
  [(UILabel *)self->_titleLabel setAttributedText:v3];
}

- (void)_setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;
  v5 = v3;

  v6 = [(UILabel *)v5 font];
  v7 = [v6 fontDescriptor];
  v19 = [v7 fontDescriptorWithSymbolicTraits:2];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:0.0];
  [(UILabel *)v5 setFont:v8];

  [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactListPrivacyTitleView *)self _updateTitleLabel];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(UILabel *)v5 widthAnchor];
  v11 = [(CNContactListPrivacyTitleView *)self widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v9 addObject:v12];

  v13 = [(UILabel *)v5 centerXAnchor];
  v14 = [(CNContactListPrivacyTitleView *)self centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v9 addObject:v15];

  v16 = [(UILabel *)v5 centerYAnchor];
  v17 = [(CNContactListPrivacyTitleView *)self centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v9 addObject:v18];

  [(CNContactListPrivacyTitleView *)self addConstraints:v9];
  [(CNContactListPrivacyTitleView *)self addSubview:v5];
}

- (void)setHasIcon:(BOOL)a3
{
  if (self->_hasIcon != a3)
  {
    v8[9] = v3;
    v8[10] = v4;
    self->_hasIcon = a3;
    v6 = MEMORY[0x1E69DD250];
    v7 = [(CNContactListPrivacyTitleView *)self titleLabel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CNContactListPrivacyTitleView_setHasIcon___block_invoke;
    v8[3] = &unk_1E74E6A88;
    v8[4] = self;
    [v6 transitionWithView:v7 duration:5308544 options:v8 animations:0 completion:0.25];
  }
}

uint64_t __44__CNContactListPrivacyTitleView_setHasIcon___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTitleLabel];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_title, a3);
    [(CNContactListPrivacyTitleView *)self _updateTitleLabel];
    v5 = v6;
  }
}

- (CNContactListPrivacyTitleView)initWithTitle:(id)a3 hasIcon:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNContactListPrivacyTitleView;
  v8 = [(CNContactListPrivacyTitleView *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, a3);
    v9->_hasIcon = a4;
    [(CNContactListPrivacyTitleView *)v9 _setupTitleLabel];
    v10 = v9;
  }

  return v9;
}

@end