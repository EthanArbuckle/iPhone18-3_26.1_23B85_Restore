@interface SparksCelebration
- (_TtC15ActivityRingsUI17SparksCelebration)init;
- (void)apply:(id)apply context:(id)context;
- (void)updateDeltaTime:(double)time;
@end

@implementation SparksCelebration

- (_TtC15ActivityRingsUI17SparksCelebration)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC15ActivityRingsUI17SparksCelebration_duration) = 0x4014000000000000;
  type metadata accessor for Sparks();
  *(&self->super.super.isa + OBJC_IVAR____TtC15ActivityRingsUI17SparksCelebration_scene) = sub_1CFD8865C();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SparksCelebration();
  return [(SparksCelebration *)&v4 init];
}

- (void)apply:(id)apply context:(id)context
{
  applyCopy = apply;
  contextCopy = context;
  selfCopy = self;
  sub_1CFD837B0(applyCopy, contextCopy);
}

- (void)updateDeltaTime:(double)time
{
  selfCopy = self;
  sub_1CFD8CF9C();
}

@end