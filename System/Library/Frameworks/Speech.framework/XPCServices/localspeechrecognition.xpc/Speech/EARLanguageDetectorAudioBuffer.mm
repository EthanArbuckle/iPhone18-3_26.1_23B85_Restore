@interface EARLanguageDetectorAudioBuffer
- (void)addAudioSampleData:(id)data;
- (void)endAudio;
@end

@implementation EARLanguageDetectorAudioBuffer

- (void)addAudioSampleData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_100046B3C();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1000123F0(dataCopy, v7);
  sub_10000C198(dataCopy, v7);
}

- (void)endAudio
{
  selfCopy = self;
  sub_1000125E0();
}

@end