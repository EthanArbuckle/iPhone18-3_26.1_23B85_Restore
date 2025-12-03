@interface MOCircularProgressIndicatorView
- (_TtC16MomentsUIService31MOCircularProgressIndicatorView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)touchPlayback:(id)playback;
@end

@implementation MOCircularProgressIndicatorView

- (void)layoutSubviews
{
  selfCopy = self;
  MOCircularProgressIndicatorView.layoutSubviews()();
}

- (void)touchPlayback:(id)playback
{
  v3 = one-time initialization token for shared;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static MOMusicPlaybackCoordinator.shared;
  v8[3] = type metadata accessor for MOCircularProgressIndicatorView();
  v8[4] = &protocol witness table for MOCircularProgressIndicatorView;
  v8[0] = selfCopy;
  v6 = *(*v5 + 360);
  v7 = selfCopy;
  v6(v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = MOCircularProgressIndicatorView.hitTest(_:with:)(event, x, y);

  return v10;
}

- (_TtC16MomentsUIService31MOCircularProgressIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end