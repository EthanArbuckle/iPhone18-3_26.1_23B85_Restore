@interface CKTranscriptLabelCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
@end

@implementation CKTranscriptLabelCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptLabelCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptLabelCell" isKindOfClass:@"CKTranscriptCell"];
  [validationsCopy validateClass:@"CKTranscriptCell" isKindOfClass:@"CKEditableCollectionViewCell"];
  [validationsCopy validateClass:@"CKEditableCollectionViewCell" hasInstanceMethod:@"orientation" withFullSignature:{"c", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12[1] = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = CKTranscriptLabelCellAccessibility;
  [(CKTranscriptLabelCellAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKTranscriptLabelCellAccessibility *)self safeValueForKey:@"label"];
  v4 = objc_alloc(MEMORY[0x29EDC7900]);
  v5 = accessibilityLocalizedString(@"drop.into.compose");
  v6 = [v4 initWithName:v5 view:self];
  v12[0] = v6;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  [v3 setAccessibilityDropPointDescriptors:v7];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80]];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __80__CKTranscriptLabelCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2B0F60;
  objc_copyWeak(&v9, &location);
  [v3 _setAccessibilityHeadingLevelBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __80__CKTranscriptLabelCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeIntegerForKey:@"orientation"];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_29F2B0F80[v2];
  }

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKTranscriptLabelCellAccessibility;
  [(CKTranscriptLabelCellAccessibility *)&v3 didMoveToWindow];
  [(CKTranscriptLabelCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end