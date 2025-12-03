@interface WFQueuedStatusPresentation
- (BOOL)isEqual:(id)equal;
- (WFQueuedStatusPresentation)initWithRunningContext:(id)context;
- (unint64_t)hash;
@end

@implementation WFQueuedStatusPresentation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    context = [(WFQueuedStatusPresentation *)self context];
    context2 = [equalCopy context];
    v7 = [context isEqual:context2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  context = [(WFQueuedStatusPresentation *)self context];
  v3 = [context hash];

  return v3;
}

- (WFQueuedStatusPresentation)initWithRunningContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = WFQueuedStatusPresentation;
  v6 = [(WFQueuedStatusPresentation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = v7;
  }

  return v7;
}

@end