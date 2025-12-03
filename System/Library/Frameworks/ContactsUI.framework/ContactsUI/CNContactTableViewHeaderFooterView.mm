@interface CNContactTableViewHeaderFooterView
- (void)setAttributedString:(id)string;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CNContactTableViewHeaderFooterView

- (void)updateConfigurationUsingState:(id)state
{
  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  [headerConfiguration setAttributedText:self->_attributedString];
  [(CNContactTableViewHeaderFooterView *)self setContentConfiguration:headerConfiguration];
  if (_UISolariumEnabled())
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [(CNContactTableViewHeaderFooterView *)self setBackgroundConfiguration:clearConfiguration];
  }
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
  if (self->_attributedString != stringCopy)
  {
    v6 = stringCopy;
    objc_storeStrong(&self->_attributedString, string);
    [(CNContactTableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
    stringCopy = v6;
  }
}

@end