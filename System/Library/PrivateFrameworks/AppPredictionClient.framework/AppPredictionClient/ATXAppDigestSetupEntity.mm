@interface ATXAppDigestSetupEntity
- (ATXAppDigestSetupEntity)initWithBundleId:(id)a3 numBasicNotifications:(unint64_t)a4 numMessageNotifications:(unint64_t)a5 numTimeSenstiveNonMessageNotifications:(unint64_t)a6;
- (ATXAppDigestSetupEntity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppDigestSetupEntity

- (ATXAppDigestSetupEntity)initWithBundleId:(id)a3 numBasicNotifications:(unint64_t)a4 numMessageNotifications:(unint64_t)a5 numTimeSenstiveNonMessageNotifications:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ATXAppDigestSetupEntity;
  v12 = [(ATXAppDigestSetupEntity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, a3);
    v13->_numBasicNotifications = a4;
    v13->_numMessageNotifications = a5;
    v13->_numTimeSensitiveNonMessageNotifications = a6;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppDigestSetupEntity *)self bundleId];
  [v4 encodeObject:v5 forKey:@"codingKeyForBundleId"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numBasicNotifications](self, "numBasicNotifications")}];
  [v4 encodeObject:v6 forKey:@"codingKeyForNumBasicNotifications"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numMessageNotifications](self, "numMessageNotifications")}];
  [v4 encodeObject:v7 forKey:@"codingKeyForNumMessageNotifications"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ATXAppDigestSetupEntity numTimeSensitiveNonMessageNotifications](self, "numTimeSensitiveNonMessageNotifications")}];
  [v4 encodeObject:v8 forKey:@"codingKeyForNumTimeSensitiveNotifications"];
}

- (ATXAppDigestSetupEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_management();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForNumBasicNotifications" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_notification_management();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForNumMessageNotifications" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      if (v20)
      {
        v10 = 0;
      }

      else
      {
        v21 = MEMORY[0x1E69C5D78];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_notification_management();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForNumTimeSensitiveNotifications" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appDigestSetupEntity" errorCode:-1 logHandle:v23];

        v25 = [v4 error];

        if (v25)
        {
          v10 = 0;
        }

        else
        {
          self = -[ATXAppDigestSetupEntity initWithBundleId:numBasicNotifications:numMessageNotifications:numTimeSenstiveNonMessageNotifications:](self, "initWithBundleId:numBasicNotifications:numMessageNotifications:numTimeSenstiveNonMessageNotifications:", v8, [v14 unsignedIntegerValue], objc_msgSend(v19, "unsignedIntegerValue"), objc_msgSend(v24, "unsignedIntegerValue"));
          v10 = self;
        }
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXAppDigestSetupEntity alloc];
  v5 = [(ATXAppDigestSetupEntity *)self bundleId];
  v6 = [(ATXAppDigestSetupEntity *)v4 initWithBundleId:v5 numBasicNotifications:[(ATXAppDigestSetupEntity *)self numBasicNotifications] numMessageNotifications:[(ATXAppDigestSetupEntity *)self numMessageNotifications] numTimeSenstiveNonMessageNotifications:[(ATXAppDigestSetupEntity *)self numTimeSensitiveNonMessageNotifications]];

  return v6;
}

@end