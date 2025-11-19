@interface AMSSystemEngagementTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSSystemEngagementTask)initWithRequest:(id)a3;
- (AMSSystemEngagementTask)initWithRequest:(id)a3 bag:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_processIdentifierForBundleIdentifier:(id)a3;
- (id)_snapshotBagDataPromise;
- (id)_unlockDeviceIfNeeded;
- (id)present;
- (void)_activateIfWithError:(id *)a3;
- (void)_finishTaskWithResult:(id)a3 error:(id)a4;
- (void)_invalidateRemoteAlert;
- (void)_listenForAppForegroundWithHandle:(id)a3 monitorInApp:(BOOL)a4;
- (void)engagementTaskDidFinishWithResult:(id)a3 error:(id)a4 completion:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AMSSystemEngagementTask

- (AMSSystemEngagementTask)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSystemEngagementTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (AMSSystemEngagementTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a4;
  v8 = [(AMSSystemEngagementTask *)self initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bag, a4);
  }

  return v9;
}

- (id)present
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AMSSystemEngagementTask_present__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __34__AMSSystemEngagementTask_present__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) request];
  v3 = [v2 logKey];
  v4 = AMSSetLogKey(v3);

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
    v10 = [*(a1 + 32) request];
    *buf = 138543874;
    v33 = v7;
    v34 = 2114;
    v35 = v9;
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting system engagement request. Request: %{public}@", buf, 0x20u);
  }

  v11 = [MEMORY[0x1E696B0D8] anonymousListener];
  [*(a1 + 32) setRemoteListener:v11];

  v12 = *(a1 + 32);
  v13 = [v12 remoteListener];
  [v13 setDelegate:v12];

  v14 = [*(a1 + 32) remoteListener];
  [v14 resume];

  v15 = [*(a1 + 32) _unlockDeviceIfNeeded];
  v31 = 0;
  [v15 resultWithError:&v31];
  v16 = v31;

  if (v16)
  {
    v17 = [AMSPromise promiseWithError:v16];
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E69D4298]);
    v20 = *(a1 + 32);
    v19 = (a1 + 32);
    v21 = [v20 remoteListener];
    v22 = [v21 endpoint];
    v23 = [v22 _endpoint];
    [v18 setXpcEndpoint:v23];

    [v18 setUserInfo:MEMORY[0x1E695E0F8]];
    v24 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.AMSEngagementViewService" viewControllerClassName:@"AMSEngagementViewService.RemoteEngagementViewController"];
    v25 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v24 configurationContext:v18];
    [*v19 setRemoteAlertHandle:v25];

    v26 = [*v19 remoteAlertHandle];
    [v26 registerObserver:*v19];

    [*v19 _activateIfWithError:0];
    v27 = objc_alloc_init(AMSMutablePromise);
    [*v19 setResultPromise:v27];
    objc_initWeak(buf, *v19);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __34__AMSSystemEngagementTask_present__block_invoke_10;
    v29[3] = &unk_1E73BC7A8;
    objc_copyWeak(&v30, buf);
    v17 = [(AMSMutablePromise *)v27 continueWithBlock:v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v17;
}

id __34__AMSSystemEngagementTask_present__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [WeakRetained request];
    v12 = [v11 logKey];
    *buf = 138544130;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v5;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement task finished. Result: %{public}@, error: %{public}@", buf, 0x2Au);
  }

  [WeakRetained _invalidateRemoteAlert];
  [WeakRetained setResultPromise:0];
  v13 = [AMSMetrics alloc];
  v14 = [WeakRetained bag];
  v15 = [(AMSMetrics *)v13 initWithContainerID:@"com.apple.AppleMediaServices" bag:v14];

  v16 = [(AMSMetrics *)v15 flush];
  if (v6)
  {
    v21 = @"AMSEngagementPresented";
    v22 = MEMORY[0x1E695E118];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = [v6 ams_errorByAddingUserInfo:v17];
    v19 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    v19 = [AMSPromise promiseWithResult:v5];
  }

  return v19;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(AMSSystemEngagementTask *)self request];
    v8 = [v7 logKey];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Remote alert did activate", &v9, 0x16u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(AMSSystemEngagementTask *)self request];
    v8 = [v7 logKey];
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Remote alert did deactivate", &v16, 0x16u);
  }

  v9 = [(AMSSystemEngagementTask *)self presentationTargetHandle];

  if (!v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = [(AMSSystemEngagementTask *)self request];
      v14 = [v13 logKey];
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resolving due to missing presentation target", &v16, 0x16u);
    }

    v15 = AMSError(6, 0, 0, 0);
    [(AMSSystemEngagementTask *)self _finishTaskWithResult:0 error:v15];
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(AMSSystemEngagementTask *)self request];
    v10 = [v9 logKey];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Remote alert did invalidate. Error: %{public}@", &v12, 0x20u);
  }

  v11 = AMSError(6, 0, 0, 0);
  [(AMSSystemEngagementTask *)self _finishTaskWithResult:0 error:v11];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(AMSSystemEngagementTask *)self request];
    v10 = [v9 logKey];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received connection from view service", &v14, 0x16u);
  }

  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07B6AD8];
  [v5 setExportedInterface:v11];

  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE1C8];
  [v5 setRemoteObjectInterface:v12];

  [v5 setExportedObject:self];
  [v5 resume];
  [(AMSSystemEngagementTask *)self setUnderlyingRemoteConnection:v5];

  return 1;
}

- (void)engagementTaskDidFinishWithResult:(id)a3 error:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = [(AMSSystemEngagementTask *)self request];
    v15 = [v14 logKey];
    v16 = 138544130;
    v17 = v13;
    v18 = 2114;
    v19 = v15;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task finished. (result: %{public}@, error: %{public}@)", &v16, 0x2Au);
  }

  v10[2](v10);
  [(AMSSystemEngagementTask *)self _finishTaskWithResult:v8 error:v9];
}

- (void)_activateIfWithError:(id *)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = [(AMSSystemEngagementTask *)self remoteAlertHandle];
  v6 = [v5 isValid];

  if ((v6 & 1) == 0)
  {
    *a3 = AMSError(12, @"Remote Handle Not Valid", 0, 0);
    return;
  }

  v7 = [(AMSSystemEngagementTask *)self remoteAlertHandle];
  v8 = [v7 isActive];

  if (v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping re-activation: handle already active", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v9 = [(AMSSystemEngagementTask *)self clientInfo];

  if (!v9 || (v13 = MEMORY[0x1E696ACC8], -[AMSSystemEngagementTask clientInfo](self, "clientInfo"), v14 = objc_claimAutoreleasedReturnValue(), v77 = 0, [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v77], v9 = objc_claimAutoreleasedReturnValue(), v10 = v77, v14, !v10))
  {
    v16 = MEMORY[0x1E696ACC8];
    v17 = [(AMSSystemEngagementTask *)self request];
    v76 = 0;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v76];
    v10 = v76;

    if (v10)
    {
      v19 = v10;
      *a3 = v10;
LABEL_37:

      goto LABEL_38;
    }

    v20 = [(AMSSystemEngagementTask *)self _snapshotBagDataPromise];
    v75 = 0;
    v71 = [v20 resultWithError:&v75];
    v21 = v75;

    v70 = v21;
    if (v21)
    {
      v22 = +[AMSLogConfig sharedConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        [(AMSSystemEngagementTask *)self request];
        v26 = v25 = v18;
        v27 = [v26 logKey];
        *buf = 138543874;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        *&buf[22] = 2114;
        *&buf[24] = v70;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to snapshot bag. Error: %{public}@", buf, 0x20u);

        v18 = v25;
      }
    }

    if ([(AMSSystemEngagementTask *)self disablePresentationTarget])
    {
      v28 = 0;
    }

    else
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v66 = objc_opt_class();
        v31 = AMSLogKey();
        [(AMSSystemEngagementTask *)self clientInfo];
        v32 = v68 = v18;
        v33 = [v32 bundleIdentifier];
        v34 = [(AMSSystemEngagementTask *)self clientInfo];
        v35 = [v34 auditTokenData];
        *buf = 138544130;
        *&buf[4] = v66;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        *&buf[22] = 2112;
        *&buf[24] = v33;
        v81 = 2112;
        v82 = v35;
        _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] looking for handle for bundle: %@ audit: %@", buf, 0x2Au);

        v18 = v68;
      }

      v36 = [(AMSSystemEngagementTask *)self clientInfo];
      v37 = [v36 auditTokenData];

      if (!v37)
      {
        v69 = v18;
        v49 = [(AMSSystemEngagementTask *)self clientInfo];
        v50 = [v49 bundleIdentifier];
        if (v50)
        {
          v51 = v50;
          v52 = +[AMSProcessInfo currentProcess];
          v53 = [v52 bundleIdentifier];
          v54 = [(AMSSystemEngagementTask *)self clientInfo];
          v55 = [v54 bundleIdentifier];
          v56 = [v53 isEqualToString:v55];

          if ((v56 & 1) == 0)
          {
            v57 = [(AMSSystemEngagementTask *)self clientInfo];
            v58 = [v57 bundleIdentifier];
            v59 = [(AMSSystemEngagementTask *)self _processIdentifierForBundleIdentifier:v58];

            if (v59)
            {
              v28 = [MEMORY[0x1E698E740] processHandleForPID:{objc_msgSend(v59, "intValue")}];
              v60 = +[AMSLogConfig sharedConfig];
              if (!v60)
              {
                v60 = +[AMSLogConfig sharedConfig];
              }

              v61 = [v60 OSLogObject];
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = objc_opt_class();
                v63 = AMSLogKey();
                v67 = [(AMSSystemEngagementTask *)self clientInfo];
                v64 = [v67 bundleIdentifier];
                *buf = 138544386;
                *&buf[4] = v62;
                *&buf[12] = 2114;
                *&buf[14] = v63;
                *&buf[22] = 2112;
                *&buf[24] = v59;
                v81 = 2112;
                v82 = v64;
                v83 = 2112;
                v84 = v28;
                _os_log_impl(&dword_192869000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found pid: %@ for bundle: %@ <%@>", buf, 0x34u);
              }
            }

            else
            {
              v28 = 0;
            }

            v18 = v69;

            goto LABEL_27;
          }
        }

        else
        {
        }

        v65 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];

        if (v65)
        {
          v28 = [MEMORY[0x1E698E740] processHandle];
          v41 = 1;
        }

        else
        {
          v28 = 0;
          v41 = 0;
        }

        v18 = v69;
        goto LABEL_28;
      }

      memset(buf, 0, sizeof(buf));
      v38 = [(AMSSystemEngagementTask *)self clientInfo];
      v39 = [v38 auditTokenData];
      [v39 getBytes:buf length:32];

      v74[0] = *buf;
      v74[1] = *&buf[16];
      v40 = [MEMORY[0x1E698E620] tokenFromAuditToken:v74];
      v28 = [MEMORY[0x1E698E740] processHandleForAuditToken:v40];
    }

LABEL_27:
    v41 = 0;
LABEL_28:
    v42 = objc_alloc(MEMORY[0x1E695DF90]);
    v78 = @"engagementRequestData";
    v79 = v18;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v44 = [v42 initWithDictionary:v43];

    if (v71)
    {
      [v44 setObject:v71 forKeyedSubscript:@"bagData"];
    }

    if (v9)
    {
      [v44 setObject:v9 forKeyedSubscript:@"clientInfoData"];
    }

    v45 = v18;
    if (v28)
    {
      [v44 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"attachedToApp"];
    }

    v46 = objc_alloc_init(MEMORY[0x1E69D4288]);
    [v46 setUserInfo:v44];
    if (v28)
    {
      v47 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetProcess:v28];
      [v46 setPresentationTarget:v47];

      [(AMSSystemEngagementTask *)self _listenForAppForegroundWithHandle:v28 monitorInApp:v41];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AMSSystemEngagementTask__activateIfWithError___block_invoke;
    block[3] = &unk_1E73B3DE0;
    block[4] = self;
    v73 = v46;
    v48 = v46;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v18 = v45;
    goto LABEL_37;
  }

  v15 = v10;
  *a3 = v10;
LABEL_38:
}

void __48__AMSSystemEngagementTask__activateIfWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteAlertHandle];
  [v2 activateWithContext:*(a1 + 40)];
}

- (void)_finishTaskWithResult:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(AMSTask *)self isFinished])
  {
    v7 = [(AMSSystemEngagementTask *)self underlyingRemoteConnection];
    [v7 invalidate];

    [(AMSSystemEngagementTask *)self setUnderlyingRemoteConnection:0];
    v8 = [(AMSSystemEngagementTask *)self resultPromise];
    [v8 finishWithResult:v9 error:v6];
  }
}

- (void)_invalidateRemoteAlert
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AMSSystemEngagementTask__invalidateRemoteAlert__block_invoke;
  block[3] = &unk_1E73B3680;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__AMSSystemEngagementTask__invalidateRemoteAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteAlertHandle];
  [v2 unregisterObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) remoteAlertHandle];
  [v3 invalidate];

  [*(a1 + 32) setPresentationTargetHandle:0];
  v4 = [*(a1 + 32) displayWillForegroundToken];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = [*(a1 + 32) displayWillForegroundToken];
    [v5 removeObserver:v6];

    [*(a1 + 32) setDisplayWillForegroundToken:0];
  }

  v7 = [*(a1 + 32) displayDidBecomeActiveToken];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [*(a1 + 32) displayDidBecomeActiveToken];
    [v8 removeObserver:v9];

    [*(a1 + 32) setDisplayDidBecomeActiveToken:0];
  }

  v10 = [*(a1 + 32) displayLayoutMonitor];
  [v10 invalidate];

  v11 = *(a1 + 32);

  return [v11 setDisplayLayoutMonitor:0];
}

- (void)_listenForAppForegroundWithHandle:(id)a3 monitorInApp:(BOOL)a4
{
  v4 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSTask *)self isFinished];
  if (v6 && !v7)
  {
    v8 = [v6 bundleIdentifier];
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = [(AMSSystemEngagementTask *)self request];
      v13 = [v12 logKey];
      *buf = 138543874;
      v63 = v11;
      v64 = 2114;
      v65 = v13;
      v66 = 2112;
      v67 = v8;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Listening for app foreground: %@", buf, 0x20u);
    }

    v14 = [(AMSSystemEngagementTask *)self presentationTargetHandle];
    v15 = v14 == 0;

    if (v15)
    {
      v61 = 0;
      v16 = [MEMORY[0x1E69C75D0] handleForLegacyHandle:v6 error:&v61];
      v17 = v61;
      objc_initWeak(buf, self);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke;
      v59[3] = &unk_1E73BC7D0;
      objc_copyWeak(&v60, buf);
      [v16 monitorForDeath:v59];
      [(AMSSystemEngagementTask *)self setPresentationTargetHandle:v16];
      objc_destroyWeak(&v60);
      objc_destroyWeak(buf);
    }

    v18 = +[AMSLogConfig sharedConfig];
    v19 = v18;
    if (v4)
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = [(AMSSystemEngagementTask *)self request];
        v23 = [v22 logKey];
        *buf = 138543618;
        v63 = v21;
        v64 = 2114;
        v65 = v23;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Monitoring for in app notifications", buf, 0x16u);
      }

      v24 = [(AMSSystemEngagementTask *)self displayDidBecomeActiveToken];
      v25 = v24 == 0;

      if (v25)
      {
        v26 = [MEMORY[0x1E696AD88] defaultCenter];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_105;
        v58[3] = &unk_1E73BC7F8;
        v58[4] = self;
        v27 = [v26 addObserverForName:@"UIApplicationDidBecomeActiveNotification" object:0 queue:0 usingBlock:v58];
        [(AMSSystemEngagementTask *)self setDisplayDidBecomeActiveToken:v27];
      }

      v28 = [(AMSSystemEngagementTask *)self displayWillForegroundToken];
      v29 = v28 == 0;

      if (v29)
      {
        v30 = [MEMORY[0x1E696AD88] defaultCenter];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_110;
        v57[3] = &unk_1E73BC7F8;
        v57[4] = self;
        v31 = [v30 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v57];
        [(AMSSystemEngagementTask *)self setDisplayWillForegroundToken:v31];
      }
    }

    else
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v19 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = [(AMSSystemEngagementTask *)self request];
        v35 = [v34 logKey];
        v36 = [(AMSSystemEngagementTask *)self displayLayoutMonitor];
        *buf = 138543874;
        v63 = v33;
        v64 = 2114;
        v65 = v35;
        v66 = 2112;
        v67 = v36;
        _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Monitoring for app forgrond: %@", buf, 0x20u);
      }

      v37 = [(AMSSystemEngagementTask *)self displayLayoutMonitor];
      v38 = v37 == 0;

      if (v38)
      {
        objc_initWeak(&location, self);
        v39 = +[AMSLogConfig sharedConfig];
        if (!v39)
        {
          v39 = +[AMSLogConfig sharedConfig];
        }

        v40 = [v39 OSLogObject];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          v42 = [(AMSSystemEngagementTask *)self request];
          v43 = [v42 logKey];
          v44 = [(AMSSystemEngagementTask *)self displayLayoutMonitor];
          *buf = 138543874;
          v63 = v41;
          v64 = 2114;
          v65 = v43;
          v66 = 2112;
          v67 = v44;
          _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] (2) Monitoring for app forgrond: %@", buf, 0x20u);
        }

        v45 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_112;
        v53[3] = &unk_1E73BC820;
        objc_copyWeak(&v55, &location);
        v54 = v8;
        [v45 setTransitionHandler:v53];
        [v45 setNeedsUserInteractivePriority:1];
        v46 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v45];
        [(AMSSystemEngagementTask *)self setDisplayLayoutMonitor:v46];

        v47 = +[AMSLogConfig sharedConfig];
        if (!v47)
        {
          v47 = +[AMSLogConfig sharedConfig];
        }

        v48 = [v47 OSLogObject];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = objc_opt_class();
          v50 = [(AMSSystemEngagementTask *)self request];
          v51 = [v50 logKey];
          v52 = [(AMSSystemEngagementTask *)self displayLayoutMonitor];
          *buf = 138543874;
          v63 = v49;
          v64 = 2114;
          v65 = v51;
          v66 = 2112;
          v67 = v52;
          _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] (3) Monitoring for app forgrond: %@", buf, 0x20u);
        }

        objc_destroyWeak(&v55);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained request];
    v6 = [v5 logKey];
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App has died", buf, 0x16u);
  }

  v9 = @"AMSEngagementPresented";
  v10 = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = AMSCustomError(@"AMSErrorDomain", 12, @"System Engagement Task Failed", @"App terminated", v7, 0);

  [WeakRetained _finishTaskWithResult:0 error:v8];
}

void __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_105(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) request];
    v6 = [v5 logKey];
    *buf = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App foregrounded (did become active)", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v9 = 0;
  [v7 _activateIfWithError:&v9];
  v8 = v9;
  if (v8)
  {
    [*(a1 + 32) _finishTaskWithResult:0 error:v8];
  }
}

void __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_110(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) request];
    v6 = [v5 logKey];
    *buf = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App foregrounded (will become active)", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v9 = 0;
  [v7 _activateIfWithError:&v9];
  v8 = v9;
  if (v8)
  {
    [*(a1 + 32) _finishTaskWithResult:0 error:v8];
  }
}

void __74__AMSSystemEngagementTask__listenForAppForegroundWithHandle_monitorInApp___block_invoke_112(uint64_t a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v7 = a3;
  v43 = a4;
  v48 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v44 = v7;
  v9 = [v7 elements];
  v10 = [v9 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (!v10)
  {
    v27 = v7;
    goto LABEL_35;
  }

  v11 = v10;
  v12 = *v57;
  v50 = -1;
  v13 = 0x1E73B0000uLL;
  v46 = *v57;
  v47 = WeakRetained;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v57 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v56 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:*(v48 + 32)];

        if (v17)
        {
          v50 = [v15 level];
        }
      }

      v18 = [*(v13 + 3552) sharedConfig];
      if (!v18)
      {
        v18 = [*(v13 + 3552) sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v9;
        v21 = v13;
        v22 = objc_opt_class();
        v49 = [WeakRetained request];
        v23 = [v49 logKey];
        v24 = v11;
        v25 = [v15 level];
        v26 = [v15 bundleIdentifier];
        *buf = 138544386;
        v62 = v22;
        v13 = v21;
        v9 = v20;
        v63 = 2114;
        v64 = v23;
        v65 = 2048;
        v66 = v25;
        v11 = v24;
        v67 = 2112;
        v68 = v26;
        v69 = 1024;
        v70 = v50;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Level: %ld Bundle: %@ appLevel: %d", buf, 0x30u);

        v12 = v46;
        WeakRetained = v47;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v56 objects:v71 count:16];
  }

  while (v11);

  v27 = v44;
  if ((v50 & 0x8000000000000000) == 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v28 = [v44 elements];
    v29 = [v28 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = WeakRetained;
      v32 = *v53;
      v33 = 1;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v52 + 1) + 8 * j);
          if ([v35 level] == v50)
          {
            v36 = [v35 bundleIdentifier];
            v37 = v36 != 0;

            v33 &= v37;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v30);

      WeakRetained = v31;
      if ((v33 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v38 = [*(v13 + 3552) sharedConfig];
    if (!v38)
    {
      v38 = [*(v13 + 3552) sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = [WeakRetained request];
      v42 = [v41 logKey];
      *buf = 138543618;
      v62 = v40;
      v63 = 2114;
      v64 = v42;
      _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App foregrounded", buf, 0x16u);
    }

    v51 = 0;
    [WeakRetained _activateIfWithError:&v51];
    v9 = v51;
    if (v9)
    {
      [WeakRetained _finishTaskWithResult:0 error:v9];
    }

LABEL_35:
  }

LABEL_36:
}

- (id)_processIdentifierForBundleIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:a3];
  v17 = 0;
  v4 = [MEMORY[0x1E69C75D0] handleForPredicate:v3 error:&v17];
  v5 = v17;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v5;
    v10 = "%{public}@: [%{public}@] Failed to fetch handle: %{public}@";
    v11 = v7;
    v12 = 32;
LABEL_11:
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v13 = [v4 pid];
  if ((v13 + 1) <= 1)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v9;
    v10 = "%{public}@: [%{public}@] Failed to fetch handle. -1 or 0";
    v11 = v7;
    v12 = 22;
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:v13];
LABEL_13:

  return v15;
}

- (id)_snapshotBagDataPromise
{
  v3 = [(AMSSystemEngagementTask *)self bag];

  if (v3)
  {
    v4 = objc_alloc_init(AMSPromise);
    v5 = [(AMSSystemEngagementTask *)self bag];
    v6 = [(AMSPromise *)v4 completionHandlerAdapter];
    [v5 createSnapshotWithCompletion:v6];

    [(AMSPromise *)v4 thenWithBlock:&__block_literal_global_136];
  }

  else
  {
    v4 = AMSError(12, @"Snapshot failed", @"Bag was not provided", 0);
    [AMSPromise promiseWithError:v4];
  }
  v7 = ;

  return v7;
}

- (id)_unlockDeviceIfNeeded
{
  v2 = objc_alloc_init(AMSMutableBinaryPromise);
  SBSGetScreenLockStatus();
  [(AMSMutableBinaryPromise *)v2 finishWithSuccess];

  return v2;
}

void __48__AMSSystemEngagementTask__unlockDeviceIfNeeded__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithSuccess];
  }

  else
  {
    v4 = AMSError(11, @"Failed to unlock", 0, 0);
    [v2 finishWithError:v4];
  }
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end