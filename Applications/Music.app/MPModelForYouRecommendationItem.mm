@interface MPModelForYouRecommendationItem
- (NSString)title;
@end

@implementation MPModelForYouRecommendationItem

- (NSString)title
{
  v3 = [(MPModelForYouRecommendationItem *)self itemType];
  if (v3 == 3)
  {
    v6 = [(MPModelForYouRecommendationItem *)self radioStation];
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v6 = [(MPModelForYouRecommendationItem *)self playlist];
LABEL_7:
    v4 = v6;
    v5 = [v6 name];
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = [(MPModelForYouRecommendationItem *)self album];
    v5 = [v4 title];
LABEL_8:
    v7 = v5;

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

@end