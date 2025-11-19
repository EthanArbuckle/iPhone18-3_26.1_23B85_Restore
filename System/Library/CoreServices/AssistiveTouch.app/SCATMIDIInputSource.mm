@interface SCATMIDIInputSource
- (SCATMIDIInputSource)init;
- (int64_t)_switchKeyForEvent:(id)a3;
- (int64_t)switchKeyForSwitch:(id)a3;
- (void)_handleMIDIEvent:(id)a3 device:(id)a4 entity:(id)a5 endpoint:(id)a6;
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

- (int64_t)_switchKeyForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 channel];
  v5 = [v3 note];

  return v5 | (v4 << 8);
}

- (void)_handleMIDIEvent:(id)a3 device:(id)a4 entity:(id)a5 endpoint:(id)a6
{
  v7 = a3;
  v6 = v7;
  AXPerformBlockOnMainThread();
}

- (int64_t)switchKeyForSwitch:(id)a3
{
  v4 = [a3 midiEvent];
  v5 = [(SCATMIDIInputSource *)self _switchKeyForEvent:v4];

  return v5;
}

@end