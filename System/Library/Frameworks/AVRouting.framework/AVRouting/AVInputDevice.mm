@interface AVInputDevice
+ (AVInputDevice)inputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
+ (AVInputDevice)inputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor withRoutingContext:(OpaqueFigRoutingContext *)context;
+ (void)initialize;
- (AVInputDevice)init;
- (AVInputDevice)initWithInputDeviceImpl:(id)impl;
- (BOOL)isAppleAccessory;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isFarFieldCaptureEnabled;
- (BOOL)isHighQualityContentCaptureEnabled;
- (BOOL)supportsFarFieldCapture;
- (BOOL)supportsHighQualityContentCapture;
- (void)dealloc;
@end

@implementation AVInputDevice

+ (AVInputDevice)inputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v6 = AVDefaultRoutingContextFactory();
  v7 = [[AVFigRouteDescriptorInputDeviceImpl alloc] initWithRouteDescriptor:descriptor routeDiscoverer:discoverer routingContextFactory:v6 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:0];
  v8 = [[AVInputDevice alloc] initWithInputDeviceImpl:v7];

  return v8;
}

+ (AVInputDevice)inputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor withRoutingContext:(OpaqueFigRoutingContext *)context
{
  descriptorCopy = descriptor;
  if (descriptor)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    if (AVInputDeviceCopySharedRouteDiscovererForRouteDescriptor_gAVInputDeviceRouteDiscoverer_Once != -1)
    {
      +[AVInputDevice(FigRouteDescriptor) inputDeviceWithRouteDescriptor:withRoutingContext:];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AVInputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke_2;
    block[3] = &unk_1E794E728;
    block[4] = &v11;
    dispatch_sync(gAVInputDeviceRouteDiscovererQueue, block);
    v6 = v12[3];
    _Block_object_dispose(&v11, 8);
    v7 = AVDefaultRoutingContextFactory();
    v8 = [[AVFigRouteDescriptorInputDeviceImpl alloc] initWithRouteDescriptor:descriptorCopy routeDiscoverer:v6 routingContextFactory:v7 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:context];
    descriptorCopy = [[AVInputDevice alloc] initWithInputDeviceImpl:v8];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return descriptorCopy;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVInputDevice)init
{
  selfCopy = self;
  v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available", v5, v6, v7, v8, v9, v11), 0}];
  objc_exception_throw(v10);
}

- (void)dealloc
{
  inputDevice = self->_inputDevice;
  if (inputDevice)
  {
  }

  v4.receiver = self;
  v4.super_class = AVInputDevice;
  [(AVInputDevice *)&v4 dealloc];
}

- (BOOL)isAppleAccessory
{
  impl = [(AVInputDevice *)self impl];

  return [impl isAppleAccessory];
}

- (BOOL)isFarFieldCaptureEnabled
{
  impl = [(AVInputDevice *)self impl];

  return [impl isFarFieldCaptureEnabled];
}

- (BOOL)supportsFarFieldCapture
{
  impl = [(AVInputDevice *)self impl];

  return [impl supportsFarFieldCapture];
}

- (BOOL)isHighQualityContentCaptureEnabled
{
  impl = [(AVInputDevice *)self impl];

  return [impl isHighQualityContentCaptureEnabled];
}

- (BOOL)supportsHighQualityContentCapture
{
  impl = [(AVInputDevice *)self impl];

  return [impl supportsHighQualityContentCapture];
}

- (BOOL)isConversationDetectionEnabled
{
  impl = [(AVInputDevice *)self impl];

  return [impl isConversationDetectionEnabled];
}

- (AVInputDevice)initWithInputDeviceImpl:(id)impl
{
  v7.receiver = self;
  v7.super_class = AVInputDevice;
  v4 = [(AVInputDevice *)&v7 init];
  if (v4 && (v4->_inputDevice = objc_alloc_init(AVInputDeviceInternal), (v4->_inputDevice->impl = impl) != 0))
  {
    v4->_inputDevice->name = [objc_msgSend(impl "name")];
    v4->_inputDevice->ID = [objc_msgSend(impl "ID")];
    v4->_inputDevice->deviceType = [impl deviceType];
    v4->_inputDevice->deviceSubType = [impl deviceSubType];
    v4->_inputDevice->manufacturer = [objc_msgSend(impl "manufacturer")];
    v4->_inputDevice->modelID = [objc_msgSend(impl "modelID")];
    [(AVInputDeviceImpl *)v4->_inputDevice->impl setImplEventListener:v4];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end