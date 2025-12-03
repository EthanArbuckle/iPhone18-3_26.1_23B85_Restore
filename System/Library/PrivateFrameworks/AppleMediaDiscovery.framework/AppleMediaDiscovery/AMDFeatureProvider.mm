@interface AMDFeatureProvider
+ (id)getProviderForSource:(id)source WithDomain:(id)domain;
- (id)fetchOutputRemapDictForUsecase:(id)usecase;
- (id)getFeatureWithName:(id)name withColumn:(id)column error:(id *)error;
- (void)storeFeatureData:(id)data error:(id *)error;
- (void)storeOutputRemapData:(id)data error:(id *)error;
@end

@implementation AMDFeatureProvider

+ (id)getProviderForSource:(id)source WithDomain:(id)domain
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v8 = 0;
  objc_storeStrong(&v8, domain);
  if (location[0] && (([location[0] isEqualToString:@"request"] & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", @"model") & 1) != 0))
  {
    v10 = +[AMDMemoryBasedProvider sharedProvider];
  }

  else
  {
    v4 = [AMDStorageBasedProvider alloc];
    v10 = [(AMDStorageBasedProvider *)v4 initWithDomain:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v5 = v10;

  return v5;
}

- (id)getFeatureWithName:(id)name withColumn:(id)column error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v13 = 0;
  objc_storeStrong(&v13, column);
  v12[1] = error;
  v12[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v11 = 16;
  if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
  {
    log = v12[0];
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_error_impl(&dword_240CB9000, log, type, "Method 'getFeatureWithName' not implemented in AMDFeatureProvider base class", v10, 2u);
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)storeFeatureData:(id)data error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v6 = [AMDError allocError:29 withMessage:@"Store operation in base class AMDFeatureProvider not supported"];
  v4 = v6;
  *error = v6;
  objc_storeStrong(location, 0);
}

- (id)fetchOutputRemapDictForUsecase:(id)usecase
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, usecase);
  v8 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v7 = 16;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_error_impl(&dword_240CB9000, log, type, "Method 'fetchOutputRemapDictForUsecase' not implemented in AMDFeatureProvider base class", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)storeOutputRemapData:(id)data error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v9[1] = error;
  v9[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v8 = 16;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_error_impl(&dword_240CB9000, log, type, "Method 'storeOutputRemapData' not implemented in AMDFeatureProvider base class", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

@end