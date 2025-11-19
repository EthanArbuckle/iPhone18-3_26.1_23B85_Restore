@interface WKNavigationDelegateAdapter
- (_TtC6WebKit27WKNavigationDelegateAdapter)init;
- (void)_webView:(id)a3 backForwardListItemAdded:(id)a4 removed:(id)a5;
- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 preferences:(WKWebpagePreferences *)a5 decisionHandler:(id)a6;
- (void)webView:(WKWebView *)a3 decidePolicyForNavigationResponse:(WKNavigationResponse *)a4 decisionHandler:(id)a5;
- (void)webView:(WKWebView *)a3 didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation WKNavigationDelegateAdapter

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v12 = a5;
  v11 = self;
  sub_19D630A38(a4, v12);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getErrorValue();
  v8 = a4;
  v9 = a5;
  v10 = self;
  sub_19D62E958(v11, a4, v12);
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_19D630B24();
}

- (void)_webView:(id)a3 backForwardListItemAdded:(id)a4 removed:(id)a5
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a5)
  {
    sub_19D611980(0, &qword_1EB017618);
    sub_19E6CD538();
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_19D630C04(a3);
}

- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 preferences:(WKWebpagePreferences *)a5 decisionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_19D63073C(0, 0, v13, &unk_19E702760, v18);
}

- (void)webView:(WKWebView *)a3 decidePolicyForNavigationResponse:(WKNavigationResponse *)a4 decisionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_19D63073C(0, 0, v11, &unk_19E702740, v16);
}

- (void)webView:(WKWebView *)a3 didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
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