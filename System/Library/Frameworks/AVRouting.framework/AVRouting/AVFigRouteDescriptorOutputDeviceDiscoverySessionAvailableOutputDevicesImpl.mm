@interface AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl
- (AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)init;
- (AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)initWithRouteDescriptors:(id)descriptors routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (NSArray)allDevices;
- (void)dealloc;
@end

@implementation AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl

- (NSArray)allDevices
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  routeDescriptors = self->_routeDescriptors;
  v5 = [(NSArray *)routeDescriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(routeDescriptors);
        }

        [(NSArray *)array addObject:[AVOutputDevice outputDeviceWithRouteDescriptor:*(*(&v11 + 1) + 8 * i) routeDiscoverer:self->_routeDiscoverer]];
      }

      v6 = [(NSArray *)routeDescriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return array;
}

- (void)dealloc
{
  routeDiscoverer = self->_routeDiscoverer;
  if (routeDiscoverer)
  {
    CFRelease(routeDiscoverer);
  }

  v4.receiver = self;
  v4.super_class = AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl;
  [(AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)&v4 dealloc];
}

- (AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithRouteDescriptors_routeDiscoverer_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl)initWithRouteDescriptors:(id)descriptors routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v10.receiver = self;
  v10.super_class = AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl;
  v6 = [(AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)&v10 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [descriptors copy];
  v6->_routeDescriptors = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (!discoverer)
  {
    v6->_routeDiscoverer = 0;
    goto LABEL_7;
  }

  v8 = CFRetain(discoverer);
  v6->_routeDiscoverer = v8;
  if (!v8)
  {
LABEL_8:
    discoverer = 0;
    goto LABEL_7;
  }

  discoverer = v6;
LABEL_7:

  return discoverer;
}

@end