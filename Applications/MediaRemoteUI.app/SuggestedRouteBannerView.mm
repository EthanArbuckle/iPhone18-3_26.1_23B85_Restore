@interface SuggestedRouteBannerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC13MediaRemoteUI24SuggestedRouteBannerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)updateUserInterfaceStyle;
@end

@implementation SuggestedRouteBannerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SuggestedRouteBannerView();
  v2 = v5.receiver;
  [(SuggestedRouteBannerView *)&v5 layoutSubviews];
  [*&v2[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView] bounds];
  Height = CGRectGetHeight(v6);
  v4 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_activityRouteView];
  [v4 setSide:{fmin(ceil(Height / 1.41421356), 50.0)}];
  [v4 setSideConstraintActive:1];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView);
  v8 = a4;
  v9 = self;
  [(SuggestedRouteBannerView *)v9 convertPoint:v7 toCoordinateSpace:x, y];
  LOBYTE(v7) = [v7 pointInside:v8 withEvent:?];

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SuggestedRouteBannerView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(SuggestedRouteBannerView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100006334(0, &qword_100071A90);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (void)updateUserInterfaceStyle
{
  v2 = self;
  sub_100033EC8();
}

- (_TtC13MediaRemoteUI24SuggestedRouteBannerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end