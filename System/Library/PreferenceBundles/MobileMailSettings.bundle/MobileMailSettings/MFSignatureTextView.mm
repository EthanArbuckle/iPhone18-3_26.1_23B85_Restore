@interface MFSignatureTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation MFSignatureTextView

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("paste:" == action)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFSignatureTextView;
    LOBYTE(self) = [(MFSignatureTextContentView *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return self;
}

@end