@interface SQLiteNullPredicate
+ (id)isNotNullPredicateWithProperty:(id)a3;
+ (id)isNullPredicateWithProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
@end

@implementation SQLiteNullPredicate

+ (id)isNotNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[24] = 0;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

+ (id)isNullPredicateWithProperty:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[24] = 1;
  v5 = [v3 copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SQLiteNullPredicate;
  if ([(SQLitePropertyPredicate *)&v8 isEqual:v4])
  {
    v5 = [(SQLiteNullPredicate *)self matchesNull];
    v6 = v5 ^ [v4 matchesNull] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)SQLForEntityClass:(Class)a3
{
  v4 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:a3];
  v5 = [(SQLiteNullPredicate *)self matchesNull];
  v6 = @"IS NOT NULL";
  if (v5)
  {
    v6 = @"IS NULL";
  }

  v7 = [NSString stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

@end