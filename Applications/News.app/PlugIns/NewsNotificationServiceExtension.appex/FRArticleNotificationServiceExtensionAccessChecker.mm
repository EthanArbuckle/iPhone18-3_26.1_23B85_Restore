@interface FRArticleNotificationServiceExtensionAccessChecker
- (BOOL)hasPaidAccessToHeadlineWithAccessChecker:(id)checker headline:(id)headline;
- (FRArticleNotificationServiceExtensionAccessChecker)init;
@end

@implementation FRArticleNotificationServiceExtensionAccessChecker

- (FRArticleNotificationServiceExtensionAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FRArticleNotificationServiceExtensionAccessChecker;
  return [(FRArticleNotificationServiceExtensionAccessChecker *)&v3 init];
}

- (BOOL)hasPaidAccessToHeadlineWithAccessChecker:(id)checker headline:(id)headline
{
  checkerCopy = checker;
  headlineCopy = headline;
  v7 = checkerCopy;
  v8 = headlineCopy;
  isPaid = [v8 isPaid];
  isBundlePaid = [v8 isBundlePaid];
  sourceChannel = [v8 sourceChannel];
  identifier = [sourceChannel identifier];
  v13 = v7;
  v14 = identifier;
  bundleSubscriptionProvider = [v13 bundleSubscriptionProvider];
  purchaseProvider = [v13 purchaseProvider];
  v17 = bundleSubscriptionProvider;
  v18 = purchaseProvider;
  v19 = v14;
  if ((isPaid & 1) != 0 || isBundlePaid)
  {
    v21 = isPaid ^ 1;
    if (!v18)
    {
      v21 = 1;
    }

    if ((v21 & 1) != 0 || ([v18 purchasedTagIDs], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v19), v22, (v23 & 1) == 0))
    {
      v24 = isBundlePaid ^ 1;
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
      unsignedIntegerValue = [v28 unsignedIntegerValue];
      v30 = unsignedIntegerValue;
      v31 = objc_getAssociatedObject(v27, ~unsignedIntegerValue);
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

      bundleSubscription = [v38 bundleSubscription];
      bundleChannelIDs = [bundleSubscription bundleChannelIDs];
      v36 = [bundleChannelIDs containsObject:v37];

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