@interface CKTranscriptActionButtonCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKTranscriptActionButtonCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = CKTranscriptActionButtonCellAccessibility;
  [(CKTranscriptActionButtonCellAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CKTranscriptActionButtonCellAccessibility *)self safeUIViewForKey:@"cellView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, v4);
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __87__CKTranscriptActionButtonCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F2B0908;
  objc_copyWeak(&v10, &location);
  [v4 _setAccessibilityValueBlock:&v6];
  v5 = accessibilityLocalizedString(@"grid.view.button");
  [v4 setAccessibilityLabel:{v5, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __87__CKTranscriptActionButtonCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleLabel];
  v3 = [v2 text];

  return v3;
}

@end