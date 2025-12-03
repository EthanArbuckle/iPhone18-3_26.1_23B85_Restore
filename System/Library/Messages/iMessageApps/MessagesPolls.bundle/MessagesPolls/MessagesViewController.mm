@interface MessagesViewController
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (_TtC13MessagesPolls22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_didUpdateMessage:(id)message conversation:(id)conversation;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)didChangeShouldPerformSendAnimationOnAppear:(BOOL)appear;
- (void)didReceiveMessage:(id)message conversation:(id)conversation;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation MessagesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_15C50();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_15F90(appear);
}

- (_TtC13MessagesPolls22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_48414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1613C(v5, v7, bundle);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_16660(conversationCopy);
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_19294(conversationCopy);
}

- (void)didReceiveMessage:(id)message conversation:(id)conversation
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking);
  if (v4)
  {
    v7 = *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = conversation;
    conversationCopy = conversation;
    messageCopy = message;
    selfCopy = self;

    sub_17BDC(messageCopy, conversationCopy);
  }

  else
  {
    __break(1u);
  }
}

- (void)_didUpdateMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  sub_19610(messageCopy, conversationCopy);
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_197D4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  v5 = sub_48394();
  selfCopy = self;
  LOBYTE(self) = sub_1B35C(v5);

  return self & 1;
}

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1B6CC(draftCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  selfCopy = self;
  sub_1B004(luminance);
}

- (void)didChangeShouldPerformSendAnimationOnAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BC98();
}

@end