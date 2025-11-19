@interface ObjCSpeechAnalyzerConfiguration
- (AVAudioFormat)audioFormat;
- (void)setAudioFormat:(id)a3;
@end

@implementation ObjCSpeechAnalyzerConfiguration

- (AVAudioFormat)audioFormat
{
  v2 = sub_1AC732F40();

  return v2;
}

- (void)setAudioFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AC732FCC(a3);
}

@end