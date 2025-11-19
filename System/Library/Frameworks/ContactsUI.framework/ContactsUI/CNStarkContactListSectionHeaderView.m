@interface CNStarkContactListSectionHeaderView
- (void)setText:(id)a3;
- (void)setTopPadding:(double)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CNStarkContactListSectionHeaderView

- (void)updateConfigurationUsingState:(id)a3
{
  v17 = [MEMORY[0x1E69DCC28] headerConfiguration];
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD00] weight:*MEMORY[0x1E69DB980]];
  v5 = [v17 textProperties];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = [v17 textProperties];
  [v7 setColor:v6];

  [(CNStarkContactListSectionHeaderView *)self topPadding];
  [v17 setDirectionalLayoutMargins:?];
  v8 = [(CNStarkContactListSectionHeaderView *)self text];
  [v17 setText:v8];

  [(CNStarkContactListSectionHeaderView *)self setContentConfiguration:v17];
  v9 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [(CNStarkContactListSectionHeaderView *)self setBackgroundConfiguration:v9];

  v10 = MEMORY[0x1E6979378];
  v11 = [(CNStarkContactListSectionHeaderView *)self traitCollection];
  v12 = [v11 userInterfaceStyle];
  v13 = MEMORY[0x1E6979CF8];
  if (v12 != 2)
  {
    v13 = MEMORY[0x1E6979CE8];
  }

  v14 = [v10 filterWithType:*v13];
  v15 = [(CNStarkContactListSectionHeaderView *)self layer];
  [v15 setCompositingFilter:v14];

  v16 = [(CNStarkContactListSectionHeaderView *)self layer];
  [v16 setAllowsGroupBlending:0];
}

- (void)setText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_text] & 1) == 0)
  {
    v4 = [v6 copy];
    text = self->_text;
    self->_text = v4;

    [(CNStarkContactListSectionHeaderView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setTopPadding:(double)a3
{
  if (self->_topPadding != a3)
  {
    self->_topPadding = a3;
    [(CNStarkContactListSectionHeaderView *)self setNeedsUpdateConfiguration];
  }
}

@end