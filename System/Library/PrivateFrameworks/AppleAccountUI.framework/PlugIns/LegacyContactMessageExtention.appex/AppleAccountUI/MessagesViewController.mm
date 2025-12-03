@interface MessagesViewController
- (CGSize)contentSizeThatFits:(CGSize)result;
- (_TtC29LegacyContactMessageExtention22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleLegacyContactDidUpdate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation MessagesViewController

- (CGSize)contentSizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize);
  result.height = v3;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000BEAC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000C0B8(disappear);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_10000C2BC(conversationCopy);
}

- (void)handleLegacyContactDidUpdate
{
  selfCopy = self;
  sub_10000DB40();
}

- (_TtC29LegacyContactMessageExtention22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10000F4D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000E278(v5, v7, bundle);
}

@end