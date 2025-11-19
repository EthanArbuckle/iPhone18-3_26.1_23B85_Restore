@interface FIUIChartSeriesAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityChartPointForDataSetAtIndex:(int64_t)a3;
@end

@implementation FIUIChartSeriesAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FIUIChartSeries" hasInstanceMethod:@"dataSet" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIChartDataSet" hasInstanceVariable:@"_points" withType:"NSArray"];
}

- (id)_accessibilityChartPointForDataSetAtIndex:(int64_t)a3
{
  v3 = [(FIUIChartSeriesAccessibility *)self safeValueForKey:@"dataSet"];
  [v3 safeArrayForKey:@"_points"];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v6 = v12 = 0;
  AXPerformSafeBlock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __74__FIUIChartSeriesAccessibility__accessibilityChartPointForDataSetAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end