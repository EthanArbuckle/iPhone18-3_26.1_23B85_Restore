@interface AMSUIPaymentSheetTask
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)a3;
- (id)presentationWindowForPaymentAuthorizationController:(id)a3;
- (void)_didDismissPaymentAuthorizationController:(id)a3;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
@end

@implementation AMSUIPaymentSheetTask

- (void)_didDismissPaymentAuthorizationController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, a2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    v12 = AMSHashIfNeeded();
    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v7)
    {

      v11 = a2;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v3.receiver = self;
  v3.super_class = AMSUIPaymentSheetTask;
  [(AMSPaymentSheetTask *)&v3 paymentAuthorizationControllerDidFinish:a3];
}

- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = 0x1E698C000uLL;
  v7 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v108 = v13;
    v109 = 2114;
    v110 = v14;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }

    v6 = 0x1E698C000uLL;
  }

  v15 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v16 = [v15 delegate];

  v102 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v25)
    {
      v25 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v27 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    if (v27)
    {
      v29 = AMSLogKey();
      v15 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: [%@] %@ ", v28, v29, v15];
    }

    else
    {
      v29 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: %@ ", v28, v29];
    }
    v30 = ;
    *buf = 138543362;
    v108 = v30;
    _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate is nil", buf, 0xCu);
    if (v27)
    {

      v30 = v15;
    }

    goto LABEL_48;
  }

  v17 = &selRef_reportMetricsForContext_;
  if (([v16 conformsToProtocol:&unk_1F3997F38] & 1) == 0)
  {
    v25 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v25)
    {
      v25 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v101 = v5;
    v31 = AMSLogKey();
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    if (v31)
    {
      v34 = AMSLogKey();
      v6 = NSStringFromSelector(a2);
      [v32 stringWithFormat:@"%@: [%@] %@ ", v33, v34, v6];
    }

    else
    {
      v34 = NSStringFromSelector(a2);
      [v32 stringWithFormat:@"%@: %@ ", v33, v34];
    }
    v35 = ;
    v15 = AMSHashIfNeeded();
    v16 = NSStringFromProtocol(&unk_1F3997F38);
    *buf = 138543874;
    v108 = v35;
    v109 = 2114;
    v110 = v15;
    v111 = 2114;
    v112 = v16;
    _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not conform to %{public}@, cannot return window.", buf, 0x20u);
    if (v31)
    {

      v35 = v6;
    }

    goto LABEL_47;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v5;
      v20 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      if (v20)
      {
        v23 = AMSLogKey();
        v17 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v23, v17];
      }

      else
      {
        v23 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: %@ ", v22, v23];
      }
      v24 = ;
      v73 = AMSHashIfNeeded();
      v74 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_error_);
      *buf = 138543874;
      v108 = v24;
      v109 = 2114;
      v110 = v73;
      v111 = 2114;
      v112 = v74;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@, selector: %{public}@", buf, 0x20u);
      if (v20)
      {

        v24 = v17;
      }

      v5 = v100;
      v6 = 0x1E698C000uLL;
    }

    v15 = [(AMSPaymentSheetTask *)self purchaseInfo];
    v16 = [v15 purchase];
    v75 = +[AMSUISceneIdentifierRequest sceneIdentifierRequest];
    v106 = 0;
    v54 = [v102 purchase:v16 handleSceneIdentifierRequest:v75 error:&v106];
    v76 = v106;

    if (!v76)
    {
LABEL_117:

      if (v54)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    }

    v77 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v77)
    {
      v77 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v78 = [v77 OSLogObject];
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v79 = v5;
    v80 = AMSLogKey();
    v81 = MEMORY[0x1E696AEC0];
    v82 = objc_opt_class();
    v83 = v82;
    if (v80)
    {
      v15 = AMSLogKey();
      [v81 stringWithFormat:@"%@: [%@] ", v83, v15];
    }

    else
    {
      [v81 stringWithFormat:@"%@: ", v82];
    }
    v84 = ;
    v16 = AMSLogableError();
    *buf = 138543618;
    v108 = v84;
    v109 = 2114;
    v110 = v16;
    _os_log_impl(&dword_1BB036000, v78, OS_LOG_TYPE_ERROR, "%{public}@Sync scene identifier request failed with error: %{public}@", buf, 0x16u);
    if (v80)
    {

      v84 = v15;
    }

    v5 = v79;
LABEL_114:
    v6 = 0x1E698C000;
LABEL_115:

LABEL_116:
    goto LABEL_117;
  }

  v15 = objc_opt_respondsToSelector();
  v36 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  v25 = v36;
  if (v15)
  {
    if (!v36)
    {
      v25 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v37 = [v25 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v99 = v5;
      v38 = AMSLogKey();
      v39 = MEMORY[0x1E696AEC0];
      v40 = objc_opt_class();
      if (v38)
      {
        v41 = AMSLogKey();
        v17 = NSStringFromSelector(a2);
        [v39 stringWithFormat:@"%@: [%@] %@ ", v40, v41, v17];
      }

      else
      {
        v41 = NSStringFromSelector(a2);
        [v39 stringWithFormat:@"%@: %@ ", v40, v41];
      }
      v42 = ;
      v85 = AMSHashIfNeeded();
      v86 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_completion_);
      *buf = 138543874;
      v108 = v42;
      v109 = 2114;
      v110 = v85;
      v111 = 2114;
      v112 = v86;
      _os_log_impl(&dword_1BB036000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@, selector: %{public}@", buf, 0x20u);
      if (v38)
      {

        v42 = v17;
      }

      v5 = v99;
      v6 = 0x1E698C000uLL;
    }

    v76 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v15 = [(AMSPaymentSheetTask *)self purchaseInfo];
    v16 = [v15 purchase];
    v87 = +[AMSUISceneIdentifierRequest sceneIdentifierRequest];
    v88 = [v76 completionHandlerAdapter];
    [v102 purchase:v16 handleSceneIdentifierRequest:v87 completion:v88];

    v105 = 0;
    v54 = [v76 resultWithError:&v105];
    v77 = v105;
    if (!v77)
    {
      goto LABEL_116;
    }

    v78 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v78)
    {
      v78 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v89 = [v78 OSLogObject];
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = v5;
      v91 = AMSLogKey();
      v92 = MEMORY[0x1E696AEC0];
      v93 = objc_opt_class();
      v94 = v93;
      if (v91)
      {
        v99 = AMSLogKey();
        [v92 stringWithFormat:@"%@: [%@] ", v94, v99];
      }

      else
      {
        [v92 stringWithFormat:@"%@: ", v93];
      }
      v15 = ;
      v16 = AMSLogableError();
      *buf = 138543618;
      v108 = v15;
      v109 = 2114;
      v110 = v16;
      _os_log_impl(&dword_1BB036000, v89, OS_LOG_TYPE_ERROR, "%{public}@Scene identifier request failed with error: %{public}@", buf, 0x16u);
      if (v91)
      {

        v15 = v99;
      }

      v5 = v90;
    }

    goto LABEL_114;
  }

  if (!v36)
  {
    v25 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v101 = v5;
    v43 = AMSLogKey();
    v44 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v45 = v43;
    if (v43)
    {
      v46 = AMSLogKey();
      v97 = NSStringFromSelector(a2);
      v98 = v46;
      [v44 stringWithFormat:@"%@: [%@] %@ ", v16, v46, v97];
    }

    else
    {
      v98 = NSStringFromSelector(a2);
      [v44 stringWithFormat:@"%@: %@ ", v16, v98];
    }
    v47 = ;
    v95 = AMSHashIfNeeded();
    v96 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_completion_);
    v15 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_error_);
    *buf = 138544130;
    v108 = v47;
    v109 = 2114;
    v110 = v95;
    v111 = 2114;
    v112 = v96;
    v113 = 2114;
    v114 = v15;
    _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not implement %{public}@ or %{public}@, cannot return window.", buf, 0x2Au);
    if (v45)
    {

      v47 = v97;
    }

LABEL_47:
    v5 = v101;
LABEL_48:
    v6 = 0x1E698C000uLL;
  }

LABEL_49:

LABEL_50:
  v48 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!v48)
  {
    v48 = [*(v6 + 2408) sharedConfig];
  }

  v49 = [v48 OSLogObject];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v51 = objc_opt_class();
    if (v50)
    {
      v52 = AMSLogKey();
      v15 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: [%@] %@ ", v51, v52, v15];
    }

    else
    {
      v52 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: %@ ", v51, v52];
    }
    v53 = ;
    *buf = 138543362;
    v108 = v53;
    _os_log_impl(&dword_1BB036000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to superclass", buf, 0xCu);
    if (v50)
    {

      v53 = v15;
    }

    v6 = 0x1E698C000uLL;
  }

  v104.receiver = self;
  v104.super_class = AMSUIPaymentSheetTask;
  v54 = [(AMSPaymentSheetTask *)&v104 presentationSceneIdentifierForPaymentAuthorizationController:v5];
  v55 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!v55)
  {
    v55 = [*(v6 + 2408) sharedConfig];
  }

  v56 = [v55 OSLogObject];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = v5;
    v58 = AMSLogKey();
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    if (v58)
    {
      v61 = AMSLogKey();
      v15 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: [%@] %@ ", v60, v61, v15];
    }

    else
    {
      v61 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: %@ ", v60, v61];
    }
    v62 = ;
    v16 = AMSHashIfNeeded();
    *buf = 138543618;
    v108 = v62;
    v109 = 2114;
    v110 = v16;
    _os_log_impl(&dword_1BB036000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Superclass returned scene identifier %{public}@", buf, 0x16u);
    if (v58)
    {

      v62 = v15;
    }

    v5 = v57;
    v6 = 0x1E698C000uLL;
  }

LABEL_69:
  v63 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!v63)
  {
    v63 = [*(v6 + 2408) sharedConfig];
  }

  v64 = [v63 OSLogObject];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = AMSLogKey();
    v66 = MEMORY[0x1E696AEC0];
    v67 = objc_opt_class();
    if (v65)
    {
      v68 = AMSLogKey();
      v16 = NSStringFromSelector(a2);
      [v66 stringWithFormat:@"%@: [%@] %@ ", v67, v68, v16];
    }

    else
    {
      v68 = NSStringFromSelector(a2);
      [v66 stringWithFormat:@"%@: %@ ", v67, v68];
    }
    v69 = ;
    v70 = AMSHashIfNeeded();
    *buf = 138543618;
    v108 = v69;
    v109 = 2114;
    v110 = v70;
    _os_log_impl(&dword_1BB036000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ returning scene identifier %{public}@", buf, 0x16u);
    if (v65)
    {

      v69 = v16;
    }
  }

  v71 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = 0x1E698C000uLL;
  v7 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v88 = v13;
    v89 = 2114;
    v90 = v14;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  v15 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v16 = [v15 delegate];

  if (![v16 conformsToProtocol:&unk_1F3997F38] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v24 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    v25 = v24;
    if (v16)
    {
      if (!v24)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v81 = v5;
      v27 = AMSLogKey();
      v28 = MEMORY[0x1E696AEC0];
      v29 = objc_opt_class();
      if (v27)
      {
        v30 = AMSLogKey();
        v15 = NSStringFromSelector(a2);
        [v28 stringWithFormat:@"%@: [%@] %@ ", v29, v30, v15];
      }

      else
      {
        v30 = NSStringFromSelector(a2);
        [v28 stringWithFormat:@"%@: %@ ", v29, v30];
      }
      v31 = ;
      v37 = NSStringFromSelector(sel_purchase_handleSceneBundleIdentifierRequest_completion_);
      v38 = AMSHashIfNeeded();
      *buf = 138543874;
      v88 = v31;
      v89 = 2114;
      v90 = v37;
      v91 = 2114;
      v92 = v38;
      _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement %{public}@. delegate: %{public}@", buf, 0x20u);
      if (v27)
      {

        v31 = v15;
      }

      v5 = v81;
    }

    else
    {
      if (!v24)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v32 = AMSLogKey();
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      if (v32)
      {
        v35 = AMSLogKey();
        v15 = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: [%@] %@ ", v34, v35, v15];
      }

      else
      {
        v35 = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: %@ ", v34, v35];
      }
      v36 = ;
      *buf = 138543362;
      v88 = v36;
      _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Delegate is nil", buf, 0xCu);
      if (v32)
      {

        v36 = v15;
      }
    }

    v6 = 0x1E698C000uLL;
LABEL_37:

LABEL_38:
    v39 = [*(v6 + 2408) sharedPurchaseConfig];
    if (!v39)
    {
      v39 = [*(v6 + 2408) sharedConfig];
    }

    v40 = [v39 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      if (v41)
      {
        v44 = AMSLogKey();
        v15 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: [%@] %@ ", v43, v44, v15];
      }

      else
      {
        v44 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: %@ ", v43, v44];
      }
      v45 = ;
      *buf = 138543362;
      v88 = v45;
      _os_log_impl(&dword_1BB036000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to superclass", buf, 0xCu);
      if (v41)
      {

        v45 = v15;
      }

      v6 = 0x1E698C000uLL;
    }

    v85.receiver = self;
    v85.super_class = AMSUIPaymentSheetTask;
    v46 = [(AMSPaymentSheetTask *)&v85 presentationSceneBundleIdentifierForPaymentAuthorizationController:v5];
    v47 = [*(v6 + 2408) sharedPurchaseConfig];
    if (!v47)
    {
      v47 = [*(v6 + 2408) sharedConfig];
    }

    v48 = [v47 OSLogObject];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v82 = v16;
      v49 = v5;
      v50 = AMSLogKey();
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      if (v50)
      {
        v53 = AMSLogKey();
        v15 = NSStringFromSelector(a2);
        [v51 stringWithFormat:@"%@: [%@] %@ ", v52, v53, v15];
      }

      else
      {
        v53 = NSStringFromSelector(a2);
        [v51 stringWithFormat:@"%@: %@ ", v52, v53];
      }
      v54 = ;
      v55 = AMSHashIfNeeded();
      *buf = 138543618;
      v88 = v54;
      v89 = 2114;
      v90 = v55;
      _os_log_impl(&dword_1BB036000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Superclass returned scene bundle identifier %{public}@", buf, 0x16u);
      if (v50)
      {

        v54 = v15;
      }

      v5 = v49;
      v6 = 0x1E698C000uLL;
      v16 = v82;
    }

    goto LABEL_57;
  }

  v17 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!v17)
  {
    v17 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = AMSLogKey();
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    if (v19)
    {
      v22 = AMSLogKey();
      v15 = NSStringFromSelector(a2);
      [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, v15];
    }

    else
    {
      v22 = NSStringFromSelector(a2);
      [v20 stringWithFormat:@"%@: %@ ", v21, v22];
    }
    v23 = ;
    v66 = AMSHashIfNeeded();
    *buf = 138543618;
    v88 = v23;
    v89 = 2114;
    v90 = v66;
    _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@", buf, 0x16u);
    if (v19)
    {

      v23 = v15;
    }

    v6 = 0x1E698C000uLL;
  }

  v67 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v15 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v68 = [v15 purchase];
  v69 = +[AMSUISceneBundleIdentifierRequest bundleIdentifierRequest];
  v70 = [v67 completionHandlerAdapter];
  [v16 purchase:v68 handleSceneBundleIdentifierRequest:v69 completion:v70];

  v86 = 0;
  v46 = [v67 resultWithError:&v86];
  v71 = v86;
  if (v71)
  {
    v72 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v72)
    {
      v72 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v73 = [v72 OSLogObject];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v83 = v16;
      v74 = v5;
      v75 = AMSLogKey();
      v76 = MEMORY[0x1E696AEC0];
      v77 = objc_opt_class();
      v78 = v77;
      if (v75)
      {
        v80 = AMSLogKey();
        [v76 stringWithFormat:@"%@: [%@] ", v78, v80];
      }

      else
      {
        [v76 stringWithFormat:@"%@: ", v77];
      }
      v15 = ;
      v79 = AMSLogableError();
      *buf = 138543618;
      v88 = v15;
      v89 = 2114;
      v90 = v79;
      _os_log_impl(&dword_1BB036000, v73, OS_LOG_TYPE_ERROR, "%{public}@Scene identifier request failed with error: %{public}@", buf, 0x16u);
      if (v75)
      {

        v15 = v80;
      }

      v5 = v74;
      v16 = v83;
    }

    v6 = 0x1E698C000;
  }

  if (!v46)
  {
    goto LABEL_38;
  }

LABEL_57:
  v56 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!v56)
  {
    v56 = [*(v6 + 2408) sharedConfig];
  }

  v57 = [v56 OSLogObject];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = AMSLogKey();
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    if (v58)
    {
      v61 = AMSLogKey();
      v15 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: [%@] %@ ", v60, v61, v15];
    }

    else
    {
      v61 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: %@ ", v60, v61];
    }
    v62 = ;
    v63 = AMSHashIfNeeded();
    *buf = 138543618;
    v88 = v62;
    v89 = 2114;
    v90 = v63;
    _os_log_impl(&dword_1BB036000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ returning scene bundle identifier %{public}@", buf, 0x16u);
    if (v58)
    {

      v62 = v15;
    }
  }

  v64 = *MEMORY[0x1E69E9840];

  return v46;
}

- (id)presentationWindowForPaymentAuthorizationController:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = 0x1E698C000uLL;
  v8 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v13, v3];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v4 = ;
    v14 = v6;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v97 = v4;
    v98 = 2114;
    v99 = v15;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v10)
    {

      v4 = v3;
    }

    v6 = v14;
  }

  v16 = [(AMSPaymentSheetTask *)self presentingWindow];
  if (v16)
  {
    v17 = v16;
    v18 = [(AMSPaymentSheetTask *)self presentingWindow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
      if (!v20)
      {
        v20 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        if (v22)
        {
          v25 = AMSLogKey();
          v7 = NSStringFromSelector(a2);
          [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v7];
        }

        else
        {
          v25 = NSStringFromSelector(a2);
          [v23 stringWithFormat:@"%@: %@ ", v24, v25];
        }
        v26 = ;
        v63 = [(AMSPaymentSheetTask *)self presentingWindow];
        v64 = AMSHashIfNeeded();
        *buf = 138543618;
        v97 = v26;
        v98 = 2114;
        v99 = v64;
        _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Using self.presentingWindow: %{public}@", buf, 0x16u);

        if (v22)
        {

          v26 = v7;
        }
      }

      v32 = [(AMSPaymentSheetTask *)self presentingWindow];
      goto LABEL_80;
    }
  }

  v27 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v28 = [v27 delegate];

  if (!v28)
  {
    v33 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v33)
    {
      v33 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v6;
      v41 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      if (v41)
      {
        v44 = AMSLogKey();
        v4 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: [%@] %@ ", v43, v44, v4];
      }

      else
      {
        v44 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: %@ ", v43, v44];
      }
      v45 = ;
      *buf = 138543362;
      v97 = v45;
      _os_log_impl(&dword_1BB036000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate is nil", buf, 0xCu);
      if (v41)
      {

        v45 = v4;
      }

      goto LABEL_58;
    }

LABEL_53:
    v32 = 0;
    goto LABEL_69;
  }

  if (([v28 conformsToProtocol:&unk_1F3997F38] & 1) == 0)
  {
    v33 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v33)
    {
      v33 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v91 = v6;
      v46 = AMSLogKey();
      v47 = MEMORY[0x1E696AEC0];
      v48 = objc_opt_class();
      if (v46)
      {
        v49 = AMSLogKey();
        v4 = NSStringFromSelector(a2);
        [v47 stringWithFormat:@"%@: [%@] %@ ", v48, v49, v4];
      }

      else
      {
        v49 = NSStringFromSelector(a2);
        [v47 stringWithFormat:@"%@: %@ ", v48, v49];
      }
      v50 = ;
      v70 = AMSHashIfNeeded();
      *buf = 138543618;
      v97 = v50;
      v98 = 2114;
      v99 = v70;
      _os_log_impl(&dword_1BB036000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not conforms to protocol AMSUIPurchaseDelegate, cannot return window.", buf, 0x16u);
      if (v46)
      {

        v50 = v4;
      }

      v32 = 0;
      v6 = v91;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = objc_alloc_init(MEMORY[0x1E698CAD0]);
      v51 = [(AMSPaymentSheetTask *)self purchaseInfo];
      v52 = [v51 purchase];
      v53 = +[AMSUIWindowRequest windowRequest];
      v54 = [v33 completionHandlerAdapter];
      [v28 purchase:v52 handleWindowRequest:v53 completion:v54];

      v94 = 0;
      v32 = [v33 resultWithError:&v94];
      v34 = v94;
      if (v34)
      {
        v55 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
        if (!v55)
        {
          v55 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v56 = [v55 OSLogObject];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v92 = v6;
          v57 = AMSLogKey();
          v58 = MEMORY[0x1E696AEC0];
          v59 = objc_opt_class();
          if (v57)
          {
            AMSLogKey();
            v85 = v58;
            v61 = v60 = v57;
            v86 = NSStringFromSelector(a2);
            v88 = v61;
            v84 = v61;
            v57 = v60;
            [v85 stringWithFormat:@"%@: [%@] %@ ", v59, v84, v86];
          }

          else
          {
            v88 = NSStringFromSelector(a2);
            [v58 stringWithFormat:@"%@: %@ ", v59, v88];
          }
          v62 = ;
          v83 = AMSLogableError();
          *buf = 138543618;
          v97 = v62;
          v98 = 2114;
          v99 = v83;
          _os_log_impl(&dword_1BB036000, v56, OS_LOG_TYPE_ERROR, "%{public}@Window request failed with error: %{public}@", buf, 0x16u);
          if (v57)
          {

            v62 = v86;
          }

          v6 = v92;
        }

        goto LABEL_59;
      }

LABEL_69:

      goto LABEL_70;
    }

    v33 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v33)
    {
      v33 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v6;
      v65 = AMSLogKey();
      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      if (v65)
      {
        v68 = AMSLogKey();
        v7 = NSStringFromSelector(a2);
        [v66 stringWithFormat:@"%@: [%@] %@ ", v67, v68, v7];
      }

      else
      {
        v68 = NSStringFromSelector(a2);
        [v66 stringWithFormat:@"%@: %@ ", v67, v68];
      }
      v69 = ;
      v82 = NSStringFromSelector(sel_purchase_handleWindowRequest_completion_);
      *buf = 138543618;
      v97 = v69;
      v98 = 2114;
      v99 = v82;
      _os_log_impl(&dword_1BB036000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement %{public}@, cannot return window.", buf, 0x16u);
      if (v65)
      {

        v69 = v7;
      }

LABEL_58:
      v32 = 0;
      v6 = v90;
LABEL_59:
      v7 = 0x1E698C000;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  v29 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v30 = [v29 purchase];
  v31 = +[AMSUIWindowRequest windowRequest];
  v95 = 0;
  v32 = [v28 purchase:v30 handleWindowRequest:v31 error:&v95];
  v33 = v95;

  if (v33)
  {
    v34 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v34)
    {
      v34 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v89 = v6;
      v36 = AMSLogKey();
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_opt_class();
      if (v36)
      {
        v39 = AMSLogKey();
        v86 = NSStringFromSelector(a2);
        v87 = v39;
        [v37 stringWithFormat:@"%@: [%@] %@ ", v38, v39, v86];
      }

      else
      {
        v87 = NSStringFromSelector(a2);
        [v37 stringWithFormat:@"%@: %@ ", v38, v87];
      }
      v40 = ;
      v71 = AMSLogableError();
      *buf = 138543618;
      v97 = v40;
      v98 = 2114;
      v99 = v71;
      _os_log_impl(&dword_1BB036000, v35, OS_LOG_TYPE_ERROR, "%{public}@Sync Window request failed with error: %{public}@", buf, 0x16u);
      if (v36)
      {

        v40 = v86;
      }

      v6 = v89;
      v7 = 0x1E698C000uLL;
    }

    goto LABEL_69;
  }

LABEL_70:

  v72 = [*(v7 + 2408) sharedPurchaseConfig];
  if (!v72)
  {
    v72 = [*(v7 + 2408) sharedConfig];
  }

  v73 = [v72 OSLogObject];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = AMSLogKey();
    v75 = MEMORY[0x1E696AEC0];
    v76 = objc_opt_class();
    if (v74)
    {
      v77 = AMSLogKey();
      v7 = NSStringFromSelector(a2);
      [v75 stringWithFormat:@"%@: [%@] %@ ", v76, v77, v7];
    }

    else
    {
      v77 = NSStringFromSelector(a2);
      [v75 stringWithFormat:@"%@: %@ ", v76, v77];
    }
    v78 = ;
    v79 = AMSHashIfNeeded();
    *buf = 138543618;
    v97 = v78;
    v98 = 2114;
    v99 = v79;
    _os_log_impl(&dword_1BB036000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ returning window %{public}@", buf, 0x16u);
    if (v74)
    {

      v78 = v7;
    }
  }

LABEL_80:
  v80 = *MEMORY[0x1E69E9840];

  return v32;
}

@end