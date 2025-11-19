@interface NSObject
- (id)_fitnessUIAccessibilityDescriptionForPercentages:(double)a3 exercisingPercentage:(double)a4 standingPercentage:(double)a5 arePercentagesCapped:(BOOL)a6;
@end

@implementation NSObject

- (id)_fitnessUIAccessibilityDescriptionForPercentages:(double)a3 exercisingPercentage:(double)a4 standingPercentage:(double)a5 arePercentagesCapped:(BOOL)a6
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  AXPerformSafeBlock();
  v6 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v6;
}

uint64_t __137__NSObject_AXFitnessPriv___fitnessUIAccessibilityDescriptionForPercentages_exercisingPercentage_standingPercentage_arePercentagesCapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityDescriptionForPercentages:*(a1 + 72) exercisingPercentage:*(a1 + 48) standingPercentage:*(a1 + 56) arePercentagesCapped:*(a1 + 64)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end