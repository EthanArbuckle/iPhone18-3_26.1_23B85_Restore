@interface _PHFetchRequestWrapper
- (BOOL)isEqual:(id)a3;
- (_PHFetchRequestWrapper)initWithFetchRequest:(id)a3 containerIdentifier:(id)a4 fetchPropertySets:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _PHFetchRequestWrapper

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(_PHFetchRequestWrapper *)self fetchRequest];
  v5 = [v4 copy];

  v6 = [_PHFetchRequestWrapper alloc];
  v7 = [(NSManagedObjectID *)self->_containerIdentifier copy];
  v8 = [(_PHFetchRequestWrapper *)v6 initWithFetchRequest:v5 containerIdentifier:v7 fetchPropertySets:self->_fetchPropertySets];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_PHFetchRequestWrapper *)self fetchRequest];
    v6 = [v4 fetchRequest];
    if (![v5 isEqual:v6])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [(_PHFetchRequestWrapper *)self containerIdentifier];
    v8 = [v4 containerIdentifier];
    if (v7 == v8)
    {
      [(_PHFetchRequestWrapper *)self fetchPropertySets:v18];
    }

    else
    {
      v9 = [(_PHFetchRequestWrapper *)self containerIdentifier];
      v10 = [v4 containerIdentifier];
      if (![v9 isEqual:v10])
      {
        v11 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(_PHFetchRequestWrapper *)self fetchPropertySets:v10];
    }
    v12 = ;
    v13 = [v4 fetchPropertySets];
    v14 = v13;
    if (v12 == v13)
    {

      v11 = 1;
    }

    else
    {
      v15 = [(_PHFetchRequestWrapper *)self fetchPropertySets];
      v16 = [v4 fetchPropertySets];
      v11 = [v15 isEqualToSet:v16];
    }

    v10 = v19;
    v9 = v21;
    if (v7 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (_PHFetchRequestWrapper)initWithFetchRequest:(id)a3 containerIdentifier:(id)a4 fetchPropertySets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _PHFetchRequestWrapper;
  v12 = [(_PHFetchRequestWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchRequest, a3);
    v14 = [v9 predicate];
    v15 = v14;
    if (v14)
    {
      v13->_hash = PHFastHashForPredicate(v14);
    }

    else
    {
      v16 = [v9 entityName];
      v13->_hash = [v16 hash];
    }

    objc_storeStrong(&v13->_containerIdentifier, a4);
    objc_storeStrong(&v13->_fetchPropertySets, a5);
  }

  return v13;
}

@end