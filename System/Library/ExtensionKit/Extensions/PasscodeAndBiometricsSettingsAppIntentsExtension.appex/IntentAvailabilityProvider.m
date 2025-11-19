@interface IntentAvailabilityProvider
- (_TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider)init;
@end

@implementation IntentAvailabilityProvider

- (_TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider)init
{
  sub_1000089EC();
  sub_1000089DC();
  sub_1000089AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isFaceIDAvailable) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isTouchIDAvailable) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable) = 2;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IntentAvailabilityProvider();
  v3 = [(IntentAvailabilityProvider *)&v5 init];

  return v3;
}

@end