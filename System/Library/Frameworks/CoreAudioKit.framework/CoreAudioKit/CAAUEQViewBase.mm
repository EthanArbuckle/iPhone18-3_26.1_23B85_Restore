@interface CAAUEQViewBase
- (_TtC12CoreAudioKit14CAAUEQViewBase)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)tintColorDidChange;
@end

@implementation CAAUEQViewBase

- (_TtC12CoreAudioKit14CAAUEQViewBase)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_viewSetup) = 0;
  v7 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentHeaderConstraints) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentGraphConstraints) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_temporaryConstraints) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CAAUEQViewBase();
  return [(CAAUEQViewBase *)&v9 initWithFrame:x, y, width, height];
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_2371935F8();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAAUEQViewBase();
  v2 = v7.receiver;
  [(CAAUEQViewBase *)&v7 tintColorDidChange];
  v3 = sub_23719342C();
  v4 = [v2 tintColor];
  [v3 setTintColor_];

  v5 = sub_237193370();
  v6 = [v2 tintColor];
  [v5 setTintColor_];
}

@end