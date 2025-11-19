@interface FMActionLandingView
- (_TtC6FindMy19FMActionLandingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMActionLandingView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMActionLandingView();
  v4 = a3;
  v5 = v6.receiver;
  [(FMActionLandingView *)&v6 traitCollectionDidChange:v4];
  sub_1001C3DC0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001C3CC4();
}

- (_TtC6FindMy19FMActionLandingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end