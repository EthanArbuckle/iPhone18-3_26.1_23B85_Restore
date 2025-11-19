@interface WriteReceipt
+ (BOOL)writeReceiptData:(id)a3 toURL:(id)a4 logKey:(id)a5 error:(id *)a6;
+ (void)writeReceiptData:(id)a3 forBundleURL:(id)a4 logKey:(id)a5 completionHandler:(id)a6;
@end

@implementation WriteReceipt

+ (void)writeReceiptData:(id)a3 forBundleURL:(id)a4 logKey:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v42 = 0;
  v14 = [[LSApplicationRecord alloc] initWithURL:v11 allowPlaceholder:0 error:&v42];
  v15 = v42;
  v16 = [v14 lib_receiptURL];
  v17 = v16;
  if (v14)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v21 = [NSString stringWithFormat:@"Invalid container for application: %@", v11];
    v19 = ASDErrorWithDescription();
  }

  else
  {
    v41 = v15;
    [a1 writeReceiptData:v10 toURL:v16 logKey:v12 error:&v41];
    v35 = v41;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = [v14 applicationExtensionRecords];
    v21 = [v20 allObjects];

    v22 = [v21 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v31 = v17;
      v32 = v14;
      v33 = v13;
      v34 = v11;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v37 + 1) + 8 * v25) lib_receiptURL];
          if (v26)
          {
            v36 = 0;
            [a1 writeReceiptData:v10 toURL:v26 logKey:v12 error:&v36];
            v27 = v36;
            if (v27)
            {
              if (qword_1003D49C8 != -1)
              {
                sub_1002D15F4();
              }

              v28 = qword_1003D49A8;
              if (os_log_type_enabled(qword_1003D49A8, OS_LOG_TYPE_ERROR))
              {
                v29 = v28;
                v30 = [v10 length];
                *buf = 138544130;
                v44 = v12;
                v45 = 2048;
                v46 = v30;
                v47 = 2114;
                v48 = v26;
                v49 = 2114;
                v50 = v27;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Error writing receipt (%ld bytes) to extension %{public}@: %{public}@", buf, 0x2Au);
              }
            }
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v23);
      v13 = v33;
      v11 = v34;
      v17 = v31;
      v14 = v32;
    }

    v19 = v35;
  }

  v13[2](v13, v19);
}

+ (BOOL)writeReceiptData:(id)a3 toURL:(id)a4 logKey:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v29 = a5;
  v11 = +[NSFileManager defaultManager];
  v40[0] = NSFileOwnerAccountName;
  v40[1] = NSFileGroupOwnerAccountName;
  v41[0] = @"mobile";
  v41[1] = @"mobile";
  v12 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  if (qword_1003D49C8 != -1)
  {
    sub_1002D15F4();
  }

  v13 = qword_1003D49A8;
  if (os_log_type_enabled(qword_1003D49A8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 138543874;
    v33 = v29;
    v34 = 2048;
    v35 = [v9 length];
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing receipt (%ld bytes) to %{public}@", buf, 0x20u);
  }

  v15 = [v10 URLByDeletingLastPathComponent];
  if (!v15)
  {
    v21 = 0;
LABEL_11:
    v22 = [NSString stringWithFormat:@"Invalid container: %@", v15];
    v23 = ASDErrorWithDescription();

    v20 = v23;
    goto LABEL_12;
  }

  v31 = 0;
  v16 = [v11 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:v12 error:&v31];
  v17 = v31;
  v18 = v17;
  if (!v16)
  {
    v21 = v17;
    goto LABEL_11;
  }

  v30 = v17;
  v19 = [v9 writeToURL:v10 options:1 error:&v30];
  v20 = v30;

  if (v19)
  {
    LOBYTE(a6) = 1;
    goto LABEL_18;
  }

LABEL_12:
  if (qword_1003D49C8 != -1)
  {
    sub_1002D15F4();
  }

  v24 = qword_1003D49A8;
  if (os_log_type_enabled(qword_1003D49A8, OS_LOG_TYPE_ERROR))
  {
    v27 = v24;
    v28 = [v9 length];
    *buf = 138544130;
    v33 = v29;
    v34 = 2048;
    v35 = v28;
    v36 = 2114;
    v37 = v10;
    v38 = 2114;
    v39 = v20;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] Error writing receipt (%ld bytes) to %{public}@: %{public}@", buf, 0x2Au);
  }

  if (a6)
  {
    v25 = [NSString stringWithFormat:@"Failed to write receipt to URL: %@", v10];
    *a6 = ASDErrorWithUnderlyingErrorAndDescription();

    LOBYTE(a6) = 0;
  }

LABEL_18:

  return a6;
}

@end