@interface CRLAssertionHandler
+ (id)p_performBlockIgnoringAssertions:(id)a3 onlyFatal:(BOOL)a4;
+ (id)packedBacktraceString;
+ (id)packedBacktraceStringWithReturnAddresses:(id)a3;
+ (id)performBlockIgnoringAssertions:(id)a3;
+ (id)performBlockIgnoringFatalAssertions:(id)a3;
+ (id)performBlockIgnoringQAFatalAssertions:(id)a3;
+ (void)_logBacktraceWithCallStackSymbols:(id)a3;
+ (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 isFatal:(BOOL)a6 description:(const char *)a7;
+ (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 isFatal:(BOOL)a6 format:(id)a7 args:(char *)a8;
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
  v15[3] = &unk_10008F725;
  v16 = 0;
  v7 = objc_retainBlock(qword_1000B4D10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014AD8;
  v13[3] = &unk_1000A7060;
  v14 = a4;
  v13[4] = v6;
  v13[5] = v15;
  v8 = objc_retainBlock(v13);
  v9 = qword_1000B4D10;
  qword_1000B4D10 = v8;

  v5[2](v5);
  v10 = objc_retainBlock(v7);
  v11 = qword_1000B4D10;
  qword_1000B4D10 = v10;

  _Block_object_dispose(v15, 8);

  return v6;
}

+ (void)logFullBacktrace
{
  if (CRLAssertCat_init_token != -1)
  {
    sub_10007D8C0();
  }

  v3 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10007D8D4(v3);
  }

  [a1 simulateCrashWithMessage:@"+[CRLAssert logBacktrace]"];
}

+ (void)_logBacktraceWithCallStackSymbols:(id)a3
{
  v4 = a3;
  if (CRLAssertCat_init_token != -1)
  {
    sub_10007D980();
  }

  v5 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10007D994(v5, v4);
  }

  [a1 simulateCrashWithMessage:@"+[CRLAssert logBacktrace]"];
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
  if (qword_1000B4D18 != -1)
  {
    sub_10007DA38();
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
            os_unfair_lock_lock(&dword_1000B4D30);
            v13 = [qword_1000B4D28 objectForKeyedSubscript:v12];
            os_unfair_lock_unlock(&dword_1000B4D30);
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
            v34 = [NSMutableDictionary dictionaryWithSharedKeySet:qword_1000B4D20];
            v35 = [[NSUUID alloc] initWithUUIDBytes:v27 + 2];
            [v34 setObject:v35 forKeyedSubscript:@"uuid"];

            v36 = [NSValue valueWithPointer:v33];
            [v34 setObject:v36 forKeyedSubscript:@"loadaddr"];

            os_unfair_lock_lock(&dword_1000B4D30);
            [qword_1000B4D28 setObject:v34 forKeyedSubscript:v21];
            os_unfair_lock_unlock(&dword_1000B4D30);
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

+ (void)simulateCrashWithMessage:(id)a3
{
  v3 = a3;
  if (qword_1000B4D40 != -1)
  {
    v7 = v3;
    sub_10007DA4C();
    v3 = v7;
  }

  v4 = off_1000B4D38;
  if (off_1000B4D38)
  {
    v6 = v3;
    v5 = getpid();
    v4(v5, 0, v6);
    v3 = v6;
  }
}

+ (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 isFatal:(BOOL)a6 format:(id)a7 args:(char *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [[NSString alloc] crl_initUnRedactedWithFormat:v16 arguments:a8];

  if (qword_1000B4D10)
  {
    (*(qword_1000B4D10 + 16))();
  }

  else
  {
    v24[0] = @"CRLAssertNotificationDescriptionKey";
    v24[1] = @"CRLAssertNotificationFileKey";
    v25[0] = v17;
    v25[1] = v15;
    v24[2] = @"CRLAssertNotificationLineNumberKey";
    v18 = [NSNumber numberWithInteger:a5];
    v25[2] = v18;
    v25[3] = v14;
    v24[3] = @"CRLAssertNotificationFunctionNameKey";
    v24[4] = @"CRLAssertNotificationAssertionCountKey";
    v19 = atomic_load(dword_1000B4D48);
    v20 = [NSNumber numberWithInt:v19];
    v25[4] = v20;
    v24[5] = @"CRLAssertNotificationFatalnessNameKey";
    v21 = [NSNumber numberWithBool:v10];
    v25[5] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"CRLAssertNotification" object:a1 userInfo:v22];
  }
}

+ (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 isFatal:(BOOL)a6 description:(const char *)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [NSString stringWithUTF8String:a7];
  [a1 handleFailureInFunction:v13 file:v12 lineNumber:a5 isFatal:v8 format:v14 args:&v15];
}

@end