@interface AFUISiriCarPlayLatencyView
- (_TtC11AssistantUI26AFUISiriCarPlayLatencyView)initWithFrame:(CGRect)frame;
@end

@implementation AFUISiriCarPlayLatencyView

- (_TtC11AssistantUI26AFUISiriCarPlayLatencyView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI26AFUISiriCarPlayLatencyView_latencyLightView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AFUISiriCarPlayLatencyView();
  height = [(AFUISiriCarPlayLatencyView *)&v9 initWithFrame:x, y, width, height];
  sub_2414361B8();

  return height;
}

@end