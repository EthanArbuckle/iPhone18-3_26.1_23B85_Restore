@interface TransitDirectionsListBoardingInfoItem
- (TransitDirectionsListBoardingInfoItem)initWithBoardingInfo:(id)a3;
- (TransitDirectionsListBoardingInfoItem)initWithPreboardingStrings:(id)a3;
@end

@implementation TransitDirectionsListBoardingInfoItem

- (TransitDirectionsListBoardingInfoItem)initWithPreboardingStrings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListBoardingInfoItem;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:16];
    objc_storeStrong(&v7->_preboardingStrings, a3);
  }

  return v7;
}

- (TransitDirectionsListBoardingInfoItem)initWithBoardingInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListBoardingInfoItem;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:16];
    objc_storeStrong(&v7->_boardingInfo, a3);
  }

  return v7;
}

@end