@interface CKDetailsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)locationSendOrRequestCell;
- (id)locationStartShareCell;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation CKDetailsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKDetailsController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CKDetailsController" hasProperty:@"tableView" withType:"@"];
  [v3 validateClass:@"CKDetailsController" hasInstanceMethod:@"screenShareContextButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKDetailsController" hasInstanceMethod:@"groupPhotoHeaderViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNGroupIdentityHeaderViewController" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKDetailsController" hasInstanceMethod:@"locationSendOrRequestCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKDetailsController" hasInstanceMethod:@"locationStartShareCell" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKDetailsControllerAccessibility;
  [(CKDetailsControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKDetailsControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = accessibilityLocalizedString(@"details.table.label");
  [v3 setAccessibilityLabel:v4];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(CKDetailsControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v15 = 0;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"rightBarButtonItem"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3221225472;
    v11 = __62__CKDetailsControllerAccessibility_accessibilityPerformEscape__block_invoke;
    v12 = &unk_29F2B08B8;
    v13 = v5;
    v14 = self;
    AXPerformSafeBlock();

    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKDetailsControllerAccessibility;
    v6 = [(CKDetailsControllerAccessibility *)&v8 accessibilityPerformEscape];
  }

  return v6;
}

void __62__CKDetailsControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) target];
  [v2 performSelectorOnMainThread:objc_msgSend(*(a1 + 32) withObject:"action") waitUntilDone:{*(a1 + 40), 0}];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKDetailsControllerAccessibility;
  [(CKDetailsControllerAccessibility *)&v3 loadView];
  [(CKDetailsControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)locationSendOrRequestCell
{
  v4.receiver = self;
  v4.super_class = CKDetailsControllerAccessibility;
  v2 = [(CKDetailsControllerAccessibility *)&v4 locationSendOrRequestCell];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  return v2;
}

- (id)locationStartShareCell
{
  v4.receiver = self;
  v4.super_class = CKDetailsControllerAccessibility;
  v2 = [(CKDetailsControllerAccessibility *)&v4 locationStartShareCell];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  return v2;
}

@end