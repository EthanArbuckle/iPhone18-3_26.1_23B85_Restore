@interface APConfigurationCache
+ (id)sharedInstance;
- (APConfigurationCache)init;
@end

@implementation APConfigurationCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1CA1CFA50;
  block[3] = &unk_1E8368C20;
  block[4] = self;
  if (qword_1EDC0DE90 != -1)
  {
    dispatch_once(&qword_1EDC0DE90, block);
  }

  v2 = qword_1EDC0DE98;

  return v2;
}

- (APConfigurationCache)init
{
  v10.receiver = self;
  v10.super_class = APConfigurationCache;
  v2 = [(APConfigurationCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ap.configurationsystem.queue", v3);

    v5 = objc_alloc(MEMORY[0x1E6986198]);
    v7 = objc_msgSend_initWithExpirationInterval_flushQueue_(v5, v6, v4, 300.0);
    purgeableCache = v2->_purgeableCache;
    v2->_purgeableCache = v7;
  }

  return v2;
}

@end