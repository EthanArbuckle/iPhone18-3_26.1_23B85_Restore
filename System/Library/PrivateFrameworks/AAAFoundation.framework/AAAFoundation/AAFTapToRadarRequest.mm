@interface AAFTapToRadarRequest
- (id)formattedKeywords;
@end

@implementation AAFTapToRadarRequest

- (id)formattedKeywords
{
  keywords = [(AAFTapToRadarRequest *)self keywords];
  v4 = [keywords count];

  if (v4)
  {
    keywords2 = [(AAFTapToRadarRequest *)self keywords];
    v6 = [keywords2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_1F48451D0;
  }

  return v6;
}

@end