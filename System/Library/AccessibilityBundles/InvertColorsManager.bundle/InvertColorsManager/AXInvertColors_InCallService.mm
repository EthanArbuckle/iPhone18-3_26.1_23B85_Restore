@interface AXInvertColors_InCallService
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_InCallService

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"setBackgroundImage:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"backgroundImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"updateRoundViewColorAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"roundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAudioControlsButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"_BNBannerSceneComponentProviderSecureWindow"];
  [validationsCopy validateClass:@"ConversationKit.ConversationHUDViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PHBottomBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHCallParticipantsViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHAudioCallControlsViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHAudioControlsButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHAudioCallViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHBottomBarButton__InCallService__InvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHInCallRootViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"ICSSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"ParticipantVideoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"BNBannerSceneComponentProviderSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"ConversationHUDViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end