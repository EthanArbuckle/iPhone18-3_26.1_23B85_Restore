@interface ATXEventTravelTimeDataSource
- (ATXEventTravelTimeDataSource)initWithDevice:(id)device;
@end

@implementation ATXEventTravelTimeDataSource

- (ATXEventTravelTimeDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXEventTravelTimeDataSource;
  v6 = [(ATXEventTravelTimeDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

@end