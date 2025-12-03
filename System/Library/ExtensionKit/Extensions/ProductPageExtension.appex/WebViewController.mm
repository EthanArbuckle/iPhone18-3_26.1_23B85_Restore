@interface WebViewController
- (_TtC20ProductPageExtension17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC20ProductPageExtension17WebViewController)initWithCoder:(id)coder;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation WebViewController

- (_TtC20ProductPageExtension17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension17WebViewController)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_10076532C();

  aBlock[4] = sub_1006EDDE0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0FE8;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_10076531C();

  aBlock[4] = sub_1006EDDB4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0F98;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

@end