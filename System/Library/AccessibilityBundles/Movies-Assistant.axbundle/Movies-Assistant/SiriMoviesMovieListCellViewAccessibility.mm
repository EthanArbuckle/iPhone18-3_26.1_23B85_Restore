@interface SiriMoviesMovieListCellViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriMoviesMovieListCellViewAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_movieTitleLabel"];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    [v3 addObject:v5];
  }

  v6 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_showtimeLabel"];
  v7 = [v6 accessibilityLabel];

  if ([v7 length])
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"movie.times");
    v10 = [v8 stringWithFormat:v9, v7];

    [v3 addObject:v10];
  }

  v11 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_tomatoView"];
  v12 = [v11 accessibilityLabel];

  if ([v12 length])
  {
    [v3 addObject:v12];
  }

  v13 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_ratingView"];
  v14 = [v13 accessibilityLabel];

  if ([v14 length])
  {
    [v3 addObject:v14];
  }

  v15 = [v3 componentsJoinedByString:{@", "}];

  return v15;
}

@end