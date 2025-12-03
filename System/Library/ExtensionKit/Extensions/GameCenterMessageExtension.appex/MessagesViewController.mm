@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)dealloc;
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didSelectMessage:(id)message conversation:(id)conversation;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)gameCenterViewControllerDidFinish:(id)finish;
- (void)updateCard:(id)card;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willResignActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewController

- (void)gameCenterViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_100031658();
}

- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100041B20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000299BC(v5, v7, bundle);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100029C64(conversationCopy);
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_100031A30(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updateCard:(id)card
{
  v4 = objc_opt_self();
  selfCopy = self;
  v6 = sub_100041AF0();
  v7 = swift_allocObject();
  *(v7 + 16) = selfCopy;
  v10[4] = sub_100033744;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100012BD4;
  v10[3] = &unk_1000573A0;
  v8 = _Block_copy(v10);
  v9 = selfCopy;

  [v4 named:v6 execute:v8];

  _Block_release(v8);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MessagesViewController *)&v5 willTransitionToPresentationStyle:style];
  sub_10002B2C8();
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_10002B4A8(style);
}

- (void)didSelectMessage:(id)message conversation:(id)conversation
{
  selfCopy = self;
  presentationStyle = [(MessagesViewController *)selfCopy presentationStyle];
  if (presentationStyle >= 3)
  {
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    sub_100041FD0();
    __break(1u);
  }

  else
  {
    [(MessagesViewController *)selfCopy requestPresentationStyle:qword_100046FB8[presentationStyle]];
  }
}

- (void)willResignActiveWithConversation:(id)conversation
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_10002B810(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  sub_100031C24();
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  sub_100032178(conversationCopy);
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_100002D08(&qword_10005DAF0, &qword_100046EE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = sending;
  v16[3] = conversation;
  v16[4] = text;
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
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_10002FA10(0, 0, v14, &unk_100046F18, v19);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(MessagesViewController *)&v7 dealloc];
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  v5 = sub_100041A80();
  v6 = sub_100041B20();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_10002EB90(v5, v6, v8);

  return v6 & 1;
}

- (_TtC26GameCenterMessageExtension22MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end