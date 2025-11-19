@interface RequestMessageViewController
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (MSConversation)activeConversation;
- (_TtC24PeopleMessagesScreenTime28RequestMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)setActiveConversation:(id)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
@end

@implementation RequestMessageViewController

- (MSConversation)activeConversation
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RequestMessageViewController();
  v2 = [(RequestMessageViewController *)&v4 activeConversation];

  return v2;
}

- (void)setActiveConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RequestMessageViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(RequestMessageViewController *)&v6 setActiveConversation:v4];
  sub_10001B940();
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_10001BA98(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001BDFC(v4);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001D3E4(a3);
}

- (void)willResignActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D770(v4);
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_10001D8A4(a3);
}

- (_TtC24PeopleMessagesScreenTime28RequestMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100027154();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10001E004(v5, v7, a4);
}

@end