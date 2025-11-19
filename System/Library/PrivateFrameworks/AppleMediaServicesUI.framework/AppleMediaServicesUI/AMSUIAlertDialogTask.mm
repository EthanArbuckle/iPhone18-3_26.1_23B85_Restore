@interface AMSUIAlertDialogTask
+ (int64_t)_keyboardTypeFromType:(int64_t)a3;
- (AMSUIAlertDialogTask)initWithRequest:(id)a3 presentingViewController:(id)a4;
- (BOOL)cancel;
- (id)_createIOSViewControllerFromRequest:(id)a3 completion:(id)a4;
- (id)present;
@end

@implementation AMSUIAlertDialogTask

- (AMSUIAlertDialogTask)initWithRequest:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSUIAlertDialogTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (id)present
{
  v3 = [(AMSUIAlertDialogTask *)self request];
  v4 = [v3 logKey];
  if (v4)
  {
    v5 = AMSSetLogKey();
  }

  else
  {
    v6 = AMSLogKey();
    v7 = AMSSetLogKey();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__AMSUIAlertDialogTask_present__block_invoke;
  v10[3] = &unk_1E7F24488;
  v10[4] = self;
  v8 = [(AMSTask *)self performTaskWithPromiseBlock:v10];

  return v8;
}

id __31__AMSUIAlertDialogTask_present__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AMSUIAlertDialogTask_present__block_invoke_1;
  v4[3] = &unk_1E7F24460;
  v4[4] = *(a1 + 32);
  v4[5] = &v5;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __31__AMSUIAlertDialogTask_present__block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 request];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AMSUIAlertDialogTask_present__block_invoke_2;
  v6[3] = &unk_1E7F24438;
  v6[4] = *(a1 + 40);
  v4 = [v2 _createIOSViewControllerFromRequest:v3 completion:v6];

  v5 = [*(a1 + 32) presentingViewController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = AMSUIAlertDialogTask;
  v3 = [(AMSTask *)&v6 cancel];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AMSUIAlertDialogTask_cancel__block_invoke;
  block[3] = &unk_1E7F242D0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return v3;
}

void __30__AMSUIAlertDialogTask_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    v4 = [*(a1 + 32) presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_createIOSViewControllerFromRequest:(id)a3 completion:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v64 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [v5 style];
  v7 = MEMORY[0x1E69DC650];
  v8 = [v5 title];
  v9 = [v5 message];
  v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:v6 != 2];

  v65 = v5;
  v11 = [v5 iconURL];
  if (v11)
  {
    v12 = [[AMSUIAlertDialogHeaderViewController alloc] initWithURL:v11];
    [v10 _setHeaderContentViewController:v12];
  }

  v61 = v11;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v13 = [v65 buttonActions];
  v14 = 0x1E698C000;
  v67 = [v13 countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v67)
  {
    obj = v13;
    v60 = v6;
    v15 = 0;
    v16 = 0;
    v66 = *v79;
    do
    {
      v17 = 0;
      do
      {
        if (*v79 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v78 + 1) + 8 * v17);
        v19 = [v18 style];
        if (v19 == 2)
        {
          v20 = [v65 preventsCancelButtonStyle] ^ 1;
        }

        else if (v19 == 1)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        v21 = [v18 title];

        if (v21)
        {
          v22 = v15;
          v23 = MEMORY[0x1E69DC648];
          v24 = [v18 title];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __71__AMSUIAlertDialogTask__createIOSViewControllerFromRequest_completion___block_invoke;
          v73[3] = &unk_1E7F244B0;
          v25 = v10;
          v26 = v10;
          v74 = v26;
          v27 = v65;
          v75 = v27;
          v76 = v18;
          v77 = v64;
          v28 = [v23 actionWithTitle:v24 style:v20 handler:v73];

          if (!v16)
          {
            v16 = [v27 preferredButtonActionIdentifier];
            if (v16)
            {
              v35 = [v18 identifier];
              v36 = [v27 preferredButtonActionIdentifier];
              v37 = [v35 isEqualToString:v36];

              if (v37)
              {
                v16 = v28;
              }

              else
              {
                v16 = 0;
              }
            }
          }

          v29 = [v18 accessibilityIdentifier];

          if (v29)
          {
            v30 = [v18 accessibilityIdentifier];
            [v28 setAccessibilityIdentifier:v30];
          }

          [v26 addAction:v28];
          v15 = v22 + 1;

          v31 = v74;
          v10 = v25;
        }

        else
        {
          v31 = [MEMORY[0x1E698C968] sharedConfig];
          if (!v31)
          {
            v31 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v32 = [v31 OSLogObject];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            *buf = 138543362;
            v84 = v33;
            v34 = v33;
            _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_ERROR, "%{public}@: No action title is provided. A UIAlertAction requires a title.", buf, 0xCu);
          }
        }

        ++v17;
      }

      while (v67 != v17);
      v38 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      v67 = v38;
    }

    while (v38);

    if (v16)
    {
      [v10 setPreferredAction:v16];
      v39 = self;
      v6 = v60;
      if (v15)
      {
        goto LABEL_47;
      }

      goto LABEL_42;
    }

    v40 = v15;
    v39 = self;
    v6 = v60;
    v14 = 0x1E698C000uLL;
  }

  else
  {

    v40 = 0;
    v39 = self;
  }

  v41 = [v65 preferredButtonActionIdentifier];

  if (v41)
  {
    v42 = [*(v14 + 2408) sharedConfig];
    if (!v42)
    {
      v42 = [*(v14 + 2408) sharedConfig];
    }

    v43 = [v42 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = v44;
      v46 = [v65 preferredButtonActionIdentifier];
      *buf = 138543618;
      v84 = v44;
      v85 = 2114;
      v86 = v46;
      _os_log_impl(&dword_1BB036000, v43, OS_LOG_TYPE_DEBUG, "%{public}@: preferredButtonActionIdentifier provided but no action has such identifier (preferredButtonActionIdentifier: %{public}@)", buf, 0x16u);
    }
  }

  v16 = 0;
  if (!v40)
  {
LABEL_42:
    v47 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v47)
    {
      v47 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v48 = [v47 OSLogObject];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      *buf = 138543362;
      v84 = v49;
      v50 = v49;
      _os_log_impl(&dword_1BB036000, v48, OS_LOG_TYPE_ERROR, "%{public}@: Presented Alert with no actions", buf, 0xCu);
    }
  }

LABEL_47:
  if (v6 != 2)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = [v65 textFields];
    v52 = [v51 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v70;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v70 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v69 + 1) + 8 * i);
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __71__AMSUIAlertDialogTask__createIOSViewControllerFromRequest_completion___block_invoke_14;
          v68[3] = &unk_1E7F244D8;
          v68[4] = v39;
          v68[5] = v56;
          [v10 addTextFieldWithConfigurationHandler:v68];
        }

        v53 = [v51 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v53);
    }
  }

  v57 = v10;

  v58 = *MEMORY[0x1E69E9840];
  return v10;
}

void __71__AMSUIAlertDialogTask__createIOSViewControllerFromRequest_completion___block_invoke(uint64_t a1)
{
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) textFields];
      v6 = [v5 objectAtIndexedSubscript:v4];

      v7 = [*(a1 + 40) textFields];
      v8 = [v7 count];

      if (v4 < v8)
      {
        v9 = [v6 text];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_1F3921360;
        }

        [v18 addObject:v11];
      }

      ++v4;
      v12 = [*(a1 + 32) textFields];
      v13 = [v12 count];
    }

    while (v4 < v13);
  }

  v14 = objc_alloc(MEMORY[0x1E698C8C8]);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 48) identifier];
  v17 = [v14 initWithOriginalRequest:v15 selectedActionIdentifier:v16];

  [v17 setTextfieldValues:v18];
  (*(*(a1 + 56) + 16))();
}

void __71__AMSUIAlertDialogTask__createIOSViewControllerFromRequest_completion___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKeyboardType:{objc_msgSend(objc_opt_class(), "_keyboardTypeFromType:", objc_msgSend(*(a1 + 40), "keyboardType"))}];
  [v4 setSecureTextEntry:{objc_msgSend(*(a1 + 40), "secure")}];
  v5 = [*(a1 + 40) placeholder];
  [v4 setPlaceholder:v5];

  v6 = [*(a1 + 40) text];
  [v4 setText:v6];
}

+ (int64_t)_keyboardTypeFromType:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BB1EF158[a3];
  }
}

@end