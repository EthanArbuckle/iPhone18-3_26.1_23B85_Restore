@interface SQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation SQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4
{
  v6 = a3;
  v7 = [[NSNumber alloc] initWithLongLong:a4];
  v8 = [a1 predicateWithProperty:v6 equalToValue:v7];

  return v8;
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

  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
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

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 bindUUID:self->_value atPosition:*a4];
      }
    }
  }

  ++*a4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  property = self->super._property;
  v6 = sub_10032E3D8(self);
  v7 = [NSString stringWithFormat:@"<%@: %p> %@ %@ '%@'", v4, self, property, v6, self->_value];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SQLitePropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(SQLiteComparisonPredicate *)self value];
  v6 = [v5 hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SQLiteComparisonPredicate;
  if (-[SQLitePropertyPredicate isEqual:](&v12, "isEqual:", v4) && (v5 = -[SQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [v4 comparisonType]))
  {
    v6 = [(SQLiteComparisonPredicate *)self value];
    v7 = [v4 value];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(SQLiteComparisonPredicate *)self value];
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
  v5 = [(SQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = sub_10032E3D8(self);
  v8 = [NSString stringWithFormat:@"%@ %@ ?", v6, v7];

  return v8;
}

@end