@interface CNiOSPersonFetchRequest
+ (id)effectivePredicate:(id)a3;
+ (id)fetchRequestFromCNFetchRequest:(id)a3 managedConfiguration:(id)a4 error:(id *)a5;
+ (id)validatePredicate:(id)a3 error:(id *)a4;
+ (int64_t)resolvedSortOrderFromContactSortOrder:(int64_t)a3;
- (CNiOSPersonFetchRequest)initWithPredicate:(id)a3 keysToFetch:(id)a4 shouldSort:(BOOL)a5 sortOrder:(unsigned int)a6 unifiedFetch:(BOOL)a7 batchSize:(int64_t)a8 managedConfiguration:(id)a9 options:(unint64_t)a10;
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

- (CNiOSPersonFetchRequest)initWithPredicate:(id)a3 keysToFetch:(id)a4 shouldSort:(BOOL)a5 sortOrder:(unsigned int)a6 unifiedFetch:(BOOL)a7 batchSize:(int64_t)a8 managedConfiguration:(id)a9 options:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v23 = a9;
  v24.receiver = self;
  v24.super_class = CNiOSPersonFetchRequest;
  v19 = [(CNiOSPersonFetchRequest *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_keysToFetch, a4);
    objc_storeStrong(&v20->_predicate, a3);
    v20->_shouldSort = a5;
    v20->_sortOrder = a6;
    v20->_options = a10;
    v20->_unifiedFetch = a7;
    v20->_batchSize = a8;
    objc_storeStrong(&v20->_managedConfiguration, a9);
    v21 = v20;
  }

  return v20;
}

+ (int64_t)resolvedSortOrderFromContactSortOrder:(int64_t)a3
{
  if (a3 <= 3 && a3 != 1 || a3 == 1000)
  {
    return a3;
  }

  v4 = +[CNContactsUserDefaults sharedDefaults];
  v5 = [v4 sortOrder];

  return v5;
}

+ (id)fetchRequestFromCNFetchRequest:(id)a3 managedConfiguration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 predicate];
  v11 = [a1 validatePredicate:v10 error:a5];

  if (v11)
  {
    v12 = [a1 resolvedSortOrderFromContactSortOrder:{objc_msgSend(v8, "sortOrder")}];
    v13 = v12 != 0;
    v14 = +[CNiOSABConstantsMapping CNToABPersonSortOrderingConstantsMapping];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v16 = [v14 mappedConstant:v15];
    v17 = [v16 unsignedIntValue];

    v18 = [CNiOSPersonFetchRequest alloc];
    v19 = [v8 effectiveKeysToFetch];
    v20 = [v19 allObjects];
    v21 = -[CNiOSPersonFetchRequest initWithPredicate:keysToFetch:shouldSort:sortOrder:unifiedFetch:batchSize:managedConfiguration:options:](v18, "initWithPredicate:keysToFetch:shouldSort:sortOrder:unifiedFetch:batchSize:managedConfiguration:options:", v11, v20, v13, v17, [v8 unifyResults], objc_msgSend(v8, "batchSize"), v9, 1);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)validatePredicate:(id)a3 error:(id *)a4
{
  v5 = [a1 effectivePredicate:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      *a4 = [CNErrorFactory errorWithCode:400 userInfo:0];
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

+ (id)effectivePredicate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = +[CNContact predicateForAllContacts];
  }

  return v3;
}

@end