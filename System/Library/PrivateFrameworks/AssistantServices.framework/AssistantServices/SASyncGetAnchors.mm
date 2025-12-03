@interface SASyncGetAnchors
- (id)ad_deferredMetricsContext;
@end

@implementation SASyncGetAnchors

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASyncGetAnchors;
  ad_deferredMetricsContext = [(SASyncGetAnchors *)&v7 ad_deferredMetricsContext];
  syncReason = [(SASyncGetAnchors *)self syncReason];
  if (syncReason)
  {
    [ad_deferredMetricsContext setObject:syncReason forKey:SASyncGetAnchorsSyncReasonPListKey];
  }

  sources = [(SASyncGetAnchors *)self sources];
  if (sources)
  {
    [ad_deferredMetricsContext setObject:sources forKey:SASyncGetAnchorsSourcesPListKey];
  }

  return ad_deferredMetricsContext;
}

@end