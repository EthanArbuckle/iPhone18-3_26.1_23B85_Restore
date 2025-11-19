@interface SASyncGetAnchors
- (id)ad_deferredMetricsContext;
@end

@implementation SASyncGetAnchors

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASyncGetAnchors;
  v3 = [(SASyncGetAnchors *)&v7 ad_deferredMetricsContext];
  v4 = [(SASyncGetAnchors *)self syncReason];
  if (v4)
  {
    [v3 setObject:v4 forKey:SASyncGetAnchorsSyncReasonPListKey];
  }

  v5 = [(SASyncGetAnchors *)self sources];
  if (v5)
  {
    [v3 setObject:v5 forKey:SASyncGetAnchorsSourcesPListKey];
  }

  return v3;
}

@end