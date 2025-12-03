@interface AMSFamilyContentDeletionEvent
+ (id)_notificationPayloadWithAccountPairs:(id)pairs;
+ (void)postDistributedNotificationWithAccountPairs:(id)pairs;
@end

@implementation AMSFamilyContentDeletionEvent

+ (void)postDistributedNotificationWithAccountPairs:(id)pairs
{
  v3 = [self _notificationPayloadWithAccountPairs:pairs];
  if (v3)
  {
    userInfo = v3;
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.StoreServices.SSVFamilyContentDeletionNotification", 0, userInfo, 0);
    v3 = userInfo;
  }
}

+ (id)_notificationPayloadWithAccountPairs:(id)pairs
{
  v24 = *MEMORY[0x1E69E9840];
  pairsCopy = pairs;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = pairsCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v21[0] = @"did";
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "downloaderAccountID")}];
        v22[0] = v10;
        v21[1] = @"fid";
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "familyID")}];
        v22[1] = v11;
        v21[2] = @"pid";
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "purchaserAccountID")}];
        v22[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"pairs", 0}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end