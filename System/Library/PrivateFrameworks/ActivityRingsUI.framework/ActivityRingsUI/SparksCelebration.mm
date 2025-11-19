@interface SparksCelebration
- (_TtC15ActivityRingsUI17SparksCelebration)init;
- (void)apply:(id)a3 context:(id)a4;
- (void)updateDeltaTime:(double)a3;
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

- (void)apply:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CFD837B0(v6, v7);
}

- (void)updateDeltaTime:(double)a3
{
  v3 = self;
  sub_1CFD8CF9C();
}

@end