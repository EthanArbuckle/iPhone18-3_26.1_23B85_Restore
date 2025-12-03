@interface PHPersistentChangeFetchResult
+ (PHPersistentChangeFetchResult)fetchResultWithToken:(id)token options:(id)options photoLibrary:(id)library error:(id *)error;
- (PHPersistentChangeFetchResult)initWithTransactions:(id)transactions options:(id)options photoLibrary:(id)library;
- (id)_managedObjectContext;
- (id)iteratorForPersistentChangeEnumeration;
- (id)nextPersistentChangeWithIterator:(id)iterator;
- (void)enumerateChangesWithBlock:(void *)block;
- (void)enumeratePHChangesWithBlock:(id)block;
@end

@implementation PHPersistentChangeFetchResult

- (void)enumeratePHChangesWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69BE5F8]);
  transactions = self->_transactions;
  _managedObjectContext = [(PHPersistentChangeFetchResult *)self _managedObjectContext];
  v8 = [v5 initWithTransactions:transactions managedObjectObjectContext:_managedObjectContext];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PHPersistentChangeFetchResult_enumeratePHChangesWithBlock___block_invoke;
  v11[3] = &unk_1E75A5158;
  v12 = v8;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = v8;
  [v10 enumerateRemainingTransactionsWithBlock:v11];
}

void __61__PHPersistentChangeFetchResult_enumeratePHChangesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__11592;
  v10[4] = __Block_byref_object_dispose__11593;
  v11 = 0;
  v4 = [*(a1 + 32) context];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PHPersistentChangeFetchResult_enumeratePHChangesWithBlock___block_invoke_2;
  v7[3] = &unk_1E75AA3F8;
  v5 = *(a1 + 40);
  v9 = v10;
  v7[4] = v5;
  v6 = v3;
  v8 = v6;
  [v4 performBlockAndWait:v7];

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v10, 8);
}

void __61__PHPersistentChangeFetchResult_enumeratePHChangesWithBlock___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) _managedObjectContext];
  v2 = [PHChangeBuilder changeWithManagedObjectContext:v5 library:*(*(a1 + 32) + 16) options:*(*(a1 + 32) + 24) transaction:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)nextPersistentChangeWithIterator:(id)iterator
{
  iteratorCopy = iterator;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11592;
  v17 = __Block_byref_object_dispose__11593;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PHPersistentChangeFetchResult_nextPersistentChangeWithIterator___block_invoke;
  v9[3] = &unk_1E75A5130;
  v5 = iteratorCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v5;
  if ([v5 enumerateOneTransactionWithBlock:v9])
  {
    v6 = v14[5];
    v14[5] = 0;
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __66__PHPersistentChangeFetchResult_nextPersistentChangeWithIterator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PHPersistentChangeFetchResult_nextPersistentChangeWithIterator___block_invoke_2;
  v9[3] = &unk_1E75AA158;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v12 = v3;
  v13 = v6;
  v8 = v3;
  [v4 performBlockAndWait:v9];
}

void __66__PHPersistentChangeFetchResult_nextPersistentChangeWithIterator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v7 = [v2 objectForKeyedSubscript:@"PHPersistentChangeEnumerationContext"];

  v3 = [*(a1 + 40) _managedObjectContext];
  v4 = [PHChangeBuilder persistentChangeWithManagedObjectContext:v3 library:*(*(a1 + 40) + 16) options:*(*(a1 + 40) + 24) transaction:*(a1 + 48) enumerationContext:v7];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)iteratorForPersistentChangeEnumeration
{
  v3 = objc_alloc(MEMORY[0x1E69BE5F8]);
  transactions = self->_transactions;
  _managedObjectContext = [(PHPersistentChangeFetchResult *)self _managedObjectContext];
  v6 = [v3 initWithTransactions:transactions managedObjectObjectContext:_managedObjectContext];

  v7 = objc_alloc_init(PHPersistentChangeEnumerationContext);
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObject:v7 forKey:@"PHPersistentChangeEnumerationContext"];
  [v6 setUserInfo:v8];

  return v6;
}

- (void)enumerateChangesWithBlock:(void *)block
{
  v4 = block;
  v5 = objc_alloc(MEMORY[0x1E69BE5F8]);
  transactions = self->_transactions;
  _managedObjectContext = [(PHPersistentChangeFetchResult *)self _managedObjectContext];
  v8 = [v5 initWithTransactions:transactions managedObjectObjectContext:_managedObjectContext];

  v9 = objc_alloc_init(PHPersistentChangeEnumerationContext);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PHPersistentChangeFetchResult_enumerateChangesWithBlock___block_invoke;
  v13[3] = &unk_1E75A5108;
  v14 = v8;
  selfCopy = self;
  v16 = v9;
  v17 = v4;
  v10 = v4;
  v11 = v9;
  v12 = v8;
  [v12 enumerateRemainingTransactionsWithBlock:v13];
}

void __59__PHPersistentChangeFetchResult_enumerateChangesWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11592;
  v19 = __Block_byref_object_dispose__11593;
  v20 = 0;
  v6 = [*(a1 + 32) context];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PHPersistentChangeFetchResult_enumerateChangesWithBlock___block_invoke_37;
  v11[3] = &unk_1E75AA158;
  v7 = *(a1 + 40);
  v14 = &v15;
  v11[4] = v7;
  v8 = v5;
  v12 = v8;
  v13 = *(a1 + 48);
  [v6 performBlockAndWait:v11];

  (*(*(a1 + 56) + 16))(*(a1 + 56), v16[5], a3, v9, v10);
  _Block_object_dispose(&v15, 8);
}

void __59__PHPersistentChangeFetchResult_enumerateChangesWithBlock___block_invoke_37(uint64_t a1)
{
  v5 = [*(a1 + 32) _managedObjectContext];
  v2 = [PHChangeBuilder persistentChangeWithManagedObjectContext:v5 library:*(*(a1 + 32) + 16) options:*(*(a1 + 32) + 24) transaction:*(a1 + 40) enumerationContext:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_managedObjectContext
{
  changeHandlingPhotoLibrary = [(PHPhotoLibrary *)self->_library changeHandlingPhotoLibrary];
  managedObjectContext = [changeHandlingPhotoLibrary managedObjectContext];

  return managedObjectContext;
}

- (PHPersistentChangeFetchResult)initWithTransactions:(id)transactions options:(id)options photoLibrary:(id)library
{
  transactionsCopy = transactions;
  optionsCopy = options;
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = PHPersistentChangeFetchResult;
  v11 = [(PHPersistentChangeFetchResult *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_library, library);
    objc_storeStrong(&v12->_options, options);
    changeHandlingPhotoLibrary = [(PHPhotoLibrary *)v12->_library changeHandlingPhotoLibrary];
    managedObjectContext = [changeHandlingPhotoLibrary managedObjectContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__PHPersistentChangeFetchResult_initWithTransactions_options_photoLibrary___block_invoke;
    v18[3] = &unk_1E75AAEB0;
    v15 = v12;
    v19 = v15;
    v20 = transactionsCopy;
    [managedObjectContext performBlockAndWait:v18];

    v16 = v15;
  }

  return v12;
}

uint64_t __75__PHPersistentChangeFetchResult_initWithTransactions_options_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  result = [*(*(a1 + 32) + 8) count];
  *(*(a1 + 32) + 40) = result;
  return result;
}

+ (PHPersistentChangeFetchResult)fetchResultWithToken:(id)token options:(id)options photoLibrary:(id)library error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  libraryCopy = library;
  persistentHistoryToken = [token persistentHistoryToken];
  v13 = [MEMORY[0x1E69BE5F0] markerWithToken:persistentHistoryToken];
  changeHandlingPhotoLibrary = [libraryCopy changeHandlingPhotoLibrary];
  managedObjectContext = [changeHandlingPhotoLibrary managedObjectContext];

  if (managedObjectContext)
  {
    v31 = 0;
    v16 = [MEMORY[0x1E69BE600] fetchTransactionsSinceMarker:v13 withFetchRequest:0 batchSize:100 context:managedObjectContext error:&v31];
    v17 = v31;
    if (v16)
    {
      v18 = [[self alloc] initWithTransactions:v16 options:optionsCopy photoLibrary:libraryCopy];
      v19 = 0;
      goto LABEL_14;
    }

    if ((PLIsErrorEqualToCode() & 1) != 0 || PLIsErrorEqualToCode())
    {
      v24 = 3105;
      if (v17)
      {
LABEL_8:
        v34 = *MEMORY[0x1E696AA08];
        v35[0] = v17;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
LABEL_13:
        v19 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:v24 userInfo:v25];

        v18 = 0;
LABEL_14:

        v23 = v19;
        if (v18)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = -1;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    v29 = v24;
    v26 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_FAULT, "Missing fetch error in return from +[PLPersistentHistoryUtilities fetchTransactionsSinceMarker:withFetchRequest:batchSize:context:error:]", buf, 2u);
    }

    v25 = 0;
    v24 = v29;
    goto LABEL_13;
  }

  v20 = MEMORY[0x1E696ABC0];
  v32 = *MEMORY[0x1E696A278];
  v33 = @"Failed to access library";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v22 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3109 userInfo:v21];

  v23 = v22;
LABEL_15:
  if (error)
  {
    v27 = v23;
    v18 = 0;
    *error = v23;
  }

  else
  {
    v18 = 0;
  }

LABEL_18:

  return v18;
}

@end