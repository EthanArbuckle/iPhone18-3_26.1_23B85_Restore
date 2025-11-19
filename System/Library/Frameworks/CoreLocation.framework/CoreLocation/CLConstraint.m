@interface CLConstraint
- (CLConstraint)initWithCoder:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initConstraint;
- (void)dealloc;
@end

@implementation CLConstraint

- (id)initConstraint
{
  v3.receiver = self;
  v3.super_class = CLConstraint;
  return [(CLCondition *)&v3 initCondition];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLConstraint;
  [(CLCondition *)&v2 dealloc];
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = CLConstraint;
  return [(CLCondition *)&v3 copy];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CLConstraint;
  return [(CLCondition *)&v4 copy];
}

- (CLConstraint)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLConstraint;
  return [(CLCondition *)&v4 initWithCoder:a3];
}

@end