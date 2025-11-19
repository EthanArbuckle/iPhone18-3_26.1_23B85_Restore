@interface MessagesViewController
- (CGSize)contentSizeThatFits:(CGSize)result;
- (UIActivityIndicatorView)spinner;
- (_TtC31CustodianInviteMessageExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleRecoveryContactDidUpdate;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100001648(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100001854(a3);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001A58(v4);
}

- (void)handleRecoveryContactDidUpdate
{
  v2 = self;
  sub_100003414();
}

- (_TtC31CustodianInviteMessageExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000052B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100003B7C(v5, v7, a4);
}

@end