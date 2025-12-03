@interface _APUICardRequestCompactSatisfactionCriteria
- (unint64_t)servicePriorityForRequest:(id)request;
@end

@implementation _APUICardRequestCompactSatisfactionCriteria

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  if ([(_APUICardRequestCompactSatisfactionCriteria *)self canSatisfyCardRequest:requestCopy])
  {
    v5 = 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _APUICardRequestCompactSatisfactionCriteria;
    v5 = [(APUICardRequestSatisfactionCriteria *)&v7 servicePriorityForRequest:requestCopy];
  }

  return v5;
}

@end