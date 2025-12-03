@interface AUVisualizationView
- (_TtC12CoreAudioKit19AUVisualizationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation AUVisualizationView

- (void)setTintColor:(id)color
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AUVisualizationView();
  v4 = v11.receiver;
  colorCopy = color;
  [(AUVisualizationView *)&v11 setTintColor:colorCopy];
  v6 = *&v4[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer];
  tintColor = [v4 tintColor];
  if (tintColor)
  {
    v8 = tintColor;
    colorWithAlphaComponent_ = [tintColor colorWithAlphaComponent_];

    cGColor = [colorWithAlphaComponent_ CGColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC12CoreAudioKit19AUVisualizationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_handlingTouches) = 0;
  v9 = (self + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins);
  __asm { FMOV            V0.2D, #20.0 }

  *v9 = _Q0;
  v9[1] = _Q0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = 0;
  v19.receiver = self;
  v19.super_class = type metadata accessor for AUVisualizationView();
  height = [(AUVisualizationView *)&v19 initWithFrame:x, y, width, height];
  v16 = *((*MEMORY[0x277D85000] & height->super.super.super.isa) + 0xC0);
  v17 = height;
  v16();

  return v17;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_237144448();
}

@end