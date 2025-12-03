@interface AMSUserNotificationCenter
+ (BOOL)badgeBundleId:(id)id badgeId:(id)badgeId enabled:(BOOL)enabled error:(id *)error;
+ (Class)_determineStrategyForBundleId:(id)id;
+ (id)activeNotificationsWithCenterBundleId:(id)id;
+ (id)postNotification:(id)notification bag:(id)bag centerBundleId:(id)id;
+ (id)removeNotification:(id)notification centerBundleId:(id)id;
+ (id)removeNotificationWithIdentifier:(id)identifier centerBundleId:(id)id logKey:(id)key scheduledOnly:(BOOL)only;
@end

@implementation AMSUserNotificationCenter

+ (id)activeNotificationsWithCenterBundleId:(id)id
{
  idCopy = id;
  v5 = [objc_msgSend(self _determineStrategyForBundleId:{idCopy), "_activeNotificationsWithCenterBundleId:", idCopy}];

  return v5;
}

+ (BOOL)badgeBundleId:(id)id badgeId:(id)badgeId enabled:(BOOL)enabled error:(id *)error
{
  idCopy = id;
  badgeIdCopy = badgeId;
  v12 = [self _determineStrategyForBundleId:idCopy];
  if (idCopy && badgeIdCopy)
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
    enabledCopy = enabled;
    v22 = badgeIdCopy;
    v24 = &v32;
    v25 = &v28;
    v26 = v18;
    v23 = idCopy;
    [AMSDefaults updateBadgeIdsForBundle:v23 block:v21];
    if (error)
    {
      *error = v33[5];
    }

    v19 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else if (error)
  {
    AMSErrorWithFormat(2, @"Failed To Badge", @"Invalid parameters. center:%@ badgeId:%@", v13, v14, v15, v16, v17, idCopy);
    *error = v19 = 0;
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

+ (id)postNotification:(id)notification bag:(id)bag centerBundleId:(id)id
{
  idCopy = id;
  bagCopy = bag;
  notificationCopy = notification;
  v11 = [objc_msgSend(self _determineStrategyForBundleId:{idCopy), "_postNotification:bag:centerBundleId:", notificationCopy, bagCopy, idCopy}];

  return v11;
}

+ (id)removeNotification:(id)notification centerBundleId:(id)id
{
  idCopy = id;
  notificationCopy = notification;
  v8 = [objc_msgSend(self _determineStrategyForBundleId:{idCopy), "_removeNotification:centerBundleId:", notificationCopy, idCopy}];

  return v8;
}

+ (id)removeNotificationWithIdentifier:(id)identifier centerBundleId:(id)id logKey:(id)key scheduledOnly:(BOOL)only
{
  onlyCopy = only;
  keyCopy = key;
  idCopy = id;
  identifierCopy = identifier;
  v13 = [objc_msgSend(self _determineStrategyForBundleId:{idCopy), "_removeNotificationWithIdentifier:centerBundleId:logKey:scheduledOnly:", identifierCopy, idCopy, keyCopy, onlyCopy}];

  return v13;
}

+ (Class)_determineStrategyForBundleId:(id)id
{
  v3 = [id length];
  if (v3)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

@end