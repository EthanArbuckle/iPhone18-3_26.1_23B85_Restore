@interface MSRemovalEvent
- (MSRemovalEvent)initWithServiceId:(id)a3;
@end

@implementation MSRemovalEvent

- (MSRemovalEvent)initWithServiceId:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSRemovalEvent;
  v5 = [(MSRemovalEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSRemovalEvent *)v5 setServiceId:v4];
  }

  return v6;
}

@end