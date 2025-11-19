@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3;
- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didSelectMessage:(id)a3 conversation:(id)a4;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)gameCenterViewControllerDidFinish:(id)a3;
- (void)updateCard:(id)a3;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MessagesViewController

- (void)gameCenterViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100031658();
}

- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100041B20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000299BC(v5, v7, a4);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100029C64(v4);
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100031A30(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updateCard:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  v6 = sub_100041AF0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v10[4] = sub_100033744;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100012BD4;
  v10[3] = &unk_1000573A0;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v4 named:v6 execute:v8];

  _Block_release(v8);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MessagesViewController *)&v5 willTransitionToPresentationStyle:a3];
  sub_10002B2C8();
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_10002B4A8(a3);
}

- (void)didSelectMessage:(id)a3 conversation:(id)a4
{
  v5 = self;
  v4 = [(MessagesViewController *)v5 presentationStyle];
  if (v4 >= 3)
  {
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    sub_100041FD0();
    __break(1u);
  }

  else
  {
    [(MessagesViewController *)v5 requestPresentationStyle:qword_100046FB8[v4]];
  }
}

- (void)willResignActiveWithConversation:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v6];
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10002B810(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100031C24();
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100032178(v7);
}

- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_100002D08(&qword_10005DAF0, &qword_100046EE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_100041C90();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100046EF8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100046F08;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_10002FA10(0, 0, v14, &unk_100046F18, v19);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(MessagesViewController *)&v7 dealloc];
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v5 = sub_100041A80();
  v6 = sub_100041B20();
  v8 = v7;
  v9 = self;
  LOBYTE(v6) = sub_10002EB90(v5, v6, v8);

  return v6 & 1;
}

- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end