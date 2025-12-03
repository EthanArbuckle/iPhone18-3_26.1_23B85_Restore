@interface AMSSQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)property;
+ (id)isNullPredicateWithProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation AMSSQLiteNullPredicate

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
  v8.super_class = AMSSQLiteNullPredicate;
  if ([(AMSSQLitePropertyPredicate *)&v8 isEqual:equalCopy])
  {
    matchesNull = [(AMSSQLiteNullPredicate *)self matchesNull];
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
  property = [(AMSSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = MEMORY[0x1E696AEC0];
  matchesNull = [(AMSSQLiteNullPredicate *)self matchesNull];
  v9 = @"IS NOT NULL";
  if (matchesNull)
  {
    v9 = @"IS NULL";
  }

  v10 = [v7 stringWithFormat:@"%@ %@", v6, v9];

  return v10;
}

@end