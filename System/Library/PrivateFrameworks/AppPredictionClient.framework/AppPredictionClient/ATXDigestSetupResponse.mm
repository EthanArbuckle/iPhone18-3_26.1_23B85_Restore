@interface ATXDigestSetupResponse
- (ATXDigestSetupResponse)initWithBundleId:(id)id avgNumBasicNotifications:(unint64_t)notifications avgNumMessageNotifications:(unint64_t)messageNotifications avgNumTimeSensitiveNonMessageNotifications:(unint64_t)nonMessageNotifications numBasicNotifications:(unint64_t)basicNotifications numMessageNotifications:(unint64_t)numMessageNotifications numTimeSensitiveNonMessageNotifications:(unint64_t)sensitiveNonMessageNotifications;
@end

@implementation ATXDigestSetupResponse

- (ATXDigestSetupResponse)initWithBundleId:(id)id avgNumBasicNotifications:(unint64_t)notifications avgNumMessageNotifications:(unint64_t)messageNotifications avgNumTimeSensitiveNonMessageNotifications:(unint64_t)nonMessageNotifications numBasicNotifications:(unint64_t)basicNotifications numMessageNotifications:(unint64_t)numMessageNotifications numTimeSensitiveNonMessageNotifications:(unint64_t)sensitiveNonMessageNotifications
{
  idCopy = id;
  v20.receiver = self;
  v20.super_class = ATXDigestSetupResponse;
  v17 = [(ATXDigestSetupResponse *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, id);
    v18->_avgNumBasicNotifications = notifications;
    v18->_avgNumMessageNotifications = messageNotifications;
    v18->_avgNumTimeSensitiveNonMessageNotifications = nonMessageNotifications;
    v18->_numBasicNotifications = basicNotifications;
    v18->_numMessageNotifications = numMessageNotifications;
    v18->_numTimeSensitiveNonMessageNotifications = sensitiveNonMessageNotifications;
  }

  return v18;
}

@end