@interface AMUnavailableViewController
- (UILabel)label;
- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithCoder:(id)a3;
- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_3A414();
}

- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_42978();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
    v6 = a4;
    v7 = sub_42968();
  }

  else
  {
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AMUnavailableViewController();
  v9 = [(AMUnavailableViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC22AudioMessagesExtension27AMUnavailableViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AMUnavailableViewController();
  v5 = a3;
  v6 = [(AMUnavailableViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end