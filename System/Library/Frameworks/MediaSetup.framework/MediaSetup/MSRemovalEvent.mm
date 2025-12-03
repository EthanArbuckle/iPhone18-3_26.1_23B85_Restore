@interface MSRemovalEvent
- (MSRemovalEvent)initWithServiceId:(id)id;
@end

@implementation MSRemovalEvent

- (MSRemovalEvent)initWithServiceId:(id)id
{
  idCopy = id;
  v8.receiver = self;
  v8.super_class = MSRemovalEvent;
  v5 = [(MSRemovalEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSRemovalEvent *)v5 setServiceId:idCopy];
  }

  return v6;
}

@end