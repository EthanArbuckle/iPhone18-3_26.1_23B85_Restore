@interface FMActionLandingView
- (_TtC6FindMy19FMActionLandingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMActionLandingView

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMActionLandingView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMActionLandingView *)&v6 traitCollectionDidChange:changeCopy];
  sub_1001C3DC0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001C3CC4();
}

- (_TtC6FindMy19FMActionLandingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end