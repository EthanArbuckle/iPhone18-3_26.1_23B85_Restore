@interface SBSystemApertureTelemetryEmitterAccessibility
+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext;
@end

@implementation SBSystemApertureTelemetryEmitterAccessibility

+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext
{
  contextCopy = context;
  previousContextCopy = previousContext;
  if ((BSEqualObjects() & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDC8528], 0, 0, 1u);
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SBSystemApertureTelemetryEmitterAccessibility;
  objc_msgSendSuper2(&v9, sel__emitPowerLogIfNecessaryWithUpdatedContext_previousContext_, contextCopy, previousContextCopy);
}

@end