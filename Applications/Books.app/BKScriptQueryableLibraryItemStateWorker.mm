@interface BKScriptQueryableLibraryItemStateWorker
+ (void)queryForItemStateWithStoreID:(id)a3 completionValue:(id)a4;
@end

@implementation BKScriptQueryableLibraryItemStateWorker

+ (void)queryForItemStateWithStoreID:(id)a3 completionValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018AE68;
  v12[3] = &unk_100A03440;
  v7 = v5;
  v13 = v7;
  v8 = v6;
  v14 = v8;
  v9 = objc_retainBlock(v12);
  if (v9)
  {
    if (+[NSThread isMainThread])
    {
      (v9[2])(v9);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018B09C;
      block[3] = &unk_100A03920;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

@end