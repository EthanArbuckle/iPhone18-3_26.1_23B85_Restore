@interface CNTextField
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNTextField)initWithFrame:(CGRect)frame;
@end

@implementation CNTextField

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v5.receiver = self;
  v5.super_class = CNTextField;
  [(CNTextField *)&v5 intrinsicContentSize];
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v12 = *MEMORY[0x1E69E9840];
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "%@ did not use fast-path for sizing", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = CNTextField;
  [(CNTextField *)&v9 sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CNTextField)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNTextField;
  v3 = [(CNTextField *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = *MEMORY[0x1E698B710];
    [(CNTextField *)v3 setLayoutSize:20.0 withContentPriority:*MEMORY[0x1E698B6F8], v4];
  }

  return v5;
}

@end