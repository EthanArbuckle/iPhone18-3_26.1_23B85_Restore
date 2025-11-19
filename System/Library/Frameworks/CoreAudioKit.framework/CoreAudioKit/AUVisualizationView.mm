@interface AUVisualizationView
- (_TtC12CoreAudioKit19AUVisualizationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation AUVisualizationView

- (void)setTintColor:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AUVisualizationView();
  v4 = v11.receiver;
  v5 = a3;
  [(AUVisualizationView *)&v11 setTintColor:v5];
  v6 = *&v4[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer];
  v7 = [v4 tintColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 colorWithAlphaComponent_];

    v10 = [v9 CGColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC12CoreAudioKit19AUVisualizationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v15 = [(AUVisualizationView *)&v19 initWithFrame:x, y, width, height];
  v16 = *((*MEMORY[0x277D85000] & v15->super.super.super.isa) + 0xC0);
  v17 = v15;
  v16();

  return v17;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_237144448();
}

@end