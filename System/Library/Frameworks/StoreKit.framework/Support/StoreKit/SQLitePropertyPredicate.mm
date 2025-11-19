@interface SQLitePropertyPredicate
- (BOOL)isEqual:(id)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (id)_transformedSQLForEntityClass:(Class)a3;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation SQLitePropertyPredicate

- (id)_transformedSQLForEntityClass:(Class)a3
{
  v5 = [(SQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(SQLitePropertyPredicate *)self property];
  }

  v9 = v8;

  v10 = [(SQLitePropertyPredicate *)self transform];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 transformSQLWithRoot:v9];
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  return v13;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SQLitePropertyPredicate;
  v3 = [(SQLitePredicate *)&v9 hash];
  v4 = [(SQLitePropertyPredicate *)self property];
  v5 = [v4 hash];
  v6 = [(SQLitePropertyPredicate *)self transform];
  v7 = [v6 hash] + v5;

  return v3 + v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SQLitePropertyPredicate;
  if ([(SQLitePredicate *)&v16 isEqual:v6])
  {
    v7 = [(SQLitePropertyPredicate *)self property];
    v8 = [v6 property];
    if (v7 == v8 || (-[SQLitePropertyPredicate property](self, "property"), v3 = objc_claimAutoreleasedReturnValue(), [v6 property], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v10 = [(SQLitePropertyPredicate *)self transform];
      v11 = [v6 transform];
      v12 = v11;
      if (v10 == v11)
      {

        v9 = 1;
      }

      else
      {
        v13 = [(SQLitePropertyPredicate *)self transform];
        v14 = [v6 transform];
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

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v8 = a3;
  v6 = [(SQLitePropertyPredicate *)self transform];
  v7 = v6;
  if (v6)
  {
    [v6 applyTransformBinding:v8 atIndex:a4];
  }
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v3 = [(objc_class *)a3 joinClauseForProperty:self->_property];
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