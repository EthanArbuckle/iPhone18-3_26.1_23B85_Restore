@interface FMLoadingView
- (_TtC6FindMy13FMLoadingView)init;
- (_TtC6FindMy13FMLoadingView)initWithCoder:(id)a3;
- (_TtC6FindMy13FMLoadingView)initWithFrame:(CGRect)a3;
@end

@implementation FMLoadingView

- (_TtC6FindMy13FMLoadingView)init
{
  v3 = OBJC_IVAR____TtC6FindMy13FMLoadingView_title;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMLoadingView();
  v5 = [(FMLoadingView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10002A924();
  sub_10002AEDC();

  return v5;
}

- (_TtC6FindMy13FMLoadingView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMy13FMLoadingView_title;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy13FMLoadingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end