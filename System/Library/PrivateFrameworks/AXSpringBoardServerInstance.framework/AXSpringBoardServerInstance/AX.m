@interface AX
@end

@implementation AX

uint64_t __95__AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride__processEventForVOSpeakage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilitySetBoolValue:1 forKey:@"TripleClickSpeakWaited"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tripleClickSpeakMenuProcessTouch:v3];
}

@end