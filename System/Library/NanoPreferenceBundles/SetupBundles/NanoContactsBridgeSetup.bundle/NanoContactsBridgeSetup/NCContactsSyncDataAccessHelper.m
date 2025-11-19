@interface NCContactsSyncDataAccessHelper
+ (id)os_log;
- (BOOL)isChinaSKUDevice;
- (BOOL)networkAccessEnabledForContacts;
- (__CTServerConnection)ctServerConnection;
- (void)dealloc;
- (void)setNetworkAccessEnabledForContacts:(BOOL)a3;
@end

@implementation NCContactsSyncDataAccessHelper

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = NCContactsSyncDataAccessHelper;
  [(NCContactsSyncDataAccessHelper *)&v4 dealloc];
}

+ (id)os_log
{
  if (qword_23A40 != -1)
  {
    sub_EB20();
  }

  v3 = qword_23A48;

  return v3;
}

- (__CTServerConnection)ctServerConnection
{
  result = self->_ctServerConnection;
  if (!result)
  {
    result = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = result;
  }

  return result;
}

- (BOOL)isChinaSKUDevice
{
  if (qword_23A58 != -1)
  {
    sub_EB34();
  }

  return byte_23A50;
}

- (BOOL)networkAccessEnabledForContacts
{
  [(NCContactsSyncDataAccessHelper *)self ctServerConnection];
  _CTServerConnectionCopyCellularUsagePolicy();
  v2 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_EB48();
  }

  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[NCContactsSyncDataAccessHelper networkAccessEnabledForContacts]";
    v7 = 1024;
    LODWORD(v8) = 1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - return networkAccessEnabledForContacts: %d", buf, 0x12u);
  }

  return 1;
}

- (void)setNetworkAccessEnabledForContacts:(BOOL)a3
{
  v4 = &kCTCellularDataUsagePolicyAlwaysAllow;
  if (!a3)
  {
    v4 = &kCTCellularDataUsagePolicyDeny;
  }

  v12[0] = *v4;
  v11[0] = kCTCellularDataUsagePolicy;
  v11[1] = kCTCellularUsagePolicyDataAllowed;
  v5 = [NSNumber numberWithBool:?];
  v11[2] = kCTWiFiDataUsagePolicy;
  v12[1] = v5;
  v12[2] = v12[0];
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  [(NCContactsSyncDataAccessHelper *)self ctServerConnection];
  LODWORD(v5) = _CTServerConnectionSetCellularUsagePolicy();
  v7 = [objc_opt_class() os_log];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_EBBC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[NCContactsSyncDataAccessHelper setNetworkAccessEnabledForContacts:]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - no error", &v9, 0xCu);
  }
}

@end