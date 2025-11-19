@interface AAFTapToRadarRequest
- (id)formattedKeywords;
@end

@implementation AAFTapToRadarRequest

- (id)formattedKeywords
{
  v3 = [(AAFTapToRadarRequest *)self keywords];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AAFTapToRadarRequest *)self keywords];
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_1F48451D0;
  }

  return v6;
}

@end