@interface SQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation SQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[24] = 0;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[24] = 1;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = SQLiteNullPredicate;
  if ([(SQLitePropertyPredicate *)&v8 isEqual:equalCopy])
  {
    matchesNull = [(SQLiteNullPredicate *)self matchesNull];
    v6 = matchesNull ^ [equalCopy matchesNull] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)SQLForEntityClass:(Class)class
{
  v4 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:class];
  matchesNull = [(SQLiteNullPredicate *)self matchesNull];
  v6 = @"IS NOT NULL";
  if (matchesNull)
  {
    v6 = @"IS NULL";
  }

  v7 = [NSString stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

@end