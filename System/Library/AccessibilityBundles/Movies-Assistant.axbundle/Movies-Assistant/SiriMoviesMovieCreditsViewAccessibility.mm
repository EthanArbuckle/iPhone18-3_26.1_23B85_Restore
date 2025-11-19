@interface SiriMoviesMovieCreditsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SiriMoviesMovieCreditsViewAccessibility)initWithFrame:(CGRect)a3 movieDetailSnippet:(id)a4;
@end

@implementation SiriMoviesMovieCreditsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriMoviesMovieCreditsView" hasInstanceVariable:@"_directorLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriMoviesMovieCreditsView" hasInstanceVariable:@"_starringLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriMoviesMovieCreditsView" hasInstanceMethod:@"initWithFrame: movieDetailSnippet:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
}

- (SiriMoviesMovieCreditsViewAccessibility)initWithFrame:(CGRect)a3 movieDetailSnippet:(id)a4
{
  v9.receiver = self;
  v9.super_class = SiriMoviesMovieCreditsViewAccessibility;
  v4 = [(SiriMoviesMovieCreditsViewAccessibility *)&v9 initWithFrame:a4 movieDetailSnippet:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(SiriMoviesMovieCreditsViewAccessibility *)v4 safeValueForKey:@"_directorLabel"];
  v6 = *MEMORY[0x29EDC7F80];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v7 = [(SiriMoviesMovieCreditsViewAccessibility *)v4 safeValueForKey:@"_starringLabel"];
  [v7 setAccessibilityTraits:v6];

  return v4;
}

@end