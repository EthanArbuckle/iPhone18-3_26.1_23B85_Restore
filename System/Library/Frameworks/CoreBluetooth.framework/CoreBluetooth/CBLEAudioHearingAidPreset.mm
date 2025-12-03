@interface CBLEAudioHearingAidPreset
- (CBLEAudioHearingAidPreset)initWithValues:(unsigned __int8)values withProperty:(unsigned __int8)property withName:(id)name;
@end

@implementation CBLEAudioHearingAidPreset

- (CBLEAudioHearingAidPreset)initWithValues:(unsigned __int8)values withProperty:(unsigned __int8)property withName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = CBLEAudioHearingAidPreset;
  v9 = [(CBLEAudioHearingAidPreset *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_presetIndex = values;
    v9->_isWritable = property & 1;
    v9->_isAvailable = (property & 2) != 0;
    v11 = [nameCopy copy];
    presetName = v10->_presetName;
    v10->_presetName = v11;

    v13 = v10;
  }

  return v10;
}

@end