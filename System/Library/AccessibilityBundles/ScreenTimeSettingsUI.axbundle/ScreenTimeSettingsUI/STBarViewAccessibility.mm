@interface STBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)_accessibilityParentForFindingScrollParent;
- (id)accessibilityLabel;
@end

@implementation STBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STBarView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"STUsageGraphViewController"];
  [validationsCopy validateClass:@"STBarView" hasInstanceMethod:@"dataPoint" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(STBarViewAccessibility *)self safeValueForKey:@"dataPoint"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  v19.receiver = self;
  v19.super_class = STBarViewAccessibility;
  [(STBarViewAccessibility *)&v19 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(STBarViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_1 startWithSelf:0];
  v12 = [v11 safeUIViewForKey:@"view"];

  if (v12)
  {
    [v12 accessibilityFrame];
    memset(&slice, 0, sizeof(slice));
    memset(&v17, 0, sizeof(v17));
    CGRectDivide(v20, &slice, &v17, v10, CGRectMaxYEdge);
    v6 = v6 - v17.size.height;
    v10 = v10 + v17.size.height;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

uint64_t __44__STBarViewAccessibility_accessibilityFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2EBB10](@"STUsageGraphViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityParentForFindingScrollParent
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];

  return superview;
}

@end