@interface SampleReceiver.TapDelegate
- (_TtCC9MusicCore14SampleReceiver11TapDelegate)init;
- (void)processAudioTapDidReceiveAudioSamples:(void *)samples numberOfSamples:(unsigned int)ofSamples;
@end

@implementation SampleReceiver.TapDelegate

- (void)processAudioTapDidReceiveAudioSamples:(void *)samples numberOfSamples:(unsigned int)ofSamples
{
  selfCopy = self;
  sub_1002D2A04(samples, ofSamples);
}

- (_TtCC9MusicCore14SampleReceiver11TapDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end