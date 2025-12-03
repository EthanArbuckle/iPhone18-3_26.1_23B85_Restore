@interface AMDStorageBasedProvider
- (AMDStorageBasedProvider)initWithDomain:(id)domain;
- (id)getFeatureWithName:(id)name withColumn:(id)column error:(id *)error;
- (void)storeFeatureData:(id)data error:(id *)error;
@end

@implementation AMDStorageBasedProvider

- (AMDStorageBasedProvider)initWithDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDStorageBasedProvider;
  selfCopy = [(AMDStorageBasedProvider *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDStorageBasedProvider *)selfCopy setDomain:location[0]];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)getFeatureWithName:(id)name withColumn:(id)column error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v10 = 0;
  objc_storeStrong(&v10, column);
  v7 = location[0];
  domain = [(AMDStorageBasedProvider *)selfCopy domain];
  v9 = [AMDTasteProfile getFeatureWithName:"getFeatureWithName:inDomain:withColumnName:error:" inDomain:v7 withColumnName:? error:?];
  MEMORY[0x277D82BD8](domain);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)storeFeatureData:(id)data error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v6 = [AMDError allocError:29 withMessage:@"Store operation in AMDStorageBasedProvider not supported"];
  v4 = v6;
  *error = v6;
  objc_storeStrong(location, 0);
}

@end