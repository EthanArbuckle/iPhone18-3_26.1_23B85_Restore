@interface FitnessPlusSubscriptionProvider
+ (NSString)fitnessPlusSubscriptionDidChangeNotification;
@end

@implementation FitnessPlusSubscriptionProvider

+ (NSString)fitnessPlusSubscriptionDidChangeNotification
{
  if (qword_1008DA630 != -1)
  {
    swift_once();
  }

  v3 = qword_100925238;

  return v3;
}

@end