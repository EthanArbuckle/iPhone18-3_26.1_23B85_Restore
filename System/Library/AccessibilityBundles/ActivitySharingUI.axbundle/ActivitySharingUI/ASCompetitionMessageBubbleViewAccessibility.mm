@interface ASCompetitionMessageBubbleViewAccessibility
- (CGRect)accessibilityFrame;
- (unint64_t)accessibilityTraits;
@end

@implementation ASCompetitionMessageBubbleViewAccessibility

- (CGRect)accessibilityFrame
{
  v23 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 subviews];
    UIAXFrameForElements();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ASCompetitionMessageBubbleViewAccessibility;
    [(ASCompetitionMessageBubbleViewAccessibility *)&v22 accessibilityFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ASCompetitionMessageBubbleViewAccessibility;
  return UIAccessibilityTraitButton | [(ASCompetitionMessageBubbleViewAccessibility *)&v3 accessibilityTraits];
}

@end