@interface AMDStorageBasedProvider
- (AMDStorageBasedProvider)initWithDomain:(id)a3;
- (id)getFeatureWithName:(id)a3 withColumn:(id)a4 error:(id *)a5;
- (void)storeFeatureData:(id)a3 error:(id *)a4;
@end

@implementation AMDStorageBasedProvider

- (AMDStorageBasedProvider)initWithDomain:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDStorageBasedProvider;
  v8 = [(AMDStorageBasedProvider *)&v6 init];
  objc_storeStrong(&v8, v8);
  [(AMDStorageBasedProvider *)v8 setDomain:location[0]];
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)getFeatureWithName:(id)a3 withColumn:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = location[0];
  v8 = [(AMDStorageBasedProvider *)v12 domain];
  v9 = [AMDTasteProfile getFeatureWithName:"getFeatureWithName:inDomain:withColumnName:error:" inDomain:v7 withColumnName:? error:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)storeFeatureData:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [AMDError allocError:29 withMessage:@"Store operation in AMDStorageBasedProvider not supported"];
  v4 = v6;
  *a4 = v6;
  objc_storeStrong(location, 0);
}

@end