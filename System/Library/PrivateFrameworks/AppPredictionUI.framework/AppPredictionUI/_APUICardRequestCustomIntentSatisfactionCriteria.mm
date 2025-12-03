@interface _APUICardRequestCustomIntentSatisfactionCriteria
- (BOOL)canSatisfyCardRequest:(id)request;
- (unint64_t)servicePriorityForRequest:(id)request;
@end

@implementation _APUICardRequestCustomIntentSatisfactionCriteria

- (BOOL)canSatisfyCardRequest:(id)request
{
  content = [request content];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([content apui_intent], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 _type] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  if ([(_APUICardRequestCustomIntentSatisfactionCriteria *)self canSatisfyCardRequest:requestCopy])
  {
    v5 = 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _APUICardRequestCustomIntentSatisfactionCriteria;
    v5 = [(APUICardRequestSatisfactionCriteria *)&v7 servicePriorityForRequest:requestCopy];
  }

  return v5;
}

@end