@interface NemethView.Coordinator
- (_TtCV9VoiceOver10NemethView11Coordinator)init;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation NemethView.Coordinator

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1F594(errorCopy, "Error during provisional navigation... %s");
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_1F2E8(viewCopy);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1F594(errorCopy, "Error navigating to URL... %s");
}

- (_TtCV9VoiceOver10NemethView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end