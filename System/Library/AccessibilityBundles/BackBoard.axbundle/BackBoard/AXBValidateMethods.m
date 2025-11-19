@interface AXBValidateMethods
@end

@implementation AXBValidateMethods

uint64_t ___AXBValidateMethods_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"BKUserEventTimer" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKUserEventTimer" hasInstanceMethod:@"userEventOccurredOnDisplay:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_accessibilityProcessExternHIDEvent:" withFullSignature:{"v", "^{__IOHIDEvent=}", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_accessibilitySetEventTapCallback:" withFullSignature:{"v", "^?", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_accessibilityEventTapCallback" withFullSignature:{"^?", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_accessibilityHIDEventTapCallback" withFullSignature:{"^?", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_accessibilitySetHIDEventTapCallback:" withFullSignature:{"v", "^?", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_displayConvertToCAScreen:" withFullSignature:{"{CGPoint=dd}", "{CGPoint=dd}", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_displayConvertFromCAScreen:" withFullSignature:{"{CGPoint=dd}", "{CGPoint=dd}", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_objectWithinProximity" withFullSignature:{"B", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_isDisplayBacklightOff" withFullSignature:{"B", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_setCapsLockLightOn:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_eventRoutingClientConnectionManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_authenticationMessageForLocationInCAScreenCoordinates:eventType:excludeContextIDsFromHitTest:" withFullSignature:{"@", "{CGPoint=dd}", "I", "@", 0}];
  [v2 validateClass:@"BKAccessibility" hasClassMethod:@"_authenticationMessageForLocationInCAScreenCoordinates:eventType:excludeContextIDsFromHitTest:secureName:" withFullSignature:{"@", "{CGPoint=dd}", "I", "@", "I", 0}];
  [v2 validateClass:@"BKSystemShellSentinel" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKSystemShellDescriptor" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKSystemShellDescriptor" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  [v2 validateClass:@"BKSystemShellSentinel" hasInstanceMethod:@"systemApplications" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKSystemShellSentinel" hasInstanceMethod:@"primarySystemShell" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKHIDClientConnectionManager" hasInstanceMethod:@"copyClientForDestination:" withFullSignature:{"^{__IOHIDEventSystemConnection=}", "@", 0}];
  [v2 validateClass:@"BKHIDClientConnectionManager" hasInstanceMethod:@"copyClientForTaskPort:" withFullSignature:{"^{__IOHIDEventSystemConnection=}", "I", 0}];
  [v2 validateClass:@"BKHIDClientConnectionManager" hasInstanceMethod:@"pidForBundleID:" withFullSignature:{"i", "@", 0}];
  [v2 validateClass:@"BKSHIDEventDeferringResolution"];
  [v2 validateClass:@"BKSHIDEventDeferringResolution" hasClassMethod:@"build:" withFullSignature:{"@", "@?", 0}];
  [v2 validateClass:@"BKSMutableHIDEventDeferringResolution" hasInstanceMethod:@"setPid:" withFullSignature:{"v", "i", 0}];
  [v2 validateClass:@"BKHIDEventDeliveryManager" hasInstanceMethod:@"destinationsForEvent:sender:" withFullSignature:{"@", "^{__IOHIDEvent=}", "@", 0}];
  [v2 validateClass:@"BKUserEventTimer" hasInstanceVariable:@"_currentMode" withType:"i"];
  [v2 validateClass:@"BKUserEventTimer" hasInstanceVariable:@"_currentTimeout" withType:"d"];
  [v2 validateClass:@"BKUserEventTimer" hasInstanceVariable:@"_queue" withType:"NSObject<OS_dispatch_queue>"];
  [v2 validateClass:@"BKHIDSystemInterface" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKHIDSystemInterface" hasInstanceMethod:@"deliveryManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKSHIDEventDeferringResolution" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  [v2 validateClass:@"BKSHIDEventDeferringResolution" hasInstanceMethod:@"processDescription" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKBootUIPresenter" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BKBootUIPresenter" hasInstanceMethod:@"isShowingBootUI" withFullSignature:{"B", 0}];
  [v2 validateClass:@"BKBootUIPresenter" hasInstanceVariable:@"_overlay" withType:"BKDisplayRenderOverlay"];
  [v2 validateClass:@"BKDisplayRenderOverlayAppleLogo" hasInstanceVariable:@"_puiProgressWindow" withType:"PUIProgressWindow"];

  return 1;
}

uint64_t ___AXBValidateMethods_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDebugBuild:0];
  [v2 setValidationTargetName:@"AX Backboard Bundle"];
  [v2 setOverrideProcessName:@"Backboard Bundle"];

  return MEMORY[0x2A1C5E698]();
}

@end