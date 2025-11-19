@interface ABSPersonFetchRequest
- (ABSPersonFetchRequest)initWithCoder:(id)a3;
- (ABSPersonFetchRequest)initWithPredicate:(id)a3 additionalKeysToFetch:(id)a4 sortOrder:(unsigned int)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)descriptionOfSortOrder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ABSPersonFetchRequest

- (ABSPersonFetchRequest)initWithPredicate:(id)a3 additionalKeysToFetch:(id)a4 sortOrder:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
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
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v9)
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
    v13 = [v8 copy];
    predicate = v12->_predicate;
    v12->_predicate = v13;

    v15 = [v9 copy];
    additionalKeysToFetch = v12->_additionalKeysToFetch;
    v12->_additionalKeysToFetch = v15;

    v12->_sortOrder = a5;
    v17 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"predicate" object:self->_predicate];
  v5 = [(ABSPersonFetchRequest *)self descriptionOfSortOrder];
  v6 = [v3 appendName:@"sortOrder" object:v5];

  v7 = [(ABSPersonFetchRequest *)self descriptionOfKeysToFetch];
  v8 = [v3 appendName:@"additionalKeysToFetch" object:v7];

  v9 = [v3 build];

  return v9;
}

- (id)descriptionOfSortOrder
{
  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    if (sortOrder == 1)
    {
      v4 = @"by family name";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", sortOrder];
    }
  }

  else
  {
    v4 = @"by given name";
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_sortOrder != v4->_sortOrder || (additionalKeysToFetch = self->_additionalKeysToFetch, additionalKeysToFetch | v4->_additionalKeysToFetch) && ![(NSArray *)additionalKeysToFetch isEqual:?]|| (predicate = self->_predicate, predicate | v4->_predicate) && ![(NSPredicate *)predicate isEqual:?])
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

- (ABSPersonFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"additionalKeysToFetch"];

  v10 = [v4 decodeInt32ForKey:@"sortOrder"];
  v11 = [(ABSPersonFetchRequest *)self initWithPredicate:v5 additionalKeysToFetch:v9 sortOrder:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  predicate = self->_predicate;
  v5 = a3;
  [v5 encodeObject:predicate forKey:@"predicate"];
  [v5 encodeObject:self->_additionalKeysToFetch forKey:@"additionalKeysToFetch"];
  [v5 encodeInt32:self->_sortOrder forKey:@"sortOrder"];
}

@end