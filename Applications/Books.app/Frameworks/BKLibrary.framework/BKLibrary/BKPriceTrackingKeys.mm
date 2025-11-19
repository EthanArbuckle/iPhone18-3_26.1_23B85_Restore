@interface BKPriceTrackingKeys
+ (NSString)priceTrackingNotificationsEnabled;
- (BKPriceTrackingKeys)init;
@end

@implementation BKPriceTrackingKeys

+ (NSString)priceTrackingNotificationsEnabled
{
  v2 = sub_91FFC();

  return v2;
}

- (BKPriceTrackingKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PriceTrackingKeys();
  return [(BKPriceTrackingKeys *)&v3 init];
}

@end