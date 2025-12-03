@interface CRLAssertionHandler
+ (id)p_performBlockIgnoringAssertions:(id)assertions onlyFatal:(BOOL)fatal;
+ (id)packedBacktraceString;
+ (id)packedBacktraceStringWithReturnAddresses:(id)addresses;
+ (id)performBlockIgnoringAssertions:(id)assertions;
+ (id)performBlockIgnoringFatalAssertions:(id)assertions;
+ (id)performBlockIgnoringQAFatalAssertions:(id)assertions;
+ (void)_logBacktraceWithCallStackSymbols:(id)symbols;
+ (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number isFatal:(BOOL)fatal description:(const char *)description;
+ (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number isFatal:(BOOL)fatal format:(id)format args:(char *)args;
+ (void)logFullBacktrace;
+ (void)simulateCrashWithMessage:(id)message;
@end

@implementation CRLAssertionHandler

+ (id)performBlockIgnoringAssertions:(id)assertions
{
  v3 = [self p_performBlockIgnoringAssertions:assertions onlyFatal:0];
  lastObject = [v3 lastObject];

  return lastObject;
}

+ (id)performBlockIgnoringFatalAssertions:(id)assertions
{
  v3 = [self p_performBlockIgnoringAssertions:assertions onlyFatal:1];
  lastObject = [v3 lastObject];

  return lastObject;
}

+ (id)performBlockIgnoringQAFatalAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v5 = [self p_performBlockIgnoringAssertions:assertionsCopy onlyFatal:{objc_msgSend(self, "isQAFatalAssertionsEnabled")}];

  lastObject = [v5 lastObject];

  return lastObject;
}

+ (id)p_performBlockIgnoringAssertions:(id)assertions onlyFatal:(BOOL)fatal
{
  assertionsCopy = assertions;
  v6 = +[NSMutableArray array];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2810000000;
  v15[3] = &unk_1016A8115;
  v16 = 0;
  v7 = objc_retainBlock(qword_101A34A08);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10028D25C;
  v13[3] = &unk_10184FA58;
  fatalCopy = fatal;
  v13[4] = v6;
  v13[5] = v15;
  v8 = objc_retainBlock(v13);
  v9 = qword_101A34A08;
  qword_101A34A08 = v8;

  assertionsCopy[2](assertionsCopy);
  v10 = objc_retainBlock(v7);
  v11 = qword_101A34A08;
  qword_101A34A08 = v10;

  _Block_object_dispose(v15, 8);

  return v6;
}

+ (void)logFullBacktrace
{
  if (qword_101AD5A10 != -1)
  {
    sub_101343754();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101343768(v3);
  }

  [self simulateCrashWithMessage:@"+[CRLAssert logBacktrace]"];
}

+ (void)_logBacktraceWithCallStackSymbols:(id)symbols
{
  symbolsCopy = symbols;
  if (qword_101AD5A10 != -1)
  {
    sub_101343814();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101343828(v5, symbolsCopy);
  }

  [self simulateCrashWithMessage:@"+[CRLAssert logBacktrace]"];
}

+ (id)packedBacktraceString
{
  v3 = +[NSThread callStackReturnAddresses];
  v4 = [self packedBacktraceStringWithReturnAddresses:v3];

  return v4;
}

+ (id)packedBacktraceStringWithReturnAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = +[NSMutableData data];
  v5 = +[NSMutableSet set];
  if (qword_101A34A10 != -1)
  {
    sub_1013438CC();
  }

  v56 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableSet);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = addressesCopy;
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

        pointerValue = [*(*(&v73 + 1) + 8 * i) pointerValue];
        memset(&v80, 0, sizeof(v80));
        if (dladdr(pointerValue, &v80))
        {
          v12 = [NSValue valueWithPointer:v80.dli_fbase];
          if (([v5 containsObject:v12] & 1) == 0)
          {
            [v5 addObject:v12];
            os_unfair_lock_lock(&dword_101A34A28);
            v13 = [qword_101A34A20 objectForKeyedSubscript:v12];
            os_unfair_lock_unlock(&dword_101A34A28);
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
        pointerValue2 = [v21 pointerValue];
        magic = pointerValue2->magic;
        v24 = 28;
        if (pointerValue2->magic > -17958195)
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
        ncmds = pointerValue2->ncmds;
        if (ncmds)
        {
          v27 = (&pointerValue2->magic + v24);
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
          v32 = getsegmentdata(pointerValue2, "__TEXT", &v80);
          if (v32)
          {
            v33 = v32;
            v34 = [NSMutableDictionary dictionaryWithSharedKeySet:qword_101A34A18];
            v35 = [[NSUUID alloc] initWithUUIDBytes:v27 + 2];
            [v34 setObject:v35 forKeyedSubscript:@"uuid"];

            v36 = [NSValue valueWithPointer:v33];
            [v34 setObject:v36 forKeyedSubscript:@"loadaddr"];

            os_unfair_lock_lock(&dword_101A34A28);
            [qword_101A34A20 setObject:v34 forKeyedSubscript:v21];
            os_unfair_lock_unlock(&dword_101A34A28);
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
        pointerValue3 = [v44 pointerValue];

        v62 = pointerValue3;
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

+ (void)simulateCrashWithMessage:(id)message
{
  messageCopy = message;
  if (qword_101A34A38 != -1)
  {
    v7 = messageCopy;
    sub_1013438E0();
    messageCopy = v7;
  }

  v4 = off_101A34A30;
  if (off_101A34A30)
  {
    v6 = messageCopy;
    v5 = getpid();
    v4(v5, 0, v6);
    messageCopy = v6;
  }
}

+ (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number isFatal:(BOOL)fatal format:(id)format args:(char *)args
{
  fatalCopy = fatal;
  functionCopy = function;
  fileCopy = file;
  formatCopy = format;
  v17 = [[NSString alloc] crl_initUnRedactedWithFormat:formatCopy arguments:args];

  if (qword_101A34A08)
  {
    (*(qword_101A34A08 + 16))();
  }

  else
  {
    v24[0] = @"CRLAssertNotificationDescriptionKey";
    v24[1] = @"CRLAssertNotificationFileKey";
    v25[0] = v17;
    v25[1] = fileCopy;
    v24[2] = @"CRLAssertNotificationLineNumberKey";
    v18 = [NSNumber numberWithInteger:number];
    v25[2] = v18;
    v25[3] = functionCopy;
    v24[3] = @"CRLAssertNotificationFunctionNameKey";
    v24[4] = @"CRLAssertNotificationAssertionCountKey";
    v19 = atomic_load(&dword_101A34A40);
    v20 = [NSNumber numberWithInt:v19];
    v25[4] = v20;
    v24[5] = @"CRLAssertNotificationFatalnessNameKey";
    v21 = [NSNumber numberWithBool:fatalCopy];
    v25[5] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"CRLAssertNotification" object:self userInfo:v22];
  }
}

+ (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number isFatal:(BOOL)fatal description:(const char *)description
{
  fatalCopy = fatal;
  fileCopy = file;
  functionCopy = function;
  v14 = [NSString stringWithUTF8String:description];
  [self handleFailureInFunction:functionCopy file:fileCopy lineNumber:number isFatal:fatalCopy format:v14 args:&v15];
}

@end