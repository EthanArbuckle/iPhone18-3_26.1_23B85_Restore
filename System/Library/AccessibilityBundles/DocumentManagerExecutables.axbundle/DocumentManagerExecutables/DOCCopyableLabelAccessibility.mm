@interface DOCCopyableLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axBehavesAsLink;
- (BOOL)_axHasCopyGesture;
- (BOOL)accessibilityActivate;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCCopyableLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DocumentManagerExecutables.DOCCopyableLabel" hasInstanceMethod:@"copyDetail" withFullSignature:{"v", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCCopyableLabel" hasSwiftField:@"supportsCopy" withSwiftType:"Bool"];
  [v3 validateClass:@"DocumentManagerExecutables.DOCCopyableLabel" hasSwiftField:@"behaveAsLink" withSwiftType:"Bool"];
  [v3 validateClass:@"DocumentManagerExecutables.DOCMetadataView" hasInstanceMethod:@"didTapWithLabel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCCopyableLabel" hasSwiftField:@"delegate" withSwiftType:"Optional<DOCCopyableLabelDelegate>"];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = DOCCopyableLabelAccessibility;
  v3 = [(DOCCopyableLabelAccessibility *)&v6 accessibilityTraits];
  if ([(DOCCopyableLabelAccessibility *)self _axHasCopyGesture])
  {
    v4 = ~*MEMORY[0x29EDC7F70];
  }

  else
  {
    v4 = -1;
  }

  return v4 & v3;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v9.receiver = self;
  v9.super_class = DOCCopyableLabelAccessibility;
  v4 = [(DOCCopyableLabelAccessibility *)&v9 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  if ([(DOCCopyableLabelAccessibility *)self _axHasCopyGesture])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"copy");
    v7 = [v5 initWithName:v6 target:self selector:sel__axCopyDetail];
    [v3 addObject:v7];
  }

  return v3;
}

- (BOOL)_axHasCopyGesture
{
  v2 = [(DOCCopyableLabelAccessibility *)self safeSwiftValueForKey:@"supportsCopy"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_axBehavesAsLink
{
  v2 = [(DOCCopyableLabelAccessibility *)self safeSwiftValueForKey:@"behaveAsLink"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)accessibilityActivate
{
  if ([(DOCCopyableLabelAccessibility *)self _axBehavesAsLink])
  {
    v3 = [(DOCCopyableLabelAccessibility *)self safeSwiftValueForKey:@"delegate"];
    v4 = objc_opt_respondsToSelector();
    if (v4)
    {
      [v3 didTapWithLabel:self];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end