@interface SQLitePropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (id)_transformedSQLForEntityClass:(Class)class;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation SQLitePropertyPredicate

- (id)_transformedSQLForEntityClass:(Class)class
{
  property = [(SQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];
  v7 = v6;
  if (v6)
  {
    property2 = v6;
  }

  else
  {
    property2 = [(SQLitePropertyPredicate *)self property];
  }

  v9 = property2;

  transform = [(SQLitePropertyPredicate *)self transform];
  v11 = transform;
  if (transform)
  {
    v12 = [transform transformSQLWithRoot:v9];
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
  property = [(SQLitePropertyPredicate *)self property];
  v5 = [property hash];
  transform = [(SQLitePropertyPredicate *)self transform];
  v7 = [transform hash] + v5;

  return v3 + v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = SQLitePropertyPredicate;
  if ([(SQLitePredicate *)&v16 isEqual:equalCopy])
  {
    property = [(SQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2 || (-[SQLitePropertyPredicate property](self, "property"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy property], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      transform = [(SQLitePropertyPredicate *)self transform];
      transform2 = [equalCopy transform];
      v12 = transform2;
      if (transform == transform2)
      {

        v9 = 1;
      }

      else
      {
        transform3 = [(SQLitePropertyPredicate *)self transform];
        transform4 = [equalCopy transform];
        v9 = [transform3 isEqual:transform4];
      }

      if (property == property2)
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

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  bindingCopy = binding;
  transform = [(SQLitePropertyPredicate *)self transform];
  v7 = transform;
  if (transform)
  {
    [transform applyTransformBinding:bindingCopy atIndex:index];
  }
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