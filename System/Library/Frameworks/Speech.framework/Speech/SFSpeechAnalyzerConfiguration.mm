@interface SFSpeechAnalyzerConfiguration
- (AVAudioFormat)audioFormat;
- (void)setAudioFormat:(id)a3;
@end

@implementation SFSpeechAnalyzerConfiguration

- (AVAudioFormat)audioFormat
{
  v2 = sub_1AC651260();

  return v2;
}

- (void)setAudioFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AC651304(a3);
}

@end