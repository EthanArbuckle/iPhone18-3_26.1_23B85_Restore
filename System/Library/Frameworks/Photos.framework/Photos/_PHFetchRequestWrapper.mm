@interface _PHFetchRequestWrapper
- (BOOL)isEqual:(id)equal;
- (_PHFetchRequestWrapper)initWithFetchRequest:(id)request containerIdentifier:(id)identifier fetchPropertySets:(id)sets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _PHFetchRequestWrapper

- (id)copyWithZone:(_NSZone *)zone
{
  fetchRequest = [(_PHFetchRequestWrapper *)self fetchRequest];
  v5 = [fetchRequest copy];

  v6 = [_PHFetchRequestWrapper alloc];
  v7 = [(NSManagedObjectID *)self->_containerIdentifier copy];
  v8 = [(_PHFetchRequestWrapper *)v6 initWithFetchRequest:v5 containerIdentifier:v7 fetchPropertySets:self->_fetchPropertySets];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchRequest = [(_PHFetchRequestWrapper *)self fetchRequest];
    fetchRequest2 = [equalCopy fetchRequest];
    if (![fetchRequest isEqual:fetchRequest2])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    containerIdentifier = [(_PHFetchRequestWrapper *)self containerIdentifier];
    containerIdentifier2 = [equalCopy containerIdentifier];
    if (containerIdentifier == containerIdentifier2)
    {
      [(_PHFetchRequestWrapper *)self fetchPropertySets:v18];
    }

    else
    {
      containerIdentifier3 = [(_PHFetchRequestWrapper *)self containerIdentifier];
      containerIdentifier4 = [equalCopy containerIdentifier];
      if (![containerIdentifier3 isEqual:containerIdentifier4])
      {
        v11 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(_PHFetchRequestWrapper *)self fetchPropertySets:containerIdentifier4];
    }
    v12 = ;
    fetchPropertySets = [equalCopy fetchPropertySets];
    v14 = fetchPropertySets;
    if (v12 == fetchPropertySets)
    {

      v11 = 1;
    }

    else
    {
      fetchPropertySets2 = [(_PHFetchRequestWrapper *)self fetchPropertySets];
      fetchPropertySets3 = [equalCopy fetchPropertySets];
      v11 = [fetchPropertySets2 isEqualToSet:fetchPropertySets3];
    }

    containerIdentifier4 = v19;
    containerIdentifier3 = v21;
    if (containerIdentifier == containerIdentifier2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (_PHFetchRequestWrapper)initWithFetchRequest:(id)request containerIdentifier:(id)identifier fetchPropertySets:(id)sets
{
  requestCopy = request;
  identifierCopy = identifier;
  setsCopy = sets;
  v18.receiver = self;
  v18.super_class = _PHFetchRequestWrapper;
  v12 = [(_PHFetchRequestWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchRequest, request);
    predicate = [requestCopy predicate];
    v15 = predicate;
    if (predicate)
    {
      v13->_hash = PHFastHashForPredicate(predicate);
    }

    else
    {
      entityName = [requestCopy entityName];
      v13->_hash = [entityName hash];
    }

    objc_storeStrong(&v13->_containerIdentifier, identifier);
    objc_storeStrong(&v13->_fetchPropertySets, sets);
  }

  return v13;
}

@end