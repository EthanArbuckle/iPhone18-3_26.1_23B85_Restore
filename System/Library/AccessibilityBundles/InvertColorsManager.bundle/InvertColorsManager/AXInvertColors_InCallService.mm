@interface AXInvertColors_InCallService
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_InCallService

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"setBackgroundImage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"backgroundImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"updateRoundViewColorAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"roundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"_BNBannerSceneComponentProviderSecureWindow"];
  [v3 validateClass:@"ConversationKit.ConversationHUDViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PHBottomBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHCallParticipantsViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHAudioCallControlsViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHAudioControlsButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHAudioCallViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHBottomBarButton__InCallService__InvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHInCallRootViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"ICSSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"ParticipantVideoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"BNBannerSceneComponentProviderSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"ConversationHUDViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end