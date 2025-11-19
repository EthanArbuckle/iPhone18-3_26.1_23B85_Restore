@interface FMWaitingView
- (_TtC6FindMy13FMWaitingView)init;
- (_TtC6FindMy13FMWaitingView)initWithCoder:(id)a3;
- (_TtC6FindMy13FMWaitingView)initWithFrame:(CGRect)a3;
@end

@implementation FMWaitingView

- (_TtC6FindMy13FMWaitingView)init
{
  v3 = OBJC_IVAR____TtC6FindMy13FMWaitingView_title;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMWaitingView();
  v5 = [(FMWaitingView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10047C9DC();
  sub_10047CC14();

  return v5;
}

- (_TtC6FindMy13FMWaitingView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMy13FMWaitingView_title;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy13FMWaitingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end