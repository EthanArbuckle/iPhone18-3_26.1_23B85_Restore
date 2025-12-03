@interface PPXWelcomeGDPRItem
- (id)welcomeScreenViewControllerWithCompletion:(id)completion;
@end

@implementation PPXWelcomeGDPRItem

- (id)welcomeScreenViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [PPXWelcomeGDPRViewController alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000021BC;
  v8[3] = &unk_100031388;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = [(PPXWelcomeGDPRViewController *)v4 initWithCompletion:v8];

  return v6;
}

@end