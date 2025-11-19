@interface NSProgress
+ (id)crl_progressWithCRLProgress:(id)a3 totalUnitCount:(int64_t)a4;
+ (id)crl_progressWithChildren:(id)a3;
- (int64_t)crl_pendingUnitCountForIncompleteProgress:(int64_t)a3;
- (void)crl_stopObservingCRLProgress;
@end

@implementation NSProgress

+ (id)crl_progressWithCRLProgress:(id)a3 totalUnitCount:(int64_t)a4
{
  v5 = a3;
  v6 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [v6 setTotalUnitCount:a4];
  [v5 maxValue];
  v8 = v7;
  if (([v5 isIndeterminate] & 1) == 0 && v8 > 0.0)
  {
    [v5 value];
    [v6 setCompletedUnitCount:{(v9 / v8 * objc_msgSend(v6, "totalUnitCount"))}];
  }

  v10 = 10;
  if (a4 > 10)
  {
    v10 = a4;
  }

  if (v8 > 0.0)
  {
    v11 = v8 / v10;
  }

  else
  {
    v11 = v10;
  }

  objc_initWeak(&location, v5);
  objc_initWeak(&from, v6);
  v12 = &_dispatch_main_q;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1003A2DB4;
  v25 = &unk_10185B9C8;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(v27, &from);
  v27[1] = a4;
  v13 = [v5 addProgressObserverWithValueInterval:&_dispatch_main_q queue:&v22 handler:v11];

  if (!v13)
  {
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101361ED8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101361F00(v14, v15);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361FBC();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v17, buf, v14, v16);
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSProgress(NSProgress_CRLAdditions) crl_progressWithCRLProgress:totalUnitCount:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSProgress_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "progressObserver", v22, v23, v24, v25];
  }

  v20 = objc_alloc_init(CRLProgressUserInfoObject);
  [(CRLProgressUserInfoObject *)v20 setProgress:v5];
  [(CRLProgressUserInfoObject *)v20 setProgressObserver:v13];
  [v6 setUserInfoObject:v20 forKey:@"CRLProgressUserInfoKey"];

  objc_destroyWeak(v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

+ (id)crl_progressWithChildren:(id)a3
{
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v6 += [v10 totalUnitCount];
        v11 = [v10 kind];
        LODWORD(v10) = v11 == NSProgressKindFile;

        v8 &= v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  v12 = [NSProgress discreteProgressWithTotalUnitCount:v6];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addChild:*(*(&v19 + 1) + 8 * j) withPendingUnitCount:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "totalUnitCount", v19)}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  if (v8)
  {
    [v12 setKind:NSProgressKindFile];
  }

  return v12;
}

- (void)crl_stopObservingCRLProgress
{
  v3 = objc_opt_class();
  v4 = [(NSProgress *)self userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CRLProgressUserInfoKey"];
  v8 = sub_100014370(v3, v5);

  v6 = [v8 progress];
  v7 = [v8 progressObserver];
  [v6 removeProgressObserver:v7];
}

- (int64_t)crl_pendingUnitCountForIncompleteProgress:(int64_t)a3
{
  v5 = [(NSProgress *)self totalUnitCount];
  v6 = [(NSProgress *)self completedUnitCount];
  v7 = v5 - v6;
  if (v5 - v6 < 0)
  {
    v7 = v6 - v5;
  }

  v8 = v7 >> 1;
  if (v7 > a3)
  {
    v8 = a3;
  }

  if (v7 < 2 && v7 < a3)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

@end