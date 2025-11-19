@interface TUIPredictionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)_accessibilityScannerGroupTraits;
- (void)_accessibilitySendCandidateNotificationIfNecessary:(BOOL)a3;
@end

@implementation TUIPredictionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUIPredictionView" hasInstanceMethod:@"_reloadCellsAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TUIPredictionView" hasInstanceMethod:@"configurePredictionCell:forCandidate:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v3.receiver = self;
  v3.super_class = TUIPredictionViewAccessibility;
  return [(TUIPredictionViewAccessibility *)&v3 _accessibilityScannerGroupTraits]| 2;
}

- (void)_accessibilitySendCandidateNotificationIfNecessary:(BOOL)a3
{
  v4 = [(TUIPredictionViewAccessibility *)self autocorrectionList];
  v7 = [v4 autocorrection];

  if ([v7 isContinuousPathConversion])
  {
    v5 = [v7 label];
    if ([v5 length] && (!objc_msgSend(_accessibilitySendCandidateNotificationIfNecessary__PreviousLabel, "isEqualToString:", v5) || CFAbsoluteTimeGetCurrent() - *&_accessibilitySendCandidateNotificationIfNecessary__PreviousSentNotificationTime > 1.0))
    {
      v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v5];
      [v6 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDC7398]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], v6);
      objc_storeStrong(&_accessibilitySendCandidateNotificationIfNecessary__PreviousLabel, v5);
      _accessibilitySendCandidateNotificationIfNecessary__PreviousSentNotificationTime = CFAbsoluteTimeGetCurrent();
    }
  }

  else if (!a3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }
}

@end