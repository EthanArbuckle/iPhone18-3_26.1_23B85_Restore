@interface AudioPowerModule
- (_TtC16IntelligentLight16AudioPowerModule)init;
- (void)audioPowerUpdaterDidUpdate:(id)update averagePower:(float)power peakPower:(float)peakPower;
@end

@implementation AudioPowerModule

- (void)audioPowerUpdaterDidUpdate:(id)update averagePower:(float)power peakPower:(float)peakPower
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    selfCopy = self;
    sub_1000050AC(power);
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