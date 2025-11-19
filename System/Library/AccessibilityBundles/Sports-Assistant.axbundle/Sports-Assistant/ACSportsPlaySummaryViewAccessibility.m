@interface ACSportsPlaySummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation ACSportsPlaySummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsPlaySummaryView" hasInstanceMethod:@"goalTime" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACSportsPlaySummaryView" hasInstanceMethod:@"goalScorer" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ACSportsPlaySummaryViewAccessibility *)self safeValueForKey:@"goalTime"];
  v4 = __UIAccessibilityCastAsClass();

  v19 = 0;
  objc_opt_class();
  v5 = [(ACSportsPlaySummaryViewAccessibility *)self safeValueForKey:@"goalScorer"];
  v6 = __UIAccessibilityCastAsClass();

  if (v4 && v6)
  {
    v7 = [v4 rangeOfString:@":"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v4 substringToIndex:v7];

      v4 = v8;
    }

    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"sport.soccer.goal");
    v11 = [v9 stringWithFormat:v10, v4, v6];

    v12 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v11];
    v13 = [v12 rangeOfString:v4];
    v15 = v11;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888] withRange:{v13, v14}];
      v15 = v12;
    }

    v16 = v15;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = ACSportsPlaySummaryViewAccessibility;
    v16 = [(ACSportsPlaySummaryViewAccessibility *)&v18 accessibilityLabel];
  }

  return v16;
}

@end