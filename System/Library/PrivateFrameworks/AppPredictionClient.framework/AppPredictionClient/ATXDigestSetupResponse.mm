@interface ATXDigestSetupResponse
- (ATXDigestSetupResponse)initWithBundleId:(id)a3 avgNumBasicNotifications:(unint64_t)a4 avgNumMessageNotifications:(unint64_t)a5 avgNumTimeSensitiveNonMessageNotifications:(unint64_t)a6 numBasicNotifications:(unint64_t)a7 numMessageNotifications:(unint64_t)a8 numTimeSensitiveNonMessageNotifications:(unint64_t)a9;
@end

@implementation ATXDigestSetupResponse

- (ATXDigestSetupResponse)initWithBundleId:(id)a3 avgNumBasicNotifications:(unint64_t)a4 avgNumMessageNotifications:(unint64_t)a5 avgNumTimeSensitiveNonMessageNotifications:(unint64_t)a6 numBasicNotifications:(unint64_t)a7 numMessageNotifications:(unint64_t)a8 numTimeSensitiveNonMessageNotifications:(unint64_t)a9
{
  v16 = a3;
  v20.receiver = self;
  v20.super_class = ATXDigestSetupResponse;
  v17 = [(ATXDigestSetupResponse *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, a3);
    v18->_avgNumBasicNotifications = a4;
    v18->_avgNumMessageNotifications = a5;
    v18->_avgNumTimeSensitiveNonMessageNotifications = a6;
    v18->_numBasicNotifications = a7;
    v18->_numMessageNotifications = a8;
    v18->_numTimeSensitiveNonMessageNotifications = a9;
  }

  return v18;
}

@end