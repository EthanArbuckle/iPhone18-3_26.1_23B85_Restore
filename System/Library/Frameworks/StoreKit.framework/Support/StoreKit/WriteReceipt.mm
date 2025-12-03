@interface WriteReceipt
+ (BOOL)writeReceiptData:(id)data toURL:(id)l logKey:(id)key error:(id *)error;
+ (void)writeReceiptData:(id)data forBundleURL:(id)l logKey:(id)key completionHandler:(id)handler;
@end

@implementation WriteReceipt

+ (void)writeReceiptData:(id)data forBundleURL:(id)l logKey:(id)key completionHandler:(id)handler
{
  dataCopy = data;
  lCopy = l;
  keyCopy = key;
  handlerCopy = handler;
  v42 = 0;
  v14 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:0 error:&v42];
  v15 = v42;
  lib_receiptURL = [v14 lib_receiptURL];
  v17 = lib_receiptURL;
  if (v14)
  {
    v18 = lib_receiptURL == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    lCopy = [NSString stringWithFormat:@"Invalid container for application: %@", lCopy];
    v19 = ASDErrorWithDescription();
  }

  else
  {
    v41 = v15;
    [self writeReceiptData:dataCopy toURL:lib_receiptURL logKey:keyCopy error:&v41];
    v35 = v41;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    applicationExtensionRecords = [v14 applicationExtensionRecords];
    lCopy = [applicationExtensionRecords allObjects];

    v22 = [lCopy countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v31 = v17;
      v32 = v14;
      v33 = handlerCopy;
      v34 = lCopy;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(lCopy);
          }

          lib_receiptURL2 = [*(*(&v37 + 1) + 8 * v25) lib_receiptURL];
          if (lib_receiptURL2)
          {
            v36 = 0;
            [self writeReceiptData:dataCopy toURL:lib_receiptURL2 logKey:keyCopy error:&v36];
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
                v30 = [dataCopy length];
                *buf = 138544130;
                v44 = keyCopy;
                v45 = 2048;
                v46 = v30;
                v47 = 2114;
                v48 = lib_receiptURL2;
                v49 = 2114;
                v50 = v27;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Error writing receipt (%ld bytes) to extension %{public}@: %{public}@", buf, 0x2Au);
              }
            }
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [lCopy countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v23);
      handlerCopy = v33;
      lCopy = v34;
      v17 = v31;
      v14 = v32;
    }

    v19 = v35;
  }

  handlerCopy[2](handlerCopy, v19);
}

+ (BOOL)writeReceiptData:(id)data toURL:(id)l logKey:(id)key error:(id *)error
{
  dataCopy = data;
  lCopy = l;
  keyCopy = key;
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
    v33 = keyCopy;
    v34 = 2048;
    v35 = [dataCopy length];
    v36 = 2114;
    v37 = lCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing receipt (%ld bytes) to %{public}@", buf, 0x20u);
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    v21 = 0;
LABEL_11:
    v22 = [NSString stringWithFormat:@"Invalid container: %@", uRLByDeletingLastPathComponent];
    v23 = ASDErrorWithDescription();

    v20 = v23;
    goto LABEL_12;
  }

  v31 = 0;
  v16 = [v11 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v12 error:&v31];
  v17 = v31;
  v18 = v17;
  if (!v16)
  {
    v21 = v17;
    goto LABEL_11;
  }

  v30 = v17;
  v19 = [dataCopy writeToURL:lCopy options:1 error:&v30];
  v20 = v30;

  if (v19)
  {
    LOBYTE(error) = 1;
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
    v28 = [dataCopy length];
    *buf = 138544130;
    v33 = keyCopy;
    v34 = 2048;
    v35 = v28;
    v36 = 2114;
    v37 = lCopy;
    v38 = 2114;
    v39 = v20;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] Error writing receipt (%ld bytes) to %{public}@: %{public}@", buf, 0x2Au);
  }

  if (error)
  {
    lCopy = [NSString stringWithFormat:@"Failed to write receipt to URL: %@", lCopy];
    *error = ASDErrorWithUnderlyingErrorAndDescription();

    LOBYTE(error) = 0;
  }

LABEL_18:

  return error;
}

@end