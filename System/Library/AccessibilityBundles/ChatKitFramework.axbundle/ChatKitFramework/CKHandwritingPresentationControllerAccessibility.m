@interface CKHandwritingPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CKHandwritingPresentationControllerAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSubscribeToVoiceOverNotifications;
- (void)_axUnsubscribeFromVoiceOverNotifications;
- (void)_updateVisibilityState;
- (void)dealloc;
@end

@implementation CKHandwritingPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKHandwritingPresentationController" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKHandwritingPresentationController" hasInstanceMethod:@"requestedVisibility" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKHandwritingPresentationController" hasInstanceMethod:@"_updateVisibilityState" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKHandwritingPresentationControllerAccessibility;
  [(CKHandwritingPresentationControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKHandwritingPresentationControllerAccessibility *)self _axSubscribeToVoiceOverNotifications];
}

- (CKHandwritingPresentationControllerAccessibility)init
{
  v4.receiver = self;
  v4.super_class = CKHandwritingPresentationControllerAccessibility;
  v2 = [(CKHandwritingPresentationControllerAccessibility *)&v4 init];
  [(CKHandwritingPresentationControllerAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  return v2;
}

- (void)dealloc
{
  [(CKHandwritingPresentationControllerAccessibility *)self _axUnsubscribeFromVoiceOverNotifications];
  v3.receiver = self;
  v3.super_class = CKHandwritingPresentationControllerAccessibility;
  [(CKHandwritingPresentationControllerAccessibility *)&v3 dealloc];
}

- (void)_updateVisibilityState
{
  v3 = [NSClassFromString(&cfstr_Axuikitglue.isa) safeValueForKey:@"sharedGlueObjectIfAvailable"];
  if (([v3 safeBoolForKey:@"isVoiceOverHandwritingEnabled"] & 1) == 0)
  {
    v4 = [(CKHandwritingPresentationControllerAccessibility *)self safeBoolForKey:@"requestedVisibility"];
    v7.receiver = self;
    v7.super_class = CKHandwritingPresentationControllerAccessibility;
    [(CKHandwritingPresentationControllerAccessibility *)&v7 _updateVisibilityState];
    if (AXDeviceIsPhoneIdiom())
    {
      if (v4)
      {
        v5 = [MEMORY[0x29EDC7A58] currentDevice];
        v6 = [v5 orientation];
      }

      else
      {
        v6 = 0;
      }

      [*MEMORY[0x29EDC8008] _accessibilitySetApplicationOrientation:v6];
    }
  }
}

- (void)_axSubscribeToVoiceOverNotifications
{
  if (![(CKHandwritingPresentationControllerAccessibility *)self _axIsObservingVoiceOverNotifications])
  {
    v3 = VOTLogHandwriting();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(CKHandwritingPresentationControllerAccessibility *)v3 _axSubscribeToVoiceOverNotifications];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, voiceOverDidEnableHandwriting, *MEMORY[0x29EDBDF20], 0, CFNotificationSuspensionBehaviorCoalesce);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, self, voiceOverDidDisableHandwriting, *MEMORY[0x29EDBDF18], 0, CFNotificationSuspensionBehaviorCoalesce);
    [(CKHandwritingPresentationControllerAccessibility *)self _axSetIsObservingVoiceOverNotifications:1];
  }
}

- (void)_axUnsubscribeFromVoiceOverNotifications
{
  if ([(CKHandwritingPresentationControllerAccessibility *)self _axIsObservingVoiceOverNotifications])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x29EDBDF20], 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x29EDBDF18], 0);

    [(CKHandwritingPresentationControllerAccessibility *)self _axSetIsObservingVoiceOverNotifications:0];
  }
}

@end