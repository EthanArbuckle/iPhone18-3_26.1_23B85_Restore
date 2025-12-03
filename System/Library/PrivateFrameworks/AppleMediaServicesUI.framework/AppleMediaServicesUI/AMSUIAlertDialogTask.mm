@interface AMSUIAlertDialogTask
+ (int64_t)_keyboardTypeFromType:(int64_t)type;
- (AMSUIAlertDialogTask)initWithRequest:(id)request presentingViewController:(id)controller;
- (BOOL)cancel;
- (id)_createIOSViewControllerFromRequest:(id)request completion:(id)completion;
- (id)present;
@end

@implementation AMSUIAlertDialogTask

- (AMSUIAlertDialogTask)initWithRequest:(id)request presentingViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AMSUIAlertDialogTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (id)present
{
  request = [(AMSUIAlertDialogTask *)self request];
  logKey = [request logKey];
  if (logKey)
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
  cancel = [(AMSTask *)&v6 cancel];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AMSUIAlertDialogTask_cancel__block_invoke;
  block[3] = &unk_1E7F242D0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return cancel;
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

- (id)_createIOSViewControllerFromRequest:(id)request completion:(id)completion
{
  v88 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  style = [requestCopy style];
  v7 = MEMORY[0x1E69DC650];
  title = [requestCopy title];
  message = [requestCopy message];
  v10 = [v7 alertControllerWithTitle:title message:message preferredStyle:style != 2];

  v65 = requestCopy;
  iconURL = [requestCopy iconURL];
  if (iconURL)
  {
    v12 = [[AMSUIAlertDialogHeaderViewController alloc] initWithURL:iconURL];
    [v10 _setHeaderContentViewController:v12];
  }

  v61 = iconURL;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  buttonActions = [v65 buttonActions];
  v14 = 0x1E698C000;
  v67 = [buttonActions countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v67)
  {
    obj = buttonActions;
    v60 = style;
    v15 = 0;
    preferredButtonActionIdentifier = 0;
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
        style2 = [v18 style];
        if (style2 == 2)
        {
          v20 = [v65 preventsCancelButtonStyle] ^ 1;
        }

        else if (style2 == 1)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        title2 = [v18 title];

        if (title2)
        {
          v22 = v15;
          v23 = MEMORY[0x1E69DC648];
          title3 = [v18 title];
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
          v77 = completionCopy;
          v28 = [v23 actionWithTitle:title3 style:v20 handler:v73];

          if (!preferredButtonActionIdentifier)
          {
            preferredButtonActionIdentifier = [v27 preferredButtonActionIdentifier];
            if (preferredButtonActionIdentifier)
            {
              identifier = [v18 identifier];
              preferredButtonActionIdentifier2 = [v27 preferredButtonActionIdentifier];
              v37 = [identifier isEqualToString:preferredButtonActionIdentifier2];

              if (v37)
              {
                preferredButtonActionIdentifier = v28;
              }

              else
              {
                preferredButtonActionIdentifier = 0;
              }
            }
          }

          accessibilityIdentifier = [v18 accessibilityIdentifier];

          if (accessibilityIdentifier)
          {
            accessibilityIdentifier2 = [v18 accessibilityIdentifier];
            [v28 setAccessibilityIdentifier:accessibilityIdentifier2];
          }

          [v26 addAction:v28];
          v15 = v22 + 1;

          mEMORY[0x1E698C968] = v74;
          v10 = v25;
        }

        else
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          if (!mEMORY[0x1E698C968])
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            *buf = 138543362;
            v84 = v33;
            v34 = v33;
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: No action title is provided. A UIAlertAction requires a title.", buf, 0xCu);
          }
        }

        ++v17;
      }

      while (v67 != v17);
      v38 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      v67 = v38;
    }

    while (v38);

    if (preferredButtonActionIdentifier)
    {
      [v10 setPreferredAction:preferredButtonActionIdentifier];
      selfCopy3 = self;
      style = v60;
      if (v15)
      {
        goto LABEL_47;
      }

      goto LABEL_42;
    }

    v40 = v15;
    selfCopy3 = self;
    style = v60;
    v14 = 0x1E698C000uLL;
  }

  else
  {

    v40 = 0;
    selfCopy3 = self;
  }

  preferredButtonActionIdentifier3 = [v65 preferredButtonActionIdentifier];

  if (preferredButtonActionIdentifier3)
  {
    sharedConfig = [*(v14 + 2408) sharedConfig];
    if (!sharedConfig)
    {
      sharedConfig = [*(v14 + 2408) sharedConfig];
    }

    oSLogObject2 = [sharedConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = v44;
      preferredButtonActionIdentifier4 = [v65 preferredButtonActionIdentifier];
      *buf = 138543618;
      v84 = v44;
      v85 = 2114;
      v86 = preferredButtonActionIdentifier4;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: preferredButtonActionIdentifier provided but no action has such identifier (preferredButtonActionIdentifier: %{public}@)", buf, 0x16u);
    }
  }

  preferredButtonActionIdentifier = 0;
  if (!v40)
  {
LABEL_42:
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      *buf = 138543362;
      v84 = v49;
      v50 = v49;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Presented Alert with no actions", buf, 0xCu);
    }
  }

LABEL_47:
  if (style != 2)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    textFields = [v65 textFields];
    v52 = [textFields countByEnumeratingWithState:&v69 objects:v82 count:16];
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
            objc_enumerationMutation(textFields);
          }

          v56 = *(*(&v69 + 1) + 8 * i);
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __71__AMSUIAlertDialogTask__createIOSViewControllerFromRequest_completion___block_invoke_14;
          v68[3] = &unk_1E7F244D8;
          v68[4] = selfCopy3;
          v68[5] = v56;
          [v10 addTextFieldWithConfigurationHandler:v68];
        }

        v53 = [textFields countByEnumeratingWithState:&v69 objects:v82 count:16];
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

+ (int64_t)_keyboardTypeFromType:(int64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BB1EF158[type];
  }
}

@end