@interface SiriMoviesRottenTomatoesRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SiriMoviesRottenTomatoesRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriMoviesRottenTomatoesRatingView" hasInstanceMethod:@"_isFresh" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SiriMoviesRottenTomatoesRatingView" hasInstanceVariable:@"_percentageLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SiriMoviesRottenTomatoesRatingViewAccessibility *)self safeValueForKey:@"_percentageLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [MEMORY[0x29EDBA0E0] scannerWithString:accessibilityLabel];
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v5 scanInteger:&v13])
  {
    v6 = [(SiriMoviesRottenTomatoesRatingViewAccessibility *)self safeBoolForKey:@"_isFresh"];
    v7 = MEMORY[0x29EDBA0F8];
    if (v6)
    {
      v8 = @"rotten.tomatoes.fresh";
    }

    else
    {
      v8 = @"rotten.tomatoes.rotten";
    }

    v10 = accessibilityLocalizedString(v8);
    v11 = AXFormatFloatWithPercentage();
    v9 = [v7 stringWithFormat:v10, v11];
  }

  else
  {
    v9 = accessibilityLabel;
  }

  return v9;
}

@end