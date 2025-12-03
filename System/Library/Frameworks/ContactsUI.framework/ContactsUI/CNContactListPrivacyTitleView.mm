@interface CNContactListPrivacyTitleView
- (CNContactListPrivacyTitleView)initWithTitle:(id)title hasIcon:(BOOL)icon;
- (id)_titleTextWithIcon:(id)icon;
- (void)_setupTitleLabel;
- (void)_updateTitleLabel;
- (void)setHasIcon:(BOOL)icon;
- (void)setTitle:(id)title;
@end

@implementation CNContactListPrivacyTitleView

- (id)_titleTextWithIcon:(id)icon
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAD8];
  iconCopy = icon;
  v5 = [v3 configurationWithPointSize:24.0];
  v6 = MEMORY[0x1E69DCAD8];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v24[0] = systemWhiteColor;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v24[1] = systemBlueColor;
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
  v19 = [@" " stringByAppendingString:iconCopy];

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

  font = [(UILabel *)v5 font];
  fontDescriptor = [font fontDescriptor];
  v19 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:0.0];
  [(UILabel *)v5 setFont:v8];

  [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactListPrivacyTitleView *)self _updateTitleLabel];
  array = [MEMORY[0x1E695DF70] array];
  widthAnchor = [(UILabel *)v5 widthAnchor];
  widthAnchor2 = [(CNContactListPrivacyTitleView *)self widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v12];

  centerXAnchor = [(UILabel *)v5 centerXAnchor];
  centerXAnchor2 = [(CNContactListPrivacyTitleView *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v15];

  centerYAnchor = [(UILabel *)v5 centerYAnchor];
  centerYAnchor2 = [(CNContactListPrivacyTitleView *)self centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v18];

  [(CNContactListPrivacyTitleView *)self addConstraints:array];
  [(CNContactListPrivacyTitleView *)self addSubview:v5];
}

- (void)setHasIcon:(BOOL)icon
{
  if (self->_hasIcon != icon)
  {
    v8[9] = v3;
    v8[10] = v4;
    self->_hasIcon = icon;
    v6 = MEMORY[0x1E69DD250];
    titleLabel = [(CNContactListPrivacyTitleView *)self titleLabel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CNContactListPrivacyTitleView_setHasIcon___block_invoke;
    v8[3] = &unk_1E74E6A88;
    v8[4] = self;
    [v6 transitionWithView:titleLabel duration:5308544 options:v8 animations:0 completion:0.25];
  }
}

uint64_t __44__CNContactListPrivacyTitleView_setHasIcon___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTitleLabel];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(CNContactListPrivacyTitleView *)self _updateTitleLabel];
    titleCopy = v6;
  }
}

- (CNContactListPrivacyTitleView)initWithTitle:(id)title hasIcon:(BOOL)icon
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = CNContactListPrivacyTitleView;
  v8 = [(CNContactListPrivacyTitleView *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    v9->_hasIcon = icon;
    [(CNContactListPrivacyTitleView *)v9 _setupTitleLabel];
    v10 = v9;
  }

  return v9;
}

@end