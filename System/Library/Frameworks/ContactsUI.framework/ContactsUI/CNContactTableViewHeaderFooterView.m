@interface CNContactTableViewHeaderFooterView
- (void)setAttributedString:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CNContactTableViewHeaderFooterView

- (void)updateConfigurationUsingState:(id)a3
{
  v5 = [MEMORY[0x1E69DCC28] headerConfiguration];
  [v5 setAttributedText:self->_attributedString];
  [(CNContactTableViewHeaderFooterView *)self setContentConfiguration:v5];
  if (_UISolariumEnabled())
  {
    v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [(CNContactTableViewHeaderFooterView *)self setBackgroundConfiguration:v4];
  }
}

- (void)setAttributedString:(id)a3
{
  v5 = a3;
  if (self->_attributedString != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_attributedString, a3);
    [(CNContactTableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

@end