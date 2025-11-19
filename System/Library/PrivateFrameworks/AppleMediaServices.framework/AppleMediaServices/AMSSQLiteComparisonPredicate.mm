@interface AMSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)_comparisonTypeString;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation AMSSQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [[v6 alloc] initWithLongLong:a4];
  v9 = [a1 predicateWithProperty:v7 equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(objc_opt_class());
  v9[2] = a5;
  v10 = [v8 copy];

  v11 = v9[1];
  v9[1] = v10;

  if ([v7 conformsToProtocol:&unk_1F077B560])
  {
    v12 = [v7 copy];
  }

  else
  {
    v12 = v7;
  }

  v13 = v9[3];
  v9[3] = v12;

  return v9;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 bindString:self->_value atPosition:*a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 bindNumber:self->_value atPosition:*a4];
    }
  }

  ++*a4;
}

- (unint64_t)hash
{
  v3 = [(AMSSQLitePropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(AMSSQLiteComparisonPredicate *)self value];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSSQLiteComparisonPredicate;
  if (-[AMSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, v4) && (v5 = -[AMSSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [v4 comparisonType]))
  {
    v6 = [(AMSSQLiteComparisonPredicate *)self value];
    v7 = [v4 value];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(AMSSQLiteComparisonPredicate *)self value];
      v9 = [v4 value];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [(AMSSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(AMSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"%@ %@ ?", v6, v8];

  return v9;
}

- (id)_comparisonTypeString
{
  v2 = [(AMSSQLiteComparisonPredicate *)self comparisonType];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E73BC160[v2 - 1];
  }
}

@end