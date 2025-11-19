@interface MeterController
- (void)dealloc;
- (void)receiveAudioSample:(id)a3;
@end

@implementation MeterController

- (void)dealloc
{
  v2 = self;
  sub_100007218();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for MeterController();
  [(MeterController *)&v3 dealloc];
}

- (void)receiveAudioSample:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000078F8(v4);
}

@end