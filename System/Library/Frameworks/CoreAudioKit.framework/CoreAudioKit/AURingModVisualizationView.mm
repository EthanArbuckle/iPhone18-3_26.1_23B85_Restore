@interface AURingModVisualizationView
- (_TtC12CoreAudioKit26AURingModVisualizationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AURingModVisualizationView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_237145B30();
}

- (_TtC12CoreAudioKit26AURingModVisualizationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq1) = 1056964608;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq2) = 1056964608;
  v8 = OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_modShape;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for AURingModVisualizationView();
  return [(AUVisualizationView *)&v10 initWithFrame:x, y, width, height];
}

@end