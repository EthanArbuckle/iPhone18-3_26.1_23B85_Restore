@interface WebViewController
- (_TtC5JSApp17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC5JSApp17WebViewController)initWithCoder:(id)coder;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation WebViewController

- (_TtC5JSApp17WebViewController)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (_TtC5JSApp17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(AMSUIAuthenticateTask);
  requestCopy = request;
  selfCopy = self;
  v12 = [v9 initWithRequest:requestCopy presentingViewController:selfCopy];
  performAuthentication = [v12 performAuthentication];
  v15[4] = sub_7BC08;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_7BC10;
  v15[3] = &unk_B6C78;
  v14 = _Block_copy(v15);

  [performAuthentication addFinishBlock:v14];

  _Block_release(v14);
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(AMSUIAlertDialogTask);
  requestCopy = request;
  selfCopy = self;
  v12 = [v9 initWithRequest:requestCopy presentingViewController:selfCopy];
  present = [v12 present];
  v15[4] = sub_7BBC8;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_7BC10;
  v15[3] = &unk_B6C28;
  v14 = _Block_copy(v15);

  [present addFinishBlock:v14];

  _Block_release(v14);
}

@end