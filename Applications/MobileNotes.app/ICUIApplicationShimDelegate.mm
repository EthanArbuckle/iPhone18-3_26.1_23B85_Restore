@interface ICUIApplicationShimDelegate
- (BOOL)hasClearedInitialReplaceTextIfSecure;
- (BOOL)hasClearedInitialSearchTextIfSecure;
- (BOOL)hasClearedInitialSelectedTextIfSecure;
- (BOOL)isQuickNoteSessionActive;
- (BOOL)isSecureScreenShowing;
- (NSArray)windows;
- (UIWindow)keyWindow;
- (void)hasClearedInitialSecureReplaceText;
- (void)hasClearedInitialSecureSearchText;
- (void)hasClearedInitialSecureSelectedText;
@end

@implementation ICUIApplicationShimDelegate

- (BOOL)isSecureScreenShowing
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  v3 = [v2 isSecureScreenShowing];

  return v3;
}

- (UIWindow)keyWindow
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 keyWindow];

  return v3;
}

- (NSArray)windows
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];

  return v3;
}

- (BOOL)isQuickNoteSessionActive
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  v3 = [v2 isQuickNoteSessionActive];

  return v3;
}

- (BOOL)hasClearedInitialSelectedTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  v3 = [v2 hasClearedInitialSelectedTextIfSecure];

  return v3;
}

- (BOOL)hasClearedInitialSearchTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  v3 = [v2 hasClearedInitialSearchTextIfSecure];

  return v3;
}

- (BOOL)hasClearedInitialReplaceTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  v3 = [v2 hasClearedInitialReplaceTextIfSecure];

  return v3;
}

- (void)hasClearedInitialSecureSelectedText
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  [v2 setHasClearedInitialSelectedTextIfSecure:1];
}

- (void)hasClearedInitialSecureSearchText
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  [v2 setHasClearedInitialSearchTextIfSecure:1];
}

- (void)hasClearedInitialSecureReplaceText
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  [v2 setHasClearedInitialReplaceTextIfSecure:1];
}

@end