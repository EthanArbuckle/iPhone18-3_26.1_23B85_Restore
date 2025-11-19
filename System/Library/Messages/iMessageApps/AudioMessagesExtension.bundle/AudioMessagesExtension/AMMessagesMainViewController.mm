@interface AMMessagesMainViewController
- (AMMessagesMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation AMMessagesMainViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E50();
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2A65C(v4);
}

- (void)didResignActiveWithConversation:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AMMessagesMainViewController_messagesViewController);
  if (v3)
  {
    v5 = a3;
    v7 = self;
    v6 = v3;
    [v6 didResignActiveWithConversation:v5];
    sub_2A31C();
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_2AB94(a3);
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___AMMessagesMainViewController_messagesViewController);
  if (v5)
  {
    v6 = v4;
    _Block_copy(v4);
    v7 = self;
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

- (AMMessagesMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_42978();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_2AEF0(v5, v7, a4);
}

@end