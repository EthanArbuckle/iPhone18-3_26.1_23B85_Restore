@interface MRAPInputDevice
- (MRAPInputDevice)initWithInputDevice:(void *)device;
- (NSString)description;
- (id)audioInputBlock;
- (unsigned)mediaRemoteDeviceID;
- (void)_setRecordingState:(unsigned int)state withCompletion:(id)completion;
- (void)dealloc;
- (void)processVoiceDataWithBuffer:(void *)buffer time:(id)time gain:(float)gain;
- (void)setAudioInputBlock:(id)block;
- (void)setSupportedFormats:(id)formats;
- (void)startRecordingWithCompletionBlock:(id)block;
- (void)stopRecordingWithCompletionBlock:(id)block;
@end

@implementation MRAPInputDevice

- (MRAPInputDevice)initWithInputDevice:(void *)device
{
  v23.receiver = self;
  v23.super_class = MRAPInputDevice;
  v4 = [(MRAPInputDevice *)&v23 init];
  if (v4)
  {
    v4->_inputDevice = CFRetain(device);
    if (MRVirtualVoiceInputDeviceGetDescriptor())
    {
      v5 = MRVirtualVoiceInputDeviceDescriptorCopySupportedFormats();
      v6 = objc_alloc_init(NSMutableArray);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v13 = [AVAudioFormat alloc];
            v14 = [v13 initWithSettings:{v12, v19}];
            [v6 addObject:v14];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }

      objc_storeStrong(&v4->_supportedFormats, v6);
      v15 = MRVirtualVoiceInputDeviceDescriptorCopyDefaultFormat();
      if (v15)
      {
        v16 = [[AVAudioFormat alloc] initWithSettings:v15];
        format = v4->_format;
        v4->_format = v16;
      }
    }
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p inputDevice = %@>", v4, self, self->_inputDevice];

  return v5;
}

- (void)dealloc
{
  inputDevice = self->_inputDevice;
  if (inputDevice)
  {
    CFRelease(inputDevice);
  }

  v4.receiver = self;
  v4.super_class = MRAPInputDevice;
  [(MRAPInputDevice *)&v4 dealloc];
}

- (id)audioInputBlock
{
  v2 = objc_retainBlock(self->_audioInputBlock);

  return v2;
}

- (void)setAudioInputBlock:(id)block
{
  v4 = [block copy];
  audioInputBlock = self->_audioInputBlock;
  self->_audioInputBlock = v4;

  _objc_release_x1();
}

- (void)setSupportedFormats:(id)formats
{
  v4 = [formats copy];
  supportedFormats = self->_supportedFormats;
  self->_supportedFormats = v4;

  _objc_release_x1();
}

- (unsigned)mediaRemoteDeviceID
{
  inputDevice = self->_inputDevice;
  if (inputDevice)
  {
    LODWORD(inputDevice) = MRVirtualVoiceInputDeviceGetUniqueIdentifier();
  }

  return inputDevice;
}

- (void)startRecordingWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_3040(self, v5);
  }

  [(MRAPInputDevice *)self _setRecordingState:1 withCompletion:blockCopy];
}

- (void)stopRecordingWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_30B8(self, v5);
  }

  [(MRAPInputDevice *)self _setRecordingState:2 withCompletion:blockCopy];
}

- (void)processVoiceDataWithBuffer:(void *)buffer time:(id)time gain:(float)gain
{
  if (self->_audioInputBlock)
  {
    var1 = time.var1;
    var0 = time.var0;
    if (buffer)
    {
      buffer = [buffer buffer];
    }

    else
    {
      buffer = 0;
    }

    v10 = [[AVAudioTime alloc] initWithHostTime:+[AVAudioTime hostTimeForSeconds:](AVAudioTime sampleTime:"hostTimeForSeconds:" atRate:{var0), 0, var1}];
    v14 = @"Gain";
    *&v11 = gain;
    v12 = [NSNumber numberWithFloat:v11];
    v15 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    (*(self->_audioInputBlock + 2))();
  }

  else
  {
    buffer = _MRLogForCategory();
    if (os_log_type_enabled(buffer, OS_LOG_TYPE_DEBUG))
    {
      sub_3130(buffer);
    }
  }
}

- (void)_setRecordingState:(unsigned int)state withCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_inputDevice)
  {
    MRVirtualVoiceInputDeviceGetUniqueIdentifier();
    v7 = completionCopy;
    MRVirtualVoiceInputSetRecordingState();
  }

  else
  {
    v6 = [NSError mrap_errorWithCode:1];
    (*(completionCopy + 2))(completionCopy, v6);
  }
}

@end