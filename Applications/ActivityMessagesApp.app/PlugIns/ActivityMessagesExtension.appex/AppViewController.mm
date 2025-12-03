@interface AppViewController
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (UIColor)messageTintColor;
- (_TtC25ActivityMessagesExtension17AppViewController)initWithCoder:(id)coder;
- (_TtC25ActivityMessagesExtension17AppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation AppViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  AppViewController.willBecomeActive(with:)(conversationCopy);
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
  selfCopy = self;
  AppViewController.viewDidLayoutSubviews()();
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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

- (_TtC25ActivityMessagesExtension17AppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_10000FA3C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
    bundleCopy = bundle;
    v7 = sub_10000FA0C();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AppViewController();
  v9 = [(AppViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC25ActivityMessagesExtension17AppViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppViewController();
  coderCopy = coder;
  v5 = [(AppViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end