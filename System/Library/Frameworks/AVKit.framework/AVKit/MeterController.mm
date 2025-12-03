@interface MeterController
- (void)dealloc;
- (void)receiveAudioSample:(id)sample;
@end

@implementation MeterController

- (void)dealloc
{
  selfCopy = self;
  sub_18B530FC4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for MeterController();
  [(MeterController *)&v3 dealloc];
}

- (void)receiveAudioSample:(id)sample
{
  sampleCopy = sample;
  selfCopy = self;
  sub_18B5316A4(sampleCopy);
}

@end