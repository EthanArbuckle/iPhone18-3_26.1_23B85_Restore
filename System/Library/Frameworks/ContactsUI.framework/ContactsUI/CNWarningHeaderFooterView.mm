@interface CNWarningHeaderFooterView
+ (id)exclamationMark;
- (id)warningAttributedText;
- (void)setWarningText:(id)text;
@end

@implementation CNWarningHeaderFooterView

+ (id)exclamationMark
{
  v2 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v3 = MEMORY[0x1E69DCAB8];
  redColor = [MEMORY[0x1E69DC888] redColor];
  v5 = [v3 cnui_symbolImageNamed:@"exclamationmark.circle" scale:1 withColor:redColor useFixedSize:0];
  [v2 setImage:v5];

  return v2;
}

- (void)setWarningText:(id)text
{
  textCopy = text;
  if (([textCopy isEqual:self->_warningText] & 1) == 0)
  {
    objc_storeStrong(&self->_warningText, text);
    warningAttributedText = [(CNWarningHeaderFooterView *)self warningAttributedText];
    [(CNContactTableViewHeaderFooterView *)self setAttributedString:warningAttributedText];
  }
}

- (id)warningAttributedText
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = *MEMORY[0x1E69DB650];
  v3 = +[CNUIColorRepository contactStyleDefaultDisabledTextColor];
  v17[0] = v3;
  v16[1] = *MEMORY[0x1E69DB648];
  v4 = +[CNUIFontRepository contactCardWarningHeaderLabelFont];
  v17[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  if ([(CNWarningHeaderFooterView *)self shouldDisplayWarningIcon])
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v7 = MEMORY[0x1E696AAB0];
    exclamationMark = [objc_opt_class() exclamationMark];
    v9 = [v7 attributedStringWithAttachment:exclamationMark];
    [v6 appendAttributedString:v9];

    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v5];
    [v6 appendAttributedString:v10];

    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    warningText = [(CNWarningHeaderFooterView *)self warningText];
    v13 = [v11 initWithString:warningText attributes:v5];
    [v6 appendAttributedString:v13];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    warningText = [(CNWarningHeaderFooterView *)self warningText];
    v6 = [v14 initWithString:warningText attributes:v5];
  }

  return v6;
}

@end