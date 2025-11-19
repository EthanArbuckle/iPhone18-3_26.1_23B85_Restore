@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (_TtC13MessagesPolls22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_didUpdateMessage:(id)a3 conversation:(id)a4;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)didChangeShouldPerformSendAnimationOnAppear:(BOOL)a3;
- (void)didReceiveMessage:(id)a3 conversation:(id)a4;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation MessagesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_15C50();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_15F90(a3);
}

- (_TtC13MessagesPolls22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_48414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1613C(v5, v7, a4);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_16660(v4);
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19294(v4);
}

- (void)didReceiveMessage:(id)a3 conversation:(id)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking);
  if (v4)
  {
    v7 = *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = a4;
    v8 = a4;
    v9 = a3;
    v10 = self;

    sub_17BDC(v9, v8);
  }

  else
  {
    __break(1u);
  }
}

- (void)_didUpdateMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_19610(v6, v7);
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_197D4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v5 = sub_48394();
  v6 = self;
  LOBYTE(self) = sub_1B35C(v5);

  return self & 1;
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1B6CC(v4, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  v4 = self;
  sub_1B004(a3);
}

- (void)didChangeShouldPerformSendAnimationOnAppear:(BOOL)a3
{
  v3 = self;
  sub_1BC98();
}

@end