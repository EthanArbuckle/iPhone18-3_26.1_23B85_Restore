@interface PPXWelcomeGDPRItem
- (id)welcomeScreenViewControllerWithCompletion:(id)a3;
@end

@implementation PPXWelcomeGDPRItem

- (id)welcomeScreenViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [PPXWelcomeGDPRViewController alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000021BC;
  v8[3] = &unk_100031388;
  v9 = v3;
  v5 = v3;
  v6 = [(PPXWelcomeGDPRViewController *)v4 initWithCompletion:v8];

  return v6;
}

@end