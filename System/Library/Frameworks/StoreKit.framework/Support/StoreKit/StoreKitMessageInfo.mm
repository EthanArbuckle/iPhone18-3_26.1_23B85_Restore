@interface StoreKitMessageInfo
- (StoreKitMessageInfo)initWithUserID:(id)d bundleID:(id)iD status:(id)status allowDeveloperControl:(BOOL)control messageType:(int64_t)type;
@end

@implementation StoreKitMessageInfo

- (StoreKitMessageInfo)initWithUserID:(id)d bundleID:(id)iD status:(id)status allowDeveloperControl:(BOOL)control messageType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  statusCopy = status;
  if (!dCopy)
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

  if (!iDCopy)
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
    selfCopy = 0;
    goto LABEL_15;
  }

  v22.receiver = self;
  v22.super_class = StoreKitMessageInfo;
  v16 = [(StoreKitMessageInfo *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userID, d);
    objc_storeStrong(&v17->_bundleID, iD);
    objc_storeStrong(&v17->_status, status);
    v17->_allowDeveloperControl = control;
    v17->_type = type;
  }

  self = v17;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end