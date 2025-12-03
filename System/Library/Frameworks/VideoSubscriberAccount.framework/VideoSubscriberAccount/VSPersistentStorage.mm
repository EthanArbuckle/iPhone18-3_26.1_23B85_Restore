@interface VSPersistentStorage
+ (id)defaultStorageDirectoryURL;
+ (void)defaultStorageDirectoryURL;
- (VSPersistentStorage)initWithAccountStore:(id)store;
- (VSPersistentStorage)initWithAccountStore:(id)store channelsCenterClass:(Class)class;
@end

@implementation VSPersistentStorage

+ (id)defaultStorageDirectoryURL
{
  v2 = [VSOptional optionalWithObject:@"/var/mobile/Library/Application Support"];
  v3 = MEMORY[0x277CBEBC0];
  forceUnwrapObject = [v2 forceUnwrapObject];
  v5 = [v3 fileURLWithPath:forceUnwrapObject];

  v6 = [v5 URLByAppendingPathComponent:@"com.apple.VideoSubscriberAccount"];
  v7 = [VSOptional optionalWithObject:v6];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  forceUnwrapObject2 = [v7 forceUnwrapObject];
  path = [forceUnwrapObject2 path];

  if (path && ([v8 fileExistsAtPath:path] & 1) == 0)
  {
    v15 = 0;
    [v8 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v15];
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

  forceUnwrapObject3 = [v7 forceUnwrapObject];

  return forceUnwrapObject3;
}

- (VSPersistentStorage)initWithAccountStore:(id)store channelsCenterClass:(Class)class
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = VSPersistentStorage;
  v7 = [(VSPersistentStorage *)&v17 init];
  if (v7)
  {
    if (storeCopy)
    {
      v8 = storeCopy;
    }

    else
    {
      v8 = +[VSAccountStore sharedAccountStore];
    }

    accountStore = v7->_accountStore;
    v7->_accountStore = v8;

    v10 = [[class alloc] initWithAccountStore:v7->_accountStore];
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

- (VSPersistentStorage)initWithAccountStore:(id)store
{
  storeCopy = store;
  v5 = [(VSPersistentStorage *)self initWithAccountStore:storeCopy channelsCenterClass:objc_opt_class()];

  return v5;
}

+ (void)defaultStorageDirectoryURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error creating persistent storage directory %@", &v2, 0xCu);
}

@end