@interface CRLAssertionHandler
+ (id)p_performBlockIgnoringAssertions:(id)a3 onlyFatal:(BOOL)a4;
+ (id)packedBacktraceString;
+ (id)packedBacktraceStringWithReturnAddresses:(id)a3;
+ (id)performBlockIgnoringAssertions:(id)a3;
+ (id)performBlockIgnoringFatalAssertions:(id)a3;
+ (id)performBlockIgnoringQAFatalAssertions:(id)a3;
+ (void)_logBacktraceWithCallStackSymbols:(id)a3;
+ (void)logFullBacktrace;
+ (void)simulateCrashWithMessage:(id)a3;
@end

@implementation CRLAssertionHandler

+ (id)performBlockIgnoringAssertions:(id)a3
{
  v3 = [a1 p_performBlockIgnoringAssertions:a3 onlyFatal:0];
  v4 = [v3 lastObject];

  return v4;
}

+ (id)performBlockIgnoringFatalAssertions:(id)a3
{
  v3 = [a1 p_performBlockIgnoringAssertions:a3 onlyFatal:1];
  v4 = [v3 lastObject];

  return v4;
}

+ (id)performBlockIgnoringQAFatalAssertions:(id)a3
{
  v4 = a3;
  v5 = [a1 p_performBlockIgnoringAssertions:v4 onlyFatal:{objc_msgSend(a1, "isQAFatalAssertionsEnabled")}];

  v6 = [v5 lastObject];

  return v6;
}

+ (id)p_performBlockIgnoringAssertions:(id)a3 onlyFatal:(BOOL)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2810000000;
  v15[3] = &unk_44001;
  v16 = 0;
  v7 = objc_retainBlock(_ignoreAssertionsCallback);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __66__CRLAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke;
  v13[3] = &unk_4DAE0;
  v14 = a4;
  v13[4] = v6;
  v13[5] = v15;
  v8 = objc_retainBlock(v13);
  v9 = _ignoreAssertionsCallback;
  _ignoreAssertionsCallback = v8;

  v5[2](v5);
  v10 = objc_retainBlock(v7);
  v11 = _ignoreAssertionsCallback;
  _ignoreAssertionsCallback = v10;

  _Block_object_dispose(v15, 8);

  return v6;
}

void __66__CRLAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (CRLAssertCat_init_token != -1)
  {
    __66__CRLAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke_cold_1();
  }

  v6 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    __66__CRLAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke_cold_2(v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    os_unfair_lock_lock((*(v8 + 8) + 32));
    v9 = *(v7 - 8);
    v10 = [NSString stringWithFormat:@"Terminating application due to %@", v5];
LABEL_9:
    v12 = v10;
    [v9 addObject:v10];

    os_unfair_lock_unlock((*(*v7 + 8) + 32));
    goto LABEL_10;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = *(a1 + 40);
    v7 = a1 + 40;
    os_unfair_lock_lock((*(v11 + 8) + 32));
    v9 = *(v7 - 8);
    v10 = [v5 copy];
    goto LABEL_9;
  }

LABEL_10:
}

void __66__CRLAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke_2(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

+ (void)logFullBacktrace
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace: >>%{public}@<<", &v3, 0xCu);
}

void __39__CRLAssertionHandler_logFullBacktrace__block_invoke(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

+ (void)_logBacktraceWithCallStackSymbols:(id)a3
{
  v4 = a3;
  if (CRLAssertCat_init_token != -1)
  {
    +[CRLAssertionHandler _logBacktraceWithCallStackSymbols:];
  }

  v5 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    [(CRLAssertionHandler *)v5 _logBacktraceWithCallStackSymbols:v4];
  }

  [a1 simulateCrashWithMessage:@"+[CRLAssert logBacktrace]"];
}

void __57__CRLAssertionHandler__logBacktraceWithCallStackSymbols___block_invoke(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

+ (id)packedBacktraceString
{
  v3 = +[NSThread callStackReturnAddresses];
  v4 = [a1 packedBacktraceStringWithReturnAddresses:v3];

  return v4;
}

+ (id)packedBacktraceStringWithReturnAddresses:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableData data];
  v5 = +[NSMutableSet set];
  if (packedBacktraceStringWithReturnAddresses__onceToken != -1)
  {
    +[CRLAssertionHandler packedBacktraceStringWithReturnAddresses:];
  }

  v56 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableSet);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v74;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v74 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v73 + 1) + 8 * i) pointerValue];
        memset(&v80, 0, sizeof(v80));
        if (dladdr(v11, &v80))
        {
          v12 = [NSValue valueWithPointer:v80.dli_fbase];
          if (([v5 containsObject:v12] & 1) == 0)
          {
            [v5 addObject:v12];
            os_unfair_lock_lock(&packedBacktraceStringWithReturnAddresses__knownImageInfosLock);
            v13 = [packedBacktraceStringWithReturnAddresses__knownImageInfos objectForKeyedSubscript:v12];
            os_unfair_lock_unlock(&packedBacktraceStringWithReturnAddresses__knownImageInfosLock);
            if (v13)
            {
              v14 = v56;
              v15 = v13;
            }

            else
            {
              v14 = v6;
              v15 = v12;
            }

            [v14 addObject:v15];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v8);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v79 count:16];
  v55 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v69 + 1) + 8 * j);
        v22 = [v21 pointerValue];
        magic = v22->magic;
        v24 = 28;
        if (v22->magic > -17958195)
        {
          if (magic == -17958194)
          {
            goto LABEL_29;
          }

          v25 = -17958193;
        }

        else
        {
          if (magic == -822415874)
          {
            goto LABEL_29;
          }

          v25 = -805638658;
        }

        if (magic != v25)
        {
          continue;
        }

        v24 = 32;
LABEL_29:
        ncmds = v22->ncmds;
        if (ncmds)
        {
          v27 = (&v22->magic + v24);
          v28 = 1;
          while (1)
          {
            v29 = v27[1];
            if (*v27 == 27 && v29 == 24)
            {
              break;
            }

            v27 = (v27 + v29);
            if (v27)
            {
              v31 = v28 >= ncmds;
            }

            else
            {
              v31 = 1;
            }

            ++v28;
            if (v31)
            {
              goto LABEL_43;
            }
          }

          v80.dli_fname = 0;
          v32 = getsegmentdata(v22, "__TEXT", &v80);
          if (v32)
          {
            v33 = v32;
            v34 = [NSMutableDictionary dictionaryWithSharedKeySet:packedBacktraceStringWithReturnAddresses__keySet];
            v35 = [[NSUUID alloc] initWithUUIDBytes:v27 + 2];
            [v34 setObject:v35 forKeyedSubscript:@"uuid"];

            v36 = [NSValue valueWithPointer:v33];
            [v34 setObject:v36 forKeyedSubscript:@"loadaddr"];

            os_unfair_lock_lock(&packedBacktraceStringWithReturnAddresses__knownImageInfosLock);
            [packedBacktraceStringWithReturnAddresses__knownImageInfos setObject:v34 forKeyedSubscript:v21];
            os_unfair_lock_unlock(&packedBacktraceStringWithReturnAddresses__knownImageInfosLock);
            [v56 addObject:v34];

            v16 = v55;
          }
        }

LABEL_43:
        ;
      }

      v18 = [v16 countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v18);
  }

  v68 = [v56 count];
  [v4 appendBytes:&v68 length:8];
  v67 = [obj count];
  [v4 appendBytes:&v67 length:8];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v37 = v56;
  v38 = [v37 countByEnumeratingWithState:&v63 objects:v78 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v64;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v64 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v63 + 1) + 8 * k);
        v80.dli_fname = 0;
        v80.dli_fbase = 0;
        v43 = [v42 objectForKeyedSubscript:@"uuid"];
        [v43 getUUIDBytes:&v80];

        v44 = [v42 objectForKeyedSubscript:@"loadaddr"];
        v45 = [v44 pointerValue];

        v62 = v45;
        [v4 appendBytes:&v80 length:16];
        [v4 appendBytes:&v62 length:8];
      }

      v39 = [v37 countByEnumeratingWithState:&v63 objects:v78 count:16];
    }

    while (v39);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v46 = obj;
  v47 = [v46 countByEnumeratingWithState:&v58 objects:v77 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v59;
    do
    {
      for (m = 0; m != v48; m = m + 1)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v80.dli_fname = [*(*(&v58 + 1) + 8 * m) pointerValue];
        [v4 appendBytes:&v80 length:8];
      }

      v48 = [v46 countByEnumeratingWithState:&v58 objects:v77 count:16];
    }

    while (v48);
  }

  v51 = objc_alloc_init(NSMutableData);
  v52 = [v4 crl_compressWithAlgorithm:774 operation:0];
  LODWORD(v62) = 843347010;
  [v51 appendBytes:&v62 length:4];
  v80.dli_fname = [v52 length];
  [v51 appendBytes:&v80 length:8];
  [v51 appendData:v52];
  v53 = [v51 base64EncodedStringWithOptions:0];

  return v53;
}

void __64__CRLAssertionHandler_packedBacktraceStringWithReturnAddresses___block_invoke(id a1)
{
  v1 = [NSDictionary sharedKeySetForKeys:&off_506B8];
  v2 = packedBacktraceStringWithReturnAddresses__keySet;
  packedBacktraceStringWithReturnAddresses__keySet = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = packedBacktraceStringWithReturnAddresses__knownImageInfos;
  packedBacktraceStringWithReturnAddresses__knownImageInfos = v3;

  packedBacktraceStringWithReturnAddresses__knownImageInfosLock = 0;
}

+ (void)simulateCrashWithMessage:(id)a3
{
  v3 = a3;
  if (simulateCrashWithMessage__once != -1)
  {
    v7 = v3;
    +[CRLAssertionHandler simulateCrashWithMessage:];
    v3 = v7;
  }

  v4 = simulateCrashWithMessage____SimulateCrash;
  if (simulateCrashWithMessage____SimulateCrash)
  {
    v6 = v3;
    v5 = getpid();
    v4(v5, 0, v6);
    v3 = v6;
  }
}

void __48__CRLAssertionHandler_simulateCrashWithMessage___block_invoke(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  if (v1)
  {
    v1 = dlsym(v1, "SimulateCrash");
  }

  simulateCrashWithMessage____SimulateCrash = v1;
}

+ (void)_logBacktraceWithCallStackSymbols:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 134218242;
  v5 = CRLDynamicBaseAddress();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace. Load address 0x%0llx, Backtrace:\n%{public}@", &v4, 0x16u);
}

@end