@interface NSComparisonPredicate
@end

@implementation NSComparisonPredicate

void __95__NSComparisonPredicate_HKFilterExtension__hk_filterRepresentationForDataTypes_isSubpredicate___block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"sumQuantity";
  v3[1] = @"averageQuantity";
  v3[2] = @"minimumQuantity";
  v3[3] = @"maximumQuantity";
  v3[4] = @"activitySumQuantity";
  v3[5] = @"activityAverageQuantity";
  v3[6] = @"activityMinimumQuantity";
  v3[7] = @"activityMaximumQuantity";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = hk_filterRepresentationForDataTypes_isSubpredicate__statsPrefixes;
  hk_filterRepresentationForDataTypes_isSubpredicate__statsPrefixes = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end