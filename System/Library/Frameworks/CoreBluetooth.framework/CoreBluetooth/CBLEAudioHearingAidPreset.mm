@interface CBLEAudioHearingAidPreset
- (CBLEAudioHearingAidPreset)initWithValues:(unsigned __int8)a3 withProperty:(unsigned __int8)a4 withName:(id)a5;
@end

@implementation CBLEAudioHearingAidPreset

- (CBLEAudioHearingAidPreset)initWithValues:(unsigned __int8)a3 withProperty:(unsigned __int8)a4 withName:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = CBLEAudioHearingAidPreset;
  v9 = [(CBLEAudioHearingAidPreset *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_presetIndex = a3;
    v9->_isWritable = a4 & 1;
    v9->_isAvailable = (a4 & 2) != 0;
    v11 = [v8 copy];
    presetName = v10->_presetName;
    v10->_presetName = v11;

    v13 = v10;
  }

  return v10;
}

@end