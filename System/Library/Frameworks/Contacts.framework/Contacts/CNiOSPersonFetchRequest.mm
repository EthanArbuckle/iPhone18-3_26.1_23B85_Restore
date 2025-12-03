@interface CNiOSPersonFetchRequest
+ (id)effectivePredicate:(id)predicate;
+ (id)fetchRequestFromCNFetchRequest:(id)request managedConfiguration:(id)configuration error:(id *)error;
+ (id)validatePredicate:(id)predicate error:(id *)error;
+ (int64_t)resolvedSortOrderFromContactSortOrder:(int64_t)order;
- (CNiOSPersonFetchRequest)initWithPredicate:(id)predicate keysToFetch:(id)fetch shouldSort:(BOOL)sort sortOrder:(unsigned int)order unifiedFetch:(BOOL)unifiedFetch batchSize:(int64_t)size managedConfiguration:(id)configuration options:(unint64_t)self0;
- (unsigned)sortOrderIncludingNone;
@end

@implementation CNiOSPersonFetchRequest

- (unsigned)sortOrderIncludingNone
{
  if (![(CNiOSPersonFetchRequest *)self shouldSort])
  {
    return -1;
  }

  return [(CNiOSPersonFetchRequest *)self sortOrder];
}

- (CNiOSPersonFetchRequest)initWithPredicate:(id)predicate keysToFetch:(id)fetch shouldSort:(BOOL)sort sortOrder:(unsigned int)order unifiedFetch:(BOOL)unifiedFetch batchSize:(int64_t)size managedConfiguration:(id)configuration options:(unint64_t)self0
{
  predicateCopy = predicate;
  fetchCopy = fetch;
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = CNiOSPersonFetchRequest;
  v19 = [(CNiOSPersonFetchRequest *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_keysToFetch, fetch);
    objc_storeStrong(&v20->_predicate, predicate);
    v20->_shouldSort = sort;
    v20->_sortOrder = order;
    v20->_options = options;
    v20->_unifiedFetch = unifiedFetch;
    v20->_batchSize = size;
    objc_storeStrong(&v20->_managedConfiguration, configuration);
    v21 = v20;
  }

  return v20;
}

+ (int64_t)resolvedSortOrderFromContactSortOrder:(int64_t)order
{
  if (order <= 3 && order != 1 || order == 1000)
  {
    return order;
  }

  v4 = +[CNContactsUserDefaults sharedDefaults];
  sortOrder = [v4 sortOrder];

  return sortOrder;
}

+ (id)fetchRequestFromCNFetchRequest:(id)request managedConfiguration:(id)configuration error:(id *)error
{
  requestCopy = request;
  configurationCopy = configuration;
  predicate = [requestCopy predicate];
  v11 = [self validatePredicate:predicate error:error];

  if (v11)
  {
    v12 = [self resolvedSortOrderFromContactSortOrder:{objc_msgSend(requestCopy, "sortOrder")}];
    v13 = v12 != 0;
    v14 = +[CNiOSABConstantsMapping CNToABPersonSortOrderingConstantsMapping];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v16 = [v14 mappedConstant:v15];
    unsignedIntValue = [v16 unsignedIntValue];

    v18 = [CNiOSPersonFetchRequest alloc];
    effectiveKeysToFetch = [requestCopy effectiveKeysToFetch];
    allObjects = [effectiveKeysToFetch allObjects];
    v21 = -[CNiOSPersonFetchRequest initWithPredicate:keysToFetch:shouldSort:sortOrder:unifiedFetch:batchSize:managedConfiguration:options:](v18, "initWithPredicate:keysToFetch:shouldSort:sortOrder:unifiedFetch:batchSize:managedConfiguration:options:", v11, allObjects, v13, unsignedIntValue, [requestCopy unifyResults], objc_msgSend(requestCopy, "batchSize"), configurationCopy, 1);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)validatePredicate:(id)predicate error:(id *)error
{
  v5 = [self effectivePredicate:predicate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      *error = [CNErrorFactory errorWithCode:400 userInfo:0];
    }

    goto LABEL_6;
  }

  if (([v5 conformsToProtocol:&unk_1F0989B60] & 1) == 0)
  {
LABEL_6:

    v5 = 0;
  }

  return v5;
}

+ (id)effectivePredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    predicateCopy = +[CNContact predicateForAllContacts];
  }

  return predicateCopy;
}

@end