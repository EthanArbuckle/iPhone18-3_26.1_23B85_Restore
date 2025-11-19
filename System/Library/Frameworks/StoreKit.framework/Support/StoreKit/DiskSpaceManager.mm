@interface DiskSpaceManager
+ (BOOL)ensureAvailableDiskSpace:(int64_t)a3 atPath:(id)a4;
+ (int64_t)availableDiskSpaceAtPath:(id)a3;
+ (int64_t)recoverableDiskSpaceAtPath:(id)a3;
@end

@implementation DiskSpaceManager

+ (int64_t)availableDiskSpaceAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if (([v4 fileExistsAtPath:v3] & 1) == 0)
  {
    v5 = [v3 stringByDeletingLastPathComponent];

    v3 = v5;
  }

  v17 = 0;
  v6 = [v4 attributesOfFileSystemForPath:v3 error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = [v6 objectForKey:NSFileSystemFreeSize];
    v11 = [v12 unsignedLongLongValue];
  }

  else
  {
    if (qword_1003D3E98 != -1)
    {
      sub_1002C9B5C();
    }

    v10 = qword_1003D3E50;
    if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_ERROR))
    {
      v14 = v10;
      v15 = objc_opt_class();
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v3;
      v22 = 2114;
      v23 = v8;
      v16 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] availableSpaceOnDiskAtPath:%{public}@ failed: %{public}@", buf, 0x20u);
    }

    v11 = -1;
  }

  return v11;
}

+ (BOOL)ensureAvailableDiskSpace:(int64_t)a3 atPath:(id)a4
{
  v6 = a4;
  v7 = [a1 availableDiskSpaceAtPath:v6];
  if (v7 < a3)
  {
    v8 = v7;
    if (qword_1003D3E98 != -1)
    {
      sub_1002C9B84();
    }

    v9 = qword_1003D3E50;
    if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 138543874;
      v37 = objc_opt_class();
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = a3;
      v11 = v37;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Free space (%lld) is less than required (%lld). Checking cache delete.", buf, 0x20u);
    }

    v35[0] = v6;
    v34[0] = @"CACHE_DELETE_VOLUME";
    v34[1] = @"CACHE_DELETE_AMOUNT";
    v12 = [NSNumber numberWithLongLong:a3];
    v34[2] = @"CACHE_DELETE_URGENCY";
    v35[1] = v12;
    v35[2] = &off_1003A13A8;
    v13 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

    v14 = CacheDeleteCopyPurgeableSpaceWithInfo();
    v15 = [v14 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    if (v8 + [v15 longLongValue] < a3)
    {
      if (qword_1003D3E98 != -1)
      {
        sub_1002C9B5C();
      }

      v16 = qword_1003D3E50;
      if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9C40(v16, a1, v15);
      }

      v17 = 0;
      goto LABEL_30;
    }

    if (qword_1003D3E98 != -1)
    {
      sub_1002C9B5C();
    }

    v18 = qword_1003D3E50;
    if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      *buf = 138543618;
      v37 = v20;
      v38 = 2114;
      v39 = v15;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cache delete has %{public}@ recoverable bytes", buf, 0x16u);
    }

    v22 = dispatch_semaphore_create(0);
    v33 = v14;
    v23 = v22;
    CacheDeletePurgeSpaceWithInfo();
    v24 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v23, v24) >= 1)
    {
      if (qword_1003D3E98 != -1)
      {
        sub_1002C9B5C();
      }

      v25 = qword_1003D3E50;
      if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9B98(v25);
      }

      v26 = [a1 availableDiskSpaceAtPath:v6];
      if (v26 <= a3)
      {
        v17 = 0;
        goto LABEL_29;
      }

      v27 = v26;
      if (qword_1003D3E98 != -1)
      {
        sub_1002C9B5C();
      }

      v28 = qword_1003D3E50;
      if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = objc_opt_class();
        *buf = 138543618;
        v37 = v30;
        v38 = 2048;
        v39 = v27;
        v31 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enough space was recovered to proceed (now available: %lld)", buf, 0x16u);
      }
    }

    v17 = 1;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v17 = 1;
LABEL_31:

  return v17;
}

+ (int64_t)recoverableDiskSpaceAtPath:(id)a3
{
  v9[0] = @"CACHE_DELETE_VOLUME";
  v9[1] = @"CACHE_DELETE_URGENCY";
  v10[0] = a3;
  v10[1] = &off_1003A13A8;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v5 = CacheDeleteCopyPurgeableSpaceWithInfo();
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = [v6 unsignedLongLongValue];

  return v7;
}

@end