@interface AMDModelOutputMetadata
- (AMDModelOutputMetadata)initWithDictionary:(id)a3;
@end

@implementation AMDModelOutputMetadata

- (AMDModelOutputMetadata)initWithDictionary:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AMDModelOutputMetadata;
  v10 = [(AMDModelOutputMetadata *)&v8 init];
  objc_storeStrong(&v10, v10);
  v6 = [location[0] objectForKey:@"data_type"];
  v4 = [AMDModelInputMetadata getDataTypeFromString:?];
  [(AMDModelOutputMetadata *)v10 setDataType:v4];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

@end