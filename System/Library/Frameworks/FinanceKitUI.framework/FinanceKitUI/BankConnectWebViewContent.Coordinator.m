@interface BankConnectWebViewContent.Coordinator
- (_TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator)init;
- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation BankConnectWebViewContent.Coordinator

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_23867C408(a4);
}

- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
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