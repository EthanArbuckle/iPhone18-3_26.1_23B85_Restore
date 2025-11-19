@interface MSConfigurationEvent
- (MSConfigurationEvent)initWithServiceId:(id)a3;
@end

@implementation MSConfigurationEvent

- (MSConfigurationEvent)initWithServiceId:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSConfigurationEvent;
  v5 = [(MSConfigurationEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSConfigurationEvent *)v5 setServiceId:v4];
  }

  return v6;
}

@end