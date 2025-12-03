@interface SNCorrelateAudioRequest
- (void)setOverlapFactor:(double)factor;
@end

@implementation SNCorrelateAudioRequest

- (void)setOverlapFactor:(double)factor
{
  selfCopy = self;
  sub_1C9855280(factor);
}

@end