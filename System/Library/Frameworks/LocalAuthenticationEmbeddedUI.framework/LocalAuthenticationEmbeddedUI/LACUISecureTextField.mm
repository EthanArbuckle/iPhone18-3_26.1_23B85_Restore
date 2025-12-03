@interface LACUISecureTextField
- (LACUISecureTextField)init;
- (LACUISecureTextField)initWithCoder:(id)coder;
- (LACUISecureTextField)initWithFrame:(CGRect)frame;
- (NSString)placeholder;
- (NSString)text;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
@end

@implementation LACUISecureTextField

- (LACUISecureTextField)init
{
  v5.receiver = self;
  v5.super_class = LACUISecureTextField;
  v2 = [(LACUISecureTextField *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACUISecureTextField *)v2 _setup];
  }

  return v3;
}

- (LACUISecureTextField)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LACUISecureTextField;
  v3 = [(LACUISecureTextField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LACUISecureTextField *)v3 _setup];
  }

  return v4;
}

- (LACUISecureTextField)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LACUISecureTextField;
  v3 = [(LACUISecureTextField *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(LACUISecureTextField *)v3 _setup];
  }

  return v4;
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = LACUISecureTextField;
  text = [(LACUITextField *)&v4 text];

  return text;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = LACUISecureTextField;
  [(LACUITextField *)&v3 setText:text];
}

- (NSString)placeholder
{
  v4.receiver = self;
  v4.super_class = LACUISecureTextField;
  placeholder = [(LACUITextField *)&v4 placeholder];

  return placeholder;
}

- (void)setPlaceholder:(id)placeholder
{
  v3.receiver = self;
  v3.super_class = LACUISecureTextField;
  [(LACUITextField *)&v3 setPlaceholder:placeholder];
}

@end