@interface VOTSpeechRotor
- (VOTSpeechRotor)init;
@end

@implementation VOTSpeechRotor

- (VOTSpeechRotor)init
{
  v8.receiver = self;
  v8.super_class = VOTSpeechRotor;
  v2 = [(VOTRotor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    j__CFArrayAppendValue(v2->super._currentRotors, 0x50);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x51);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x55);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x52);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x56);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x53);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x54);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x57);
    j__CFArrayAppendValue(v3->super._currentRotors, 0x58);
    v4 = +[VOTOutputManager outputManager];
    externalAudioRouteSelected = [v4 externalAudioRouteSelected];

    if (externalAudioRouteSelected)
    {
      j__CFArrayAppendValue(v3->super._currentRotors, 0x59);
    }

    v6 = v3;
  }

  return v3;
}

@end