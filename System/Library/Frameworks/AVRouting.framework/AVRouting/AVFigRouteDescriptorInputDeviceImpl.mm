@interface AVFigRouteDescriptorInputDeviceImpl
- (AVFigRouteDescriptorInputDeviceImpl)initWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification routingContext:(OpaqueFigRoutingContext *)context;
- (BOOL)isAppleAccessory;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFarFieldCaptureEnabled;
- (BOOL)isHighQualityContentCaptureEnabled;
- (BOOL)supportsConversationDetection;
- (BOOL)supportsFarFieldCapture;
- (BOOL)supportsHighQualityContentCapture;
- (NSString)ID;
- (NSString)manufacturer;
- (NSString)modelID;
- (NSString)name;
- (__CFDictionary)routeDescriptor;
- (id)inputDeviceInfo;
- (int)_withEndpoint:(id)endpoint;
- (int64_t)deviceSubType;
- (int64_t)deviceType;
- (unint64_t)hash;
- (void)_handleRouteDescriptionEvent:(__CFString *)event payload:(id)payload;
- (void)_routeDescriptionDidChange:(__CFDictionary *)change;
- (void)dealloc;
- (void)setRouteDescriptor:(__CFDictionary *)descriptor;
@end

@implementation AVFigRouteDescriptorInputDeviceImpl

- (void)dealloc
{
  if (self->_weakObserver)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    weakObserver = self->_weakObserver;
    if (self->_routingContext)
    {
      [v3 removeListenerWithWeakReference:weakObserver callback:AVFigRouteDescriptorInputDeviceImplRouteDescriptionEvent name:*MEMORY[0x1E69AF4B0] object:?];
      weakObserver = self->_weakObserver;
    }
  }

  else
  {
    weakObserver = 0;
  }

  routeDescriptor = self->_routeDescriptor;
  if (routeDescriptor)
  {
    CFRelease(routeDescriptor);
  }

  routeDiscoverer = self->_routeDiscoverer;
  if (routeDiscoverer)
  {
    CFRelease(routeDiscoverer);
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  if (self->_routeDescriptionRWLock)
  {
    FigReadWriteLockDestroy();
    self->_routeDescriptionRWLock = 0;
  }

  v8.receiver = self;
  v8.super_class = AVFigRouteDescriptorInputDeviceImpl;
  [(AVFigRouteDescriptorInputDeviceImpl *)&v8 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVFigRouteDescriptorInputDeviceImpl *)self ID];
  v6 = [equal ID];

  return [(NSString *)v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(AVFigRouteDescriptorInputDeviceImpl *)self ID];

  return [(NSString *)v2 hash];
}

- (__CFDictionary)routeDescriptor
{
  routeDescriptionRWLock = self->_routeDescriptionRWLock;
  FigReadWriteLockLockForRead();
  v4 = self->_routeDescriptor;
  v5 = self->_routeDescriptionRWLock;
  FigReadWriteLockUnlockForRead();
  return v4;
}

- (void)setRouteDescriptor:(__CFDictionary *)descriptor
{
  routeDescriptionRWLock = self->_routeDescriptionRWLock;
  FigReadWriteLockLockForWrite();
  routeDescriptor = self->_routeDescriptor;
  self->_routeDescriptor = descriptor;
  if (descriptor)
  {
    CFRetain(descriptor);
  }

  if (routeDescriptor)
  {
    CFRelease(routeDescriptor);
  }

  v7 = self->_routeDescriptionRWLock;

  MEMORY[0x1EEDBDA98](v7);
}

- (NSString)name
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF198];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)ID
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF1C0];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (void)_handleRouteDescriptionEvent:(__CFString *)event payload:(id)payload
{
  v6 = [(AVFigRouteDescriptorInputDeviceImpl *)self implEventListener:event];

  [(AVInputDeviceImplSupport *)v6 postNotification:event fromImpl:self];
}

- (int64_t)deviceType
{
  v3 = 2;
  AVInputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor([(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor], &v3, 0);
  return v3;
}

- (int64_t)deviceSubType
{
  v3 = 1;
  AVInputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor([(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor], 0, &v3);
  return v3;
}

- (NSString)manufacturer
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF1C0];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)modelID
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF140];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (BOOL)isAppleAccessory
{
  if (_os_feature_enabled_impl())
  {
    [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
    v3 = *MEMORY[0x1E69AF0F8];
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

- (BOOL)supportsFarFieldCapture
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    Value = CFDictionaryGetValue([(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor], @"BTDetails_SupportsFarFieldCapture");

    LOBYTE(v3) = [Value BOOLValue];
  }

  return v3;
}

- (BOOL)isFarFieldCaptureEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    Value = CFDictionaryGetValue([(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor], @"BTDetails_IsFarFieldCaptureEnabled");

    LOBYTE(v3) = [Value BOOLValue];
  }

  return v3;
}

- (BOOL)supportsHighQualityContentCapture
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF058]);

  return [Value BOOLValue];
}

- (BOOL)isHighQualityContentCaptureEnabled
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF030]);

  return [Value BOOLValue];
}

- (BOOL)supportsConversationDetection
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
    Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF1D0]);

    LOBYTE(v3) = [Value BOOLValue];
  }

  return v3;
}

- (BOOL)isConversationDetectionEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
    Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF080]);

    LOBYTE(v3) = [Value BOOLValue];
  }

  return v3;
}

- (void)_routeDescriptionDidChange:(__CFDictionary *)change
{
  v5 = *MEMORY[0x1E69AF1C0];
  if ([FigCFDictionaryGetValue() isEqual:{-[AVFigRouteDescriptorInputDeviceImpl ID](self, "ID")}])
  {

    [(AVFigRouteDescriptorInputDeviceImpl *)self setRouteDescriptor:change];
  }
}

- (id)inputDeviceInfo
{
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF088]);
  if (Value)
  {
    v4 = Value;

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];

    return [v6 dictionary];
  }
}

- (AVFigRouteDescriptorInputDeviceImpl)initWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification routingContext:(OpaqueFigRoutingContext *)context
{
  v13 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v24.receiver = self;
  v24.super_class = AVFigRouteDescriptorInputDeviceImpl;
  v14 = [(AVFigRouteDescriptorInputDeviceImpl *)&v24 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_16;
  }

  if (!descriptor)
  {
    v20 = 0;
    v14->_routeDescriptor = 0;
    goto LABEL_15;
  }

  v16 = CFRetain(descriptor);
  v15->_routeDescriptor = v16;
  if (!v16)
  {
    goto LABEL_16;
  }

  if (!discoverer)
  {
    v20 = 0;
    v15->_routeDiscoverer = 0;
    goto LABEL_15;
  }

  v17 = CFRetain(discoverer);
  v15->_routeDiscoverer = v17;
  if (!v17 || (v18 = factory, (v15->_routingContextFactory = v18) == 0))
  {
LABEL_16:
    v20 = 0;
    goto LABEL_15;
  }

  v15->_useRouteConfigUpdatedNotification = notification;
  if (context)
  {
    v19 = CFRetain(context);
  }

  else
  {
    v19 = 0;
  }

  v15->_routingContext = v19;
  v15->_routeDescriptionRWLock = FigReadWriteLockCreate();
  v21 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v15];
  v15->_weakObserver = v21;
  routingContext = v15->_routingContext;
  if (routingContext)
  {
    [v13 addListenerWithWeakReference:v21 callback:AVFigRouteDescriptorInputDeviceImplRouteDescriptionEvent name:*MEMORY[0x1E69AF4B0] object:routingContext flags:0];
  }

  v20 = v15;
LABEL_15:

  return v20;
}

- (int)_withEndpoint:(id)endpoint
{
  cf[16] = *MEMORY[0x1E69E9840];
  theArray = 0;
  v28 = 0;
  if (dword_1ED6F6B08)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    v7 = self->_routingContext;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v8)
    {
      v9 = v8(routingContext, &theArray);
      if (!v9)
      {
        v10 = 0;
        v11 = *MEMORY[0x1E69620F8];
        v12 = *MEMORY[0x1E695E480];
        while (1)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (v10 >= Count)
          {
            goto LABEL_28;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
          cf[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v16(CMBaseObject, v11, v12, cf);
          }

          v17 = [(AVFigRouteDescriptorInputDeviceImpl *)self ID:v25];
          if ([(NSString *)v17 isEqualToString:cf[0]])
          {
            if (ValueAtIndex)
            {
              v21 = CFRetain(ValueAtIndex);
            }

            else
            {
              v21 = 0;
            }

            v28 = v21;
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (!v21)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          ++v10;
        }
      }

      goto LABEL_29;
    }

LABEL_20:
    v22 = -12782;
    goto LABEL_30;
  }

  routeDiscoverer = self->_routeDiscoverer;
  routeDescriptor = [(AVFigRouteDescriptorInputDeviceImpl *)self routeDescriptor];
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    goto LABEL_20;
  }

  v9 = v20(routeDiscoverer, routeDescriptor, &v28);
  if (!v9)
  {
    v21 = v28;
    if (!v28)
    {
LABEL_28:
      v9 = FigSignalErrorAtGM();
      goto LABEL_29;
    }

LABEL_27:
    v9 = (*(endpoint + 2))(endpoint, v21);
  }

LABEL_29:
  v22 = v9;
LABEL_30:
  if (v28)
  {
    CFRelease(v28);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

@end