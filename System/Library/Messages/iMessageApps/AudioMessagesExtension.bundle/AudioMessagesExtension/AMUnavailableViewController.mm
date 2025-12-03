@interface AMUnavailableViewController
- (UILabel)label;
- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AMUnavailableViewController

- (UILabel)label
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3A414();
}

- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_42978();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
    bundleCopy = bundle;
    v7 = sub_42968();
  }

  else
  {
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AMUnavailableViewController();
  v9 = [(AMUnavailableViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AMUnavailableViewController();
  coderCopy = coder;
  v6 = [(AMUnavailableViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end