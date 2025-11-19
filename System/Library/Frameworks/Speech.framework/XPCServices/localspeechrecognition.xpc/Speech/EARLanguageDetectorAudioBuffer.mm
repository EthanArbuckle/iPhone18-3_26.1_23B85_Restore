@interface EARLanguageDetectorAudioBuffer
- (void)addAudioSampleData:(id)a3;
- (void)endAudio;
@end

@implementation EARLanguageDetectorAudioBuffer

- (void)addAudioSampleData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_100046B3C();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1000123F0(v3, v7);
  sub_10000C198(v3, v7);
}

- (void)endAudio
{
  v2 = self;
  sub_1000125E0();
}

@end