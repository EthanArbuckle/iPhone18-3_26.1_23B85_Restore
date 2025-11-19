@interface AXPosterKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPosterKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_388 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_397];

    _Failover = [objc_allocWithZone(AXPosterKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXPosterKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CHSWidget" hasProperty:@"family" withType:"q"];
  [v2 validateClass:@"CHSWidgetDescriptor" hasInstanceVariable:@"_widgetDescription" withType:"NSString"];
  [v2 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widget" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CHSWidget" hasInstanceMethod:@"intent" withFullSignature:{"@", 0}];
  [v2 validateClass:@"INIntent" hasInstanceMethod:@"_codableDescription" withFullSignature:{"@", 0}];
  [v2 validateClass:@"INIntentCodableDescription" hasInstanceMethod:@"attributes" withFullSignature:{"@", 0}];
  [v2 validateClass:@"INCodableAttribute" hasInstanceMethod:@"isConfigurable" withFullSignature:{"B", 0}];
  [v2 validateClass:@"INAppIntent"];
  [v2 validateClass:@"CHUISWidgetHostViewController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CHSWidgetDescriptor" isKindOfClass:@"CHSBaseDescriptor"];
  [v2 validateClass:@"CHSBaseDescriptor" hasInstanceMethod:@"extensionIdentity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CHSExtensionIdentity" hasProperty:@"containerBundleIdentifier" withType:"@"];
  [v2 validateClass:@"CHSWidgetDescriptor" hasProperty:@"displayName" withType:"@"];
  [v2 validateClass:@"PRWidgetGridViewController" hasInstanceMethod:@"widgetHostViewControllerForComplicationDescriptor:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"PRWidgetGridViewController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PRWidgetGridModel" hasInstanceMethod:@"complicationDescriptors" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"uniqueIdentifier" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __48__AXPosterKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PosterKit AX"];
  [v2 setOverrideProcessName:@"PosterKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXPosterKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AXRemoteElementAccessibility__PosterKit__AXRuntime" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingAddButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingCancelButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingTimeFontPickerCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingReticleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingDoneButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRInlineComplicationGalleryItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingColorItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingColorSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRComplicationGalleryApplicationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditorRootViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingFontAndColorPickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRComplicationContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRComplicationGalleryApplicationTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRComplicationGalleryDetailViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRComplicationGalleryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRInlineComplicationGalleryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRInlineComplicationContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRWidgetIconViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingPickerImageCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRPosterWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingPlusButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingContentStyleItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRAmbientEditingTitledViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingAmbientContentStylePickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingIncomingCallFontPickerCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__PosterKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRSubviewHitTestingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingVariationSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRQuickActionEditingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PREditingCloseBoxButtonAccessibility" canInteractWithTargetClass:1];
}

@end