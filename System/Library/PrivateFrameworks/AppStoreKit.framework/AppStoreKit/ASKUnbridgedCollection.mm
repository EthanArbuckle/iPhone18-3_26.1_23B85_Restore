@interface ASKUnbridgedCollection
- (ASKUnbridgedCollection)initWithCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASKUnbridgedCollection

- (ASKUnbridgedCollection)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = ASKUnbridgedCollection;
  v6 = [(ASKUnbridgedCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
  }

  return v7;
}

- (unint64_t)hash
{
  collection = [(ASKUnbridgedCollection *)self collection];
  v3 = [collection hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    collection = [(ASKUnbridgedCollection *)self collection];
    collection2 = [v5 collection];

    v8 = [collection isEqual:collection2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  collection = [(ASKUnbridgedCollection *)self collection];
  v3 = [collection description];

  return v3;
}

- (id)debugDescription
{
  collection = [(ASKUnbridgedCollection *)self collection];
  v3 = [collection debugDescription];

  return v3;
}

@end