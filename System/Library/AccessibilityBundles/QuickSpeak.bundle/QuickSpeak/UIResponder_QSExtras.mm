@interface UIResponder_QSExtras
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation UIResponder_QSExtras

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = [(UIResponder_QSExtras *)self _accessibilityQScanPerformAction:action withSender:senderCopy];
  v8 = +[AXQSMenuHelper sharedInstance];
  isShowingLanguageChoices = [v8 isShowingLanguageChoices];

  if ((isShowingLanguageChoices & 1) == 0 && ((v7 | [AXQuickSpeak isQuickSpeakSelector:action]) & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = UIResponder_QSExtras;
    LOBYTE(v7) = [(UIResponder_QSExtras *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

@end