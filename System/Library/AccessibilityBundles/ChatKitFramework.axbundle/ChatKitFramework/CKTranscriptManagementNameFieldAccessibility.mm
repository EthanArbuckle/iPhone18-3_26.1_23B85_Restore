@interface CKTranscriptManagementNameFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScrollToVisible;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation CKTranscriptManagementNameFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptManagementNameField" hasInstanceMethod:@"fieldLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptManagementNameField" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityScrollToVisible
{
  v2 = [(CKTranscriptManagementNameFieldAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Cktranscriptma_1.isa)];
  v3 = [v2 safeValueForKey:@"attachmentsCollectionView"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 _accessibilityDescendantOfType:objc_opt_class()];
  [v5 contentInset];
  [v5 accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:{0.0, -v6}];

  return 1;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKTranscriptManagementNameFieldAccessibility;
  [(CKTranscriptManagementNameFieldAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKTranscriptManagementNameFieldAccessibility *)self safeValueForKey:@"fieldLabel"];
  [v3 setIsAccessibilityElement:0];
  v4 = [(CKTranscriptManagementNameFieldAccessibility *)self safeValueForKey:@"textField"];
  [v4 accessibilitySetIdentification:@"GroupNameField"];

  v5 = [(CKTranscriptManagementNameFieldAccessibility *)self safeValueForKey:@"textField"];
  accessibilityLabel = [v3 accessibilityLabel];
  [v5 setAccessibilityLabel:accessibilityLabel];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKTranscriptManagementNameFieldAccessibility;
  [(CKTranscriptManagementNameFieldAccessibility *)&v3 layoutSubviews];
  [(CKTranscriptManagementNameFieldAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end