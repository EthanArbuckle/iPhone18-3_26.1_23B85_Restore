@interface AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl
- (AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)init;
- (AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)initWithAvailableFigEndpoints:(id)a3;
- (NSArray)allDevices;
- (void)dealloc;
@end

@implementation AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl

- (AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithAvailableFigEndpoints_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)initWithAvailableFigEndpoints:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl;
  v4 = [(AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)&v6 init];
  if (v4)
  {
    v4->_figEndpoints = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl;
  [(AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)&v3 dealloc];
}

- (NSArray)allDevices
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_figEndpoints count])
  {
    v4 = 0;
    do
    {
      [(NSArray *)v3 addObject:[AVOutputDevice outputDeviceWithFigEndpoint:[(NSArray *)self->_figEndpoints objectAtIndex:v4++]]];
    }

    while ([(NSArray *)self->_figEndpoints count]> v4);
  }

  return v3;
}

@end