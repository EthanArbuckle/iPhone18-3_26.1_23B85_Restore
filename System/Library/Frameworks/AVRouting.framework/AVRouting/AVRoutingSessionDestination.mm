@interface AVRoutingSessionDestination
- (AVRoutingSessionDestination)initWithFigRoutingSessionDestination:(__CFDictionary *)a3;
- (BOOL)_canQueryOutputDeviceDescriptionsAndReturnCurrentValue:(id *)a3;
- (BOOL)providesExternalVideoPlayback;
- (NSArray)outputDeviceDescriptions;
- (float)probability;
- (id)description;
- (void)dealloc;
@end

@implementation AVRoutingSessionDestination

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    figDestination = ivars->figDestination;
    if (figDestination)
    {
      CFRelease(figDestination);
      ivars = self->_ivars;
    }
  }

  v5.receiver = self;
  v5.super_class = AVRoutingSessionDestination;
  [(AVRoutingSessionDestination *)&v5 dealloc];
}

- (id)description
{
  v10 = 0;
  v3 = [(AVRoutingSessionDestination *)self _canQueryOutputDeviceDescriptionsAndReturnCurrentValue:&v10];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = v10;
  }

  else
  {
    v7 = @"<missing entitlement>";
  }

  [(AVRoutingSessionDestination *)self probability];
  return [v4 stringWithFormat:@"<%@: %p, outputDeviceDescriptions=%@, probability=%f, providesExternalVideoPlayback=%@>", v6, self, v7, v8, objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", -[AVRoutingSessionDestination providesExternalVideoPlayback](self, "providesExternalVideoPlayback"))];
}

- (NSArray)outputDeviceDescriptions
{
  v12 = 0;
  if (![(AVRoutingSessionDestination *)self _canQueryOutputDeviceDescriptionsAndReturnCurrentValue:&v12])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allow-identifying-output-device-details", v4, v5, v6, v7, v8, v11), 0}];
    objc_exception_throw(v10);
  }

  return v12;
}

- (float)probability
{
  figDestination = self->_ivars->figDestination;
  v3 = *MEMORY[0x1E69AF550];
  FigCFDictionaryGetFloatIfPresent();
  return 0.0;
}

- (BOOL)providesExternalVideoPlayback
{
  figDestination = self->_ivars->figDestination;
  v3 = *MEMORY[0x1E69AF558];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (AVRoutingSessionDestination)initWithFigRoutingSessionDestination:(__CFDictionary *)a3
{
  v9.receiver = self;
  v9.super_class = AVRoutingSessionDestination;
  v4 = [(AVRoutingSessionDestination *)&v9 init];
  if (v4 && (ivars = objc_alloc_init(AVRoutingSessionDestinationInternal), (v4->_ivars = ivars) != 0) && (!a3 ? (v6 = 0) : (v6 = CFRetain(a3), ivars = v4->_ivars), ivars->figDestination = v6, v4->_ivars->figDestination))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_canQueryOutputDeviceDescriptionsAndReturnCurrentValue:(id *)a3
{
  Value = CFDictionaryGetValue(self->_ivars->figDestination, *MEMORY[0x1E69AF560]);
  if (Value)
  {
    v5 = Value;
    v6 = [MEMORY[0x1E695DF70] array];
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = [AVOutputDevice outputDeviceWithRouteDescriptor:CFArrayGetValueAtIndex(v5 withRoutingContext:v7), 0];
        if (v8)
        {
          [v6 addObject:v8];
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v5));
    }

    if (v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

@end