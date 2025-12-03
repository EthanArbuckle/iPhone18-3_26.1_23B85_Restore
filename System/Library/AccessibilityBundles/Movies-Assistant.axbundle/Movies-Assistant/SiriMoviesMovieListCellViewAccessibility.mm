@interface SiriMoviesMovieListCellViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriMoviesMovieListCellViewAccessibility

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_movieTitleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    [array addObject:accessibilityLabel];
  }

  v6 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_showtimeLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];

  if ([accessibilityLabel2 length])
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"movie.times");
    v10 = [v8 stringWithFormat:v9, accessibilityLabel2];

    [array addObject:v10];
  }

  v11 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_tomatoView"];
  accessibilityLabel3 = [v11 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    [array addObject:accessibilityLabel3];
  }

  v13 = [(SiriMoviesMovieListCellViewAccessibility *)self safeValueForKey:@"_ratingView"];
  accessibilityLabel4 = [v13 accessibilityLabel];

  if ([accessibilityLabel4 length])
  {
    [array addObject:accessibilityLabel4];
  }

  v15 = [array componentsJoinedByString:{@", "}];

  return v15;
}

@end