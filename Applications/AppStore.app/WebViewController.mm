@interface WebViewController
- (_TtC8AppStore17WebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (_TtC8AppStore17WebViewController)initWithCoder:(id)a3;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation WebViewController

- (_TtC8AppStore17WebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8AppStore17WebViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  v11 = a4;
  v12 = self;
  v13 = v10;
  v14 = URLProtocolDelegate.performAuthentication(for:)();

  aBlock[4] = sub_1005FCAC8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CBA98;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  v11 = a4;
  v12 = self;
  v13 = v10;
  v14 = URLProtocolDelegate.presentDialog(for:)();

  aBlock[4] = sub_1005FCAA0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CBA48;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

@end