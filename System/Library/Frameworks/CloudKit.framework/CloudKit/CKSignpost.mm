@interface CKSignpost
+ (id)signpost;
- (CKSignpost)init;
- (CKSignpost)initWithLog:(id)log;
@end

@implementation CKSignpost

- (CKSignpost)init
{
  v3 = os_log_create("com.apple.cloudkit", "Telemetry");
  v5 = objc_msgSend_initWithLog_(self, v4, v3);

  return v5;
}

+ (id)signpost
{
  v2 = objc_alloc_init(CKSignpost);

  return v2;
}

- (CKSignpost)initWithLog:(id)log
{
  logCopy = log;
  v9.receiver = self;
  v9.super_class = CKSignpost;
  v6 = [(CKSignpost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
    v7->_identifier = os_signpost_id_generate(logCopy);
  }

  return v7;
}

@end