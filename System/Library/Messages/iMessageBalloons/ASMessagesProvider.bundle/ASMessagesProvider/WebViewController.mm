@interface WebViewController
- (_TtC18ASMessagesProvider17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC18ASMessagesProvider17WebViewController)initWithCoder:(id)coder;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation WebViewController

- (_TtC18ASMessagesProvider17WebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider17WebViewController)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_75E760();

  aBlock[4] = sub_607788;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899F40;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v10 = *&self->AMSUIWebViewController_opaque[v9];
  requestCopy = request;
  selfCopy = self;
  v13 = v10;
  v14 = sub_75E750();

  aBlock[4] = sub_60775C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899EF0;
  v15 = _Block_copy(aBlock);

  [v14 addFinishBlock:v15];

  _Block_release(v15);
}

@end