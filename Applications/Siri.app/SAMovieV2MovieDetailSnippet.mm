@interface SAMovieV2MovieDetailSnippet
- (id)_afui_mapsRelatedChildren;
@end

@implementation SAMovieV2MovieDetailSnippet

- (id)_afui_mapsRelatedChildren
{
  v3 = +[NSMutableArray array];
  v4 = [(SAMovieV2MovieDetailSnippet *)self showtimeSnippet];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SAMovieV2MovieDetailSnippet *)self theaterShowtimeListSnippet];
  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

@end