@interface DownlinkParticipantStats
- (void)dealloc;
@end

@implementation DownlinkParticipantStats

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownlinkParticipantStats;
  [(DownlinkParticipantStats *)&v3 dealloc];
}

@end