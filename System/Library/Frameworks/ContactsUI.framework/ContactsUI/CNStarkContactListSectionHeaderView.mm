@interface CNStarkContactListSectionHeaderView
- (void)setText:(id)text;
- (void)setTopPadding:(double)padding;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CNStarkContactListSectionHeaderView

- (void)updateConfigurationUsingState:(id)state
{
  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD00] weight:*MEMORY[0x1E69DB980]];
  textProperties = [headerConfiguration textProperties];
  [textProperties setFont:v4];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  textProperties2 = [headerConfiguration textProperties];
  [textProperties2 setColor:secondaryLabelColor];

  [(CNStarkContactListSectionHeaderView *)self topPadding];
  [headerConfiguration setDirectionalLayoutMargins:?];
  text = [(CNStarkContactListSectionHeaderView *)self text];
  [headerConfiguration setText:text];

  [(CNStarkContactListSectionHeaderView *)self setContentConfiguration:headerConfiguration];
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [(CNStarkContactListSectionHeaderView *)self setBackgroundConfiguration:clearConfiguration];

  v10 = MEMORY[0x1E6979378];
  traitCollection = [(CNStarkContactListSectionHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v13 = MEMORY[0x1E6979CF8];
  if (userInterfaceStyle != 2)
  {
    v13 = MEMORY[0x1E6979CE8];
  }

  v14 = [v10 filterWithType:*v13];
  layer = [(CNStarkContactListSectionHeaderView *)self layer];
  [layer setCompositingFilter:v14];

  layer2 = [(CNStarkContactListSectionHeaderView *)self layer];
  [layer2 setAllowsGroupBlending:0];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_text] & 1) == 0)
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    [(CNStarkContactListSectionHeaderView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setTopPadding:(double)padding
{
  if (self->_topPadding != padding)
  {
    self->_topPadding = padding;
    [(CNStarkContactListSectionHeaderView *)self setNeedsUpdateConfiguration];
  }
}

@end