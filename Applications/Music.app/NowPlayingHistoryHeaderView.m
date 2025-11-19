@interface NowPlayingHistoryHeaderView
- (_TtC5Music27NowPlayingHistoryHeaderView)initWithCoder:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NowPlayingHistoryHeaderView

- (_TtC5Music27NowPlayingHistoryHeaderView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_sizeCategoryObserver) = 0;
  v4 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView;
  v5 = objc_allocWithZone(type metadata accessor for BackdropView());
  *(&self->super.super.super.super.isa + v4) = sub_100453A34();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  v4 = a3;
  v5 = v6.receiver;
  [(NowPlayingHistoryHeaderView *)&v6 applyLayoutAttributes:v4];
  [v5 setClipsToBounds:{sub_10056B5F4() & 1, v6.receiver, v6.super_class}];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100569D38();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  v4 = a3;
  v5 = v6.receiver;
  [(NowPlayingHistoryHeaderView *)&v6 traitCollectionDidChange:v4];
  sub_100569EC4();
}

@end