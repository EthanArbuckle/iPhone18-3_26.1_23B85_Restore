@interface WebViewController
- (_TtC22SubscribePageExtension17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC22SubscribePageExtension17WebViewController)initWithCoder:(id)coder;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation WebViewController

- (_TtC22SubscribePageExtension17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension17WebViewController)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_1007487E4();

  aBlock[4] = sub_1004B0768;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877D18;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_1007487D4();

  aBlock[4] = sub_1004B073C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877CC8;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

@end