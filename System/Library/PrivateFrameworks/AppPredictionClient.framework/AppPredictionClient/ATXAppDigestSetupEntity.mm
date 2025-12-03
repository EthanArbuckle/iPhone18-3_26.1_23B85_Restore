@interface ATXAppDigestSetupEntity
- (ATXAppDigestSetupEntity)initWithBundleId:(id)id numBasicNotifications:(unint64_t)notifications numMessageNotifications:(unint64_t)messageNotifications numTimeSenstiveNonMessageNotifications:(unint64_t)nonMessageNotifications;
- (ATXAppDigestSetupEntity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppDigestSetupEntity

- (ATXAppDigestSetupEntity)initWithBundleId:(id)id numBasicNotifications:(unint64_t)notifications numMessageNotifications:(unint64_t)messageNotifications numTimeSenstiveNonMessageNotifications:(unint64_t)nonMessageNotifications
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = ATXAppDigestSetupEntity;
  v12 = [(ATXAppDigestSetupEntity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, id);
    v13->_numBasicNotifications = notifications;
    v13->_numMessageNotifications = messageNotifications;
    v13->_numTimeSensitiveNonMessageNotifications = nonMessageNotifications;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleId = [(ATXAppDigestSetupEntity *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"codingKeyForBundleId"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numBasicNotifications](self, "numBasicNotifications")}];
  [coderCopy encodeObject:v6 forKey:@"codingKeyForNumBasicNotifications"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numMessageNotifications](self, "numMessageNotifications")}];
  [coderCopy encodeObject:v7 forKey:@"codingKeyForNumMessageNotifications"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numTimeSensitiveNonMessageNotifications](self, "numTimeSensitiveNonMessageNotifications")}];
  [coderCopy encodeObject:v8 forKey:@"codingKeyForNumTimeSensitiveNotifications"];
}

- (ATXAppDigestSetupEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_management();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForNumBasicNotifications" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_notification_management();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForNumMessageNotifications" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
      }

      else
      {
        v21 = MEMORY[0x1E69C5D78];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_notification_management();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForNumTimeSensitiveNotifications" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v23];

        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
        }

        else
        {
          self = -[ATXAppDigestSetupEntity initWithBundleId:numBasicNotifications:numMessageNotifications:numTimeSenstiveNonMessageNotifications:](self, "initWithBundleId:numBasicNotifications:numMessageNotifications:numTimeSenstiveNonMessageNotifications:", v8, [v14 unsignedIntegerValue], objc_msgSend(v19, "unsignedIntegerValue"), objc_msgSend(v24, "unsignedIntegerValue"));
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXAppDigestSetupEntity alloc];
  bundleId = [(ATXAppDigestSetupEntity *)self bundleId];
  v6 = [(ATXAppDigestSetupEntity *)v4 initWithBundleId:bundleId numBasicNotifications:[(ATXAppDigestSetupEntity *)self numBasicNotifications] numMessageNotifications:[(ATXAppDigestSetupEntity *)self numMessageNotifications] numTimeSenstiveNonMessageNotifications:[(ATXAppDigestSetupEntity *)self numTimeSensitiveNonMessageNotifications]];

  return v6;
}

@end