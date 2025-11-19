@interface CKSpeakerButtonAccessibility
- (id)accessibilityValue;
@end

@implementation CKSpeakerButtonAccessibility

- (id)accessibilityValue
{
  if ([(CKSpeakerButtonAccessibility *)self safeBoolForKey:@"isSpeakerEnabled"])
  {
    v2 = @"switch.on";
  }

  else
  {
    v2 = @"switch.off";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

@end