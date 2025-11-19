@interface _APUICardRequestCustomIntentSatisfactionCriteria
- (BOOL)canSatisfyCardRequest:(id)a3;
- (unint64_t)servicePriorityForRequest:(id)a3;
@end

@implementation _APUICardRequestCustomIntentSatisfactionCriteria

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = [a3 content];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 apui_intent], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (unint64_t)servicePriorityForRequest:(id)a3
{
  v4 = a3;
  if ([(_APUICardRequestCustomIntentSatisfactionCriteria *)self canSatisfyCardRequest:v4])
  {
    v5 = 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _APUICardRequestCustomIntentSatisfactionCriteria;
    v5 = [(APUICardRequestSatisfactionCriteria *)&v7 servicePriorityForRequest:v4];
  }

  return v5;
}

@end