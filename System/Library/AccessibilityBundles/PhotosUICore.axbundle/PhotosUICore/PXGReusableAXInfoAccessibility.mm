@interface PXGReusableAXInfoAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)_axPXGScrollView;
- (id)accessibilityContainer;
- (void)applyToInfo:(id)info;
@end

@implementation PXGReusableAXInfoAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXGReusableAXInfo" conformsToProtocol:@"UIFocusItem"];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"frame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axContainingGroup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axNextResponder" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXGAXResponder" hasMethod:@"axContainingScrollViewForAXGroup:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"_PXUIScrollView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"applyToInfo:" withFullSignature:{"v", "@", 0}];
}

- (id)_axPXGScrollView
{
  v3 = [(PXGReusableAXInfoAccessibility *)self safeValueForKey:@"axContainingGroup"];
  v4 = [v3 safeValueForKey:@"axNextResponder"];
  v5 = [v4 axContainingScrollViewForAXGroup:self];

  return v5;
}

- (CGRect)accessibilityFrame
{
  [(PXGReusableAXInfoAccessibility *)self safeCGRectForKey:@"frame"];
  _axPXGScrollView = [(PXGReusableAXInfoAccessibility *)self _axPXGScrollView];
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = "";
  v4 = *(MEMORY[0x29EDB90D8] + 16);
  v18 = *MEMORY[0x29EDB90D8];
  v19 = v4;
  v13 = _axPXGScrollView;
  AXPerformSafeBlock();
  v5 = v15[4];
  v6 = v15[5];
  v7 = v15[6];
  v8 = v15[7];

  _Block_object_dispose(&v14, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void __52__PXGReusableAXInfoAccessibility_accessibilityFrame__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) safeValueForKey:@"window"];
  [v7 convertRect:*(a1 + 32) fromView:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

- (void)applyToInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PXGReusableAXInfoAccessibility;
  [(PXGReusableAXInfoAccessibility *)&v4 applyToInfo:info];
  if ([(PXGReusableAXInfoAccessibility *)self conformsToProtocol:&unk_2A228C608])
  {
    [MEMORY[0x29EDC7A98] updateRingForFocusItem:self];
  }
}

- (id)accessibilityContainer
{
  parentFocusEnvironment = [(PXGReusableAXInfoAccessibility *)self parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];

  return focusItemContainer;
}

@end