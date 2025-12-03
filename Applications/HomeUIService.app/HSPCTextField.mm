@interface HSPCTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation HSPCTextField

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_isEqual(action, "captureTextFromCamera:"))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HSPCTextField;
    v7 = [(HSPCTextField *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

@end