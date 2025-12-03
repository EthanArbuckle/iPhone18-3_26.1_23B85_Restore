@interface PSSegmentableSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
@end

@implementation PSSegmentableSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSSegmentableSlider" hasInstanceMethod:@"numberOfTicks" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PSSegmentableSlider" hasInstanceMethod:@"offsetBetweenTicksForNumberOfTicks:" withFullSignature:{"f", "Q", 0}];
  [validationsCopy validateClass:@"PSSegmentableSlider" hasInstanceMethod:@"locksToSegment" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PSSegmentableSlider" isKindOfClass:@"UISlider"];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"minimumValue" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"PSSegmentableSlider" hasInstanceVariable:@"_segmented" withType:"B"];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  v5 = [(PSSegmentableSliderAccessibility *)self safeValueForKey:@"numberOfTicks"];
  integerValue = [v5 integerValue];

  v7 = [(PSSegmentableSliderAccessibility *)self safeValueForKey:@"minimumValue"];
  [v7 floatValue];
  v9 = v8;

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  AXPerformSafeBlock();
  v10 = v23[6];
  _Block_object_dispose(&v22, 8);
  v11 = [(PSSegmentableSliderAccessibility *)self safeValueForKey:@"value"];
  [v11 floatValue];
  v13 = v12;

  if ([(PSSegmentableSliderAccessibility *)self safeBoolForKey:@"_segmented"]&& [(PSSegmentableSliderAccessibility *)self safeBoolForKey:@"locksToSegment"])
  {
    v14 = llroundf((v13 - v9) / v10);
    if (amountCopy)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = v14 - 1;
    }

    if (integerValue - 1 < v15)
    {
      v15 = integerValue - 1;
    }

    return (v9 + (v10 * (v15 & ~(v15 >> 63))));
  }

  else
  {
    v17 = [(PSSegmentableSliderAccessibility *)self safeValueForKey:@"maximumValue"];
    [v17 floatValue];
    v19 = v18;

    v20 = (v19 - v9) / 10.0;
    if (!amountCopy)
    {
      v20 = -v20;
    }

    return (v13 + v20);
  }
}

uint64_t __65__PSSegmentableSliderAccessibility__accessibilityIncreaseAmount___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) offsetBetweenTicksForNumberOfTicks:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

@end