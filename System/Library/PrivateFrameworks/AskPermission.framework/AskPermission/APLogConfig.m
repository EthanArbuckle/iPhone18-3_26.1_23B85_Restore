@interface APLogConfig
+ (id)_createLogConfigWithBaseConfig:(id)a3 subystem:(id)a4 category:(id)a5;
+ (id)sharedConfig;
+ (id)sharedDaemonConfig;
+ (id)sharedExtensionConfig;
+ (id)sharedFrameworkConfig;
+ (id)sharedPluginConfig;
+ (id)sharedSettingsConfig;
+ (id)sharedUIServiceConfig;
- (APLogConfig)init;
- (BOOL)isEqual:(id)a3;
- (OS_os_log)OSLogObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation APLogConfig

- (APLogConfig)init
{
  v6.receiver = self;
  v6.super_class = APLogConfig;
  v2 = [(APLogConfig *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AskPermission.APLogConfig", MEMORY[0x277D85CD8]);
    propertyAccessQueue = v2->_propertyAccessQueue;
    v2->_propertyAccessQueue = v3;
  }

  return v2;
}

+ (id)sharedConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__APLogConfig_sharedConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedConfig_ap_once_object___COUNTER__;

  return v2;
}

uint64_t __27__APLogConfig_sharedConfig__block_invoke(uint64_t a1)
{
  sharedConfig_ap_once_object___COUNTER__ = [*(a1 + 32) _createLogConfigWithSubsystem:@"com.apple.AskPermission" category:@"general"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedDaemonConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__APLogConfig_sharedDaemonConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDaemonConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedDaemonConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedDaemonConfig_ap_once_object___COUNTER__;

  return v2;
}

void __33__APLogConfig_sharedDaemonConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"daemon"];
  v3 = sharedDaemonConfig_ap_once_object___COUNTER__;
  sharedDaemonConfig_ap_once_object___COUNTER__ = v2;
}

+ (id)sharedExtensionConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APLogConfig_sharedExtensionConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedExtensionConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedExtensionConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedExtensionConfig_ap_once_object___COUNTER__;

  return v2;
}

void __36__APLogConfig_sharedExtensionConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"extension"];
  v3 = sharedExtensionConfig_ap_once_object___COUNTER__;
  sharedExtensionConfig_ap_once_object___COUNTER__ = v2;
}

+ (id)sharedFrameworkConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APLogConfig_sharedFrameworkConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedFrameworkConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedFrameworkConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedFrameworkConfig_ap_once_object___COUNTER__;

  return v2;
}

void __36__APLogConfig_sharedFrameworkConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"framework"];
  v3 = sharedFrameworkConfig_ap_once_object___COUNTER__;
  sharedFrameworkConfig_ap_once_object___COUNTER__ = v2;
}

+ (id)sharedSettingsConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APLogConfig_sharedSettingsConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSettingsConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedSettingsConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedSettingsConfig_ap_once_object___COUNTER__;

  return v2;
}

void __35__APLogConfig_sharedSettingsConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"settings"];
  v3 = sharedSettingsConfig_ap_once_object___COUNTER__;
  sharedSettingsConfig_ap_once_object___COUNTER__ = v2;
}

+ (id)sharedPluginConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__APLogConfig_sharedPluginConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedPluginConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedPluginConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedPluginConfig_ap_once_object___COUNTER__;

  return v2;
}

void __33__APLogConfig_sharedPluginConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"plugin"];
  v3 = sharedPluginConfig_ap_once_object___COUNTER__;
  sharedPluginConfig_ap_once_object___COUNTER__ = v2;
}

+ (id)sharedUIServiceConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APLogConfig_sharedUIServiceConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedUIServiceConfig_ap_once_token___COUNTER__ != -1)
  {
    dispatch_once(&sharedUIServiceConfig_ap_once_token___COUNTER__, block);
  }

  v2 = sharedUIServiceConfig_ap_once_object___COUNTER__;

  return v2;
}

void __36__APLogConfig_sharedUIServiceConfig__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 sharedConfig];
  v2 = [v1 _createLogConfigWithBaseConfig:v4 subystem:0 category:@"uiservice"];
  v3 = sharedUIServiceConfig_ap_once_object___COUNTER__;
  sharedUIServiceConfig_ap_once_object___COUNTER__ = v2;
}

- (OS_os_log)OSLogObject
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v3 = [(APLogConfig *)self propertyAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__APLogConfig_OSLogObject__block_invoke;
  block[3] = &unk_278CC1660;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v3, block);

  v4 = v11[5];
  if (!v4)
  {
    v5 = [(APLogConfig *)self propertyAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__APLogConfig_OSLogObject__block_invoke_2;
    v8[3] = &unk_278CC1660;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_barrier_sync(v5, v8);

    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

uint64_t __26__APLogConfig_OSLogObject__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backingOSLogObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

id *__26__APLogConfig_OSLogObject__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backingOSLogObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  result = (v5 + 40);
  if (v7)
  {
    return result;
  }

  objc_storeStrong(result, MEMORY[0x277D86220]);
  v8 = [*(a1 + 32) subsystem];
  if (![v8 length])
  {
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) category];
  v10 = [v9 length];

  if (v10)
  {
    v8 = [*(a1 + 32) subsystem];
    v11 = [v8 UTF8String];
    v12 = [*(a1 + 32) category];
    v13 = os_log_create(v11, [v12 UTF8String]);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_5:
  }

  v16 = *(a1 + 32);
  v17 = *(*(*(a1 + 40) + 8) + 40);

  return [v16 setBackingOSLogObject:v17];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = APLogConfig;
  v4 = [(APLogConfig *)&v9 description];
  v5 = [v3 stringWithFormat:@"%@: {\n", v4];

  v6 = [(APLogConfig *)self category];
  [v5 appendFormat:@"  category: %@\n", v6];

  v7 = [(APLogConfig *)self subsystem];
  [v5 appendFormat:@"  subsystem: %@\n", v7];

  [v5 appendString:@"}"];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(APLogConfig *)self category];
  v4 = [v3 hash];
  v5 = [(APLogConfig *)self subsystem];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v7 = 1;
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = [(APLogConfig *)self category];
    if (v8 || ([(APLogConfig *)v5 category], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(APLogConfig *)self category];
      v10 = [(APLogConfig *)v5 category];
      v11 = [v9 isEqual:v10];

      if (v8)
      {

        if (!v11)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v12 = [(APLogConfig *)self subsystem];
    if (v12 || ([(APLogConfig *)v5 subsystem], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(APLogConfig *)self subsystem];
      v14 = [(APLogConfig *)v5 subsystem];
      v7 = [v13 isEqual:v14];

      if (v12)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_17;
  }

LABEL_3:
  v7 = 0;
LABEL_18:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[APLogConfig allocWithZone:](APLogConfig init];
  v6 = [(APLogConfig *)self category];
  v7 = [v6 copyWithZone:a3];
  category = v5->_category;
  v5->_category = v7;

  v9 = [(APLogConfig *)self subsystem];
  v10 = [v9 copyWithZone:a3];
  subsystem = v5->_subsystem;
  v5->_subsystem = v10;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(APLogConfig *)+[APMutableLogConfig allocWithZone:](APMutableLogConfig init];
  v6 = [(APLogConfig *)self category];
  v7 = [v6 copyWithZone:a3];
  [(APLogConfig *)v5 setCategory:v7];

  v8 = [(APLogConfig *)self subsystem];
  v9 = [v8 copyWithZone:a3];
  [(APLogConfig *)v5 setSubsystem:v9];

  return v5;
}

+ (id)_createLogConfigWithBaseConfig:(id)a3 subystem:(id)a4 category:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(APMutableLogConfig);
  }

  v11 = v10;
  if (v8)
  {
    [(APLogConfig *)v10 setSubsystem:v8];
  }

  if (v9)
  {
    [(APLogConfig *)v11 setCategory:v9];
  }

  v12 = [(APMutableLogConfig *)v11 copy];

  return v12;
}

@end