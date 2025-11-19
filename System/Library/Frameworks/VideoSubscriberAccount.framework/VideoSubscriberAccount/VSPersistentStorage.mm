@interface VSPersistentStorage
+ (id)defaultStorageDirectoryURL;
+ (void)defaultStorageDirectoryURL;
- (VSPersistentStorage)initWithAccountStore:(id)a3;
- (VSPersistentStorage)initWithAccountStore:(id)a3 channelsCenterClass:(Class)a4;
@end

@implementation VSPersistentStorage

+ (id)defaultStorageDirectoryURL
{
  v2 = [VSOptional optionalWithObject:@"/var/mobile/Library/Application Support"];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [v2 forceUnwrapObject];
  v5 = [v3 fileURLWithPath:v4];

  v6 = [v5 URLByAppendingPathComponent:@"com.apple.VideoSubscriberAccount"];
  v7 = [VSOptional optionalWithObject:v6];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [v7 forceUnwrapObject];
  v10 = [v9 path];

  if (v10 && ([v8 fileExistsAtPath:v10] & 1) == 0)
  {
    v15 = 0;
    [v8 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = VSErrorLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[(VSPersistentStorage *)v11];
      }
    }
  }

  v13 = [v7 forceUnwrapObject];

  return v13;
}

- (VSPersistentStorage)initWithAccountStore:(id)a3 channelsCenterClass:(Class)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = VSPersistentStorage;
  v7 = [(VSPersistentStorage *)&v17 init];
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[VSAccountStore sharedAccountStore];
    }

    accountStore = v7->_accountStore;
    v7->_accountStore = v8;

    v10 = [[a4 alloc] initWithAccountStore:v7->_accountStore];
    channelsCenter = v7->_channelsCenter;
    v7->_channelsCenter = v10;

    v12 = objc_alloc_init(VSPrivacyVoucherLockbox);
    voucherLockbox = v7->_voucherLockbox;
    v7->_voucherLockbox = v12;

    v14 = [[VSPrivacyFacade alloc] initWithVoucherLockbox:v7->_voucherLockbox];
    privacyFacade = v7->_privacyFacade;
    v7->_privacyFacade = v14;
  }

  return v7;
}

- (VSPersistentStorage)initWithAccountStore:(id)a3
{
  v4 = a3;
  v5 = [(VSPersistentStorage *)self initWithAccountStore:v4 channelsCenterClass:objc_opt_class()];

  return v5;
}

+ (void)defaultStorageDirectoryURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error creating persistent storage directory %@", &v2, 0xCu);
}

@end