@interface MSConfigurationEvent
- (MSConfigurationEvent)initWithServiceId:(id)id;
@end

@implementation MSConfigurationEvent

- (MSConfigurationEvent)initWithServiceId:(id)id
{
  idCopy = id;
  v8.receiver = self;
  v8.super_class = MSConfigurationEvent;
  v5 = [(MSConfigurationEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSConfigurationEvent *)v5 setServiceId:idCopy];
  }

  return v6;
}

@end