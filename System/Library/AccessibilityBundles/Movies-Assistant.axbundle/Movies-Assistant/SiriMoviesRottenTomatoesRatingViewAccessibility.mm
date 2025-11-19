@interface SiriMoviesRottenTomatoesRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SiriMoviesRottenTomatoesRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriMoviesRottenTomatoesRatingView" hasInstanceMethod:@"_isFresh" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SiriMoviesRottenTomatoesRatingView" hasInstanceVariable:@"_percentageLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SiriMoviesRottenTomatoesRatingViewAccessibility *)self safeValueForKey:@"_percentageLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [MEMORY[0x29EDBA0E0] scannerWithString:v4];
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
    v9 = v4;
  }

  return v9;
}

@end