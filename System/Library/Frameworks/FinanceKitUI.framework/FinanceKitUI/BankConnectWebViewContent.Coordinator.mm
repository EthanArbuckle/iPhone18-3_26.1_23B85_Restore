@interface BankConnectWebViewContent.Coordinator
- (_TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator)init;
- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation BankConnectWebViewContent.Coordinator

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_23867C408(navigation);
}

- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = view;
  v14[3] = action;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23875ED80();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23877C290;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2387735A0;
  v17[5] = v16;
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_2386E65D8(0, 0, v12, &unk_238764DA0, v17);
}

- (_TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end