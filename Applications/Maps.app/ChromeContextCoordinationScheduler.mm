@interface ChromeContextCoordinationScheduler
- (ChromeContextCoordinationScheduler)initWithChromeViewController:(id)a3;
- (void)commit;
- (void)scheduleBlock:(id)a3 completionHandler:(id)a4;
- (void)setFallbackBlock:(id)a3;
@end

@implementation ChromeContextCoordinationScheduler

- (void)commit
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained(&self->_deferredOperation);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = sub_100018D38();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_28;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v8 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v8, v17];

        goto LABEL_18;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v15, v8];
LABEL_18:

LABEL_28:
    *buf = 138543362;
    v26 = v13;
    v24 = "[%{public}@] Nothing to commit: no deferred operation";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);

    goto LABEL_36;
  }

  v5 = [WeakRetained isExecuting];
  v6 = sub_100018D38();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_34;
    }

    v18 = objc_loadWeakRetained(&self->_chromeViewController);
    if (!v18)
    {
      v23 = @"<nil>";
      goto LABEL_33;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_26;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_26:

LABEL_33:
    *buf = 138543362;
    v26 = v23;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Committing deferred operation immediately", buf, 0xCu);

LABEL_34:
    v6 = [v4 copy];
    objc_storeWeak(&self->_deferredOperation, 0);
    if (v6)
    {
      [v4 cancel];
      objc_storeWeak(&self->_deferredOperation, v6);
      [v6 start];
    }

    goto LABEL_36;
  }

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_30;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_10;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_10:

LABEL_30:
    *buf = 138543362;
    v26 = v13;
    v24 = "[%{public}@] Nothing to commit: deferred operation is already locked";
    goto LABEL_31;
  }

LABEL_36:
}

- (void)setFallbackBlock:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  fallbackBlock = self->_fallbackBlock;
  self->_fallbackBlock = v5;

  WeakRetained = objc_loadWeakRetained(&self->_deferredOperation);
  [WeakRetained setFallbackCoordinationBlock:v4];
}

- (void)scheduleBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (!WeakRetained)
  {
    v31 = sub_10006D178();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [NSString stringWithFormat:@"You must set a chromeViewController before you can schedule coordination blocks"];
      *buf = 136316162;
      v39 = "[ChromeContextCoordinationScheduler scheduleBlock:completionHandler:]";
      v40 = 2080;
      v41 = "ChromeContextCoordinationScheduler.m";
      v42 = 1024;
      v43 = 283;
      v44 = 2080;
      v45 = "_chromeViewController != nil";
      v46 = 2112;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = sub_10000B11C();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_10000B11C();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CoordinatedContextChange", "", buf, 2u);
  }

  v13 = objc_loadWeakRetained(&self->_deferredOperation);
  if (!v13 || (v14 = v13, v15 = objc_loadWeakRetained(&self->_deferredOperation), v16 = [v15 isExecuting], v15, v14, v16))
  {
    v17 = [ChromeContextOperation alloc];
    v18 = objc_loadWeakRetained(&self->_chromeViewController);
    v19 = [(ChromeContextOperation *)v17 initWithChromeViewController:v18 fallbackCoordinationBlock:self->_fallbackBlock];

    [(ChromeContextOperation *)v19 addContextCoordinationBlock:v6];
    v20 = objc_loadWeakRetained(&self->_deferredOperation);

    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_deferredOperation);
      [(ChromeContextOperation *)v19 addDependency:v21];
    }

    objc_storeWeak(&self->_deferredOperation, v19);
    v22 = sub_100018D38();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    v23 = objc_loadWeakRetained(&self->_chromeViewController);
    if (!v23)
    {
      v28 = @"<nil>";
      goto LABEL_19;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_16;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_16:

LABEL_19:
    *buf = 138543362;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Scheduling coordination block operation", buf, 0xCu);

LABEL_20:
    [(NSOperationQueue *)self->_queue addOperation:v19];
    goto LABEL_21;
  }

  v19 = objc_loadWeakRetained(&self->_deferredOperation);
  [(ChromeContextOperation *)v19 addContextCoordinationBlock:v6];
LABEL_21:

  v29 = objc_loadWeakRetained(&self->_deferredOperation);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1005D20EC;
  v35[3] = &unk_1016230C0;
  v36 = v7;
  v37 = v10;
  v30 = v7;
  [v29 addCompletionBlock:v35];
}

- (ChromeContextCoordinationScheduler)initWithChromeViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ChromeContextCoordinationScheduler *)self init];
    p_isa = &v5->super.isa;
    if (!v5)
    {
LABEL_28:
      self = p_isa;
      v9 = self;
      goto LABEL_29;
    }

    objc_storeWeak(&v5->_chromeViewController, v4);
    if (GEOConfigGetBOOL())
    {
      v7 = objc_alloc_init(NSOperationQueue);
      v8 = p_isa[1];
      p_isa[1] = v7;

      [p_isa[1] setUnderlyingQueue:&_dispatch_main_q];
      [p_isa[1] setMaxConcurrentOperationCount:1];
    }

    else
    {
      v10 = +[NSOperationQueue mainQueue];
      v11 = p_isa[1];
      p_isa[1] = v10;
    }

    v12 = sub_100018D38();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      goto LABEL_28;
    }

    v13 = p_isa;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

LABEL_13:
        v19 = v18;
        v20 = v4;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        if (objc_opt_respondsToSelector())
        {
          v35 = v19;
          v23 = [v20 performSelector:"accessibilityIdentifier"];
          v24 = v23;
          if (v23 && ![v23 isEqualToString:v22])
          {
            v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

            v19 = v35;
LABEL_18:

            v26 = v25;
            v27 = v13[1];
            if (!v27)
            {
              v33 = @"<nil>";
              goto LABEL_26;
            }

            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            if (objc_opt_respondsToSelector())
            {
              v30 = v19;
              v31 = [v27 performSelector:"accessibilityIdentifier"];
              v32 = v31;
              if (v31 && ![v31 isEqualToString:v29])
              {
                v33 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v27, v32];

                v19 = v30;
                goto LABEL_24;
              }

              v19 = v30;
            }

            v33 = [NSString stringWithFormat:@"%@<%p>", v29, v27];
LABEL_24:

LABEL_26:
            *buf = 138543874;
            v37 = v19;
            v38 = 2114;
            v39 = v26;
            v40 = 2114;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] initialising for %{public}@ with queue %{public}@", buf, 0x20u);

            goto LABEL_27;
          }

          v19 = v35;
        }

        v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
        goto LABEL_18;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
    goto LABEL_13;
  }

  v9 = 0;
LABEL_29:

  return v9;
}

@end