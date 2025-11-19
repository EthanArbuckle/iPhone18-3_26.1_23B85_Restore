@interface JSBadgingViewController
- (_TtC16MusicApplication23JSBadgingViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication23JSBadgingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSBadgingViewController

- (_TtC16MusicApplication23JSBadgingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for BadgingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2F2B8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2F428();
}

- (_TtC16MusicApplication23JSBadgingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end