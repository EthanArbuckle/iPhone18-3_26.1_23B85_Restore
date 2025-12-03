@interface TransitDestinationBannerItem
- (NSString)title;
- (TransitDestinationBannerItem)initWithGuidanceState:(id)state;
@end

@implementation TransitDestinationBannerItem

- (NSString)title
{
  v2 = +[MNNavigationService sharedService];
  destinationName = [v2 destinationName];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To %@" value:@"localized string not found" table:0];
  v6 = [NSString stringWithFormat:v5, destinationName];

  return v6;
}

- (TransitDestinationBannerItem)initWithGuidanceState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = TransitDestinationBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:stateCopy];
  if (v5)
  {
    v6 = [stateCopy uniqueIdForBannerType:3];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end