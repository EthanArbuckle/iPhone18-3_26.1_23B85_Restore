@interface AVAudioUnitSplitter
- (AVAudioUnitSplitter)init;
@end

@implementation AVAudioUnitSplitter

- (AVAudioUnitSplitter)init
{
  v3 = xmmword_1BA6CF3E0;
  v4 = 0;
  return [(AVAudioUnitSplitter *)self initWithAudioComponentDescription:&v3];
}

@end