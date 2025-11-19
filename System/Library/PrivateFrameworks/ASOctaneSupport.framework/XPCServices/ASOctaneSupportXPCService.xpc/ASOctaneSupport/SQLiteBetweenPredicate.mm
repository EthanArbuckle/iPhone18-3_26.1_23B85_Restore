@interface SQLiteBetweenPredicate
+ (id)predicateWithProperty:(id)a3 lowerValue:(id)a4 upperValue:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
- (void)applyBinding:(id)a3 value:(id)a4 atIndex:(int *)a5;
@end

@implementation SQLiteBetweenPredicate

+ (id)predicateWithProperty:(id)a3 lowerValue:(id)a4 upperValue:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v9 copy];

  v12 = v10[1];
  v10[1] = v11;

  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v13 = [v7 copy];
  }

  else
  {
    v13 = v7;
  }

  v14 = v10[3];
  v10[3] = v13;

  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v15 = [v8 copy];
  }

  else
  {
    v15 = v8;
  }

  v16 = v10[4];
  v10[4] = v15;

  return v10;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v7.receiver = self;
  v7.super_class = SQLiteBetweenPredicate;
  v6 = a3;
  [(SQLitePropertyPredicate *)&v7 applyBinding:v6 atIndex:a4];
  [(SQLiteBetweenPredicate *)self applyBinding:v6 value:self->_lowerValue atIndex:a4, v7.receiver, v7.super_class];
  [(SQLiteBetweenPredicate *)self applyBinding:v6 value:self->_upperValue atIndex:a4];
}

- (void)applyBinding:(id)a3 value:(id)a4 atIndex:(int *)a5
{
  v8 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 bindString:v7 atPosition:*a5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 bindNumber:v7 atPosition:*a5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 bindUUID:v7 atPosition:*a5];
      }
    }
  }

  ++*a5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> %@ BETWEEN '%@' AND '%@'", v4, self, self->super._property, self->_lowerValue, self->_upperValue];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SQLitePropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(SQLiteBetweenPredicate *)self lowerValue];
  v6 = &v4[[v5 hash]];
  v7 = [(SQLiteBetweenPredicate *)self upperValue];
  v8 = [v7 hash];

  return v8 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SQLiteBetweenPredicate;
  if ([(SQLitePropertyPredicate *)&v16 isEqual:v6])
  {
    v7 = [(SQLiteBetweenPredicate *)self lowerValue];
    v8 = [v6 lowerValue];
    if (v7 == v8 || (-[SQLiteBetweenPredicate lowerValue](self, "lowerValue"), v3 = objc_claimAutoreleasedReturnValue(), [v6 lowerValue], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v10 = [(SQLiteBetweenPredicate *)self upperValue];
      v11 = [v6 upperValue];
      v12 = v11;
      if (v10 == v11)
      {

        v9 = 1;
      }

      else
      {
        v13 = [(SQLiteBetweenPredicate *)self upperValue];
        v14 = [v6 upperValue];
        v9 = [v13 isEqual:v14];
      }

      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)SQLForEntityClass:(Class)a3
{
  v3 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:a3];
  v4 = [NSString stringWithFormat:@"%@ BETWEEN ? AND ?", v3];

  return v4;
}

@end