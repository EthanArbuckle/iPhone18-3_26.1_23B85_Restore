@interface BSUIReadingGoalsGaugeHostingControllerFactory
+ (id)createWith:(CGSize)with;
- (BSUIReadingGoalsGaugeHostingControllerFactory)init;
@end

@implementation BSUIReadingGoalsGaugeHostingControllerFactory

+ (id)createWith:(CGSize)with
{
  v3 = objc_allocWithZone(type metadata accessor for ReadingGoalsGaugeHostingController(0));
  v4 = sub_1B4CF0();

  return v4;
}

- (BSUIReadingGoalsGaugeHostingControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReadingGoalsGaugeHostingControllerFactory();
  return [(BSUIReadingGoalsGaugeHostingControllerFactory *)&v3 init];
}

@end