@interface AMSSystemAlertDialogTask
- (AMSSystemAlertDialogTask)initWithRequest:(id)request;
- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options;
- (__CFUserNotification)_showNotificationFromDictionary:(__CFDictionary *)dictionary options:(unint64_t)options;
- (id)_handleResponseForNote:(__CFUserNotification *)note buttonActions:(id)actions keys:(ButtonKey *)keys;
- (id)_reorderButtonActions;
- (id)present;
- (int64_t)_defaultButtonIndexForActions:(id)actions;
- (int64_t)_keyboardTypeFor:(int64_t)for;
- (void)_dismiss;
@end

@implementation AMSSystemAlertDialogTask

- (AMSSystemAlertDialogTask)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = AMSSystemAlertDialogTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v7->_defaultButtonIndex = -1;
    v7->_dismissOnHomeButton = 1;
    v7->_displaysOnLockscreen = 0;
    v7->_shouldDismissAfterUnlock = 1;
    v7->_unlockActionButtonIndex = -1;
  }

  return v7;
}

- (id)present
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__AMSSystemAlertDialogTask_present__block_invoke;
  v4[3] = &unk_1E73BC780;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithBlock:v4];

  return v2;
}

id __35__AMSSystemAlertDialogTask_present__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) request];
    v8 = [v7 logKey];
    v9 = [*(a1 + 32) request];
    *buf = 138543874;
    *&buf[4] = v6;
    v32 = 2114;
    *v33 = v8;
    *&v33[8] = 2114;
    v34 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting system alert using request: %{public}@", buf, 0x20u);
  }

  *buf = *MEMORY[0x1E695EE70];
  *&buf[8] = 1;
  *&v33[2] = *MEMORY[0x1E695EE98];
  LODWORD(v34) = 2;
  v35 = *MEMORY[0x1E695EE78];
  v36 = 0;
  v10 = [*(a1 + 32) _reorderButtonActions];
  v26 = 0;
  v11 = [*(a1 + 32) _createNoteDictionaryWithKeys:buf buttonActions:v10 outOptions:&v26];
  if (v11)
  {
    goto LABEL_6;
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = *(a1 + 32);
    v18 = v16;
    v19 = [v17 request];
    v20 = [v19 logKey];
    *v27 = 138543618;
    v28 = v16;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create note dictionary.", v27, 0x16u);
  }

  v21 = AMSError(0, @"System Dialog Task Failed", @"Unknown error occurred creating the note dictionary", 0);
  if (!v21)
  {
LABEL_6:
    v12 = [*(a1 + 32) _showNotificationFromDictionary:v11 options:v26];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = AMSError(0, @"System Dialog Task Failed", @"Unable to create the system notification", 0);
    }
  }

  else
  {
    v13 = v21;
    v12 = 0;
  }

  if ([*(a1 + 32) isDialogDismissalEnabled])
  {
    [*(a1 + 32) setUserNotification:v12];
  }

  if (v13)
  {
    v22 = 0;
    goto LABEL_24;
  }

  v23 = [*(a1 + 32) _handleResponseForNote:v12 buttonActions:v10 keys:buf];
  if (v23)
  {
    v22 = v23;
  }

  else
  {
    v13 = AMSError(0, @"System Dialog Task Failed", @"System dialog task finished without a result", 0);
    v22 = [*(a1 + 32) autoDismissResult];

    if (!v22)
    {
      goto LABEL_24;
    }

    v22 = [*(a1 + 32) autoDismissResult];
  }

  v13 = 0;
LABEL_24:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    if (a2)
    {
      v24 = v13;
      *a2 = v13;
    }

    v22 = 0;
  }

  return v22;
}

- (void)_dismiss
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(AMSSystemAlertDialogTask *)self userNotification])
  {
    request = +[AMSLogConfig sharedAccountsConfig];
    if (!request)
    {
      request = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [request OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSystemAlertDialogTask isDialogDismissalEnabled](self, "isDialogDismissalEnabled")}];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Tried to dismiss nothing (isDialogDismissalEnabled is %{public}@ and should be YES)", &v14, 0x20u);
    }

    goto LABEL_12;
  }

  request = [(AMSSystemAlertDialogTask *)self request];
  v4 = [[AMSDialogResult alloc] initWithOriginalRequest:request selectedActionIdentifier:@"No action required"];
  [(AMSSystemAlertDialogTask *)self setAutoDismissResult:v4];

  v5 = CFUserNotificationCancel([(AMSSystemAlertDialogTask *)self userNotification]);
  [(AMSSystemAlertDialogTask *)self setUserNotification:0];
  if (v5)
  {
    oSLogObject = +[AMSLogConfig sharedAccountsConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[AMSLogConfig sharedConfig];
    }

    v6OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v6OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      v14 = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_192869000, v6OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to dismiss dialog, CFUserNotificationCancel returned %{public}@", &v14, 0x20u);
    }

LABEL_12:
  }
}

- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options
{
  actionsCopy = actions;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (options)
    {
      *options = 3;
      if ([actionsCopy count])
      {
        *options |= 0x20uLL;
      }
    }

    request = [(AMSSystemAlertDialogTask *)self request];
    title = [request title];

    if ([title length])
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E695EE58], title);
    }

    selfCopy = self;
    request2 = [(AMSSystemAlertDialogTask *)self request];
    message = [request2 message];

    if (message)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E695EE60], message);
    }

    v78 = actionsCopy;
    if ([actionsCopy count])
    {
      v13 = 0;
      v81 = *MEMORY[0x1E695EE70];
      v80 = *MEMORY[0x1E695EE98];
      v14 = *MEMORY[0x1E69D44A0];
      v15 = *MEMORY[0x1E69D4528];
      v16 = *MEMORY[0x1E69D44B8];
      keysCopy = keys;
      do
      {
        v18 = [actionsCopy objectAtIndexedSubscript:v13];
        var0 = keysCopy->var0;
        title2 = [v18 title];
        v21 = Mutable;
        v22 = title2;
        v23 = v21;
        CFDictionarySetValue(v21, var0, title2);

        if (var0 == v80)
        {
          v24 = v15;
        }

        else
        {
          v24 = v16;
        }

        if (var0 == v81)
        {
          v25 = v14;
        }

        else
        {
          v25 = v24;
        }

        if ([v18 style] == 1)
        {
          v26 = 1;
        }

        else if ([v18 style] == 2)
        {
          request3 = [(AMSSystemAlertDialogTask *)selfCopy request];
          preventsCancelButtonStyle = [request3 preventsCancelButtonStyle];

          v29 = (preventsCancelButtonStyle & 1) == 0;
          actionsCopy = v78;
          if (v29)
          {
            v26 = 2;
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        Mutable = v23;
        CFDictionarySetValue(v23, v25, [MEMORY[0x1E696AD98] numberWithInt:v26]);

        ++v13;
        v30 = [actionsCopy count];
        v31 = 3;
        if (v30 < 3)
        {
          v31 = v30;
        }

        ++keysCopy;
      }

      while (v31 > v13);
    }

    request4 = [(AMSSystemAlertDialogTask *)selfCopy request];
    textFields = [request4 textFields];
    v34 = [textFields count];

    if (v34)
    {
      v35 = Mutable;
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      request5 = [(AMSSystemAlertDialogTask *)selfCopy request];
      textFields2 = [request5 textFields];
      v39 = [textFields2 count];

      if (v39)
      {
        v40 = 0;
        do
        {
          request6 = [(AMSSystemAlertDialogTask *)selfCopy request];
          textFields3 = [request6 textFields];
          v43 = [textFields3 objectAtIndexedSubscript:v40];

          v44 = objc_alloc_init(MEMORY[0x1E69D4278]);
          [v44 setAutocapitalizationType:0];
          [v44 setAutocorrectionType:1];
          [v44 setSecure:{objc_msgSend(v43, "secure")}];
          placeholder = [v43 placeholder];
          [v44 setTitle:placeholder];

          text = [v43 text];
          [v44 setValue:text];

          [v44 setKeyboardType:{-[AMSSystemAlertDialogTask _keyboardTypeFor:](selfCopy, "_keyboardTypeFor:", objc_msgSend(v43, "keyboardType"))}];
          build = [v44 build];
          [v36 addObject:build];

          ++v40;
          request7 = [(AMSSystemAlertDialogTask *)selfCopy request];
          textFields4 = [request7 textFields];
          v50 = [textFields4 count];
        }

        while (v40 < v50);
      }

      v51 = *MEMORY[0x1E69D4470];
      v52 = v36;
      Mutable = v35;
      CFDictionarySetValue(v35, v51, v52);

      actionsCopy = v78;
    }

    v53 = [(AMSSystemAlertDialogTask *)selfCopy _defaultButtonIndexForActions:actionsCopy];
    if (v53 <= 2)
    {
      v54 = v53;
      request8 = [(AMSSystemAlertDialogTask *)selfCopy request];
      preventsCancelButtonStyle2 = [request8 preventsCancelButtonStyle];

      if ((preventsCancelButtonStyle2 & 1) == 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69D44C0], [MEMORY[0x1E696AD98] numberWithInt:keys[v54].var1]);
      }
    }

    unlockActionButtonIndex = [(AMSSystemAlertDialogTask *)selfCopy unlockActionButtonIndex];
    if (unlockActionButtonIndex <= 2)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69D44B0], [MEMORY[0x1E696AD98] numberWithInt:keys[unlockActionButtonIndex].var1]);
    }

    v58 = *MEMORY[0x1E69D44E0];
    displaysOnLockscreen = [(AMSSystemAlertDialogTask *)selfCopy displaysOnLockscreen];
    v60 = *MEMORY[0x1E695E4D0];
    v61 = *MEMORY[0x1E695E4C0];
    if (displaysOnLockscreen)
    {
      v62 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v62 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, v58, v62);
    v63 = *MEMORY[0x1E69D4500];
    if ([(AMSSystemAlertDialogTask *)selfCopy displaysOnLockscreen])
    {
      v64 = v60;
    }

    else
    {
      v64 = v61;
    }

    CFDictionarySetValue(Mutable, v63, v64);
    v65 = *MEMORY[0x1E69D4498];
    if ([(AMSSystemAlertDialogTask *)selfCopy dismissOnHomeButton])
    {
      v66 = v60;
    }

    else
    {
      v66 = v61;
    }

    CFDictionarySetValue(Mutable, v65, v66);
    v67 = *MEMORY[0x1E69D44D0];
    if ([(AMSSystemAlertDialogTask *)selfCopy dismissOnLock])
    {
      v68 = v60;
    }

    else
    {
      v68 = v61;
    }

    CFDictionarySetValue(Mutable, v67, v68);
    v69 = *MEMORY[0x1E695EE68];
    if ([(AMSSystemAlertDialogTask *)selfCopy shouldDisplayAsTopMost])
    {
      v70 = v60;
    }

    else
    {
      v70 = v61;
    }

    CFDictionarySetValue(Mutable, v69, v70);
    v71 = *MEMORY[0x1E69D44E8];
    if ([(AMSSystemAlertDialogTask *)selfCopy shouldDismissAfterUnlock])
    {
      v72 = v60;
    }

    else
    {
      v72 = v61;
    }

    CFDictionarySetValue(Mutable, v71, v72);
    v73 = *MEMORY[0x1E69D4530];
    if ([(AMSSystemAlertDialogTask *)selfCopy shouldPendInSetupIfNotAllowed])
    {
      v74 = v60;
    }

    else
    {
      v74 = v61;
    }

    CFDictionarySetValue(Mutable, v73, v74);
  }

  return Mutable;
}

- (__CFUserNotification)_showNotificationFromDictionary:(__CFDictionary *)dictionary options:(unint64_t)options
{
  v20 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return 0;
  }

  error = 0;
  v5 = CFUserNotificationCreate(0, 0.0, options, &error, dictionary);
  if (v5 && error)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      request = [(AMSSystemAlertDialogTask *)self request];
      logKey = [request logKey];
      *buf = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = logKey;
      v18 = 2048;
      v19 = error;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating note %ld.", buf, 0x20u);
    }

    CFRelease(v5);
    return 0;
  }

  return v5;
}

- (int64_t)_defaultButtonIndexForActions:(id)actions
{
  v43 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  defaultButtonIndex = [(AMSSystemAlertDialogTask *)self defaultButtonIndex];
  if ((defaultButtonIndex & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  request = [(AMSSystemAlertDialogTask *)self request];
  defaultAction = [request defaultAction];
  identifier = [defaultAction identifier];

  if (identifier)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = actionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v29 = defaultButtonIndex;
      v30 = actionsCopy;
      v12 = 0;
      v13 = *v38;
      obj = v9;
      while (2)
      {
        v14 = 0;
        v31 = v11 + v12;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          identifier2 = [*(*(&v37 + 1) + 8 * v14) identifier];
          request2 = [(AMSSystemAlertDialogTask *)self request];
          defaultAction2 = [request2 defaultAction];
          identifier3 = [defaultAction2 identifier];
          v19 = [identifier2 isEqualToString:identifier3];

          if (v19)
          {
            defaultButtonIndex = v12;
            v20 = obj;
            goto LABEL_13;
          }

          ++v12;
          ++v14;
        }

        while (v11 != v14);
        v20 = obj;
        v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        v12 = v31;
        if (v11)
        {
          continue;
        }

        break;
      }

      defaultButtonIndex = v29;
      v12 = v29;
LABEL_13:

      actionsCopy = v30;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = actionsCopy;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v22)
  {

LABEL_29:
    defaultButtonIndex = [v21 count] - 1;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v34;
  while (2)
  {
    v26 = 0;
    v27 = v24;
    v24 += v23;
    do
    {
      if (*v34 != v25)
      {
        objc_enumerationMutation(v21);
      }

      if ([*(*(&v33 + 1) + 8 * v26) style] == 2)
      {
        defaultButtonIndex = v27;
        goto LABEL_26;
      }

      ++v27;
      ++v26;
    }

    while (v23 != v26);
    v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

  v27 = defaultButtonIndex;
LABEL_26:

  if (v27 < 0)
  {
    goto LABEL_29;
  }

LABEL_30:

  return defaultButtonIndex;
}

- (id)_handleResponseForNote:(__CFUserNotification *)note buttonActions:(id)actions keys:(ButtonKey *)keys
{
  v37 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  responseFlags = 0;
  request2 = 0x1E696A000;
  if (CFUserNotificationReceiveResponse(note, 0.0, &responseFlags))
  {
LABEL_5:
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v32 = actionsCopy;
      request = [(AMSSystemAlertDialogTask *)self request];
      logKey = [request logKey];
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (logKey)
      {
        request2 = [(AMSSystemAlertDialogTask *)self request];
        actionsCopy = [request2 logKey];
        [v17 stringWithFormat:@"%@: [%@] ", v19, actionsCopy];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@System dialog finished without a selected button", buf, 0xCu);
      if (logKey)
      {

        v20 = request2;
      }

      actionsCopy = v32;
    }

    v10 = -1;
    v21 = 1;
  }

  else
  {
    v10 = 0;
    p_var1 = &keys->var1;
    while (1)
    {
      v12 = *p_var1;
      p_var1 += 4;
      if (responseFlags == v12)
      {
        break;
      }

      if (++v10 == 3)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
  }

  v22 = CFUserNotificationGetResponseDictionary(note);
  v23 = [v22 objectForKey:*MEMORY[0x1E695EEA8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = 0;
      if (v21)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v24 = [v23 copy];
  }

  v25 = v24;
  if (v21)
  {
LABEL_21:
    v26 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v26 = [actionsCopy objectAtIndexedSubscript:v10];
LABEL_24:
  v27 = [AMSDialogResult alloc];
  request3 = [(AMSSystemAlertDialogTask *)self request];
  identifier = [v26 identifier];
  v30 = [(AMSDialogResult *)v27 initWithOriginalRequest:request3 selectedActionIdentifier:identifier];

  [(AMSDialogResult *)v30 setTextfieldValues:v25];

  return v30;
}

- (int64_t)_keyboardTypeFor:(int64_t)for
{
  if (for > 2)
  {
    return 0;
  }

  else
  {
    return qword_193016B00[for];
  }
}

- (id)_reorderButtonActions
{
  v37 = *MEMORY[0x1E69E9840];
  request = [(AMSSystemAlertDialogTask *)self request];
  buttonActions = [request buttonActions];
  v5 = [buttonActions count];

  request2 = [(AMSSystemAlertDialogTask *)self request];
  buttonActions2 = [request2 buttonActions];
  v8 = buttonActions2;
  if (v5 > 1)
  {
    v9 = [buttonActions2 count];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v9 == 2)
    {
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      request3 = [(AMSSystemAlertDialogTask *)self request];
      request2 = [request3 buttonActions];

      v11 = [request2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(request2);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            if ([v15 style] == 2 && (-[AMSSystemAlertDialogTask request](self, "request"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "preventsCancelButtonStyle"), v16, (v17 & 1) == 0))
            {
              [v8 insertObject:v15 atIndex:0];
            }

            else
            {
              [v8 addObject:v15];
            }
          }

          v12 = [request2 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v29 = 0uLL;
      v30 = 0uLL;
      *(&v27 + 1) = 0;
      v28 = 0uLL;
      request4 = [(AMSSystemAlertDialogTask *)self request];
      buttonActions3 = [request4 buttonActions];

      v20 = [buttonActions3 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        request2 = 0;
        v22 = *v28;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(buttonActions3);
            }

            v24 = *(*(&v27 + 1) + 8 * j);
            if ([v24 style] == 2)
            {
              v25 = v24;

              request2 = v25;
            }

            else
            {
              [v8 addObject:v24];
            }
          }

          v21 = [buttonActions3 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v21);

        if (request2)
        {
          [v8 addObject:request2];
        }
      }

      else
      {

        request2 = 0;
      }
    }
  }

  return v8;
}

@end