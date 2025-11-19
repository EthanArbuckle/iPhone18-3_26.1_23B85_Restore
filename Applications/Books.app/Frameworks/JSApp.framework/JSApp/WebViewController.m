@interface WebViewController
- (_TtC5JSApp17WebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (_TtC5JSApp17WebViewController)initWithCoder:(id)a3;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation WebViewController

- (_TtC5JSApp17WebViewController)initWithCoder:(id)a3
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (_TtC5JSApp17WebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(AMSUIAuthenticateTask);
  v10 = a4;
  v11 = self;
  v12 = [v9 initWithRequest:v10 presentingViewController:v11];
  v13 = [v12 performAuthentication];
  v15[4] = sub_7BC08;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_7BC10;
  v15[3] = &unk_B6C78;
  v14 = _Block_copy(v15);

  [v13 addFinishBlock:v14];

  _Block_release(v14);
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(AMSUIAlertDialogTask);
  v10 = a4;
  v11 = self;
  v12 = [v9 initWithRequest:v10 presentingViewController:v11];
  v13 = [v12 present];
  v15[4] = sub_7BBC8;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_7BC10;
  v15[3] = &unk_B6C28;
  v14 = _Block_copy(v15);

  [v13 addFinishBlock:v14];

  _Block_release(v14);
}

@end