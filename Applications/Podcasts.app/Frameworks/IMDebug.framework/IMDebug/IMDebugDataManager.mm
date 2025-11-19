@interface IMDebugDataManager
+ (id)deviceName;
+ (id)writeDebugDataWithProgress:(id)a3;
+ (void)initialize;
+ (void)registerDataProvider:(id)a3;
+ (void)writeDebugData:(id)a3 completion:(id)a4;
@end

@implementation IMDebugDataManager

+ (void)initialize
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___IMDebugDataManager;
  objc_msgSendSuper2(&v12, "initialize");
  v3 = objc_alloc_init(NSMutableArray);
  v4 = dataProviders;
  dataProviders = v3;

  v5 = objc_alloc_init(NSMutableArray);
  v6 = asyncDataProviders;
  asyncDataProviders = v5;

  v7 = objc_alloc_init(IMDebugViewHierarchyDataProvider);
  [a1 registerDataProvider:v7];

  v8 = objc_alloc_init(IMDebugViewControllerHierarchyDataProvider);
  [a1 registerDataProvider:v8];

  v9 = objc_alloc_init(IMDebugScreenShotDataProvider);
  [a1 registerDataProvider:v9];

  v10 = objc_alloc_init(IMDebugUserDefaultsDataProvider);
  [a1 registerDataProvider:v10];

  v11 = objc_alloc_init(IMDebugDownloadReportDataProvider);
  [a1 registerAsyncDataProvider:v11];
}

+ (void)registerDataProvider:(id)a3
{
  if (a3)
  {
    [dataProviders addObject:?];
  }
}

+ (void)writeDebugData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__IMDebugDataManager_writeDebugData_completion___block_invoke;
  block[3] = &unk_104E0;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __48__IMDebugDataManager_writeDebugData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) writeDebugDataWithProgress:*(a1 + 32)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__IMDebugDataManager_writeDebugData_completion___block_invoke_2;
  v5[3] = &unk_104B8;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t __48__IMDebugDataManager_writeDebugData_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (id)deviceName
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 name];

  return v3;
}

+ (id)writeDebugDataWithProgress:(id)a3
{
  v53 = a3;
  v60 = +[DebugUtil applicationDocumentsDirectory];
  v3 = +[NSBundle mainBundle];
  v62 = [v3 objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  v4 = +[NSDate now];
  v58 = [v4 description];

  v5 = [objc_opt_class() deviceName];
  v57 = [NSString stringWithFormat:@"%@ %@ %@", v62, v58, v5];

  v6 = [v60 URLByAppendingPathComponent:v57];
  v7 = [v6 URLByAppendingPathExtension:@"zip"];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 contentsOfDirectoryAtURL:v60 includingPropertiesForKeys:0 options:0 error:0];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
  if (v10)
  {
    v11 = *v89;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v89 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v88 + 1) + 8 * i);
        v14 = [v13 pathExtension];
        v15 = [v7 pathExtension];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = [v13 pathComponents];
          v18 = [v17 lastObject];
          v19 = +[NSCharacterSet whitespaceCharacterSet];
          v20 = [v18 componentsSeparatedByCharactersInSet:v19];

          v21 = [v20 firstObject];
          LODWORD(v18) = [v21 isEqualToString:v62];

          if (v18)
          {
            v22 = +[NSFileManager defaultManager];
            [v22 removeItemAtURL:v13 error:0];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
    }

    while (v10);
  }

  v23 = [v7 path];
  v24 = v23;
  [v23 cStringUsingEncoding:4];
  v59 = zipOpen();

  if (!v59)
  {
    NSLog(@"Can't open '%@'", v7);
  }

  v56 = +[NSDate date];
  v55 = +[NSCalendar currentCalendar];
  v61 = [v55 components:252 fromDate:v56];
  v52 = [v61 second];
  v25 = [v61 minute];
  v26 = [v61 hour];
  v27 = [v61 day];
  v28 = [v61 month];
  v29 = [v61 year];
  v30 = dispatch_group_create();
  v31 = [dataProviders count];
  v32 = [asyncDataProviders count];
  v33 = v28 - 1;
  v34 = &v31[v32];
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = __49__IMDebugDataManager_writeDebugDataWithProgress___block_invoke;
  v72[3] = &unk_10530;
  v76 = v59;
  v77 = v52;
  v78 = v25;
  v79 = v26;
  v80 = v27;
  v81 = v33;
  v82 = v29;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v54 = v53;
  v74 = v54;
  v75 = v87;
  v86 = v34;
  v35 = v30;
  v73 = v35;
  v36 = objc_retainBlock(v72);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v37 = dataProviders;
  v38 = [v37 countByEnumeratingWithState:&v68 objects:v93 count:16];
  if (v38)
  {
    v39 = *v69;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v69 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v68 + 1) + 8 * j);
        dispatch_group_enter(v35);
        v42 = [v41 debugData];
        v43 = [v41 debugDataFileName];
        (v36[2])(v36, v42, v43);
      }

      v38 = [v37 countByEnumeratingWithState:&v68 objects:v93 count:16];
    }

    while (v38);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v44 = asyncDataProviders;
  v45 = [v44 countByEnumeratingWithState:&v64 objects:v92 count:16];
  if (v45)
  {
    v46 = *v65;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v64 + 1) + 8 * k);
        dispatch_group_enter(v35);
        [v48 createDebugDataWithCompletion:v36];
      }

      v45 = [v44 countByEnumeratingWithState:&v64 objects:v92 count:16];
    }

    while (v45);
  }

  v49 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v35, v49);
  if (zipClose(v59, 0))
  {
    NSLog(@"Error closing '%@'", v7);
    v50 = 0;
  }

  else
  {
    v50 = v7;
  }

  _Block_object_dispose(v87, 8);

  return v50;
}

void __49__IMDebugDataManager_writeDebugDataWithProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  v7 = v5;
  v8 = a2;
  if (zipOpenNewFileInZip3(v6, [v5 cStringUsingEncoding:4], a1 + 64, 0, 0, 0, 0, 0, 8, 8, 0xFFFFFFF100000000, 8, 0, 0, 0))
  {
    NSLog(@"Could not append file %@ to zip archive", v5);
  }

  v9 = *(a1 + 56);
  v10 = [v8 bytes];
  v11 = [v8 length];

  if ((zipWriteInFileInZip(v9, v10, v11) & 0x80000000) != 0)
  {
    NSLog(@"Error writing data for %@ to zip archive", v5);
  }

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __49__IMDebugDataManager_writeDebugDataWithProgress___block_invoke_2;
    block[3] = &unk_10508;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = v12;
    v16 = v13;
    v17 = *(a1 + 112);
    dispatch_async(&_dispatch_main_q, block);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __49__IMDebugDataManager_writeDebugDataWithProgress___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  return (*(v1 + 16))(v1, v3 / a1[6]);
}

@end