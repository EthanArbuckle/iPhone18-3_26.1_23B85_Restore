@interface CTRunMetricsDelegate
- (void)dealloc;
@end

@implementation CTRunMetricsDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CTRunMetricsDelegate;
  [(CTRunMetricsDelegate *)&v3 dealloc];
}

@end