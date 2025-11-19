@interface AMSEngagementEnqueueContext
- (AMSEngagementEnqueueContext)init;
@end

@implementation AMSEngagementEnqueueContext

- (AMSEngagementEnqueueContext)init
{
  v5.receiver = self;
  v5.super_class = AMSEngagementEnqueueContext;
  v2 = [(AMSEngagementEnqueueContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AMSEngagementEnqueueContext *)v2 setSignpostID:0];
  }

  return v3;
}

@end