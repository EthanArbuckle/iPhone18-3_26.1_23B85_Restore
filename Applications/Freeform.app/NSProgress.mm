@interface NSProgress
+ (id)crl_progressWithCRLProgress:(id)progress totalUnitCount:(int64_t)count;
+ (id)crl_progressWithChildren:(id)children;
- (int64_t)crl_pendingUnitCountForIncompleteProgress:(int64_t)progress;
- (void)crl_stopObservingCRLProgress;
@end

@implementation NSProgress

+ (id)crl_progressWithCRLProgress:(id)progress totalUnitCount:(int64_t)count
{
  progressCopy = progress;
  v6 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [v6 setTotalUnitCount:count];
  [progressCopy maxValue];
  v8 = v7;
  if (([progressCopy isIndeterminate] & 1) == 0 && v8 > 0.0)
  {
    [progressCopy value];
    [v6 setCompletedUnitCount:{(v9 / v8 * objc_msgSend(v6, "totalUnitCount"))}];
  }

  countCopy = 10;
  if (count > 10)
  {
    countCopy = count;
  }

  if (v8 > 0.0)
  {
    v11 = v8 / countCopy;
  }

  else
  {
    v11 = countCopy;
  }

  objc_initWeak(&location, progressCopy);
  objc_initWeak(&from, v6);
  v12 = &_dispatch_main_q;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1003A2DB4;
  v25 = &unk_10185B9C8;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(v27, &from);
  v27[1] = count;
  v13 = [progressCopy addProgressObserverWithValueInterval:&_dispatch_main_q queue:&v22 handler:v11];

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
  [(CRLProgressUserInfoObject *)v20 setProgress:progressCopy];
  [(CRLProgressUserInfoObject *)v20 setProgressObserver:v13];
  [v6 setUserInfoObject:v20 forKey:@"CRLProgressUserInfoKey"];

  objc_destroyWeak(v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

+ (id)crl_progressWithChildren:(id)children
{
  childrenCopy = children;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [childrenCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(childrenCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v6 += [v10 totalUnitCount];
        kind = [v10 kind];
        LODWORD(v10) = kind == NSProgressKindFile;

        v8 &= v10;
      }

      v5 = [childrenCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
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
  v13 = childrenCopy;
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
  userInfo = [(NSProgress *)self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CRLProgressUserInfoKey"];
  v8 = sub_100014370(v3, v5);

  progress = [v8 progress];
  progressObserver = [v8 progressObserver];
  [progress removeProgressObserver:progressObserver];
}

- (int64_t)crl_pendingUnitCountForIncompleteProgress:(int64_t)progress
{
  totalUnitCount = [(NSProgress *)self totalUnitCount];
  completedUnitCount = [(NSProgress *)self completedUnitCount];
  v7 = totalUnitCount - completedUnitCount;
  if (totalUnitCount - completedUnitCount < 0)
  {
    v7 = completedUnitCount - totalUnitCount;
  }

  progressCopy = v7 >> 1;
  if (v7 > progress)
  {
    progressCopy = progress;
  }

  if (v7 < 2 && v7 < progress)
  {
    return 0;
  }

  else
  {
    return progressCopy;
  }
}

@end