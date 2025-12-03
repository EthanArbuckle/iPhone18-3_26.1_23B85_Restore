@interface PMiOSScrubberCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PMiOSScrubberCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PMiOSScrubberCollectionView" hasInstanceMethod:@"collectionViewDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PMiOSScrubberViewController"];
  [validationsCopy validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"provider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PMScrubberProvider"];
  [validationsCopy validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentProgress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PMScrubberProvider" hasInstanceMethod:@"isPlayingCurrent" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  v3 = [(PMiOSScrubberCollectionViewAccessibility *)self safeValueForKey:@"collectionViewDelegate"];
  MEMORY[0x29C2DE4B0](@"PMiOSScrubberViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"provider"];
    MEMORY[0x29C2DE4B0](@"PMScrubberProvider");
    if (objc_opt_isKindOfClass())
    {
      [v4 safeTimeIntervalForKey:@"currentDuration"];
      v5 = AXDurationStringForDuration();
      [v4 safeCGFloatForKey:@"currentProgress"];
      v6 = AXDurationStringForDuration();
      if ([v4 safeBoolForKey:@"isPlayingCurrent"])
      {
        v7 = @"scrubber.playing";
      }

      else
      {
        v7 = @"scrubber.paused";
      }

      v8 = accessibilityMemoriesLocalizedString(v7);
      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityMemoriesLocalizedString(@"scrubber.value");
      v13 = [v9 stringWithFormat:v10, v6, v5];
      accessibilityValue = __UIAXStringForVariables();

      goto LABEL_9;
    }
  }

  v14.receiver = self;
  v14.super_class = PMiOSScrubberCollectionViewAccessibility;
  accessibilityValue = [(PMiOSScrubberCollectionViewAccessibility *)&v14 accessibilityValue];
LABEL_9:

  return accessibilityValue;
}

@end