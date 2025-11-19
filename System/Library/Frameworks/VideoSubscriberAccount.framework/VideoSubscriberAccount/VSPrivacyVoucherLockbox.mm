@interface VSPrivacyVoucherLockbox
+ (id)getVouchersFromSelectedAppDescriptions:(id)a3 forProviderID:(id)a4;
- (NSArray)unredeemedVouchers;
- (VSPrivacyVoucherLockbox)init;
- (id)_voucherArchiveURL;
- (void)issueVouchers:(id)a3;
- (void)issueVouchersForAppDescriptions:(id)a3 providerID:(id)a4;
- (void)issueVouchersForApps:(id)a3 providerID:(id)a4;
- (void)redeemVoucher:(id)a3;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)setUnredeemedVouchers:(id)a3;
@end

@implementation VSPrivacyVoucherLockbox

- (VSPrivacyVoucherLockbox)init
{
  v6.receiver = self;
  v6.super_class = VSPrivacyVoucherLockbox;
  v2 = [(VSPrivacyVoucherLockbox *)&v6 init];
  if (v2)
  {
    v3 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSPrivacyConsentVouchersDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v3;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  [(VSPrivacyVoucherLockbox *)self willChangeValueForKey:@"unredeemedVouchers", a4];

  [(VSPrivacyVoucherLockbox *)self didChangeValueForKey:@"unredeemedVouchers"];
}

- (void)issueVouchersForApps:(id)a3 providerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(VSPrivacyVoucherLockbox *)self removeAllVouchers];
  v8 = [v7 nonChannelApps];
  if ([v7 hasUserChannelList])
  {
    [v7 subscribedApps];
  }

  else
  {
    [v7 availableApps];
  }
  v9 = ;

  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  [(VSPrivacyVoucherLockbox *)self issueVouchersForAppDescriptions:v10 providerID:v6];
}

- (void)issueVouchersForAppDescriptions:(id)a3 providerID:(id)a4
{
  v5 = [VSPrivacyVoucherLockbox getVouchersFromSelectedAppDescriptions:a3 forProviderID:a4];
  [(VSPrivacyVoucherLockbox *)self issueVouchers:v5];
}

- (void)issueVouchers:(id)a3
{
  v4 = a3;
  v5 = [(VSPrivacyVoucherLockbox *)self unredeemedVouchers];
  v6 = [v5 mutableCopy];

  [v6 addObjectsFromArray:v4];
  [(VSPrivacyVoucherLockbox *)self setUnredeemedVouchers:v6];
}

- (void)redeemVoucher:(id)a3
{
  v4 = a3;
  v5 = [(VSPrivacyVoucherLockbox *)self mutableArrayValueForKey:@"unredeemedVouchers"];
  [v5 removeObject:v4];
}

- (id)_voucherArchiveURL
{
  v2 = +[VSPersistentStorage defaultStorageDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"VSPrivacyConsentVouchers.data"];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[VSPersistentStorage defaultStorageDirectoryURL] URLByAppendingPathComponent:@VSPrivacyConsentVouchers.data] parameter must not be nil."];
  }

  v4 = +[VSPersistentStorage defaultStorageDirectoryURL];
  v5 = [v4 URLByAppendingPathComponent:@"VSPrivacyConsentVouchers.data"];

  return v5;
}

- (void)setUnredeemedVouchers:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Setting unredeemed vouchers: %@", buf, 0xCu);
  }

  v6 = [(VSPrivacyVoucherLockbox *)self undoManager];
  if (v6)
  {
    v7 = [(VSPrivacyVoucherLockbox *)self unredeemedVouchers];
    v8 = [v6 prepareWithInvocationTarget:self];
    [v8 setUnredeemedVouchers:v7];
  }

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  v10 = [(VSPrivacyVoucherLockbox *)self _voucherArchiveURL];
  v21 = 0;
  v11 = [v9 writeToURL:v10 options:0 error:&v21];
  v12 = v21;

  if ((v11 & 1) == 0)
  {
    v13 = VSErrorLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(VSPrivacyVoucherLockbox *)v12 setUnredeemedVouchers:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = [(VSPrivacyVoucherLockbox *)self remoteNotifier];
  [v20 postNotification];
}

- (NSArray)unredeemedVouchers
{
  v37[2] = *MEMORY[0x277D85DE8];
  v2 = [(VSPrivacyVoucherLockbox *)self _voucherArchiveURL];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v36 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:0 error:&v36];
    v7 = v36;
    if (v6)
    {
      v8 = v6;
      v35 = 0;
      v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v35];
      v10 = v35;
      v11 = v10;
      if (v9)
      {
        v33 = v10;
        v12 = v9;
        [v12 setDecodingFailurePolicy:1];
        v13 = MEMORY[0x277CBEB98];
        v37[0] = objc_opt_class();
        v37[1] = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        v15 = [v13 setWithArray:v14];

        v16 = [v12 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v31 = VSErrorLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(VSPrivacyVoucherLockbox *)v31 unredeemedVouchers];
          }

          v18 = MEMORY[0x277CBEBF8];
        }

        v11 = v33;
      }

      else
      {
        v12 = VSErrorLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(VSPrivacyVoucherLockbox *)v11 unredeemedVouchers:v12];
        }

        v18 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(VSPrivacyVoucherLockbox *)v7 unredeemedVouchers:v8];
      }

      v18 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "No vouchers file exists.", buf, 2u);
    }

    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

+ (id)getVouchersFromSelectedAppDescriptions:(id)a3 forProviderID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 adamID];
        v15 = [v14 stringValue];

        if (v15)
        {
          if ([v13 appType] == 2)
          {
            goto LABEL_12;
          }

          v16 = [[VSPrivacyConsentVoucher alloc] initWithAppAdamID:v15 providerID:v6];
          [v7 addObject:v16];
        }

        else
        {
          v16 = VSErrorLogObject();
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
          {
            [(VSPrivacyVoucherLockbox *)v22 getVouchersFromSelectedAppDescriptions:v13 forProviderID:&v23, &v16->super];
          }
        }

LABEL_12:
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)getVouchersFromSelectedAppDescriptions:(void *)a3 forProviderID:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 displayName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_23AB8E000, a4, OS_LOG_TYPE_ERROR, "Could not create voucher for %@, missing adamID", a1, 0xCu);
}

@end