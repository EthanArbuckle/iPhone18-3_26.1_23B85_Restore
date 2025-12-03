@interface AULimiterGraphView
- (_TtC12CoreAudioKit18AULimiterGraphView)initWithCoder:(id)coder;
- (_TtC12CoreAudioKit18AULimiterGraphView)initWithFrame:(CGRect)frame;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)tintColorDidChange;
@end

@implementation AULimiterGraphView

- (_TtC12CoreAudioKit18AULimiterGraphView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_levels) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_lines) = v8;
  v9 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for AULimiterGraphView();
  height = [(AULimiterGraphView *)&v12 initWithFrame:x, y, width, height];
  sub_23718615C();

  return height;
}

- (_TtC12CoreAudioKit18AULimiterGraphView)initWithCoder:(id)coder
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

- (void)layoutSublayersOfLayer:(id)layer
{
  v4 = objc_opt_self();
  selfCopy = self;
  [v4 begin];
  [v4 setDisableActions_];
  sub_2371867F8();
  [v4 commit];
}

- (void)tintColorDidChange
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks);
  v4 = objc_opt_self();
  selfCopy = self;
  tintColor = [v4 tintColor];
  colorWithAlphaComponent_ = [tintColor colorWithAlphaComponent_];

  cGColor = [colorWithAlphaComponent_ CGColor];
  [v3 setFillColor_];
}

@end