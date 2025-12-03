@interface HKBridgeHealthUserVisitDonation
+ (void)donateUserVisitForHealthDetailsSection;
+ (void)donateUserVisitForHealthSection;
@end

@implementation HKBridgeHealthUserVisitDonation

+ (void)donateUserVisitForHealthSection
{
  objc_opt_class();
  v4 = sub_B898();
  objc_opt_class();
  v3 = sub_B96C();
  sub_B7A0(self, v4, &__NSArray0__struct, v3);
}

+ (void)donateUserVisitForHealthDetailsSection
{
  objc_opt_class();
  v3 = sub_BA94();
  objc_opt_class();
  v4 = sub_B898();
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  objc_opt_class();
  v6 = sub_BB68();
  sub_B7A0(self, v3, v5, v6);
}

@end