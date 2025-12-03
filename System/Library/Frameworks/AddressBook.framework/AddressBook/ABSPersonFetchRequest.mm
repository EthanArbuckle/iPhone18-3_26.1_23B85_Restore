@interface ABSPersonFetchRequest
- (ABSPersonFetchRequest)initWithCoder:(id)coder;
- (ABSPersonFetchRequest)initWithPredicate:(id)predicate additionalKeysToFetch:(id)fetch sortOrder:(unsigned int)order;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)descriptionOfSortOrder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ABSPersonFetchRequest

- (ABSPersonFetchRequest)initWithPredicate:(id)predicate additionalKeysToFetch:(id)fetch sortOrder:(unsigned int)order
{
  predicateCopy = predicate;
  fetchCopy = fetch;
  if (predicateCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0 != -1)
  {
    [ABSPersonFetchRequest initWithPredicate:additionalKeysToFetch:sortOrder:];
  }

  v10 = CNGuardOSLog_cn_once_object_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
  {
    [ABSPersonFetchRequest initWithPredicate:v10 additionalKeysToFetch:? sortOrder:?];
    if (fetchCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (fetchCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0 != -1)
  {
    [ABSPersonFetchRequest initWithPredicate:additionalKeysToFetch:sortOrder:];
  }

  v11 = CNGuardOSLog_cn_once_object_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
  {
    [ABSPersonFetchRequest initWithPredicate:v11 additionalKeysToFetch:? sortOrder:?];
  }

LABEL_10:
  v19.receiver = self;
  v19.super_class = ABSPersonFetchRequest;
  v12 = [(ABSPersonFetchRequest *)&v19 init];
  if (v12)
  {
    v13 = [predicateCopy copy];
    predicate = v12->_predicate;
    v12->_predicate = v13;

    v15 = [fetchCopy copy];
    additionalKeysToFetch = v12->_additionalKeysToFetch;
    v12->_additionalKeysToFetch = v15;

    v12->_sortOrder = order;
    v17 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"predicate" object:self->_predicate];
  descriptionOfSortOrder = [(ABSPersonFetchRequest *)self descriptionOfSortOrder];
  v6 = [v3 appendName:@"sortOrder" object:descriptionOfSortOrder];

  descriptionOfKeysToFetch = [(ABSPersonFetchRequest *)self descriptionOfKeysToFetch];
  v8 = [v3 appendName:@"additionalKeysToFetch" object:descriptionOfKeysToFetch];

  build = [v3 build];

  return build;
}

- (id)descriptionOfSortOrder
{
  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    if (sortOrder == 1)
    {
      sortOrder = @"by family name";
    }

    else
    {
      sortOrder = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", sortOrder];
    }
  }

  else
  {
    sortOrder = @"by given name";
  }

  return sortOrder;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_sortOrder != equalCopy->_sortOrder || (additionalKeysToFetch = self->_additionalKeysToFetch, additionalKeysToFetch | equalCopy->_additionalKeysToFetch) && ![(NSArray *)additionalKeysToFetch isEqual:?]|| (predicate = self->_predicate, predicate | equalCopy->_predicate) && ![(NSPredicate *)predicate isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CFBE38] objectHash:self->_predicate];
  v4 = [MEMORY[0x277CFBE38] arrayHash:self->_additionalKeysToFetch];
  return self->_sortOrder - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3) + 506447;
}

- (ABSPersonFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"additionalKeysToFetch"];

  v10 = [coderCopy decodeInt32ForKey:@"sortOrder"];
  v11 = [(ABSPersonFetchRequest *)self initWithPredicate:v5 additionalKeysToFetch:v9 sortOrder:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  predicate = self->_predicate;
  coderCopy = coder;
  [coderCopy encodeObject:predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_additionalKeysToFetch forKey:@"additionalKeysToFetch"];
  [coderCopy encodeInt32:self->_sortOrder forKey:@"sortOrder"];
}

@end