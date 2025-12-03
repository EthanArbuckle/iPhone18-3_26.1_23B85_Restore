@interface SFSpeechAnalyzerConfiguration
- (AVAudioFormat)audioFormat;
- (void)setAudioFormat:(id)format;
@end

@implementation SFSpeechAnalyzerConfiguration

- (AVAudioFormat)audioFormat
{
  v2 = sub_1AC651260();

  return v2;
}

- (void)setAudioFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  sub_1AC651304(format);
}

@end