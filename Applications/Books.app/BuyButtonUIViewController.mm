@interface BuyButtonUIViewController
- (_TtC5Books25BuyButtonUIViewController)initWithCoder:(id)coder;
- (_TtC5Books25BuyButtonUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_buyButtonPressed:(id)pressed;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation BuyButtonUIViewController

- (_TtC5Books25BuyButtonUIViewController)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_eventHandler;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_cancellables) = &_swiftEmptySetSingleton;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_buttonEnabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_radialProgressThickness) = 0x4000000000000000;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for BuyButtonUIView());
  selfCopy = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [(BuyButtonUIViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10049C274();
}

- (_TtC5Books25BuyButtonUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_buyButtonPressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10049E2D8();

  sub_100007840(v6, &unk_100AD5B40);
}

@end