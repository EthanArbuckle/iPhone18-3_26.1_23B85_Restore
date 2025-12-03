@interface AMDModelAssetsMetadata
- (AMDModelAssetsMetadata)initWithDictionary:(id)dictionary;
@end

@implementation AMDModelAssetsMetadata

- (AMDModelAssetsMetadata)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AMDModelAssetsMetadata;
  selfCopy = [(AMDModelAssetsMetadata *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = [location[0] objectForKey:@"dictionaries"];
  [(AMDModelAssetsMetadata *)selfCopy setDictionaryIds:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end