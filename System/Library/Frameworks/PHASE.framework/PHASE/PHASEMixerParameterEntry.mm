@interface PHASEMixerParameterEntry
- (PHASEMixerParameterEntry)init;
@end

@implementation PHASEMixerParameterEntry

- (PHASEMixerParameterEntry)init
{
  v8.receiver = self;
  v8.super_class = PHASEMixerParameterEntry;
  v2 = [(PHASEMixerParameterEntry *)&v8 init];
  v3 = v2;
  if (v2)
  {
    source = v2->_source;
    v2->_source = 0;

    listener = v3->_listener;
    v3->_listener = 0;

    v3->_mixerType = 0;
    v6 = v3;
  }

  return v3;
}

@end