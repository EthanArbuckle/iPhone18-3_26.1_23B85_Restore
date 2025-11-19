@interface CNCoreSpotlightSearch
+ (id)_runQuery:(id)a3 timeout:(double)a4 error:(id *)a5;
+ (id)executeQuery:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 fetchAttributes:(id)a6 error:(id *)a7;
@end

@implementation CNCoreSpotlightSearch

+ (id)executeQuery:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 fetchAttributes:(id)a6 error:(id *)a7
{
  v40[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_autoreleasePoolPush();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v16 = getCSSearchQueryContextClass_softClass;
  v38 = getCSSearchQueryContextClass_softClass;
  if (!getCSSearchQueryContextClass_softClass)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getCSSearchQueryContextClass_block_invoke;
    v33 = &unk_1E7412110;
    v34 = &v35;
    __getCSSearchQueryContextClass_block_invoke(&v30);
    v16 = v36[3];
  }

  v17 = v16;
  _Block_object_dispose(&v35, 8);
  v18 = objc_opt_new();
  v40[0] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v18 setProtectionClasses:v19];

  v39 = v13;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  [v18 setBundleIDs:v20];

  [v18 setFetchAttributes:v14];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v21 = getCSSearchQueryClass_softClass;
  v38 = getCSSearchQueryClass_softClass;
  if (!getCSSearchQueryClass_softClass)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getCSSearchQueryClass_block_invoke;
    v33 = &unk_1E7412110;
    v34 = &v35;
    __getCSSearchQueryClass_block_invoke(&v30);
    v21 = v36[3];
  }

  v22 = v21;
  _Block_object_dispose(&v35, 8);
  v23 = [[v21 alloc] initWithQueryString:v11 context:v18];
  if (v23)
  {
    v29 = 0;
    v24 = [CNCoreSpotlightSearch _runQuery:v23 timeout:&v29 error:120.0];
    v25 = v29;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  objc_autoreleasePoolPop(v15);
  if (v25)
  {
    if (a7)
    {
      v26 = v25;
      v27 = 0;
      *a7 = v25;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = v24;
  }

  return v27;
}

+ (id)_runQuery:(id)a3 timeout:(double)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v9 = dispatch_group_create();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__18;
  v26 = __Block_byref_object_dispose__18;
  v27 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__CNCoreSpotlightSearch__runQuery_timeout_error___block_invoke;
  v20[3] = &unk_1E7414D38;
  v10 = v8;
  v21 = v10;
  [v7 setFoundItemsHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__CNCoreSpotlightSearch__runQuery_timeout_error___block_invoke_2;
  v17[3] = &unk_1E7414D60;
  v19 = &v22;
  v11 = v9;
  v18 = v11;
  [v7 setCompletionHandler:v17];
  dispatch_group_enter(v11);
  [v7 start];
  v12 = dispatch_time(0, (a4 * 1000000000.0));
  if (dispatch_group_wait(v11, v12))
  {
    [v7 cancel];
    CNSetError(a5, 1001, 0);
  }

  else if (a5)
  {
    v16 = v23[5];
    if (v16)
    {
      *a5 = [v16 copy];
    }
  }

  v13 = v18;
  v14 = v10;

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __49__CNCoreSpotlightSearch__runQuery_timeout_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end