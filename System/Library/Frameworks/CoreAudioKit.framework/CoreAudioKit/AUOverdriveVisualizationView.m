@interface AUOverdriveVisualizationView
- (_TtC12CoreAudioKit28AUOverdriveVisualizationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AUOverdriveVisualizationView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUOverdriveVisualizationView();
  v2 = v7.receiver;
  [(AUVisualizationView *)&v7 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_overdriveShape];
  [v2 frame];
  v5 = v4 * 0.5;
  [v2 frame];
  [v3 setPosition_];
  sub_237146D28();
}

- (_TtC12CoreAudioKit28AUOverdriveVisualizationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_overdriveShape;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_linear) = 1065353216;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_square) = 1065353216;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_cubic) = 1065353216;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AUOverdriveVisualizationView();
  return [(AUVisualizationView *)&v10 initWithFrame:x, y, width, height];
}

@end