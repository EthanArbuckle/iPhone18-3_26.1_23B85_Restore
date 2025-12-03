@interface CHWorkoutDetailSummaryTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation CHWorkoutDetailSummaryTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailSummaryTableViewCell" hasInstanceVariable:@"_currentWorkout" withType:"HKWorkout"];
  [validationsCopy validateClass:@"CHWorkoutDetailSummaryTableViewCell" hasInstanceVariable:@"_fitnessAppContext" withType:"CHFitnessAppContext"];
  [validationsCopy validateClass:@"CHFitnessAppContext" hasInstanceMethod:@"seymourCatalogItemDataProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitnessApp.SeymourCatalogItemDataProvider" hasInstanceMethod:@"isSeymourWorkout:" withFullSignature:{"B", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = CHWorkoutDetailSummaryTableViewCellAccessibility;
  accessibilityTraits = [(CHWorkoutDetailSummaryTableViewCellAccessibility *)&v14 accessibilityTraits];
  objc_opt_class();
  v4 = [(CHWorkoutDetailSummaryTableViewCellAccessibility *)self safeValueForKey:@"_currentWorkout"];
  v5 = __UIAccessibilityCastAsClass();

  [(CHWorkoutDetailSummaryTableViewCellAccessibility *)self safeValueForKeyPath:@"_fitnessAppContext.seymourCatalogItemDataProvider"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = v13 = 0;
  v7 = v5;
  AXPerformSafeBlock();
  LODWORD(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  if (v4)
  {
    v8 = UIAccessibilityTraitButton;
  }

  else
  {
    v8 = 0;
  }

  return v8 | accessibilityTraits;
}

id __71__CHWorkoutDetailSummaryTableViewCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSeymourWorkout:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end