@interface FRArticleNotificationServiceExtensionAccessChecker
- (BOOL)hasPaidAccessToHeadlineWithAccessChecker:(id)a3 headline:(id)a4;
- (FRArticleNotificationServiceExtensionAccessChecker)init;
@end

@implementation FRArticleNotificationServiceExtensionAccessChecker

- (FRArticleNotificationServiceExtensionAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FRArticleNotificationServiceExtensionAccessChecker;
  return [(FRArticleNotificationServiceExtensionAccessChecker *)&v3 init];
}

- (BOOL)hasPaidAccessToHeadlineWithAccessChecker:(id)a3 headline:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [v8 isPaid];
  v10 = [v8 isBundlePaid];
  v11 = [v8 sourceChannel];
  v12 = [v11 identifier];
  v13 = v7;
  v14 = v12;
  v15 = [v13 bundleSubscriptionProvider];
  v16 = [v13 purchaseProvider];
  v17 = v15;
  v18 = v16;
  v19 = v14;
  if ((v9 & 1) != 0 || v10)
  {
    v21 = v9 ^ 1;
    if (!v18)
    {
      v21 = 1;
    }

    if ((v21 & 1) != 0 || ([v18 purchasedTagIDs], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v19), v22, (v23 & 1) == 0))
    {
      v24 = v10 ^ 1;
      if (!v17)
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_14;
      }

      v25 = v17;
      v26 = v19;
      if (!v26)
      {
        goto LABEL_13;
      }

      [v25 bundleSubscription];
      v27 = v37 = v26;
      objc_getAssociatedObject(v27, (v27 + 1));
      v28 = v38 = v25;
      v29 = [v28 unsignedIntegerValue];
      v30 = v29;
      v31 = objc_getAssociatedObject(v27, ~v29);
      v32 = [v31 unsignedIntegerValue] ^ v30;

      v25 = v38;
      v26 = v37;
      if ((v32 & 1) == 0)
      {
LABEL_13:

LABEL_14:
        v20 = 0;
        goto LABEL_15;
      }

      v34 = [v38 bundleSubscription];
      v35 = [v34 bundleChannelIDs];
      v36 = [v35 containsObject:v37];

      if ((v36 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v20 = 1;
LABEL_15:

  return v20;
}

@end