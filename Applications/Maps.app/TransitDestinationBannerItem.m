@interface TransitDestinationBannerItem
- (NSString)title;
- (TransitDestinationBannerItem)initWithGuidanceState:(id)a3;
@end

@implementation TransitDestinationBannerItem

- (NSString)title
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 destinationName];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To %@" value:@"localized string not found" table:0];
  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (TransitDestinationBannerItem)initWithGuidanceState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TransitDestinationBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:v4];
  if (v5)
  {
    v6 = [v4 uniqueIdForBannerType:3];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end