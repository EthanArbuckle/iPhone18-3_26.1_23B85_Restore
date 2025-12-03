@interface SiriMoviesMovieCreditsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SiriMoviesMovieCreditsViewAccessibility)initWithFrame:(CGRect)frame movieDetailSnippet:(id)snippet;
@end

@implementation SiriMoviesMovieCreditsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriMoviesMovieCreditsView" hasInstanceVariable:@"_directorLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SiriMoviesMovieCreditsView" hasInstanceVariable:@"_starringLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SiriMoviesMovieCreditsView" hasInstanceMethod:@"initWithFrame: movieDetailSnippet:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
}

- (SiriMoviesMovieCreditsViewAccessibility)initWithFrame:(CGRect)frame movieDetailSnippet:(id)snippet
{
  v9.receiver = self;
  v9.super_class = SiriMoviesMovieCreditsViewAccessibility;
  v4 = [(SiriMoviesMovieCreditsViewAccessibility *)&v9 initWithFrame:snippet movieDetailSnippet:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = [(SiriMoviesMovieCreditsViewAccessibility *)v4 safeValueForKey:@"_directorLabel"];
  v6 = *MEMORY[0x29EDC7F80];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v7 = [(SiriMoviesMovieCreditsViewAccessibility *)v4 safeValueForKey:@"_starringLabel"];
  [v7 setAccessibilityTraits:v6];

  return v4;
}

@end