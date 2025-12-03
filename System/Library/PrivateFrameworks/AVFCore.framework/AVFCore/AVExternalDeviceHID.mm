@interface AVExternalDeviceHID
- (AVExternalDeviceHID)initWithExternalDeviceAndHIDDictionary:(id)dictionary hidDictionary:(id)hidDictionary;
- (id)_figEndpointHIDInputMode;
- (void)dealloc;
- (void)setInputMode:(int64_t)mode;
@end

@implementation AVExternalDeviceHID

- (id)_figEndpointHIDInputMode
{
  v8 = 0;
  v3 = [-[AVExternalDeviceHID _externalDevice](self "_externalDevice")];
  if (v3)
  {
    v4 = v3;
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass() && (UUID = self->_externalDeviceHID->UUID, (v6 = *(*(CMBaseObjectGetVTable() + 24) + 64)) != 0))
    {
      v6(v4, UUID, *MEMORY[0x1E695E480], &v8);
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (AVExternalDeviceHID)initWithExternalDeviceAndHIDDictionary:(id)dictionary hidDictionary:(id)hidDictionary
{
  v9.receiver = self;
  v9.super_class = AVExternalDeviceHID;
  v6 = [(AVExternalDeviceHID *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVExternalDeviceHIDInternal);
    v6->_externalDeviceHID = v7;
    if (v7)
    {
      v6->_externalDeviceHID->weakReferenceToExternalDevice = [dictionary _weakReference];
      v6->_externalDeviceHID->UUID = [hidDictionary objectForKey:*MEMORY[0x1E6961840]];
      v6->_externalDeviceHID->screenID = [hidDictionary objectForKey:*MEMORY[0x1E6961838]];
      v6->_externalDeviceHID->inputMode = [(AVExternalDeviceHID *)v6 _figEndpointHIDInputMode];
      CFRetain(v6->_externalDeviceHID);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  externalDeviceHID = self->_externalDeviceHID;
  if (externalDeviceHID)
  {

    CFRelease(self->_externalDeviceHID);
  }

  v4.receiver = self;
  v4.super_class = AVExternalDeviceHID;
  [(AVExternalDeviceHID *)&v4 dealloc];
}

- (void)setInputMode:(int64_t)mode
{
  v5 = [-[AVExternalDeviceHID _externalDevice](self "_externalDevice")];
  if (v5)
  {
    v6 = v5;
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {

      self->_externalDeviceHID->inputMode = [MEMORY[0x1E696AD98] numberWithInt:mode];
      externalDeviceHID = self->_externalDeviceHID;
      UUID = externalDeviceHID->UUID;
      inputMode = externalDeviceHID->inputMode;
      v10 = *(*(CMBaseObjectGetVTable() + 24) + 56);
      if (v10)
      {

        v10(v6, UUID, inputMode);
      }
    }
  }
}

@end