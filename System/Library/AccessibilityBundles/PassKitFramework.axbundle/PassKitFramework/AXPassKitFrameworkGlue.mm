@interface AXPassKitFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPassKitFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_432 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_441];
}

uint64_t __55__AXPassKitFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_groupViewsByGroupID" withType:"NSMutableDictionary"];
  [v2 validateClass:@"PKPassFieldView" hasInstanceMethod:@"labelLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPassFieldView" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPassGroupView" hasInstanceMethod:@"frontmostPassView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPassGroupView" hasInstanceMethod:@"presentationState" withFullSignature:{"q", 0}];
  [v2 validateClass:@"PKPassGroupView" hasInstanceMethod:@"group" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKGroup" hasInstanceMethod:@"passCount" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"PKGroup" hasInstanceMethod:@"groupID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKGroup" hasInstanceMethod:@"passAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v2 validateClass:@"PKPassView" hasInstanceMethod:@"pass" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPass" hasInstanceMethod:@"organizationName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPass" hasInstanceMethod:@"localizedDescription" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPass" hasInstanceMethod:@"logoRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"PKPassFrontFaceView" hasInstanceMethod:@"createBodyContentViews" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PKPassFaceView" hasInstanceMethod:@"setPass: colorProfile:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"PKPassColorProfile" hasInstanceMethod:@"_imageForGlyph: color:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"setModalGroupIndex:" withFullSignature:{"v", "Q", 0}];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"setPresentationState: animated:" withFullSignature:{"v", "q", "B", 0}];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"datasource" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"_indexOfGroupView:" withFullSignature:{"Q", "@", 0}];
  [v2 validateClass:@"PKPassGroupsViewController" hasInstanceMethod:@"numberOfGroups" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"PKPassFaceView" hasInstanceMethod:@"createBodyInvariantViews" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_animatorsByGroupID" withType:"NSMutableDictionary"];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_modalGroupIndex" withType:"NSUInteger"];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_modallyPresentedGroupView" withType:"PKPassGroupView"];
  [v2 validateClass:@"PKPassFaceView" hasInstanceVariable:@"_backgroundView" withType:"UIImageView"];
  [v2 validateClass:@"PKPassFaceView" hasInstanceVariable:@"_pass" withType:"PKPass"];
  [v2 validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_passPileViews" withType:"NSMutableArray"];
  [v2 validateClass:@"PKBarcodeStickerView" hasInstanceVariable:@"_altTextLabel" withType:"UILabel"];
  [v2 validateClass:@"PKPassGroupViewVerticalPanAnimator" hasInstanceVariable:@"_gestureRecognizer" withType:"UIPanGestureRecognizer"];
  [v2 validateClass:@"PKPassFaceView" hasInstanceMethod:@"createHeaderContentViews" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PKLinkedAppUserRatingView" hasInstanceMethod:@"userRating" withFullSignature:{"f", 0}];

  return 1;
}

uint64_t __55__AXPassKitFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PassKit"];
  [v2 setOverrideProcessName:@"PassKit Framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end