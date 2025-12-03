@interface MeterController
- (void)dealloc;
- (void)receiveAudioSample:(id)sample;
@end

@implementation MeterController

- (void)dealloc
{
  selfCopy = self;
  sub_100007218();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for MeterController();
  [(MeterController *)&v3 dealloc];
}

- (void)receiveAudioSample:(id)sample
{
  sampleCopy = sample;
  selfCopy = self;
  sub_1000078F8(sampleCopy);
}

@end