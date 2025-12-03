@interface SAMovieV2MovieDetailSnippet
- (id)_afui_mapsRelatedChildren;
@end

@implementation SAMovieV2MovieDetailSnippet

- (id)_afui_mapsRelatedChildren
{
  v3 = +[NSMutableArray array];
  showtimeSnippet = [(SAMovieV2MovieDetailSnippet *)self showtimeSnippet];
  if (showtimeSnippet)
  {
    [v3 addObject:showtimeSnippet];
  }

  theaterShowtimeListSnippet = [(SAMovieV2MovieDetailSnippet *)self theaterShowtimeListSnippet];
  if (theaterShowtimeListSnippet)
  {
    [v3 addObject:theaterShowtimeListSnippet];
  }

  return v3;
}

@end