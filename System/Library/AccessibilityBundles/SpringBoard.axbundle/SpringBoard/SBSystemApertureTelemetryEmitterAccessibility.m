@interface SBSystemApertureTelemetryEmitterAccessibility
+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4;
@end

@implementation SBSystemApertureTelemetryEmitterAccessibility

+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((BSEqualObjects() & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDC8528], 0, 0, 1u);
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SBSystemApertureTelemetryEmitterAccessibility;
  objc_msgSendSuper2(&v9, sel__emitPowerLogIfNecessaryWithUpdatedContext_previousContext_, v6, v7);
}

@end