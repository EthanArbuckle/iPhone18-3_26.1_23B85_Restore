@interface HUAnnounceRecordingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)beginRecording:(id)recording;
- (void)stopRecordAndSend:(id)send;
- (void)viewDidLoad;
@end

@implementation HUAnnounceRecordingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HURecordingButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" hasInstanceMethod:@"beginRecording:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" hasInstanceMethod:@"stopRecordAndSend:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" hasInstanceMethod:@"largeTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUAnnounceRecordingViewController" hasInstanceMethod:@"recordButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUAnnounceRecordingViewControllerAccessibility;
  [(HUAnnounceRecordingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(HUAnnounceRecordingViewControllerAccessibility *)self safeUIViewForKey:@"largeTitleLabel"];
  [v4 setAccessibilityTraits:v3];
}

void __78__HUAnnounceRecordingViewControllerAccessibility_accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"recordButton"];
  [v1 sendActionsForControlEvents:64];
}

- (void)beginRecording:(id)recording
{
  v6.receiver = self;
  v6.super_class = HUAnnounceRecordingViewControllerAccessibility;
  [(HUAnnounceRecordingViewControllerAccessibility *)&v6 beginRecording:recording];
  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:MEMORY[0x29EDB8EB0]];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(HUAnnounceRecordingViewControllerAccessibility *)self safeValueForKey:@"recordButton"];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)stopRecordAndSend:(id)send
{
  v3.receiver = self;
  v3.super_class = HUAnnounceRecordingViewControllerAccessibility;
  [(HUAnnounceRecordingViewControllerAccessibility *)&v3 stopRecordAndSend:send];
  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUAnnounceRecordingViewControllerAccessibility;
  [(HUAnnounceRecordingViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUAnnounceRecordingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end