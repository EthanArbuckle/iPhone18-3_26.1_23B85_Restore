@interface AMDModelOutputMetadata
- (AMDModelOutputMetadata)initWithDictionary:(id)dictionary;
@end

@implementation AMDModelOutputMetadata

- (AMDModelOutputMetadata)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AMDModelOutputMetadata;
  selfCopy = [(AMDModelOutputMetadata *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v6 = [location[0] objectForKey:@"data_type"];
  v4 = [AMDModelInputMetadata getDataTypeFromString:?];
  [(AMDModelOutputMetadata *)selfCopy setDataType:v4];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end