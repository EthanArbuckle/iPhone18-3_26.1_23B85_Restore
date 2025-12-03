@interface HLPHelpTableOfContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateWithHelpBookController:(id)controller;
@end

@implementation HLPHelpTableOfContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HLPHelpTableOfContentViewController" hasInstanceVariable:@"_copyrightFooterLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HLPHelpTableOfContentViewController" hasInstanceVariable:@"_footerViewOverlayButton" withType:"UIButton"];
  [validationsCopy validateClass:@"HLPHelpTableOfContentViewController" hasInstanceMethod:@"helpBookController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HLPHelpBookController" hasInstanceMethod:@"copyrightTopicIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HLPHelpTableOfContentViewController" hasInstanceMethod:@"updateWithHelpBookController:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HLPHelpBookController" hasInstanceMethod:@"helpTopicItemForID:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = HLPHelpTableOfContentViewControllerAccessibility;
  [(HLPHelpTableOfContentViewControllerAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v3 = [(HLPHelpTableOfContentViewControllerAccessibility *)self safeValueForKey:@"_copyrightFooterLabel"];
  v4 = [(HLPHelpTableOfContentViewControllerAccessibility *)self safeValueForKey:@"_footerViewOverlayButton"];
  [v3 setIsAccessibilityElement:0];
  accessibilityLabel = [v3 accessibilityLabel];
  [v4 setAccessibilityLabel:accessibilityLabel];

  v6 = [(HLPHelpTableOfContentViewControllerAccessibility *)self safeValueForKey:@"helpBookController"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9 = MEMORY[0x29EDCA5F8];
  v7 = v6;
  AXPerformSafeBlock();
  v8 = v11[5];

  _Block_object_dispose(&v10, 8);
  if (!v8)
  {
    [v4 _accessibilityRemoveTrait:{*MEMORY[0x29EDC7F70], v9, 3221225472, __94__HLPHelpTableOfContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke, &unk_29F2C6058}];
  }
}

void __94__HLPHelpTableOfContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 safeStringForKey:@"copyrightTopicIdentifier"];
  v3 = [v2 helpTopicItemForID:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)updateWithHelpBookController:(id)controller
{
  v4.receiver = self;
  v4.super_class = HLPHelpTableOfContentViewControllerAccessibility;
  [(HLPHelpTableOfContentViewControllerAccessibility *)&v4 updateWithHelpBookController:controller];
  [(HLPHelpTableOfContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end