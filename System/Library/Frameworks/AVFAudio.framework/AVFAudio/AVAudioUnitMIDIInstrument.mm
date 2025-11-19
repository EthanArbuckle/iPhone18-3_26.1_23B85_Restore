@interface AVAudioUnitMIDIInstrument
- (AVAudioUnitMIDIInstrument)initWithAudioComponentDescription:(AudioComponentDescription *)description;
- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1;
- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1 data2:(uint8_t)data2;
- (void)sendMIDIEventList:(const MIDIEventList *)eventList;
- (void)sendMIDISysExEvent:(NSData *)midiData;
@end

@implementation AVAudioUnitMIDIInstrument

- (void)sendMIDIEventList:(const MIDIEventList *)eventList
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = (*(*self->super.super._impl + 40))(self->super.super._impl, a2);
  if (((*(*v4 + 144))(v4, 0, 0, eventList) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v9 = "AVAudioUnitMIDIInstrument.mm";
      v10 = 1024;
      v11 = 78;
      v12 = 2048;
      v13 = eventList;
      v14 = 1024;
      v15 = 0;
      v16 = 1024;
      LODWORD(v17) = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to send midi event list %p, offset = %d, cable = %d\n", buf, 0x28u);
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioUnitMIDIInstrument.mm";
      v14 = 1024;
      v15 = 170;
      v16 = 2080;
      v17 = "[AVAudioUnitMIDIInstrument sendMIDIEventList:]";
      v18 = 2080;
      v19 = "_IMPL->SendMIDIEventList(eventList, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEventList(eventList, 0, 0)"}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendMIDISysExEvent:(NSData *)midiData
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->super.super._impl;
  Length = CFDataGetLength(midiData);
  BytePtr = CFDataGetBytePtr(midiData);
  v7 = (*(*impl + 40))(impl);
  if (((*(*v7 + 136))(v7, 1, 0, 0, Length, BytePtr) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 165;
      v18 = 2080;
      v19 = "[AVAudioUnitMIDIInstrument sendMIDISysExEvent:]";
      v20 = 2080;
      v21 = "_IMPL->SendMIDISysexEvent((CFDataRef)midiData)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDISysexEvent((CFDataRef)midiData)"}];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1
{
  v18 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, midiStatus, data1, 0, 0) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAudioUnitMIDIInstrument.mm";
      v12 = 1024;
      v13 = 160;
      v14 = 2080;
      v15 = "[AVAudioUnitMIDIInstrument sendMIDIEvent:data1:]";
      v16 = 2080;
      v17 = "_IMPL->SendMIDIEvent(midiStatus, data1, 0, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(midiStatus, data1, 0, 0, 0)"}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1 data2:(uint8_t)data2
{
  v19 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, midiStatus, data1, data2, 0) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 71;
      v11 = 2080;
      v12 = "AVAudioUnitMIDIInstrument.mm";
      v13 = 1024;
      v14 = 155;
      v15 = 2080;
      v16 = "[AVAudioUnitMIDIInstrument sendMIDIEvent:data1:data2:]";
      v17 = 2080;
      v18 = "_IMPL->SendMIDIEvent(midiStatus, data1, data2, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(midiStatus, data1, data2, 0, 0)"}];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (AVAudioUnitMIDIInstrument)initWithAudioComponentDescription:(AudioComponentDescription *)description
{
  v22 = *MEMORY[0x1E69E9840];
  if ((description->componentFlags & 4) != 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 92;
      v18 = 2080;
      v19 = "[AVAudioUnitMIDIInstrument initWithAudioComponentDescription:]";
      v20 = 2080;
      v21 = "isAUv2";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isAUv2"}];
  }

  componentType = description->componentType;
  if (description->componentType != 1635085673 && componentType != 1635085685 && componentType != 1635086953)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 98;
      v18 = 2080;
      v19 = "[AVAudioUnitMIDIInstrument initWithAudioComponentDescription:]";
      v20 = 2080;
      v21 = "(description.componentType == kAudioUnitType_MusicDevice) || (description.componentType == kAudioUnitType_MIDIProcessor) || (description.componentType == kAudioUnitType_RemoteInstrument)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "(description.componentType == kAudioUnitType_MusicDevice) || (description.componentType == kAudioUnitType_MIDIProcessor) || (description.componentType == kAudioUnitType_RemoteInstrument)"}];
  }

  operator new();
}

@end