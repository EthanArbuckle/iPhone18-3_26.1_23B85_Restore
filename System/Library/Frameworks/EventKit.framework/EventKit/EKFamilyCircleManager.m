@interface EKFamilyCircleManager
+ (BOOL)isFamilyCalendar:(id)a3 givenFamilySharees:(id)a4;
+ (BOOL)isFamilyCalendarGivenCalendarSharees:(id)a3 familySharees:(id)a4 isPrimaryAppleAccount:(BOOL)a5;
+ (void)isFamilyCalendar:(id)a3 completion:(id)a4;
+ (void)requestFamilyShareesWithCompletion:(id)a3;
@end

@implementation EKFamilyCircleManager

+ (void)requestFamilyShareesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E699C070]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__EKFamilyCircleManager_requestFamilyShareesWithCompletion___block_invoke;
  v6[3] = &unk_1E77FEAC0;
  v7 = v3;
  v5 = v3;
  [v4 startRequestWithCompletionHandler:v6];
}

void __60__EKFamilyCircleManager_requestFamilyShareesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v24 = a3;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 members];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 fullName];
        v13 = [v11 appleID];
        v14 = [EKSharee shareeWithName:v12 emailAddress:v13];

        v15 = [v11 firstName];
        [v14 setFirstName:v15];

        v16 = [v11 lastName];
        [v14 setLastName:v16];

        v17 = [v11 appleIDAliases];
        [v14 setFamilyEmailAddressAliases:v17];

        if ([v11 isMe])
        {
          v18 = v14;

          v8 = v18;
        }

        else
        {
          [v25 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__EKFamilyCircleManager_requestFamilyShareesWithCompletion___block_invoke_2;
  block[3] = &unk_1E77FEA98;
  v19 = *(a1 + 32);
  v28 = v8;
  v29 = v19;
  v27 = v25;
  v20 = v8;
  v21 = v25;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)isFamilyCalendar:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 source];
  v9 = [v8 isPrimaryAppleAccount];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__EKFamilyCircleManager_isFamilyCalendar_completion___block_invoke;
    v10[3] = &unk_1E77FEAE8;
    v11 = v6;
    v13 = a1;
    v12 = v7;
    [a1 requestFamilyShareesWithCompletion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __53__EKFamilyCircleManager_isFamilyCalendar_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sharees];
  [*(a1 + 48) isFamilyCalendarGivenCalendarSharees:v5 familySharees:v4 isPrimaryAppleAccount:1];

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)isFamilyCalendar:(id)a3 givenFamilySharees:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sharees];
  v9 = [v7 source];

  LOBYTE(v7) = [a1 isFamilyCalendarGivenCalendarSharees:v8 familySharees:v6 isPrimaryAppleAccount:{objc_msgSend(v9, "isPrimaryAppleAccount")}];
  return v7;
}

+ (BOOL)isFamilyCalendarGivenCalendarSharees:(id)a3 familySharees:(id)a4 isPrimaryAppleAccount:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      v23 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = v8;
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([v14 isEqualToSharee:*(*(&v24 + 1) + 8 * j)])
                {

                  v20 = 1;
                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v12 = v23;
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
        v20 = 0;
      }

      while (v11);
    }

    else
    {
      v20 = 0;
    }

LABEL_21:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end