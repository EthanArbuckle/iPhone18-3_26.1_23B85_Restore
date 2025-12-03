@interface SCATMIDIInputSource
- (SCATMIDIInputSource)init;
- (int64_t)_switchKeyForEvent:(id)event;
- (int64_t)switchKeyForSwitch:(id)switch;
- (void)_handleMIDIEvent:(id)event device:(id)device entity:(id)entity endpoint:(id)endpoint;
@end

@implementation SCATMIDIInputSource

- (SCATMIDIInputSource)init
{
  v13.receiver = self;
  v13.super_class = SCATMIDIInputSource;
  v2 = [(SCATInputSource *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [AXMIDIManager alloc];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000EB818;
    v10 = &unk_1001D7740;
    objc_copyWeak(&v11, &location);
    v4 = [v3 initWithIdentifier:@"SwitchControl" eventHandler:&v7];
    midiManager = v2->_midiManager;
    v2->_midiManager = v4;

    [(AXMIDIManager *)v2->_midiManager printAttachedDevices:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (int64_t)_switchKeyForEvent:(id)event
{
  eventCopy = event;
  channel = [eventCopy channel];
  note = [eventCopy note];

  return note | (channel << 8);
}

- (void)_handleMIDIEvent:(id)event device:(id)device entity:(id)entity endpoint:(id)endpoint
{
  eventCopy = event;
  v6 = eventCopy;
  AXPerformBlockOnMainThread();
}

- (int64_t)switchKeyForSwitch:(id)switch
{
  midiEvent = [switch midiEvent];
  v5 = [(SCATMIDIInputSource *)self _switchKeyForEvent:midiEvent];

  return v5;
}

@end