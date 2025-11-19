@interface AMSUserNotificationCenter
+ (BOOL)badgeBundleId:(id)a3 badgeId:(id)a4 enabled:(BOOL)a5 error:(id *)a6;
+ (Class)_determineStrategyForBundleId:(id)a3;
+ (id)activeNotificationsWithCenterBundleId:(id)a3;
+ (id)postNotification:(id)a3 bag:(id)a4 centerBundleId:(id)a5;
+ (id)removeNotification:(id)a3 centerBundleId:(id)a4;
+ (id)removeNotificationWithIdentifier:(id)a3 centerBundleId:(id)a4 logKey:(id)a5 scheduledOnly:(BOOL)a6;
@end

@implementation AMSUserNotificationCenter

+ (id)activeNotificationsWithCenterBundleId:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 _determineStrategyForBundleId:{v4), "_activeNotificationsWithCenterBundleId:", v4}];

  return v5;
}

+ (BOOL)badgeBundleId:(id)a3 badgeId:(id)a4 enabled:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a1 _determineStrategyForBundleId:v10];
  if (v10 && v11)
  {
    v18 = v12;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__77;
    v36 = __Block_byref_object_dispose__77;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__AMSUserNotificationCenter_badgeBundleId_badgeId_enabled_error___block_invoke;
    v21[3] = &unk_1E73BDFC8;
    v27 = a5;
    v22 = v11;
    v24 = &v32;
    v25 = &v28;
    v26 = v18;
    v23 = v10;
    [AMSDefaults updateBadgeIdsForBundle:v23 block:v21];
    if (a6)
    {
      *a6 = v33[5];
    }

    v19 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else if (a6)
  {
    AMSErrorWithFormat(2, @"Failed To Badge", @"Invalid parameters. center:%@ badgeId:%@", v13, v14, v15, v16, v17, v10);
    *a6 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t __65__AMSUserNotificationCenter_badgeBundleId_badgeId_enabled_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = [v3 containsObject:*(a1 + 32)];
  if (v4 == 1)
  {
    if (v5)
    {
      v6 = @"Failed to badge";
      v7 = @"Badge id already exists";
LABEL_11:
      v19 = AMSError(7, v6, v7, 0);
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      goto LABEL_12;
    }

    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = *(*(a1 + 48) + 8);
    v24 = *(v16 + 40);
    v17 = [v13 _badgeBundleId:v15 increment:v14 error:&v24];
    objc_storeStrong((v16 + 40), v24);
    *(*(*(a1 + 56) + 8) + 24) = v17;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      [v3 addObject:*(a1 + 32)];
      goto LABEL_9;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  if ((v5 & 1) == 0)
  {
    v6 = @"Failed to unbadge";
    v7 = @"Badge id not found";
    goto LABEL_11;
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  v12 = [v8 _badgeBundleId:v10 increment:v9 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v12;
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_12;
  }

  [v3 removeObject:*(a1 + 32)];
LABEL_9:
  v18 = 1;
LABEL_13:

  return v18;
}

+ (id)postNotification:(id)a3 bag:(id)a4 centerBundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_msgSend(a1 _determineStrategyForBundleId:{v8), "_postNotification:bag:centerBundleId:", v10, v9, v8}];

  return v11;
}

+ (id)removeNotification:(id)a3 centerBundleId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_msgSend(a1 _determineStrategyForBundleId:{v6), "_removeNotification:centerBundleId:", v7, v6}];

  return v8;
}

+ (id)removeNotificationWithIdentifier:(id)a3 centerBundleId:(id)a4 logKey:(id)a5 scheduledOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_msgSend(a1 _determineStrategyForBundleId:{v11), "_removeNotificationWithIdentifier:centerBundleId:logKey:scheduledOnly:", v12, v11, v10, v6}];

  return v13;
}

+ (Class)_determineStrategyForBundleId:(id)a3
{
  v3 = [a3 length];
  if (v3)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

@end