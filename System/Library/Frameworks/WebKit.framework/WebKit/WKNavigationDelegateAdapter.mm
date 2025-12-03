@interface WKNavigationDelegateAdapter
- (_TtC6WebKit27WKNavigationDelegateAdapter)init;
- (void)_webView:(id)view backForwardListItemAdded:(id)added removed:(id)removed;
- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action preferences:(WKWebpagePreferences *)preferences decisionHandler:(id)handler;
- (void)webView:(WKWebView *)view decidePolicyForNavigationResponse:(WKNavigationResponse *)response decisionHandler:(id)handler;
- (void)webView:(WKWebView *)view didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation WKNavigationDelegateAdapter

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_19D630A38(navigation, errorCopy);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getErrorValue();
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_19D62E958(v11, navigation, v12);
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  terminateCopy = terminate;
  selfCopy = self;
  sub_19D630B24();
}

- (void)_webView:(id)view backForwardListItemAdded:(id)added removed:(id)removed
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (removed)
  {
    sub_19D611980(0, &qword_1EB017618);
    sub_19E6CD538();
  }

  viewCopy = view;
  addedCopy = added;
  selfCopy = self;
  sub_19D630C04(view);
}

- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action preferences:(WKWebpagePreferences *)preferences decisionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = view;
  v15[3] = action;
  v15[4] = preferences;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_19E6CD5D8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_19E702750;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19E702758;
  v18[5] = v17;
  viewCopy = view;
  actionCopy = action;
  preferencesCopy = preferences;
  selfCopy = self;
  sub_19D63073C(0, 0, v13, &unk_19E702760, v18);
}

- (void)webView:(WKWebView *)view decidePolicyForNavigationResponse:(WKNavigationResponse *)response decisionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = view;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19E6CD5D8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19E702730;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19E702738;
  v16[5] = v15;
  viewCopy = view;
  responseCopy = response;
  selfCopy = self;
  sub_19D63073C(0, 0, v11, &unk_19E702740, v16);
}

- (void)webView:(WKWebView *)view didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = view;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19E6CD5D8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19E7026E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19E7026F8;
  v16[5] = v15;
  viewCopy = view;
  challengeCopy = challenge;
  selfCopy = self;
  sub_19D63073C(0, 0, v11, &unk_19E702708, v16);
}

- (_TtC6WebKit27WKNavigationDelegateAdapter)init
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end