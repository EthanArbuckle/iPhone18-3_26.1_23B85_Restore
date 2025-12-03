@interface ASUSQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (unint64_t)hash;
@end

@implementation ASUSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ASUSQLitePropertyPredicate;
  v3 = [(ASUSQLitePredicate *)&v7 hash];
  property = [(ASUSQLitePropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = ASUSQLitePropertyPredicate;
  if ([(ASUSQLitePredicate *)&v11 isEqual:equalCopy])
  {
    property = [(ASUSQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2)
    {
      v9 = 1;
    }

    else
    {
      property3 = [(ASUSQLitePropertyPredicate *)self property];
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
    v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end