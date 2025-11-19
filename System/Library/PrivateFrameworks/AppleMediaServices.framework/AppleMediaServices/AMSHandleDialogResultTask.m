@interface AMSHandleDialogResultTask
- (AMSDialogRequest)request;
- (AMSHandleDialogResultTask)initWithResult:(id)a3 bag:(id)a4;
- (id)perform;
@end

@implementation AMSHandleDialogResultTask

- (AMSHandleDialogResultTask)initWithResult:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSHandleDialogResultTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_result, a3);
    objc_storeStrong(&v10->_bag, a4);
  }

  return v10;
}

- (AMSDialogRequest)request
{
  v2 = [(AMSHandleDialogResultTask *)self result];
  v3 = [v2 originalRequest];

  return v3;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AMSHandleDialogResultTask_perform__block_invoke;
  v4[3] = &unk_1E73B39D0;
  v4[4] = self;
  v2 = [(AMSTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

uint64_t __36__AMSHandleDialogResultTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x1E69E9840];
  v4 = 0x1E73B0000uLL;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) request];
    v9 = [v8 logKey];
    v10 = [*(a1 + 32) result];
    *buf = 138543874;
    v111 = v7;
    v112 = 2114;
    v113 = v9;
    v114 = 2114;
    v115 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling dialog result: %{public}@", buf, 0x20u);
  }

  v11 = [*(a1 + 32) result];
  v12 = [v11 selectedActionIdentifier];
  v13 = v12;
  v14 = @"AMSDialogResultDismissIdentifier";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [*(a1 + 32) request];
  v105 = v15;
  v17 = [v16 locateActionWithIdentifier:v15];

  v18 = [v17 request];

  if (v18)
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = *(a1 + 32);
      v23 = v21;
      v24 = [v22 request];
      [v24 logKey];
      v26 = v25 = a2;
      *buf = 138543618;
      v111 = v21;
      v112 = 2114;
      v113 = v26;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing request", buf, 0x16u);

      a2 = v25;
    }

    v27 = [AMSURLRequestEncoder alloc];
    v28 = [*(a1 + 32) bag];
    v29 = [(AMSURLRequestEncoder *)v27 initWithBag:v28];

    v30 = [*(a1 + 32) account];
    [(AMSURLRequestEncoder *)v29 setAccount:v30];

    v31 = AMSLogKey();
    [(AMSURLRequestEncoder *)v29 setLogUUID:v31];

    v32 = [v17 request];
    v33 = [(AMSURLRequestEncoder *)v29 requestByEncodingRequest:v32 parameters:0];
    v109 = 0;
    v34 = [v33 resultWithError:&v109];
    v35 = v109;

    v106 = v35;
    if (v35)
    {
      v36 = +[AMSLogConfig sharedConfig];
      if (!v36)
      {
        v36 = +[AMSLogConfig sharedConfig];
      }

      v37 = [v36 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = a2;
        v39 = objc_opt_class();
        v40 = *(a1 + 32);
        v103 = v39;
        v41 = [v40 request];
        v42 = [v41 logKey];
        *buf = 138543874;
        v111 = v39;
        a2 = v38;
        v112 = 2114;
        v113 = v42;
        v114 = 2114;
        v115 = v106;
        _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating request: %{public}@", buf, 0x20u);
      }

      v104 = 0;
    }

    else
    {
      v36 = +[AMSURLSession defaultSession];
      v43 = [v36 dataTaskPromiseWithRequest:v34];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __36__AMSHandleDialogResultTask_perform__block_invoke_3;
      v108[3] = &unk_1E73B34B8;
      v108[4] = *(a1 + 32);
      [v43 addErrorBlock:v108];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __36__AMSHandleDialogResultTask_perform__block_invoke_4;
      v107[3] = &unk_1E73B2E78;
      v107[4] = *(a1 + 32);
      v104 = v43;
      [v43 addSuccessBlock:v107];
    }

    v4 = 0x1E73B0000uLL;
  }

  else
  {
    v106 = 0;
    v104 = 0;
  }

  v44 = [v17 deepLink];

  if (v44)
  {
    v45 = [v17 inferLinkDestination];
    v46 = +[AMSLogConfig sharedConfig];
    v47 = v46;
    if (v45)
    {
      if (!v46)
      {
        v47 = +[AMSLogConfig sharedConfig];
      }

      v48 = [v47 OSLogObject];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = objc_opt_class();
        v50 = *(a1 + 32);
        v101 = v49;
        [v50 request];
        v52 = v51 = a2;
        v53 = [v52 logKey];
        v54 = [v17 deepLink];
        v55 = AMSLogableURL(v54);
        *buf = 138543874;
        v111 = v49;
        v112 = 2114;
        v113 = v53;
        v114 = 2112;
        v115 = v55;
        _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening url: %@", buf, 0x20u);

        a2 = v51;
      }

      v56 = [*(a1 + 32) clientInfo];
      v57 = [v56 copy];
      v58 = v57;
      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = +[AMSProcessInfo currentProcess];
      }

      v68 = v59;

      v69 = [*(a1 + 32) proxyBundleId];

      if (v69)
      {
        v70 = [*(a1 + 32) proxyBundleId];
        [v68 setProxyAppBundleID:v70];
      }

      v71 = [v17 deepLink];
      v72 = [*(a1 + 32) bag];
      v73 = [AMSOpenURL openURL:v71 clientInfo:v68 bag:v72];

      v4 = 0x1E73B0000uLL;
    }

    else
    {
      if (!v46)
      {
        v47 = +[AMSLogConfig sharedConfig];
      }

      v60 = [v47 OSLogObject];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = objc_opt_class();
        v62 = *(a1 + 32);
        v102 = v61;
        [v62 request];
        v64 = v63 = a2;
        v65 = [v64 logKey];
        v66 = [v17 deepLink];
        v67 = AMSLogableURL(v66);
        *buf = 138543874;
        v111 = v61;
        v112 = 2114;
        v113 = v65;
        v114 = 2112;
        v115 = v67;
        _os_log_impl(&dword_192869000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening standard URL: %@", buf, 0x20u);

        a2 = v63;
        v4 = 0x1E73B0000;
      }

      v68 = [v17 deepLink];
      [AMSOpenURL openStandardURL:v68];
    }
  }

  if ([v17 ams_actionType] == 7)
  {
    v74 = [*(v4 + 3552) sharedConfig];
    if (!v74)
    {
      v74 = [*(v4 + 3552) sharedConfig];
    }

    v75 = [v74 OSLogObject];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = objc_opt_class();
      v77 = *(a1 + 32);
      v78 = v76;
      v79 = [v77 request];
      v80 = [v79 logKey];
      *buf = 138543618;
      v111 = v76;
      v112 = 2114;
      v113 = v80;
      _os_log_impl(&dword_192869000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting QR code dialog action", buf, 0x16u);
    }

    v81 = [v17 dialogRequest];
    v82 = [*(a1 + 32) result];
    v83 = [*(a1 + 32) request];
    v84 = [v83 logKey];
    [AMSHandleQRDialogResult handleQRDialogPresentationForRequest:v81 result:v82 logKey:v84];
  }

  v85 = [*(a1 + 32) request];
  v86 = [v85 metricsEvent];

  if (v86)
  {
    v87 = [v17 ams_metricsDictionary];
    v88 = [v87 count];

    if (v88)
    {
      v89 = [*(a1 + 32) request];
      v90 = [v89 metricsEvent];
      v91 = [v17 ams_metricsDictionary];
      [v90 addPropertiesWithDictionary:v91];
    }

    v92 = [*(a1 + 32) bag];
    v93 = [AMSMetrics internalInstanceUsingBag:v92];
    v94 = [*(a1 + 32) request];
    v95 = [v94 metricsEvent];
    [v93 enqueueEvent:v95];
  }

  v96 = [v17 metricsEvent];

  if (v96)
  {
    v97 = [*(a1 + 32) bag];
    v98 = [AMSMetrics internalInstanceUsingBag:v97];
    v99 = [v17 metricsEvent];
    [v98 enqueueEvent:v99];
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

void __36__AMSHandleDialogResultTask_perform__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 request];
    v10 = [v9 logKey];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error completing the dialog result request: %{public}@", &v11, 0x20u);
  }
}

void __36__AMSHandleDialogResultTask_perform__block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 request];
    v8 = [v7 logKey];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed dialog result request successfully", &v9, 0x16u);
  }
}

@end