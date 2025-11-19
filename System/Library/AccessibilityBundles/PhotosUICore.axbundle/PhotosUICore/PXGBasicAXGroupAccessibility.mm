@interface PXGBasicAXGroupAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_axPXGScrollView;
- (void)_updateLayoutIfNeeded;
- (void)updateSubgroupsWithChangeDetails:(id)a3;
@end

@implementation PXGBasicAXGroupAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axScrollParent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axParent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axGroupSource" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXGAXGroupSource" hasMethod:@"axConvertRect:fromDescendantGroup:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axNextResponder" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXGAXResponder" hasMethod:@"axContainingScrollViewForAXGroup:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"_PXUIScrollView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"_updateLayoutIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"needsUpdate" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"updateSubgroupsWithChangeDetails:" withFullSignature:{"v", "@", 0}];
}

- (id)_axPXGScrollView
{
  v3 = [(PXGBasicAXGroupAccessibility *)self safeValueForKey:@"axScrollParent"];
  v4 = [v3 safeValueForKey:@"axNextResponder"];
  v5 = [v4 axContainingScrollViewForAXGroup:self];

  return v5;
}

- (CGRect)accessibilityFrame
{
  [(PXGBasicAXGroupAccessibility *)self safeCGRectForKey:@"axFrame"];
  v3 = [(PXGBasicAXGroupAccessibility *)self safeValueForKey:@"axScrollParent"];
  v4 = [(PXGBasicAXGroupAccessibility *)self safeValueForKey:@"axParent"];
  v5 = [(PXGBasicAXGroupAccessibility *)self _axPXGScrollView];
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = "";
  v6 = *(MEMORY[0x29EDB90D8] + 16);
  v22 = *MEMORY[0x29EDB90D8];
  v23 = v6;
  v15 = v4;
  v16 = v3;
  v17 = v5;
  AXPerformSafeBlock();
  v7 = v19[4];
  v8 = v19[5];
  v9 = v19[6];
  v10 = v19[7];

  _Block_object_dispose(&v18, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void __50__PXGBasicAXGroupAccessibility_accessibilityFrame__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) safeValueForKey:@"axGroupSource"];
    [v2 axConvertRect:*(a1 + 32) fromDescendantGroup:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *(a1 + 64);
    v6 = *(a1 + 72);
    v8 = *(a1 + 80);
    v10 = *(a1 + 88);
  }

  v16 = [*(a1 + 48) safeValueForKey:@"window"];
  [v16 convertRect:*(a1 + 48) fromView:{v4, v6, v8, v10}];
  v11 = *(*(a1 + 56) + 8);
  v11[4] = v12;
  v11[5] = v13;
  v11[6] = v14;
  v11[7] = v15;
}

- (void)_updateLayoutIfNeeded
{
  v9[2] = *MEMORY[0x29EDCA608];
  v3 = [(PXGBasicAXGroupAccessibility *)self safeBoolForKey:@"needsUpdate"];
  v7.receiver = self;
  v7.super_class = PXGBasicAXGroupAccessibility;
  [(PXGBasicAXGroupAccessibility *)&v7 _updateLayoutIfNeeded];
  if (v3)
  {
    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    v8[0] = @"AXPhotosGridGroupKey";
    v8[1] = @"AXPhotosGridUpdateKey";
    v9[0] = self;
    v9[1] = &unk_2A2288EB8;
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v4 postNotificationName:@"AXPhotosGridGroupDataChanged" object:self userInfo:v5];
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)updateSubgroupsWithChangeDetails:(id)a3
{
  v11[2] = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = PXGBasicAXGroupAccessibility;
  v4 = a3;
  [(PXGBasicAXGroupAccessibility *)&v9 updateSubgroupsWithChangeDetails:v4];
  v5 = [v4 hasAnyInsertionsRemovalsOrMoves];

  if (v5)
  {
    v6 = [MEMORY[0x29EDBA068] defaultCenter];
    v10[0] = @"AXPhotosGridGroupKey";
    v10[1] = @"AXPhotosGridUpdateKey";
    v11[0] = self;
    v11[1] = &unk_2A2288EB8;
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v6 postNotificationName:@"AXPhotosGridGroupDataChanged" object:self userInfo:v7];
  }

  v8 = *MEMORY[0x29EDCA608];
}

@end