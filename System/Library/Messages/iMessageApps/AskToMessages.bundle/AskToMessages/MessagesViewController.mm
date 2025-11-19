@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (_TtC13AskToMessages22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_didUpdateMessage:(id)a3 conversation:(id)a4;
- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6;
- (void)requestResize;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MessagesViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_48414(v4);
}

- (void)_didUpdateMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_4D4C8(v7);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer);
  v5 = self;
  sub_26E50(a3);
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v5 = sub_5767C();
  v6 = sub_5778C();
  v8 = v7;
  v9 = self;
  LOBYTE(v6) = sub_487A4(v5, v6, v8);

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_2AFC(&qword_71820, &qword_59550);
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_4C8DC(0, 0, v14, &unk_5AE68, v19);
}

- (void)requestResize
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MessagesViewController();
  [(MessagesViewController *)&v2 requestResize];
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_4BBC8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC13AskToMessages22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_5778C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_4C024(v5, v7, a4);
}

@end