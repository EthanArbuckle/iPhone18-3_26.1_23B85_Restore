@interface VMPlayerControlButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation VMPlayerControlButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(VMPlayerControlButtonAccessibility *)self safeUnsignedIntegerForKey:@"_playerState"];
  if (!v2)
  {
    v3 = @"play.voicemail.button";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"pause.voicemail.button";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end