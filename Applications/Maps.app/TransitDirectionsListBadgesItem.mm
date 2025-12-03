@interface TransitDirectionsListBadgesItem
- (TransitDirectionsListBadgesItem)initWithBadges:(id)badges;
@end

@implementation TransitDirectionsListBadgesItem

- (TransitDirectionsListBadgesItem)initWithBadges:(id)badges
{
  badgesCopy = badges;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListBadgesItem;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:17];
    objc_storeStrong(&v7->super._badges, badges);
  }

  return v7;
}

@end