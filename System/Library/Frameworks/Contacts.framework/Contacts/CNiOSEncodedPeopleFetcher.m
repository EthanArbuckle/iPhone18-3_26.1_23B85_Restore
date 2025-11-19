@interface CNiOSEncodedPeopleFetcher
- (BOOL)fetchEncodedPeopleWithError:(id *)a3 cancelationToken:(id)a4 batchHandler:(id)a5;
- (CNiOSEncodedPeopleFetcher)initWithFetchRequest:(id)a3 addressBook:(void *)a4 managedConfiguration:(id)a5 addressBookCompletionHandler:(id)a6 cursorCompletionHandler:(id)a7 environment:(id)a8 identifierAuditMode:(int64_t)a9 authorizationContext:(id)a10;
- (id)cursorWithError:(id *)a1;
- (void)dealloc;
- (void)fetchNextBatchWithReply:(id)a3;
- (void)queryCursorForABSQLPredicate:(void *)a3 fetchRequest:;
- (void)setCursor:(uint64_t)a1;
@end

@implementation CNiOSEncodedPeopleFetcher

- (void)dealloc
{
  cursorCompletionHandler = self->_cursorCompletionHandler;
  if (cursorCompletionHandler)
  {
    cursorCompletionHandler[2](cursorCompletionHandler, a2);
  }

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v5.receiver = self;
  v5.super_class = CNiOSEncodedPeopleFetcher;
  [(CNiOSEncodedPeopleFetcher *)&v5 dealloc];
}

- (CNiOSEncodedPeopleFetcher)initWithFetchRequest:(id)a3 addressBook:(void *)a4 managedConfiguration:(id)a5 addressBookCompletionHandler:(id)a6 cursorCompletionHandler:(id)a7 environment:(id)a8 identifierAuditMode:(int64_t)a9 authorizationContext:(id)a10
{
  v33 = a3;
  v32 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v34.receiver = self;
  v34.super_class = CNiOSEncodedPeopleFetcher;
  v21 = [(CNiOSEncodedPeopleFetcher *)&v34 init];
  if (v21)
  {
    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    v21->_addressBook = v22;
    objc_storeStrong(&v21->_contactFetchRequest, a3);
    objc_storeStrong(&v21->_environment, a8);
    v23 = _Block_copy(v18);
    cursorCompletionHandler = v21->_cursorCompletionHandler;
    v21->_cursorCompletionHandler = v23;

    v25 = _Block_copy(v17);
    addressBookCompletionHandler = v21->_addressBookCompletionHandler;
    v21->_addressBookCompletionHandler = v25;

    v27 = [v19 loggerProvider];
    v28 = [v27 contactsLogger];
    logger = v21->_logger;
    v21->_logger = v28;

    objc_storeStrong(&v21->_managedConfiguration, a5);
    v21->_identifierAuditMode = a9;
    objc_storeStrong(&v21->_authorizationContext, a10);
    v30 = v21;
  }

  return v21;
}

- (BOOL)fetchEncodedPeopleWithError:(id *)a3 cancelationToken:(id)a4 batchHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v10 = MEMORY[0x1E69E9820];
  while (1)
  {
    v15[0] = v10;
    v15[1] = 3221225472;
    v15[2] = __87__CNiOSEncodedPeopleFetcher_fetchEncodedPeopleWithError_cancelationToken_batchHandler___block_invoke;
    v15[3] = &unk_1E74137A8;
    v17 = &v19;
    v18 = &v25;
    v11 = v9;
    v16 = v11;
    [(CNiOSEncodedPeopleFetcher *)self fetchNextBatchWithReply:v15];

    v12 = v20;
    if ((v26[3] & 1) != 0 || v20[5])
    {
      break;
    }

    if ([v8 isCanceled])
    {
      v12 = v20;
      break;
    }
  }

  if (a3)
  {
    *a3 = v12[5];
    v12 = v20;
  }

  v13 = v12[5] == 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __87__CNiOSEncodedPeopleFetcher_fetchEncodedPeopleWithError_cancelationToken_batchHandler___block_invoke(void *a1, void *a2, char a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a3;
    v8 = objc_autoreleasePoolPush();
    (*(a1[4] + 16))();
    objc_autoreleasePoolPop(v8);
  }
}

void __53__CNiOSEncodedPeopleFetcher_fetchNextBatchWithReply___block_invoke_2(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[4];
  v8 = a4;
  v9 = a2;
  v10 = [v9 data];
  [v7 didFetchEncodedContacts:v10 error:v8];

  (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = a3;
}

- (void)queryCursorForABSQLPredicate:(void *)a3 fetchRequest:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 keysToFetch];
    v8 = [CNiOSABConversions requiredABPropertyIDSetForKeysToFetch:v7];

    v9 = objc_alloc(MEMORY[0x1E698A100]);
    v10 = v3[2];
    v11 = [v5 unifiedFetch];
    v12 = [v5 sortOrderIncludingNone];
    v13 = [v5 batchSize];
    v14 = [v5 managedConfiguration];

    v3 = [v9 initWithAddressBook:v10 predicate:v6 propertyIdentifierSet:v8 includeLinkedContacts:v11 sortOrder:v12 suggestedContactsPerBatch:v13 managedConfiguration:v14 identifierAuditMode:v3[10] authorizationContext:v3[11]];
  }

  return v3;
}

- (id)cursorWithError:(id *)a1
{
  if (a1)
  {
    v3 = a1;
    if (a1[7])
    {
LABEL_3:
      a1 = v3[7];
LABEL_11:
      v2 = vars8;
      goto LABEL_12;
    }

    v5 = [a1[3] effectivePredicate];
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 cn_supportsEncodedFetching])
    {
      v5 = v5;
      v6 = v3[9];
      v7 = v3[3];
      v8 = [CNiOSPersonFetchRequest fetchRequestFromCNFetchRequest:v7 managedConfiguration:v6 error:a2];

      if (v8)
      {
        v9 = objc_opt_respondsToSelector();
        v10 = v3[2];
        if (v9)
        {
          v11 = v3[4];
          v12 = [v5 cn_cursorForEncodedPeopleFromAddressBook:v10 fetchRequest:v8 environment:v11 error:a2];
        }

        else
        {
          v19 = [v5 cn_ABQSLPredicateForAddressBook:v3[2] fetchRequest:v8 error:a2];
          v11 = v19;
          if (!v19)
          {
LABEL_20:

            goto LABEL_3;
          }

          if ([v19 isNullPredicate])
          {
            v12 = objc_opt_new();
          }

          else
          {
            v12 = [(CNiOSEncodedPeopleFetcher *)v3 queryCursorForABSQLPredicate:v11 fetchRequest:v8];
          }
        }

        v20 = v3[7];
        v3[7] = v12;

        goto LABEL_20;
      }
    }

    else
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D930];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(sel_cn_supportsEncodedFetching);
      [v13 raise:v14 format:{@"Cannot use %@ with a predicate not supporting %@", v16, v17}];
    }

    a1 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return a1;
}

- (void)setCursor:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (void)fetchNextBatchWithReply:(id)a3
{
  v4 = a3;
  if (self)
  {
    addressBook = self->_addressBook;
    logger = self->_logger;
  }

  else
  {
    addressBook = 0;
    logger = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CNiOSEncodedPeopleFetcher_fetchNextBatchWithReply___block_invoke;
  v8[3] = &unk_1E74137F8;
  v8[4] = self;
  v9 = v4;
  v10 = addressBook;
  v7 = v4;
  [(CNContactsLogger *)logger fetchingContactsBatch:v8];
}

void __53__CNiOSEncodedPeopleFetcher_fetchNextBatchWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v30 = 0;
  v6 = [(CNiOSEncodedPeopleFetcher *)v5 cursorWithError:?];
  v7 = v30;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[8];
  }

  v9 = v8;
  v10 = v9;
  if (v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__CNiOSEncodedPeopleFetcher_fetchNextBatchWithReply___block_invoke_2;
    v22[3] = &unk_1E74137D0;
    v11 = v9;
    v23 = v11;
    v24 = *(a1 + 40);
    v25 = &v26;
    [v6 fetchNextBatchWithReply:v22];
    if (*(v27 + 24) != 1)
    {

      _Block_object_dispose(&v26, 8);
      objc_autoreleasePoolPop(v4);
      goto LABEL_18;
    }

    [(CNiOSEncodedPeopleFetcher *)*(a1 + 32) setCursor:?];

    _Block_object_dispose(&v26, 8);
    v10 = v6;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v4);
  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = *(v15 + 40);
  }

  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = v16 ? *(v16 + 40) : 0;
    (*(v17 + 16))(v17, v12, v13, v14);
    v19 = *(a1 + 32);
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v18, 0, 40);
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    *(v21 + 16) = 0;
  }

LABEL_18:
}

@end