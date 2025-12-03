@interface CallRecordingRecordingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateLabels;
- (void)layoutSubviews;
@end

@implementation CallRecordingRecordingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CommunicationsUI.CallRecordingRecordingView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CommunicationsUI.CallRecordingRecordingView" hasSwiftField:@"$__lazy_storage_$_stopButton" withSwiftType:"Optional<UIButton>"];
}

- (void)_axUpdateLabels
{
  v3 = [(CallRecordingRecordingViewAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_stopButton"];
  v2 = accessibilityLocalizedString(@"stop.recording.button");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CallRecordingRecordingViewAccessibility;
  [(CallRecordingRecordingViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CallRecordingRecordingViewAccessibility *)self _axUpdateLabels];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CallRecordingRecordingViewAccessibility;
  [(CallRecordingRecordingViewAccessibility *)&v3 layoutSubviews];
  [(CallRecordingRecordingViewAccessibility *)self _axUpdateLabels];
}

@end