@interface ASUSQLitePropertyPredicate
- (BOOL)isEqual:(id)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (unint64_t)hash;
@end

@implementation ASUSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ASUSQLitePropertyPredicate;
  v3 = [(ASUSQLitePredicate *)&v7 hash];
  v4 = [(ASUSQLitePropertyPredicate *)self property];
  v5 = [v4 hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASUSQLitePropertyPredicate;
  if ([(ASUSQLitePredicate *)&v11 isEqual:v4])
  {
    v5 = [(ASUSQLitePropertyPredicate *)self property];
    v6 = [v4 property];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(ASUSQLitePropertyPredicate *)self property];
      v8 = [v4 property];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v3 = [(objc_class *)a3 joinClauseForProperty:self->_property];
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