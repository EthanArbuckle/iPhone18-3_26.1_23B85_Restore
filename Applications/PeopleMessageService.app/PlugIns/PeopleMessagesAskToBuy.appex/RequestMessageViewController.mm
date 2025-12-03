@interface RequestMessageViewController
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (MSConversation)activeConversation;
- (_TtC22PeopleMessagesAskToBuy28RequestMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)setActiveConversation:(id)conversation;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willMoveToParentViewController:(id)controller;
- (void)willResignActiveWithConversation:(id)conversation;
@end

@implementation RequestMessageViewController

- (MSConversation)activeConversation
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RequestMessageViewController();
  activeConversation = [(RequestMessageViewController *)&v4 activeConversation];

  return activeConversation;
}

- (void)setActiveConversation:(id)conversation
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RequestMessageViewController();
  conversationCopy = conversation;
  v5 = v6.receiver;
  [(RequestMessageViewController *)&v6 setActiveConversation:conversationCopy];
  sub_1000069D0();
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100006E30(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100007194(conversationCopy);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100009770(controller);
}

- (void)willResignActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100009AFC(conversationCopy);
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_100009C30(style);
}

- (_TtC22PeopleMessagesAskToBuy28RequestMessageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100024EB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000A8F8(v5, v7, bundle);
}

@end