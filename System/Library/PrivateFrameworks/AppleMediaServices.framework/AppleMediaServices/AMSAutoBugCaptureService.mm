@interface AMSAutoBugCaptureService
+ (AMSAutoBugCaptureService)sharedService;
- (void)captureSnapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions completion:(id)completion;
@end

@implementation AMSAutoBugCaptureService

+ (AMSAutoBugCaptureService)sharedService
{
  if (_MergedGlobals_110 != -1)
  {
    dispatch_once(&_MergedGlobals_110, &__block_literal_global_57);
  }

  v3 = qword_1ED6E29C0;

  return v3;
}

uint64_t __41__AMSAutoBugCaptureService_sharedService__block_invoke()
{
  qword_1ED6E29C0 = objc_alloc_init(AMSAutoBugCaptureService);

  return MEMORY[0x1EEE66BB8]();
}

- (void)captureSnapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  completionCopy = completion;
  v16 = objc_alloc_init(AMSDaemonConnection);
  v46 = 0;
  v17 = [(AMSDaemonConnection *)v16 autoBugCaptureServiceProxySyncWithError:&v46];
  v18 = v46;
  if (v18)
  {
    v19 = +[AMSUnitTests isRunningUnitTests];
    v20 = +[AMSLogConfig sharedConfig];
    defaultCenter = v20;
    if (v19)
    {
      if (!v20)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v36 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        if (v36)
        {
          v34 = AMSLogKey();
          v25 = NSStringFromSelector(a2);
          v26 = [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v34, v25];
        }

        else
        {
          v34 = NSStringFromSelector(a2);
          v26 = [v23 stringWithFormat:@"%@: %@ ", v24, v34];
          v25 = v26;
        }

        v32 = AMSLogableError(v18);
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to get XPC proxy object for auto bug capture service. error = %{public}@", buf, 0x16u);
        if (v36)
        {
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v20)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v37 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        if (v37)
        {
          v35 = AMSLogKey();
          v30 = NSStringFromSelector(a2);
          v31 = [v28 stringWithFormat:@"%@: [%@] %@ ", v29, v35, v30];
        }

        else
        {
          v35 = NSStringFromSelector(a2);
          v31 = [v28 stringWithFormat:@"%@: %@ ", v29, v35];
          v30 = v31;
        }

        v33 = AMSLogableError(v18);
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Failed to get XPC proxy object for auto bug capture service. error = %{public}@", buf, 0x16u);
        if (v37)
        {
        }
      }
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__29;
    v49 = __Block_byref_object_dispose__29;
    v50 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __97__AMSAutoBugCaptureService_captureSnapshotWithSignature_delay_events_payload_actions_completion___block_invoke;
    v42[3] = &unk_1E73B7A38;
    v44 = buf;
    v45 = a2;
    v42[4] = self;
    v43 = completionCopy;
    [v17 captureSnapshotWithSignature:signatureCopy delay:eventsCopy events:payloadCopy payload:actionsCopy actions:v42 completion:delay];

    _Block_object_dispose(buf, 8);
  }
}

void __97__AMSAutoBugCaptureService_captureSnapshotWithSignature_delay_events_payload_actions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = 0x1E73B0000uLL;
    v9 = +[AMSLogConfig sharedConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        if (v12)
        {
          v15 = AMSLogKey();
          v25 = NSStringFromSelector(*(a1 + 56));
          [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, v25];
        }

        else
        {
          v15 = NSStringFromSelector(*(a1 + 56));
          [v13 stringWithFormat:@"%@: %@ ", v14, v15];
        }
        v16 = ;
        v23 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to send auto bug capture report from service over XPC. error = %{public}@", buf, 0x16u);
        if (v12)
        {

          v16 = v25;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        if (v18)
        {
          v21 = AMSLogKey();
          v8 = NSStringFromSelector(*(a1 + 56));
          [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v8];
        }

        else
        {
          v21 = NSStringFromSelector(*(a1 + 56));
          [v19 stringWithFormat:@"%@: %@ ", v20, v21];
        }
        v22 = ;
        v24 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v22;
        v28 = 2114;
        v29 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Failed to send auto bug capture report from service over XPC. error = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = v8;
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end