@interface InCallServiceApplicationAccessibility
- (id)_axGetFirstCall;
- (id)accessibilityLabel;
@end

@implementation InCallServiceApplicationAccessibility

- (id)accessibilityLabel
{
  _axGetFirstCall = [(InCallServiceApplicationAccessibility *)self _axGetFirstCall];
  service = [_axGetFirstCall service];

  if ((service - 1) > 2)
  {
    v4 = &stru_2A21D0958;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2C8A78[service - 1]);
  }

  return v4;
}

- (id)_axGetFirstCall
{
  mEMORY[0x29EDC6F78] = [MEMORY[0x29EDC6F78] sharedInstance];
  currentAudioAndVideoCalls = [mEMORY[0x29EDC6F78] currentAudioAndVideoCalls];
  firstObject = [currentAudioAndVideoCalls firstObject];

  return firstObject;
}

@end