@interface GCEventInteraction
+ (void)initialize;
- (GCEventInteraction)init;
@end

@implementation GCEventInteraction

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    LoadGameControllerUIFramework(1);
  }
}

- (GCEventInteraction)init
{
  v3.receiver = self;
  v3.super_class = GCEventInteraction;
  result = [(GCEventInteraction *)&v3 init];
  result->_receivesEventsInView = 0;
  return result;
}

@end