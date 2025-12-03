@interface ASCompetitionGraphViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateGraphElements;
- (void)drawRect:(CGRect)rect;
@end

@implementation ASCompetitionGraphViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASCompetitionGraphView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"ASCompetitionGraphView" hasInstanceVariable:@"_competition" withType:"ASCompetition"];
  [validationsCopy validateClass:@"ASCompetitionGraphView" hasInstanceMethod:@"drawRect:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"ASCompetition" hasInstanceMethod:@"startDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCompetition" hasInstanceMethod:@"durationDateComponents" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCompetition" hasInstanceMethod:@"scores" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCompetition" hasInstanceMethod:@"opponentScores" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ASCompetitionGraphViewAccessibility;
  [(ASCompetitionGraphViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ASCompetitionGraphViewAccessibility *)self _axAnnotateGraphElements];
}

- (void)drawRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = ASCompetitionGraphViewAccessibility;
  [(ASCompetitionGraphViewAccessibility *)&v4 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(ASCompetitionGraphViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axAnnotateGraphElements
{
  objc_opt_class();
  v36 = __UIAccessibilityCastAsClass();
  v3 = [(ASCompetitionGraphViewAccessibility *)self safeValueForKey:@"_competition"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"startDate"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v3 safeValueForKey:@"durationDateComponents"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 day];
  [v36 bounds];
  Width = CGRectGetWidth(v37);
  [v36 bounds];
  Height = CGRectGetHeight(v38);
  if (v36 && v3 && v5 && v8 && Width > 0.0 && (v11 = Height, Height > 0.0))
  {
    v35 = accessibilityLocalizedString(@"competition.opponent.generic.name");
    objc_opt_class();
    v12 = [v3 _accessibilityValueForKey:@"kAXFriendDisplayNameForCompetition"];
    v13 = __UIAccessibilityCastAsClass();

    if ([v13 length])
    {
      v14 = v13;

      v35 = v14;
    }

    v30 = v13;
    selfCopy = self;
    v33 = +[NSMutableArray array];
    v15 = [v3 safeArrayForKey:@"scores"];
    v31 = v3;
    v16 = [v3 safeArrayForKey:@"opponentScores"];
    if (v8 < 1)
    {
      v29 = v5;
    }

    else
    {
      v17 = 0;
      v18 = Width / v8;
      v32 = v8;
      do
      {
        if (v17 < [v15 count])
        {
          v19 = [v15 objectAtIndexedSubscript:v17];
          [v19 unsignedIntegerValue];
        }

        if (v17 < [v16 count])
        {
          v20 = [v16 objectAtIndexedSubscript:v17];
          [v20 unsignedIntegerValue];
        }

        v21 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:selfCopy];
        v22 = AXDateStringForFormat();
        [v21 setAccessibilityLabel:v22];

        v23 = accessibilityLocalizedString(@"competition.opponentscore.vs.myscore");
        v24 = AXFormatInteger();
        v25 = AXFormatInteger();
        v26 = [NSString localizedStringWithFormat:v23, v35, v24, v25];

        [v21 setAccessibilityValue:v26];
        [v36 frame];
        [v21 setBounds:{v27 + v18 * v17, 0.0, v18, v11}];
        [v33 addObject:v21];
        v28 = +[NSCalendar currentCalendar];
        v29 = [v28 dateByAddingUnit:16 value:1 toDate:v5 options:0];

        ++v17;
        v5 = v29;
      }

      while (v32 != v17);
    }

    [(ASCompetitionGraphViewAccessibility *)selfCopy setAccessibilityElements:v33];

    v5 = v29;
    v3 = v31;
  }

  else
  {
    [(ASCompetitionGraphViewAccessibility *)self setAccessibilityElements:0, Height];
  }
}

@end