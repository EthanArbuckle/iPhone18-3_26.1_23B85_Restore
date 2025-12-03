@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (_TtC13AskToMessages22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_didUpdateMessage:(id)message conversation:(id)conversation;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)requestResize;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_48414(conversationCopy);
}

- (void)_didUpdateMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  sub_4D4C8(conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer);
  selfCopy = self;
  sub_26E50(style);
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  v5 = sub_5767C();
  v6 = sub_5778C();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_487A4(v5, v6, v8);

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_2AFC(&qword_71820, &qword_59550);
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
  v17 = sub_578CC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_5AE48;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_5AE58;
  v19[5] = v18;
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_4C8DC(0, 0, v14, &unk_5AE68, v19);
}

- (void)requestResize
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MessagesViewController();
  [(MessagesViewController *)&v2 requestResize];
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_4BBC8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC13AskToMessages22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_5778C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_4C024(v5, v7, bundle);
}

@end