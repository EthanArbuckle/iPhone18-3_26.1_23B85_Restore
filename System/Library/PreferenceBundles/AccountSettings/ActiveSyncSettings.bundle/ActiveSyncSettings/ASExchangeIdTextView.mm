@interface ASExchangeIdTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)copy:(id)copy;
@end

@implementation ASExchangeIdTextView

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (NSSelectorFromString(@"_define:") == action)
  {
    v7 = 0;
  }

  else if ("copy:" == action)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ASExchangeIdTextView;
    v7 = [(ASExchangeIdTextView *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)copy:(id)copy
{
  v5 = +[UIPasteboard generalPasteboard];
  text = [(ASExchangeIdTextView *)self text];
  [v5 setString:text];
}

@end