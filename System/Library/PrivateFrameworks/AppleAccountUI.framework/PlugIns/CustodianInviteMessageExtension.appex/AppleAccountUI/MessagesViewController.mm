@interface MessagesViewController
- (CGSize)contentSizeThatFits:(CGSize)result;
- (UIActivityIndicatorView)spinner;
- (_TtC31CustodianInviteMessageExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleRecoveryContactDidUpdate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation MessagesViewController

- (UIActivityIndicatorView)spinner
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)contentSizeThatFits:(CGSize)result
{
  v3 = *(self + OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_optimalBubbleSize);
  result.height = v3;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100001648(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100001854(disappear);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100001A58(conversationCopy);
}

- (void)handleRecoveryContactDidUpdate
{
  selfCopy = self;
  sub_100003414();
}

- (_TtC31CustodianInviteMessageExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000052B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100003B7C(v5, v7, bundle);
}

@end