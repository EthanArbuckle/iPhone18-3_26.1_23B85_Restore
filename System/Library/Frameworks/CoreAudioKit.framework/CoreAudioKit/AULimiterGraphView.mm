@interface AULimiterGraphView
- (_TtC12CoreAudioKit18AULimiterGraphView)initWithCoder:(id)a3;
- (_TtC12CoreAudioKit18AULimiterGraphView)initWithFrame:(CGRect)a3;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)tintColorDidChange;
@end

@implementation AULimiterGraphView

- (_TtC12CoreAudioKit18AULimiterGraphView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_levels) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_lines) = v8;
  v9 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for AULimiterGraphView();
  v10 = [(AULimiterGraphView *)&v12 initWithFrame:x, y, width, height];
  sub_23718615C();

  return v10;
}

- (_TtC12CoreAudioKit18AULimiterGraphView)initWithCoder:(id)a3
{
  v3 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_levels) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_lines) = v3;
  v4 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  result = sub_2371969DC();
  __break(1u);
  return result;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  [v4 begin];
  [v4 setDisableActions_];
  sub_2371867F8();
  [v4 commit];
}

- (void)tintColorDidChange
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks);
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 tintColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v3 setFillColor_];
}

@end