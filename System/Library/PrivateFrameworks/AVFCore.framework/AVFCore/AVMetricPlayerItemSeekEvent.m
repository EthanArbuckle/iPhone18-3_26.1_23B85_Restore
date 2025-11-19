@interface AVMetricPlayerItemSeekEvent
- (id)debugDescription;
@end

@implementation AVMetricPlayerItemSeekEvent

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemSeekEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemSeekEvent:%p %@>", self, -[AVMetricPlayerItemRateChangeEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr)];
}

@end