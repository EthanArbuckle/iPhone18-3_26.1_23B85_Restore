@interface SiriMoviesDetailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SiriMoviesDetailViewAccessibility)initWithFrame:(CGRect)frame movieDetailSnippet:(id)snippet;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SiriMoviesDetailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriMoviesDetailView" hasInstanceMethod:@"watchTrailerButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriMoviesDetailView" hasInstanceMethod:@"reviewsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriMoviesDetailView" hasInstanceVariable:@"_movieInfoView" withType:"SiriMoviesMovieInfoView"];
  [validationsCopy validateClass:@"SiriMoviesMovieInfoView" hasInstanceVariable:@"_runtimeValueLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25.receiver = self;
  v25.super_class = SiriMoviesDetailViewAccessibility;
  [(SiriMoviesDetailViewAccessibility *)&v25 _accessibilityLoadAccessibilityInformation];
  v3 = [(SiriMoviesDetailViewAccessibility *)self safeValueForKey:@"watchTrailerButton"];
  v4 = accessibilityLocalizedString(@"movie.trailer.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SiriMoviesDetailViewAccessibility *)self safeValueForKey:@"reviewsButton"];
  v6 = accessibilityLocalizedString(@"movie.rating.freshness.hint");
  [v5 setAccessibilityHint:v6];

  v7 = [(SiriMoviesDetailViewAccessibility *)self safeValueForKey:@"_movieInfoView"];
  v8 = [v7 safeValueForKey:@"_runtimeValueLabel"];
  v9 = [v8 safeValueForKey:@"text"];
  whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v11 = [v9 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  if ([v11 count] < 2)
  {
    v17 = 0;
    v14 = 0;
  }

  else
  {
    v12 = [v11 objectAtIndex:0];
    letterCharacterSet = [MEMORY[0x29EDB9F50] letterCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:letterCharacterSet];

    v15 = [v11 objectAtIndex:1];
    letterCharacterSet2 = [MEMORY[0x29EDB9F50] letterCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:letterCharacterSet2];
  }

  v18 = MEMORY[0x29EDBA0F8];
  v19 = accessibilityLocalizedString(@"hour.label");
  v20 = [v18 stringWithFormat:v19, objc_msgSend(v14, "integerValue")];

  v21 = MEMORY[0x29EDBA0F8];
  v22 = accessibilityLocalizedString(@"minute.label");
  v23 = [v21 stringWithFormat:v22, objc_msgSend(v17, "integerValue")];

  v24 = __UIAXStringForVariables();
  [v8 setAccessibilityLabel:{v24, v23, @"__AXStringForVariablesSentinel"}];
}

- (SiriMoviesDetailViewAccessibility)initWithFrame:(CGRect)frame movieDetailSnippet:(id)snippet
{
  v6.receiver = self;
  v6.super_class = SiriMoviesDetailViewAccessibility;
  v4 = [(SiriMoviesDetailViewAccessibility *)&v6 initWithFrame:snippet movieDetailSnippet:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SiriMoviesDetailViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end