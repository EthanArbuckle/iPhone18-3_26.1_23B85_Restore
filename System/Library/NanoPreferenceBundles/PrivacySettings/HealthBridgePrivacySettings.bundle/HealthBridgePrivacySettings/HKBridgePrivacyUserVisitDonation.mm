@interface HKBridgePrivacyUserVisitDonation
+ (void)donateUserVisitForHeadphonePrivacySection;
+ (void)donateUserVisitForPrivacySection;
@end

@implementation HKBridgePrivacyUserVisitDonation

+ (void)donateUserVisitForPrivacySection
{
  objc_opt_class();
  v4 = sub_13AC();
  objc_opt_class();
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"bridge:root=%@", @"PRIVACY_ID"];
  sub_128C(self, v4, &__NSArray0__struct, v3);
}

+ (void)donateUserVisitForHeadphonePrivacySection
{
  objc_opt_class();
  v3 = sub_1450();
  objc_opt_class();
  v4 = sub_13AC();
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  objc_opt_class();
  v6 = sub_1590();
  sub_128C(self, v3, v5, v6);
}

@end