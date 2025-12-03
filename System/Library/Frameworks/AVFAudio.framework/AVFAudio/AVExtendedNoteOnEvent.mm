@interface AVExtendedNoteOnEvent
- (AVExtendedNoteOnEvent)initWithMIDINote:(float)midiNote velocity:(float)velocity groupID:(UInt32)groupID duration:(AVMusicTimeStamp)duration;
- (AVExtendedNoteOnEvent)initWithMIDINote:(float)midiNote velocity:(float)velocity instrumentID:(UInt32)instrumentID groupID:(UInt32)groupID duration:(AVMusicTimeStamp)duration;
- (AVExtendedNoteOnEvent)initWithNoteOnEvent:(ExtendedNoteOnEvent *)event;
- (void)dealloc;
@end

@implementation AVExtendedNoteOnEvent

- (void)dealloc
{
  free(self->_event);
  v3.receiver = self;
  v3.super_class = AVExtendedNoteOnEvent;
  [(AVExtendedNoteOnEvent *)&v3 dealloc];
}

- (AVExtendedNoteOnEvent)initWithNoteOnEvent:(ExtendedNoteOnEvent *)event
{
  v8.receiver = self;
  v8.super_class = AVExtendedNoteOnEvent;
  v4 = [(AVExtendedNoteOnEvent *)&v8 init];
  if (v4)
  {
    v5 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v4->_event = v5;
    v6 = *&event->extendedParams.mPitch;
    *&v5->instrumentID = *&event->instrumentID;
    *&v5->extendedParams.mPitch = v6;
    v4->_event->extendedParams.argCount = 2;
  }

  return v4;
}

- (AVExtendedNoteOnEvent)initWithMIDINote:(float)midiNote velocity:(float)velocity groupID:(UInt32)groupID duration:(AVMusicTimeStamp)duration
{
  v14.receiver = self;
  v14.super_class = AVExtendedNoteOnEvent;
  v10 = [(AVExtendedNoteOnEvent *)&v14 init];
  if (v10)
  {
    v11 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v10->_event = v11;
    v11->instrumentID = -1;
    v11->groupID = groupID;
    v12 = duration;
    v11->duration = v12;
    v11->extendedParams.argCount = 2;
    v11->extendedParams.mPitch = midiNote;
    v11->extendedParams.mVelocity = velocity;
    v11->extendedParams.mControls[0] = 0;
  }

  return v10;
}

- (AVExtendedNoteOnEvent)initWithMIDINote:(float)midiNote velocity:(float)velocity instrumentID:(UInt32)instrumentID groupID:(UInt32)groupID duration:(AVMusicTimeStamp)duration
{
  v16.receiver = self;
  v16.super_class = AVExtendedNoteOnEvent;
  v12 = [(AVExtendedNoteOnEvent *)&v16 init];
  if (v12)
  {
    v13 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v12->_event = v13;
    v13->instrumentID = instrumentID;
    v13->groupID = groupID;
    v14 = duration;
    v13->duration = v14;
    v13->extendedParams.argCount = 2;
    v13->extendedParams.mPitch = midiNote;
    v13->extendedParams.mVelocity = velocity;
    v13->extendedParams.mControls[0] = 0;
  }

  return v12;
}

@end