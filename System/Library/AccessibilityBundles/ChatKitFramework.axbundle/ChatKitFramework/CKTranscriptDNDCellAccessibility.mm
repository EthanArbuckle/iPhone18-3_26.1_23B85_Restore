@interface CKTranscriptDNDCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (void)setMuteSwitch:(id)a3;
@end

@implementation CKTranscriptDNDCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKTranscriptDNDCell" hasInstanceMethod:@"setMuteSwitch:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKTranscriptDNDCell" hasInstanceVariable:@"_muteSwitch" withType:"UISwitch"];
}

- (void)setMuteSwitch:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptDNDCellAccessibility;
  v3 = a3;
  [(CKTranscriptDNDCellAccessibility *)&v4 setMuteSwitch:v3];
  [v3 setIsAccessibilityElement:{0, v4.receiver, v4.super_class}];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKTranscriptDNDCellAccessibility *)self safeValueForKey:@"muteSwitch"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityValue
{
  v2 = [(CKTranscriptDNDCellAccessibility *)self safeValueForKey:@"muteSwitch"];
  if ([v2 isOn])
  {
    v3 = @"switch.on";
  }

  else
  {
    v3 = @"switch.off";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

@end