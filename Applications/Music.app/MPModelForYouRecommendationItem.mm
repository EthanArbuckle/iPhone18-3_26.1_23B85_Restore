@interface MPModelForYouRecommendationItem
- (NSString)title;
@end

@implementation MPModelForYouRecommendationItem

- (NSString)title
{
  itemType = [(MPModelForYouRecommendationItem *)self itemType];
  if (itemType == 3)
  {
    radioStation = [(MPModelForYouRecommendationItem *)self radioStation];
    goto LABEL_7;
  }

  if (itemType == 2)
  {
    radioStation = [(MPModelForYouRecommendationItem *)self playlist];
LABEL_7:
    album = radioStation;
    name = [radioStation name];
    goto LABEL_8;
  }

  if (itemType == 1)
  {
    album = [(MPModelForYouRecommendationItem *)self album];
    name = [album title];
LABEL_8:
    v7 = name;

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

@end