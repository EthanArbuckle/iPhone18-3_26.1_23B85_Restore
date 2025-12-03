@interface WebViewController
- (_TtC8AppStore17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC8AppStore17WebViewController)initWithCoder:(id)coder;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation WebViewController

- (_TtC8AppStore17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8AppStore17WebViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
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

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
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