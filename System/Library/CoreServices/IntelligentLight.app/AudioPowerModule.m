@interface AudioPowerModule
- (_TtC16IntelligentLight16AudioPowerModule)init;
- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5;
@end

@implementation AudioPowerModule

- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = self;
    sub_1000050AC(a4);
  }
}

- (_TtC16IntelligentLight16AudioPowerModule)init
{
  *&self->moduleAccessor[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_moduleAccessor] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudioPowerModule();
  return [(AudioPowerModule *)&v4 init];
}

@end