@interface AppViewController
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (UIColor)messageTintColor;
- (_TtC25ActivityMessagesExtension17AppViewController)initWithCoder:(id)a3;
- (_TtC25ActivityMessagesExtension17AppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation AppViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  AppViewController.willBecomeActive(with:)(v4);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppViewController();
  v2 = v3.receiver;
  [(AppViewController *)&v3 viewDidLoad];
  [v2 invalidateMessageTintColor];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  AppViewController.viewDidLayoutSubviews()();
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = AppViewController.contentSizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIColor)messageTintColor
{
  v2 = [objc_allocWithZone(UIColor) initWithWhite:0.098 alpha:1.0];

  return v2;
}

- (_TtC25ActivityMessagesExtension17AppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_10000FA3C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
    v6 = a4;
    v7 = sub_10000FA0C();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AppViewController();
  v9 = [(AppViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC25ActivityMessagesExtension17AppViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppViewController();
  v4 = a3;
  v5 = [(AppViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end