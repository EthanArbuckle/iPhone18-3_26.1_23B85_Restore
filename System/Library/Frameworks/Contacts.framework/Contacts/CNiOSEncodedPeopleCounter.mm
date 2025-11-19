@interface CNiOSEncodedPeopleCounter
+ (id)os_log;
- (BOOL)supportsCounting;
- (CNiOSEncodedPeopleCounter)initWithFetchRequest:(id)a3 addressBook:(id)a4 managedConfiguration:(id)a5;
- (id)fetchContactCountWithError:(id *)a3;
- (void)setPrivatePredicate:(uint64_t)a1;
@end

@implementation CNiOSEncodedPeopleCounter

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_0_25 != -1)
  {
    +[CNiOSEncodedPeopleCounter os_log];
  }

  v0 = os_log_cn_once_object_0_25;

  return v0;
}

uint64_t __35__CNiOSEncodedPeopleCounter_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNiOSEncodedPeopleCounter");
  v1 = os_log_cn_once_object_0_25;
  os_log_cn_once_object_0_25 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNiOSEncodedPeopleCounter)initWithFetchRequest:(id)a3 addressBook:(id)a4 managedConfiguration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNiOSEncodedPeopleCounter;
  v12 = [(CNiOSEncodedPeopleCounter *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_addressBook, a4);
    objc_storeStrong(&v13->_contactFetchRequest, a3);
    objc_storeStrong(&v13->_managedConfiguration, a5);
    v14 = v13;
  }

  return v13;
}

- (BOOL)supportsCounting
{
  v2 = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_contactFetchRequest;
  }

  if (([(CNiOSEncodedPeopleCounter *)self disallowsEncodedFetch]& 1) == 0)
  {
    if (v2)
    {
      contactFetchRequest = v2->_contactFetchRequest;
    }

    else
    {
      contactFetchRequest = 0;
    }

    v5 = [(CNContactFetchRequest *)contactFetchRequest effectivePredicate];
    if ([v5 conformsToProtocol:&unk_1F0989B60])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      if ([v7 cn_supportsEncodedFetching])
      {
        [(CNiOSEncodedPeopleCounter *)v2 setPrivatePredicate:v7];
        v3 = 1;
        goto LABEL_17;
      }

      v8 = +[CNiOSEncodedPeopleCounter os_log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(sel_cn_supportsEncodedFetching);
        v13 = 138543618;
        v14 = v11;
        v15 = 2114;
        v16 = v12;
        _os_log_error_impl(&dword_1954A0000, v8, OS_LOG_TYPE_ERROR, "Cannot use %{public}@ with a predicate not supporting %{public}@", &v13, 0x16u);
      }
    }

    v3 = 0;
LABEL_17:

    return v3;
  }

  return 0;
}

- (void)setPrivatePredicate:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (id)fetchContactCountWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__36;
  v20 = __Block_byref_object_dispose__36;
  v21 = 0;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v6 = addressBook;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__CNiOSEncodedPeopleCounter_fetchContactCountWithError___block_invoke;
  v15[3] = &unk_1E74177E8;
  v15[4] = self;
  v15[5] = &v16;
  v7 = [(CNiOSAddressBook *)v6 resultWithInvalidatedAddressBook:v15];

  v8 = [v7 value];
  v9 = v17[5];
  v10 = v9;
  if (!v9)
  {
    v10 = [v7 error];
  }

  v11 = v8;
  v12 = v11;
  if (a3 && !v11)
  {
    v13 = v10;
    *a3 = v10;
  }

  if (!v9)
  {
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

id __56__CNiOSEncodedPeopleCounter_fetchContactCountWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[5];
  }

  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = v6;
  v9 = v5;
  v10 = [CNiOSPersonFetchRequest fetchRequestFromCNFetchRequest:v9 managedConfiguration:v8 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = v11[6];
    }

    v12 = *(*(a1 + 40) + 8);
    v25 = *(v12 + 40);
    v13 = v11;
    v14 = [v13 cn_ABQSLPredicateForAddressBook:a2 fetchRequest:v10 error:&v25];
    objc_storeStrong((v12 + 40), v25);

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E698A108]);
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = v16[2];
      }

      v17 = v16;
      v18 = [v17 unifyResults];
      v19 = *(a1 + 32);
      if (v19)
      {
        v20 = *(v19 + 40);
      }

      else
      {
        v20 = 0;
      }

      v21 = [v15 initWithAddressBook:a2 predicate:v14 includeLinkedContacts:v18 managedConfiguration:{v20, v25}];

      v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "fetchContactCount")}];
    }

    else
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        v23 = 0;
      }

      else
      {
        v23 = &unk_1F0987318;
      }

      v22 = v23;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end