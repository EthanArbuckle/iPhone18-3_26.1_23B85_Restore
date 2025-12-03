@interface SQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (unint64_t)hash;
@end

@implementation SQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SQLitePropertyPredicate;
  v3 = [(SQLitePredicate *)&v7 hash];
  property = [(SQLitePropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = SQLitePropertyPredicate;
  if ([(SQLitePredicate *)&v11 isEqual:equalCopy])
  {
    property = [(SQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2)
    {
      v9 = 1;
    }

    else
    {
      property3 = [(SQLitePropertyPredicate *)self property];
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
    v4 = [NSSet setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end