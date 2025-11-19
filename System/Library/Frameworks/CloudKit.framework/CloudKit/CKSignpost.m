@interface CKSignpost
+ (id)signpost;
- (CKSignpost)init;
- (CKSignpost)initWithLog:(id)a3;
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

- (CKSignpost)initWithLog:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKSignpost;
  v6 = [(CKSignpost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
    v7->_identifier = os_signpost_id_generate(v5);
  }

  return v7;
}

@end