@interface MOCircularProgressIndicatorView
- (_TtC16MomentsUIService31MOCircularProgressIndicatorView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)touchPlayback:(id)a3;
@end

@implementation MOCircularProgressIndicatorView

- (void)layoutSubviews
{
  v2 = self;
  MOCircularProgressIndicatorView.layoutSubviews()();
}

- (void)touchPlayback:(id)a3
{
  v3 = one-time initialization token for shared;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static MOMusicPlaybackCoordinator.shared;
  v8[3] = type metadata accessor for MOCircularProgressIndicatorView();
  v8[4] = &protocol witness table for MOCircularProgressIndicatorView;
  v8[0] = v4;
  v6 = *(*v5 + 360);
  v7 = v4;
  v6(v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = MOCircularProgressIndicatorView.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (_TtC16MomentsUIService31MOCircularProgressIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end