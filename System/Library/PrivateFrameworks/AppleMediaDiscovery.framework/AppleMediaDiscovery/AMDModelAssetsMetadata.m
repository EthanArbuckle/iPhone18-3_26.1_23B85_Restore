@interface AMDModelAssetsMetadata
- (AMDModelAssetsMetadata)initWithDictionary:(id)a3;
@end

@implementation AMDModelAssetsMetadata

- (AMDModelAssetsMetadata)initWithDictionary:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AMDModelAssetsMetadata;
  v9 = [(AMDModelAssetsMetadata *)&v7 init];
  objc_storeStrong(&v9, v9);
  v5 = [location[0] objectForKey:@"dictionaries"];
  [(AMDModelAssetsMetadata *)v9 setDictionaryIds:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

@end