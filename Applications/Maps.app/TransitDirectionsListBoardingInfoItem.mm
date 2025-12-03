@interface TransitDirectionsListBoardingInfoItem
- (TransitDirectionsListBoardingInfoItem)initWithBoardingInfo:(id)info;
- (TransitDirectionsListBoardingInfoItem)initWithPreboardingStrings:(id)strings;
@end

@implementation TransitDirectionsListBoardingInfoItem

- (TransitDirectionsListBoardingInfoItem)initWithPreboardingStrings:(id)strings
{
  stringsCopy = strings;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListBoardingInfoItem;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:16];
    objc_storeStrong(&v7->_preboardingStrings, strings);
  }

  return v7;
}

- (TransitDirectionsListBoardingInfoItem)initWithBoardingInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListBoardingInfoItem;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:16];
    objc_storeStrong(&v7->_boardingInfo, info);
  }

  return v7;
}

@end