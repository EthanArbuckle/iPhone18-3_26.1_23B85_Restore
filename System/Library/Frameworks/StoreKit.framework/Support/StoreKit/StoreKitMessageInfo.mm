@interface StoreKitMessageInfo
- (StoreKitMessageInfo)initWithUserID:(id)a3 bundleID:(id)a4 status:(id)a5 allowDeveloperControl:(BOOL)a6 messageType:(int64_t)a7;
@end

@implementation StoreKitMessageInfo

- (StoreKitMessageInfo)initWithUserID:(id)a3 bundleID:(id)a4 status:(id)a5 allowDeveloperControl:(BOOL)a6 messageType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v13)
  {
    if (qword_1003D4BC0 != -1)
    {
      sub_1002D2144();
    }

    v19 = qword_1003D4B78;
    if (os_log_type_enabled(qword_1003D4B78, OS_LOG_TYPE_ERROR))
    {
      sub_1002D219C(v19);
    }

    goto LABEL_14;
  }

  if (!v14)
  {
    if (qword_1003D4BC0 != -1)
    {
      sub_1002D2144();
    }

    v20 = qword_1003D4B78;
    if (os_log_type_enabled(qword_1003D4B78, OS_LOG_TYPE_ERROR))
    {
      sub_1002D2158(v20);
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v22.receiver = self;
  v22.super_class = StoreKitMessageInfo;
  v16 = [(StoreKitMessageInfo *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userID, a3);
    objc_storeStrong(&v17->_bundleID, a4);
    objc_storeStrong(&v17->_status, a5);
    v17->_allowDeveloperControl = a6;
    v17->_type = a7;
  }

  self = v17;
  v18 = self;
LABEL_15:

  return v18;
}

@end