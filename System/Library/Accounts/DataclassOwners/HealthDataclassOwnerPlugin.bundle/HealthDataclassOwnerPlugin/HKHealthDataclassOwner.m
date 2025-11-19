@interface HKHealthDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7;
- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
@end

@implementation HKHealthDataclassOwner

+ (id)dataclasses
{
  v4 = kAccountDataclassHealth;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v4 = [_HKBehavior sharedBehavior:a3];
  v5 = [v4 isDeviceSupported];

  if (v5)
  {
    v6 = [ACDataclassAction actionWithType:6];
    v10[0] = v6;
    v7 = [ACDataclassAction actionWithType:5];
    v10[1] = v7;
    v8 = [NSArray arrayWithObjects:v10 count:2];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v4 = [_HKBehavior sharedBehavior:a3];
  v5 = [v4 isDeviceSupported];

  if (v5)
  {
    v6 = [ACDataclassAction actionWithType:2];
    v7 = [ACDataclassAction destructiveActionWithType:3, v6];
    v11[1] = v7;
    v8 = [ACDataclassAction actionWithType:0];
    v11[2] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:3];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v35 = a5;
  v36 = a6;
  _HKInitializeLogging();
  v14 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v52 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing dataclass action %{public}@ for account %@", buf, 0x20u);
  }

  v15 = [v12 type];
  if (v15 == &dword_4 + 2 || v15 == &dword_0 + 3)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_15C8;
    v53 = sub_15D8;
    v54 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = objc_alloc_init(HKHealthStore);
    v18 = [[HKDatabaseControl alloc] initWithHealthStore:v17];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_15E0;
    v37[3] = &unk_8270;
    v39 = &v41;
    v40 = buf;
    v19 = v16;
    v38 = v19;
    [v18 obliterateHealthDataWithOptions:1 completion:v37];
    v20 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v19, v20))
    {
      v21 = [NSError hk_error:100 description:@"Timed out waiting for database to obliterate"];
      _HKInitializeLogging();
      v22 = HKLogSync;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v21 localizedDescription];
        sub_26C8(self, v23, v45, v22);
      }

      v24 = v21;
      v25 = v24;
      if (v24)
      {
        if (a7)
        {
          v26 = v24;
          *a7 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v27 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v28 = HKLogSync;
      if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v42 + 24))
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"no";
        }

        v30 = *(*&buf[8] + 40);
        *v45 = 138543874;
        v46 = self;
        v47 = 2114;
        v48 = v29;
        v49 = 2114;
        v50 = v30;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Database obliterated with success=%{public}@, error=%{public}@", v45, 0x20u);
      }

      v31 = *(*&buf[8] + 40);
      v32 = v31;
      if (v31)
      {
        if (a7)
        {
          v33 = v31;
          *a7 = v32;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v27 = *(v42 + 24);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v27 = 1;
  }

  return v27 & 1;
}

@end