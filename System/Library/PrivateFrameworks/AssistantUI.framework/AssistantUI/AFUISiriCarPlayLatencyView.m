@interface AFUISiriCarPlayLatencyView
- (_TtC11AssistantUI26AFUISiriCarPlayLatencyView)initWithFrame:(CGRect)a3;
@end

@implementation AFUISiriCarPlayLatencyView

- (_TtC11AssistantUI26AFUISiriCarPlayLatencyView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI26AFUISiriCarPlayLatencyView_latencyLightView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AFUISiriCarPlayLatencyView();
  v7 = [(AFUISiriCarPlayLatencyView *)&v9 initWithFrame:x, y, width, height];
  sub_2414361B8();

  return v7;
}

@end