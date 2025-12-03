@interface AMSSQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (unint64_t)hash;
@end

@implementation AMSSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = AMSSQLitePropertyPredicate;
  v3 = [(AMSSQLitePredicate *)&v7 hash];
  property = [(AMSSQLitePropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = AMSSQLitePropertyPredicate;
  if ([(AMSSQLitePredicate *)&v11 isEqual:equalCopy])
  {
    property = [(AMSSQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2)
    {
      v9 = 1;
    }

    else
    {
      property3 = [(AMSSQLitePropertyPredicate *)self property];
      property4 = [equalCopy property];
      v9 = [property3 isEqual:property4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v3 = [(objc_class *)class joinClauseForProperty:self->_property];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end