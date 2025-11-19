@interface WFQueuedStatusPresentation
- (BOOL)isEqual:(id)a3;
- (WFQueuedStatusPresentation)initWithRunningContext:(id)a3;
- (unint64_t)hash;
@end

@implementation WFQueuedStatusPresentation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFQueuedStatusPresentation *)self context];
    v6 = [v4 context];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WFQueuedStatusPresentation *)self context];
  v3 = [v2 hash];

  return v3;
}

- (WFQueuedStatusPresentation)initWithRunningContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFQueuedStatusPresentation;
  v6 = [(WFQueuedStatusPresentation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = v7;
  }

  return v7;
}

@end