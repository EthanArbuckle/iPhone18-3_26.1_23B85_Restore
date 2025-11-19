@interface INIntentTest
+ (id)executeIntent:(id)a3 withHandler:(id)a4;
@end

@implementation INIntentTest

+ (id)executeIntent:(id)a3 withHandler:(id)a4
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45 = a4;
  v47 = v5;
  NSLog(@"Testing intent:%@ on handler: %@", v5, v45);
  v6 = [[DummyHandlerProvider alloc] initWithHandler:v45];
  v7 = [_INExtensionContext alloc];
  v43 = v6;
  v46 = [(_INExtensionContext *)v7 initWithInputItems:MEMORY[0x1E695E0F0] privateIntentHandlerProvider:v6];
  v8 = dispatch_semaphore_create(0);
  v9 = [v47 identifier];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke;
  v110[3] = &unk_1E72882F8;
  v10 = v8;
  v111 = v10;
  [(_INExtensionContext *)v46 beginTransactionWithIntentIdentifier:v9 completion:v110];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v44 = [v47 _intentInstanceDescription];
  LOBYTE(v6) = [v47 _type] == 2;
  v11 = [v44 slotDescriptions];
  v12 = v11;
  if ((v6 & 1) == 0)
  {
    v13 = [v11 sortedArrayUsingComparator:&__block_literal_global_20853];

    v12 = v13;
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v106 objects:v112 count:16];
  if (v16)
  {
    v17 = *v107;
    do
    {
      v18 = 0;
      do
      {
        if (*v107 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v106 + 1) + 8 * v18);
        if (![v19 isPrivate])
        {
          goto LABEL_12;
        }

        if (INIsInternalInstall_onceToken != -1)
        {
          dispatch_once(&INIsInternalInstall_onceToken, &__block_literal_global_227);
        }

        if (INIsInternalInstall_isInternal == 1)
        {
LABEL_12:
          v20 = [v19 name];
          [v14 addObject:v20];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v106 objects:v112 count:16];
    }

    while (v16);
  }

  NSLog(@"    Resolving parameters: %@", v14);
  NSLog(@"    Executing slot resolution...");
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__20857;
  v100 = __Block_byref_object_dispose__20858;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__20857;
  v94 = __Block_byref_object_dispose__20858;
  v95 = 0;
  v21 = dispatch_semaphore_create(0);

  v22 = [v47 copy];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_80;
  v85[3] = &unk_1E727F4B0;
  v87 = &v102;
  v88 = &v96;
  v89 = &v90;
  v23 = v21;
  v86 = v23;
  [(_INExtensionContext *)v46 resolveIntentSlots:v14 forIntent:v22 completionBlock:v85];

  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  NSLog(@"    Updated intent:%@", v97[5]);
  v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v91[5], "count")}];
  v25 = v91[5];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_2_95;
  v82[3] = &unk_1E727F4D8;
  v84 = &v96;
  v26 = v24;
  v83 = v26;
  [v25 enumerateKeysAndObjectsUsingBlock:v82];
  if ((v103[3] & 1) == 0)
  {
    [v26 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_100];
  }

  v27 = [v97[5] copy];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__20857;
  v80 = __Block_byref_object_dispose__20858;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__20857;
  v74 = __Block_byref_object_dispose__20858;
  v75 = 0;
  if (*(v103 + 24) == 1)
  {
    v28 = dispatch_semaphore_create(0);

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_4;
    v66[3] = &unk_1E727F520;
    v68 = &v76;
    v69 = &v70;
    v23 = v28;
    v67 = v23;
    [(_INExtensionContext *)v46 confirmIntent:v27 withCompletion:v66];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    v29 = v77[5];
    NSLog(@"    Confirmation response:%@ with error: %@", v29, v71[5]);
  }

  else
  {
    NSLog(@"    Skipping confirmation as parameter resolution was not successful");
  }

  v30 = v71[5];
  if (v30)
  {
    [MEMORY[0x1E695DF30] raise:@"Unexpected exception confirming Intent" format:{@"Encountered error confirming intent: %@, error: %@", v27, v30}];
  }

  v31 = [v97[5] copy];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__20857;
  v64 = __Block_byref_object_dispose__20858;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__20857;
  v58 = __Block_byref_object_dispose__20858;
  v59 = 0;
  v32 = v77[5];
  if (v32 && [v32 _intentResponseCode] == 1)
  {
    v33 = dispatch_semaphore_create(0);

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_5;
    v50[3] = &unk_1E727F520;
    v52 = &v60;
    v53 = &v54;
    v23 = v33;
    v51 = v23;
    [(_INExtensionContext *)v46 handleIntent:v31 withCompletion:v50];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    v34 = v61[5];
    NSLog(@"    Handle response:%@ with error: %@", v34, v55[5]);
  }

  else
  {
    NSLog(@"    Skipping handle as confirmation was not run or was not successful");
  }

  v35 = v55[5];
  if (v35)
  {
    [MEMORY[0x1E695DF30] raise:@"Unexpected exception handling Intent" format:{@"Encountered error handling intent: %@, error: %@", v31, v35}];
  }

  v36 = dispatch_semaphore_create(0);

  v37 = [v47 identifier];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_6;
  v48[3] = &unk_1E72882F8;
  v38 = v36;
  v49 = v38;
  [(_INExtensionContext *)v46 completeTransactionWithIntentIdentifier:v37 completion:v48];

  dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
  v39 = [INIntentTestResult alloc];
  v40 = [(INIntentTestResult *)v39 initWithResolvedIntent:v97[5] resolvedParameters:v26 resolvedAllParametersSuccesfully:*(v103 + 24) confirmResponse:v77[5] handleResponse:v61[5]];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_80(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = @"NO";
  if (a2)
  {
    v9 = @"YES";
  }

  NSLog(@"    Slot resolution success:%@", v9);
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v15 = v7;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_2_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INIntentTestResolvedParameter alloc] initWithParameter:v6 forIntent:*(*(*(a1 + 40) + 8) + 40) extensionContextResolutionResult:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = [v4 extensionContextResolutionResult];
  if ([v5 result] == 1)
  {
    v6 = [v4 results];

    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:@"Unexpected exception resolving parameter" format:{@"Encountered error resolving parameter: %@", v7}];
    }
  }

  else
  {
  }
}

uint64_t __42__INIntentTest_executeIntent_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rank];
  v6 = [v4 rank];

  v7 = [v5 compare:v6];
  return v7;
}

@end