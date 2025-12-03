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
  isSecureScreenShowing = [v2 isSecureScreenShowing];

  return isSecureScreenShowing;
}

- (UIWindow)keyWindow
{
  v2 = +[UIApplication sharedApplication];
  keyWindow = [v2 keyWindow];

  return keyWindow;
}

- (NSArray)windows
{
  v2 = +[UIApplication sharedApplication];
  windows = [v2 windows];

  return windows;
}

- (BOOL)isQuickNoteSessionActive
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  isQuickNoteSessionActive = [v2 isQuickNoteSessionActive];

  return isQuickNoteSessionActive;
}

- (BOOL)hasClearedInitialSelectedTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  hasClearedInitialSelectedTextIfSecure = [v2 hasClearedInitialSelectedTextIfSecure];

  return hasClearedInitialSelectedTextIfSecure;
}

- (BOOL)hasClearedInitialSearchTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  hasClearedInitialSearchTextIfSecure = [v2 hasClearedInitialSearchTextIfSecure];

  return hasClearedInitialSearchTextIfSecure;
}

- (BOOL)hasClearedInitialReplaceTextIfSecure
{
  v2 = +[ICQuickNoteSessionManager sharedManager];
  hasClearedInitialReplaceTextIfSecure = [v2 hasClearedInitialReplaceTextIfSecure];

  return hasClearedInitialReplaceTextIfSecure;
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