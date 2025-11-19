@interface CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility)initWithReuseIdentifier:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKDetailsDownloadAttachmentsHeaderFooterView" hasInstanceVariable:@"_buttonTextView" withType:"UITextView"];
  [v3 validateClass:@"CKDetailsDownloadAttachmentsHeaderFooterView" hasInstanceMethod:@"initWithReuseIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CKDetailsDownloadAttachmentsHeaderFooterView" hasInstanceMethod:@"handleUserTap:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility;
  [(CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility *)self safeUIViewForKey:@"_buttonTextView"];
  [v3 setIsAccessibilityElement:1];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v4];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __103__CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B0868;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityActivateBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

uint64_t __103__CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __103__CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUserTap:0];
}

- (CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility)initWithReuseIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility;
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility *)&v5 initWithReuseIdentifier:a3];
  [(CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end