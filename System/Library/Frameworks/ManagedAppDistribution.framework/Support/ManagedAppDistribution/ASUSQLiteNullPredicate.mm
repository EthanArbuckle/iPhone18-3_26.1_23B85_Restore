@interface ASUSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation ASUSQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 0;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)property
{
  propertyCopy = property;
  v4 = objc_alloc_init(objc_opt_class());
  v4[16] = 1;
  v5 = [propertyCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ASUSQLiteNullPredicate;
  if ([(ASUSQLitePropertyPredicate *)&v8 isEqual:equalCopy])
  {
    matchesNull = [(ASUSQLiteNullPredicate *)self matchesNull];
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
  property = [(ASUSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  matchesNull = [(ASUSQLiteNullPredicate *)self matchesNull];
  v8 = @"IS NOT NULL";
  if (matchesNull)
  {
    v8 = @"IS NULL";
  }

  v9 = [NSString stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

@end