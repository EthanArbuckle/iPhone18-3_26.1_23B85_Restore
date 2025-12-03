@interface PKPassGroupStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PKPassGroupStackViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setModalGroupIndex:(unint64_t)index;
@end

@implementation PKPassGroupStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_headerContainerView" withType:"PKPassthroughView"];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_subheaderContainerView" withType:"PKPassthroughView"];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_passContainerView" withType:"PKPassthroughView"];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (PKPassGroupStackViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKPassGroupStackViewAccessibility;
  v3 = [(PKPassGroupStackViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKPassGroupStackViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKPassGroupStackViewAccessibility;
  [(PKPassGroupStackViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_headerContainerView"];
  [v3 setAccessibilityViewIsModal:0];

  v4 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_subheaderContainerView"];
  [v4 setAccessibilityViewIsModal:0];

  v5 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_passContainerView"];
  [v5 setAccessibilityViewIsModal:0];

  v6 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_headerContainerView"];
  [v6 setAccessibilityIdentifier:@"HeaderContainerView"];

  v7 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_subheaderContainerView"];
  [v7 setAccessibilityIdentifier:@"SubheaderContainerView"];

  v8 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_passContainerView"];
  [v8 setAccessibilityIdentifier:@"PassContainerView"];
}

- (void)setModalGroupIndex:(unint64_t)index
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_modallyPresentedGroupView"];
  [v5 setAccessibilityViewIsModal:0];

  v17.receiver = self;
  v17.super_class = PKPassGroupStackViewAccessibility;
  [(PKPassGroupStackViewAccessibility *)&v17 setModalGroupIndex:index];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PKPassGroupStackViewAccessibility *)self safeValueForKey:@"_groupViewsByGroupID", 0];
  allObjects = [v6 allObjects];

  v8 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v11++) setAccessibilityViewIsModal:0];
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end