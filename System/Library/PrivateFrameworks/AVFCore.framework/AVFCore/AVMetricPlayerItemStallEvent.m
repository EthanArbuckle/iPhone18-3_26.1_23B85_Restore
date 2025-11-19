@interface AVMetricPlayerItemStallEvent
- (id)debugDescription;
@end

@implementation AVMetricPlayerItemStallEvent

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemStallEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemStallEvent:%p %@>", self, -[AVMetricPlayerItemRateChangeEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr)];
}

@end