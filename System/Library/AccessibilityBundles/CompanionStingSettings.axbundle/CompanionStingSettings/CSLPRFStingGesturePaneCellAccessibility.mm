@interface CSLPRFStingGesturePaneCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CSLPRFStingGesturePaneCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CSLPRFStingGesturePaneCellAccessibility *)self safeValueForKey:@"specifier"];
  v3 = [v2 propertyForKey:@"CSLPRFStingGesturePaneCellHasChordArrow"];

  if (v3)
  {
    v4 = @"sting.gesture.image.two.arrows";
  }

  else
  {
    v4 = @"sting.gesture.image.one.arrow";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

@end