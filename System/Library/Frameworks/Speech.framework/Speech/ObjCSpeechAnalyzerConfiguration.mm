@interface ObjCSpeechAnalyzerConfiguration
- (AVAudioFormat)audioFormat;
- (void)setAudioFormat:(id)format;
@end

@implementation ObjCSpeechAnalyzerConfiguration

- (AVAudioFormat)audioFormat
{
  v2 = sub_1AC732F40();

  return v2;
}

- (void)setAudioFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  sub_1AC732FCC(format);
}

@end