@interface MessagesViewController
- (CGSize)contentSizeThatFits:(CGSize)result;
- (_TtC29LegacyContactMessageExtention22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleLegacyContactDidUpdate;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation MessagesViewController

- (CGSize)contentSizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize);
  result.height = v3;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000BEAC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000C0B8(a3);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C2BC(v4);
}

- (void)handleLegacyContactDidUpdate
{
  v2 = self;
  sub_10000DB40();
}

- (_TtC29LegacyContactMessageExtention22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10000F4D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000E278(v5, v7, a4);
}

@end