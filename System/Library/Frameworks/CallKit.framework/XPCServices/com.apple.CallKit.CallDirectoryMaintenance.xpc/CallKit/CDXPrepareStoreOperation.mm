@interface CDXPrepareStoreOperation
- (BOOL)checkForExtensionsStuckLoading:(id *)a3;
- (BOOL)disableAllExtensionsWithError:(id *)a3;
- (BOOL)performWithError:(id *)a3;
- (BOOL)synchronizeExtensionsWithError:(id *)a3;
- (CDXPrepareStoreOperation)initWithFirstUnlockStatus:(BOOL)a3;
@end

@implementation CDXPrepareStoreOperation

- (CDXPrepareStoreOperation)initWithFirstUnlockStatus:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CDXPrepareStoreOperation;
  result = [(CDXPrepareStoreOperation *)&v5 init];
  if (result)
  {
    result->_afterFirstUnlock = a3;
  }

  return result;
}

- (BOOL)performWithError:(id *)a3
{
  v40 = 0;
  v5 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v40];
  v6 = v40;
  v7 = [v5 isCorrupt];
  v8 = [v5 url];

  if (!v7)
  {
    v14 = objc_alloc_init(CXCallDirectoryStoreMigrator);
    v36 = v6;
    v21 = [v14 performMigrationsWithError:&v36];
    v12 = v36;

    if (!v21)
    {
      v26 = sub_100005CC4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100023314();
      }

      goto LABEL_44;
    }

    if ([v21 requiresExtensionDisablement])
    {
      v35 = v12;
      v22 = [(CDXPrepareStoreOperation *)self disableAllExtensionsWithError:&v35];
      v23 = v35;

      v24 = sub_100005CC4();
      v25 = v24;
      if (v22)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Disabled all extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100023244();
      }

      if (v23)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v23 = v12;
      if (v12)
      {
LABEL_41:
        v33 = v23;
        v30 = [(CDXPrepareStoreOperation *)self checkForExtensionsStuckLoading:&v33];
        v12 = v33;

        if (v30)
        {
LABEL_45:

          goto LABEL_46;
        }

        v26 = sub_100005CC4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000232AC();
        }

LABEL_44:

        goto LABEL_45;
      }
    }

    if ([v21 requiresExtensionSynchronization])
    {
      v34 = 0;
      v27 = [(CDXPrepareStoreOperation *)self synchronizeExtensionsWithError:&v34];
      v23 = v34;
      v28 = sub_100005CC4();
      v29 = v28;
      if (v27)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Synchronized extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100021FE0();
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_41;
  }

  v9 = sub_100005CC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10002337C(v9);
  }

  v10 = +[NSFileManager defaultManager];
  v39 = v6;
  v11 = [v10 removeItemAtURL:v8 error:&v39];
  v12 = v39;

  v13 = sub_100005CC4();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully removed DB at URL '%@'", buf, 0xCu);
    }

    v38 = v12;
    v14 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v38];
    v15 = v38;

    v16 = sub_100005CC4();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created new store successfully", buf, 2u);
      }

      v37 = v15;
      v18 = [(CDXPrepareStoreOperation *)self synchronizeExtensionsWithError:&v37];
      v12 = v37;

      v19 = sub_100005CC4();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Synchronized extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100021FE0();
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100023434();
      }

      v14 = v17;
      v12 = v15;
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000233C0();
  }

LABEL_46:

  if (a3 && v12)
  {
    v31 = v12;
    *a3 = v12;
  }

  return v12 == 0;
}

- (BOOL)disableAllExtensionsWithError:(id *)a3
{
  v4 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 setStateForAllExtensions:1 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)synchronizeExtensionsWithError:(id *)a3
{
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = sub_100013B90;
  v26[3] = sub_100013BA0;
  v27 = 0;
  v5 = [CXCallDirectoryStore alloc];
  v6 = (v26[0] + 40);
  obj = *(v26[0] + 40);
  v7 = [v5 initForReadingAndWritingWithError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [[CDXSynchronizeExtensionsOperation alloc] initWithStore:v7 firstUnlockStatus:[(CDXPrepareStoreOperation *)self afterFirstUnlock]];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100013BA8;
    v21[3] = &unk_1000350C0;
    v23 = &v25;
    v9 = dispatch_semaphore_create(0);
    v22 = v9;
    [(CDXSynchronizeExtensionsOperation *)v8 performWithCompletionHandler:v21];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sub_100005CC4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002349C(v26, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    v8 = *(v26[0] + 40);
    *(v26[0] + 40) = v17;
  }

  v18 = *(v26[0] + 40);
  if (a3 && v18)
  {
    *a3 = v18;
    v18 = *(v26[0] + 40);
  }

  v19 = v18 == 0;

  _Block_object_dispose(&v25, 8);
  return v19;
}

- (BOOL)checkForExtensionsStuckLoading:(id *)a3
{
  v39 = 0;
  v4 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v39];
  v5 = v39;
  v6 = v5;
  if (v4)
  {
    v38 = v5;
    v7 = [v4 prioritizedExtensionsWithError:&v38];
    v8 = v38;

    if (v7)
    {
      v29 = v7;
      v30 = a3;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        v13 = &_s14IdentityLookup04LiveB11DBExtensionCMa_ptr;
        v31 = *v35;
        v32 = v9;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            v16 = [v13[287] date];
            v17 = [v15 stateLastModified];
            [v16 timeIntervalSinceDate:v17];
            v19 = v18;
            if ([v15 state] == 3 && objc_msgSend(v17, "compare:", v16) != 1 && v19 > 3600.0)
            {
              v20 = v13;
              v21 = v8;
              v22 = sub_100005CC4();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v41 = v15;
                v42 = 2048;
                v43 = 0x40AC200000000000;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Store extension %@ has Loading state but time interval since state last modified is %f. Assuming state is stuck and resetting to Enabled", buf, 0x16u);
              }

              v23 = [v15 primaryKey];
              v33 = v21;
              v24 = v4;
              v25 = [v4 setState:4 forExtensionWithID:v23 error:&v33];
              v8 = v33;

              if ((v25 & 1) == 0)
              {
                v26 = sub_100005CC4();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  sub_100023510();
                }

                v4 = v24;
                v9 = v32;
                goto LABEL_21;
              }

              v4 = v24;
              v13 = v20;
              v12 = v31;
              v9 = v32;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v7 = v29;
      a3 = v30;
    }

    v6 = v8;
  }

  if (a3 && v6)
  {
    v27 = v6;
    *a3 = v6;
  }

  return v6 == 0;
}

@end