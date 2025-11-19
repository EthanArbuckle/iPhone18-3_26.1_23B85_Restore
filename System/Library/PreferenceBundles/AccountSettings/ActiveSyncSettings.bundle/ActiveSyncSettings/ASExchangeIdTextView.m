@interface ASExchangeIdTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)copy:(id)a3;
@end

@implementation ASExchangeIdTextView

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (NSSelectorFromString(@"_define:") == a3)
  {
    v7 = 0;
  }

  else if ("copy:" == a3)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ASExchangeIdTextView;
    v7 = [(ASExchangeIdTextView *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)copy:(id)a3
{
  v5 = +[UIPasteboard generalPasteboard];
  v4 = [(ASExchangeIdTextView *)self text];
  [v5 setString:v4];
}

@end