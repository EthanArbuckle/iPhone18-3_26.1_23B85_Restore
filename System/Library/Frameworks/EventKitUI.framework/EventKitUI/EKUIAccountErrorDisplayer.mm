@interface EKUIAccountErrorDisplayer
+ (BOOL)_reauthorizeForAccount:(id)a3 usingViewController:(id)a4 completion:(id)a5;
+ (unint64_t)moreSevereErrorOfError:(unint64_t)a3 andError:(unint64_t)a4;
+ (void)handleContinueSyncingForAccount:(id)a3 calendars:(id)a4 error:(unint64_t)a5;
+ (void)presentAlertForAccount:(id)a3 error:(unint64_t)a4 usingViewController:(id)a5 completion:(id)a6;
@end

@implementation EKUIAccountErrorDisplayer

+ (unint64_t)moreSevereErrorOfError:(unint64_t)a3 andError:(unint64_t)a4
{
  v6 = [EKUIAccountErrorDisplayer severityForError:?];
  if ([EKUIAccountErrorDisplayer severityForError:a4]<= v6)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

+ (void)presentAlertForAccount:(id)a3 error:(unint64_t)a4 usingViewController:(id)a5 completion:(id)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v10 externalID];
    *buf = 138543618;
    v77 = v15;
    v78 = 2048;
    v79 = a4;
    _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_DEFAULT, "Presenting an alert for source with external ID %{public}@ with error %lu", buf, 0x16u);
  }

  v16 = EventKitUIBundle();
  v64 = [v16 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];

  v17 = 0;
  v18 = 0;
  v63 = v10;
  if (a4 > 6)
  {
    if (a4 == 7)
    {
      v62 = v11;
      v31 = [v10 calendarsForEntityType:0];
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v21 = v31;
      v33 = [v21 countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v72;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v72 != v35)
            {
              objc_enumerationMutation(v21);
            }

            v37 = *(*(&v71 + 1) + 8 * i);
            if ([v37 lastSyncError] == 7)
            {
              [v32 addObject:v37];
            }
          }

          v34 = [v21 countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v34);
      }

      v38 = v32;
      v39 = [v38 count];
      v17 = v39 != 0;
      if (v39)
      {
        v40 = EventKitUIBundle();
        v18 = [v40 localizedStringForKey:@"Insecure connection" value:&stru_1F4EF6790 table:0];

        v41 = EventKitUIBundle();
        v61 = [v41 localizedStringForKey:@"Continue" value:&stru_1F4EF6790 table:0];

        v65 = [v38 firstObject];
        v42 = [v38 count] - 1;
        v43 = EventKitUIBundle();
        v44 = v43;
        if (v42)
        {
          v45 = [v43 localizedStringForKey:@"“%@” and %d other calendars cannot connect with a secure connection. Would you like to continue syncing them anyway?" value:&stru_1F4EF6790 table:0];

          v46 = MEMORY[0x1E696AEC0];
          v47 = [v65 title];
          [v46 localizedStringWithFormat:v45, v47, v42];
        }

        else
        {
          v45 = [v43 localizedStringForKey:@"“%@” cannot connect with a secure connection. Would you like to continue syncing it anyway?" value:&stru_1F4EF6790 table:0];

          v49 = MEMORY[0x1E696AEC0];
          v47 = [v65 title];
          [v49 localizedStringWithFormat:v45, v47, v60];
        }
        v25 = ;
        v11 = v62;

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __89__EKUIAccountErrorDisplayer_presentAlertForAccount_error_usingViewController_completion___block_invoke_55;
        aBlock[3] = &unk_1E8441900;
        v69 = a1;
        v67 = v63;
        v68 = v38;
        v70 = 7;
        v27 = _Block_copy(aBlock);

        v64 = v61;
      }

      else
      {
        v48 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D3400000, v48, OS_LOG_TYPE_ERROR, "Trying to present an alert for EKAccountErrorInsecureConnectionNotAllowed, but there are no calendars with errors.", buf, 2u);
        }

        v27 = 0;
        v25 = 0;
        v18 = 0;
        v11 = v62;
      }
    }

    else
    {
      if (a4 != 9)
      {
        goto LABEL_10;
      }

      v23 = EventKitUIBundle();
      v18 = [v23 localizedStringForKey:@"New iCloud Terms and Conditions" value:&stru_1F4EF6790 table:0];

      v24 = EventKitUIBundle();
      v25 = [v24 localizedStringForKey:@"To use iCloud on this iPhone you must accept the new Terms and Conditions" value:&stru_1F4EF6790 table:0];

      v21 = EventKitUIBundle();
      v26 = [v21 localizedStringForKey:@"Go to Settings…" value:&stru_1F4EF6790 table:0];

      v27 = &__block_literal_global_42;
      v17 = 1;
      v64 = v26;
    }

LABEL_32:
    v28 = v12;

    v29 = v11;
    if (v18 && v25)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (a4 == 2)
  {
    if ([a1 _reauthorizeForAccount:v10 usingViewController:v11 completion:v12])
    {
      goto LABEL_38;
    }

    v30 = EventKitUIBundle();
    v18 = [v30 localizedStringForKey:@"Incorrect password" value:&stru_1F4EF6790 table:0];

    v20 = EventKitUIBundle();
    v21 = v20;
    v22 = @"Your username or password is incorrect.";
    goto LABEL_13;
  }

  if (a4 == 3)
  {
    v19 = EventKitUIBundle();
    v18 = [v19 localizedStringForKey:@"No internet connection" value:&stru_1F4EF6790 table:0];

    v20 = EventKitUIBundle();
    v21 = v20;
    v22 = @"Unable to connect to account.";
LABEL_13:
    v25 = [v20 localizedStringForKey:v22 value:&stru_1F4EF6790 table:0];
    v17 = 0;
    v27 = 0;
    goto LABEL_32;
  }

LABEL_10:
  v28 = v12;
  v29 = v11;
  v25 = 0;
  v27 = 0;
LABEL_34:
  v50 = EventKitUIBundle();
  v51 = [v50 localizedStringForKey:@"Unknown Error" value:&stru_1F4EF6790 table:0];

  v52 = EventKitUIBundle();
  v53 = [v52 localizedStringForKey:@"There was an unknown error while updating this account." value:&stru_1F4EF6790 table:0];

  v25 = v53;
  v18 = v51;
LABEL_35:
  v54 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v18 message:v25 preferredStyle:1];
  v55 = [MEMORY[0x1E69DC648] actionWithTitle:v64 style:0 handler:v27];
  [v54 addAction:v55];
  if (v17)
  {
    v56 = EventKitUIBundle();
    v57 = [v56 localizedStringForKey:@"Cancel" value:&stru_1F4EF6790 table:0];

    v58 = [MEMORY[0x1E69DC648] actionWithTitle:v57 style:1 handler:0];
    [v54 addAction:v58];
  }

  v11 = v29;
  v59 = v29;
  v12 = v28;
  [v59 presentViewController:v54 animated:1 completion:v28];

  v10 = v63;
LABEL_38:
}

void __89__EKUIAccountErrorDisplayer_presentAlertForAccount_error_usingViewController_completion___block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = 0;
  [v1 openSensitiveURL:v0 withOptions:0 error:&v4];
  v2 = v4;

  if (v2)
  {
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v6 = v0;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "Unable to open URL to accept new iCloud terms %@, error = %@", buf, 0x16u);
    }
  }
}

+ (void)handleContinueSyncingForAccount:(id)a3 calendars:(id)a4 error:(unint64_t)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v40;
    *&v9 = 138412802;
    v33 = v9;
    v34 = *v40;
    do
    {
      v12 = 0;
      v35 = v10;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [v13 subcalAccountID];
        if (v14)
        {
          v15 = [v6 accountWithIdentifier:v14];
          v16 = v15;
          if (v15)
          {
            [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SubCalInsecureConnectionApproved"];
            [v16 setAuthenticated:1];
            v17 = kEKUILogHandle;
            if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [v13 title];
              v20 = [v13 calendarIdentifier];
              [v13 externalID];
              v21 = v7;
              v23 = v22 = v6;
              *buf = 138544130;
              v44 = v14;
              v45 = 2112;
              v46 = v19;
              v47 = 2114;
              v48 = v20;
              v49 = 2112;
              v50 = v23;
              _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_DEFAULT, "Allowing insecure connections for account %{public}@ for subscribed calendar (title = %@; calendarIdentifier = %{public}@; externalID = %@)", buf, 0x2Au);

              v6 = v22;
              v7 = v21;
              v11 = v34;

              v10 = v35;
            }

            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __77__EKUIAccountErrorDisplayer_handleContinueSyncingForAccount_calendars_error___block_invoke;
            v36[3] = &unk_1E84410B0;
            v37 = v14;
            v38 = v13;
            [v6 saveAccount:v16 withCompletionHandler:v36];
          }

          else
          {
            v28 = kEKUILogHandle;
            if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
            {
              v29 = v28;
              v30 = [v13 title];
              v31 = [v13 calendarIdentifier];
              v32 = [v13 externalID];
              *buf = 138544130;
              v44 = v14;
              v45 = 2112;
              v46 = v30;
              v47 = 2114;
              v48 = v31;
              v49 = 2112;
              v50 = v32;
              _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_ERROR, "Unable to find account for subscribed calendar (accountID = %{public}@; title = %@; calendarIdentifier = %{public}@; externalId = %@)", buf, 0x2Au);

              v10 = v35;
            }
          }
        }

        else
        {
          v24 = kEKUILogHandle;
          if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          v16 = v24;
          v25 = [v13 title];
          v26 = [v13 calendarIdentifier];
          v27 = [v13 externalID];
          *buf = v33;
          v44 = v25;
          v45 = 2114;
          v46 = v26;
          v47 = 2112;
          v48 = v27;
          _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Trying to allow insecure syncing for a calendar without a subcal account ID. (title = %@; calendarIdentifier = %{public}@; externalId = %@)", buf, 0x20u);
        }

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v10);
  }

  [MEMORY[0x1E69933B8] temporarilyIgnoreInsecureConnectionErrorsForCalendars:v7];
}

void __77__EKUIAccountErrorDisplayer_handleContinueSyncingForAccount_calendars_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = kEKUILogHandle;
  if (a2)
  {
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v6;
      v10 = [v7 title];
      v11 = [*(a1 + 40) calendarIdentifier];
      v12 = [*(a1 + 40) externalID];
      v19 = 138544130;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v13 = "Successfully updated account %{public}@ to allow insecure connections for subscribed calendar (title = %@; calendarIdentifier = %{public}@; externalID = %@)";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 42;
LABEL_6:
      _os_log_impl(&dword_1D3400000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v9 = v6;
    v10 = [v17 title];
    v11 = [*(a1 + 40) calendarIdentifier];
    v12 = [*(a1 + 40) externalID];
    v19 = 138544386;
    v20 = v18;
    v21 = 2112;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v5;
    v13 = "Unable to update account %{public}@ to allow insecure connections for subscribed calendar (title = %@; calendarIdentifier = %{public}@; externalID = %@). Error = %@";
    v14 = v9;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 52;
    goto LABEL_6;
  }
}

+ (BOOL)_reauthorizeForAccount:(id)a3 usingViewController:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v12 = [v8 externalID];
  v13 = [v11 accountWithIdentifier:v12];

  v14 = kEKUILogHandle;
  if (v13)
  {
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v8 externalID];
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_DEFAULT, "Renewing credentials for sourceAccount with ID: %{public}@", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke;
    v20[3] = &unk_1E8441950;
    v21 = v8;
    v24 = a1;
    v22 = v9;
    v23 = v10;
    [v11 renewCredentialsForAccount:v13 completion:v20];
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v17 = v14;
    v18 = [v8 externalID];
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "Can't renew credentials for sourceAccount because no ACAccount could be found with ID: %{public}@", buf, 0xCu);
  }

  return v13 != 0;
}

void __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 externalID];
    *buf = 138543874;
    v15 = v9;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_DEFAULT, "Finished renewing credentials for account with ID %{public}@. Result=%li, error=%@", buf, 0x20u);
  }

  if (!a2)
  {
    v10 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke_2;
    v12[3] = &unk_1E8441928;
    v11 = 32;
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v10 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke_73;
    v13[3] = &unk_1E843FA38;
    v13[6] = *(a1 + 56);
    v11 = 40;
LABEL_7:
    v10[4] = *(a1 + v11);
    v10[5] = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E69933B8] temporarilyIgnoreInvalidCredentialsErrorForSource:*(a1 + 32)];
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke_3;
  block[3] = &unk_1E843EC60;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);

  (*(*(a1 + 40) + 16))();
}

void __83__EKUIAccountErrorDisplayer__reauthorizeForAccount_usingViewController_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  [v2 refreshSource:*(a1 + 32) userRequested:1];
}

@end