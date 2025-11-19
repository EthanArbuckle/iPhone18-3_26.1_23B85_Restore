@interface CNiOSPersonFetcher
+ (id)peopleForFetchRequest:(id)a3 matchInfos:(id *)a4 inAddressBook:(void *)a5 environment:(id)a6 error:(id *)a7;
- (BOOL)shouldSortInMemory;
- (CNiOSPersonFetcher)initWithAddressBook:(void *)a3 fetchRequest:(id)a4 environment:(id)a5;
- (id)executeFetchRequestWithProgressiveResults:(id)a3 completion:(id)a4;
- (id)fetchPeopleReturningMatchInfos:(id *)a3 error:(id *)a4;
- (id)fetchPeopleUsingNativeSortReturningMatchInfos:(id *)a3 error:(id *)a4;
- (id)sortPeople:(id)a3;
- (void)dealloc;
@end

@implementation CNiOSPersonFetcher

+ (id)peopleForFetchRequest:(id)a3 matchInfos:(id *)a4 inAddressBook:(void *)a5 environment:(id)a6 error:(id *)a7
{
  v11 = a6;
  v12 = a3;
  v13 = [[CNiOSPersonFetcher alloc] initWithAddressBook:a5 fetchRequest:v12 environment:v11];

  v14 = [(CNiOSPersonFetcher *)v13 fetchPeopleReturningMatchInfos:a4 error:a7];

  return v14;
}

- (CNiOSPersonFetcher)initWithAddressBook:(void *)a3 fetchRequest:(id)a4 environment:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CNiOSPersonFetcher;
  v11 = [(CNiOSPersonFetcher *)&v15 init];
  if (v11)
  {
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    v11->_addressBook = v12;
    objc_storeStrong(&v11->_fetchRequest, a4);
    objc_storeStrong(&v11->_environment, a5);
    v13 = v11;
  }

  return v11;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = CNiOSPersonFetcher;
  [(CNiOSPersonFetcher *)&v4 dealloc];
}

- (id)executeFetchRequestWithProgressiveResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNiOSPersonFetchRequest *)self->_fetchRequest predicate];
  if ([v8 conformsToProtocol:&unk_1F09931E0])
  {
    v9 = [v8 cn_fetchPeopleInAddressBook:self->_addressBook fetchRequest:self->_fetchRequest progressiveResults:v6 completion:v7 environment:self->_environment];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchPeopleReturningMatchInfos:(id *)a3 error:(id *)a4
{
  v5 = [(CNiOSPersonFetcher *)self fetchPeopleUsingNativeSortReturningMatchInfos:a3 error:a4];
  if ([(CNiOSPersonFetcher *)self shouldSortInMemory])
  {
    v6 = [(CNiOSPersonFetcher *)self sortPeople:v5];

    v5 = v6;
  }

  return v5;
}

- (id)fetchPeopleUsingNativeSortReturningMatchInfos:(id *)a3 error:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v10[6] = a3;
  v11 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CNiOSPersonFetcher_fetchPeopleUsingNativeSortReturningMatchInfos_error___block_invoke;
  v10[3] = &unk_1E7413628;
  v10[4] = self;
  v10[5] = &v12;
  v6 = CNBridgeABCFResultAndErrorFromBlock(&v11, v10);
  v7 = v11;
  if (a3)
  {
    *a3 = v13[5];
  }

  if (v7)
  {

    if (a4)
    {
      v8 = v7;
      v6 = 0;
      *a4 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __74__CNiOSPersonFetcher_fetchPeopleUsingNativeSortReturningMatchInfos_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) fetchRequest];
  v5 = [v4 predicate];
  v6 = [*(a1 + 32) addressBook];
  v7 = [*(a1 + 32) fetchRequest];
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    obj = v11;
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
    v10 = 0;
  }

  v13 = [*(a1 + 32) environment];
  v14 = [v5 cn_copyPeopleInAddressBook:v6 fetchRequest:v7 matchInfos:p_obj environment:v13 error:a2];
  if (v8)
  {
    objc_storeStrong(v10, obj);
  }

  return v14;
}

- (BOOL)shouldSortInMemory
{
  if ([(CNiOSPersonFetchRequest *)self->_fetchRequest shouldSort])
  {
    v3 = [(CNiOSPersonFetchRequest *)self->_fetchRequest predicate];
    v4 = [v3 cn_supportsNativeSorting] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)sortPeople:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CNiOSPersonFetcher_sortPeople___block_invoke;
  v5[3] = &unk_1E7413650;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

CFComparisonResult __33__CNiOSPersonFetcher_sortPeople___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 fetchRequest];
  v8 = ABPersonComparePeopleByName(v6, v5, [v7 sortOrder]);

  return v8;
}

@end