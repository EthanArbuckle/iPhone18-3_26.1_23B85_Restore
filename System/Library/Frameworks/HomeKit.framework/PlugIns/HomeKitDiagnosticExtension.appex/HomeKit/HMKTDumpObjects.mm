@interface HMKTDumpObjects
- (int)main:(id)main;
@end

@implementation HMKTDumpObjects

- (int)main:(id)main
{
  mainCopy = main;
  firstObject = [mainCopy firstObject];
  v5 = [firstObject isEqualToString:@"-r"];

  if (v5)
  {
    self->_useRawValues = 1;
    [mainCopy removeObjectAtIndex:0];
  }

  v6 = __stdoutp;
  if ([mainCopy count] == 2)
  {
    lastObject = [mainCopy lastObject];
    v8 = fopen([lastObject cString], "w");

    if (v8)
    {
      v6 = v8;
    }

    [mainCopy removeLastObject];
  }

  if ([mainCopy count] == 1)
  {
    firstObject2 = [mainCopy firstObject];
    if (self)
    {
      context = objc_autoreleasePoolPush();
      v10 = [NSURL fileURLWithPath:firstObject2];
      v11 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v10];
      [v11 setReadOnly:1];
      [v11 setUsesPersistentHistoryTracking:1];
      options = [v11 options];
      v55 = 0;
      v13 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v10 options:options error:&v55];
      v14 = v55;

      if (v13)
      {
        entities = [v13 entities];
        [entities hmf_enumerateWithAutoreleasePoolUsingBlock:&stru_1000309D8];

        v22 = [NSPersistentContainer persistentContainerWithName:@"hmktool" managedObjectModel:v13];
        v60 = v11;
        v23 = [NSArray arrayWithObjects:&v60 count:1];
        [v22 setPersistentStoreDescriptions:v23];

        v59 = v14;
        v24 = [v22 load:&v59];
        v25 = v59;

        if (v24)
        {
          v32 = v22;
        }

        else
        {
          sub_1000055DC(__stderrp, @"Failed to load CoreData container: %@\n", v26, v27, v28, v29, v30, v31, v25);
          v32 = 0;
        }

        v14 = v25;
      }

      else
      {
        sub_1000055DC(__stderrp, @"Failed to read cached model: %@\n", v15, v16, v17, v18, v19, v20, v14);
        v32 = 0;
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      managedObjectModel = [v32 managedObjectModel];
      newBackgroundContext = [v32 newBackgroundContext];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000C094;
      v49[3] = &unk_100030998;
      v43 = managedObjectModel;
      v50 = v43;
      v44 = newBackgroundContext;
      v53 = &v55;
      v54 = v6;
      v51 = v44;
      selfCopy = self;
      [v44 performBlockAndWait:v49];
      if (v6 && v6 != __stdoutp && v6 != __stderrp && v6 != __stdinp)
      {
        fflush(v6);
        fclose(v6);
      }

      v40 = *(v56 + 6);

      _Block_object_dispose(&v55, 8);
    }

    else
    {
      v40 = 2;
      if (v6 && v6 != __stdoutp && v6 != __stderrp && v6 != __stdinp)
      {
        fflush(v6);
        fclose(v6);
      }
    }
  }

  else
  {
    v33 = __stderrp;
    name = [objc_opt_class() name];
    sub_1000055DC(v33, @"Usage: %@ %@ [-r] <sqlite store file>\n", v34, v35, v36, v37, v38, v39, @"hmktool");

    v40 = 1;
    if (v6 && v6 != __stdoutp && v6 != __stderrp && v6 != __stdinp)
    {
      fflush(v6);
      fclose(v6);
    }
  }

  return v40;
}

@end