@interface AKSegmentedCtrlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4;
@end

@implementation AKSegmentedCtrlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKSegmentedCtrl" hasInstanceMethod:@"setTag: forSegment:" withFullSignature:{"v", "q", "Q", 0}];
  [v3 validateClass:@"AKSegmentedCtrl" hasInstanceMethod:@"segmentAtIndex:" withFullSignature:{"@", "Q", 0}];
}

- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4
{
  v14.receiver = self;
  v14.super_class = AKSegmentedCtrlAccessibility;
  [AKSegmentedCtrlAccessibility setTag:sel_setTag_forSegment_ forSegment:?];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  AXPerformSafeBlock();
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  if (a3 < 4)
  {
    v6 = accessibilityLocalizedString(off_29F29D4F0[a3]);
    if (v6)
    {
      v7 = v6;
      [v5 setAccessibilityLabel:v6];
    }
  }
}

uint64_t __50__AKSegmentedCtrlAccessibility_setTag_forSegment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) segmentAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end