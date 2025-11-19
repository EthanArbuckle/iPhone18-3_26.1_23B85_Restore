@interface InCallServiceApplicationAccessibility
- (id)_axGetFirstCall;
- (id)accessibilityLabel;
@end

@implementation InCallServiceApplicationAccessibility

- (id)accessibilityLabel
{
  v2 = [(InCallServiceApplicationAccessibility *)self _axGetFirstCall];
  v3 = [v2 service];

  if ((v3 - 1) > 2)
  {
    v4 = &stru_2A21D0958;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2C8A78[v3 - 1]);
  }

  return v4;
}

- (id)_axGetFirstCall
{
  v2 = [MEMORY[0x29EDC6F78] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];
  v4 = [v3 firstObject];

  return v4;
}

@end