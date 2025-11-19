@interface _APUICardRequestCompactSatisfactionCriteria
- (unint64_t)servicePriorityForRequest:(id)a3;
@end

@implementation _APUICardRequestCompactSatisfactionCriteria

- (unint64_t)servicePriorityForRequest:(id)a3
{
  v4 = a3;
  if ([(_APUICardRequestCompactSatisfactionCriteria *)self canSatisfyCardRequest:v4])
  {
    v5 = 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _APUICardRequestCompactSatisfactionCriteria;
    v5 = [(APUICardRequestSatisfactionCriteria *)&v7 servicePriorityForRequest:v4];
  }

  return v5;
}

@end