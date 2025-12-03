@interface AMMessagesMainViewController
- (AMMessagesMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation AMMessagesMainViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E50();
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_2A65C(conversationCopy);
}

- (void)didResignActiveWithConversation:(id)conversation
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AMMessagesMainViewController_messagesViewController);
  if (v3)
  {
    conversationCopy = conversation;
    selfCopy = self;
    v6 = v3;
    [v6 didResignActiveWithConversation:conversationCopy];
    sub_2A31C();
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_2AB94(style);
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___AMMessagesMainViewController_messagesViewController);
  if (v5)
  {
    v6 = v4;
    _Block_copy(v4);
    selfCopy = self;
    v9 = v5;
    sub_2DDC0(v9, v6);
    _Block_release(v6);

    _Block_release(v6);
  }

  else
  {
    v8 = v4;
    (*(v4 + 2))(v4, 0);

    _Block_release(v8);
  }
}

- (AMMessagesMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_42978();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_2AEF0(v5, v7, bundle);
}

@end