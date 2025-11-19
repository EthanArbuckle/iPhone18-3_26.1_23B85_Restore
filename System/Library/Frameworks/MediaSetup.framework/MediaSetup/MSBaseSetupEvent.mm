@interface MSBaseSetupEvent
- (MSBaseSetupEvent)init;
@end

@implementation MSBaseSetupEvent

- (MSBaseSetupEvent)init
{
  v5.receiver = self;
  v5.super_class = MSBaseSetupEvent;
  v2 = [(MSBaseSetupEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSBaseSetupEvent *)v2 setEventName:&stru_284C4B358];
  }

  return v3;
}

@end