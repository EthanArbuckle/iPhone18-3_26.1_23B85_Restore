@interface AKIconContext
- (AKIconContext)init;
- (AKIconContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKIconContext

- (AKIconContext)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKIconContext;
  v6 = [(AKIconContext *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    objc_storeStrong(&v6->_data, 0);
    objc_storeStrong(&v6->_scale, 0);
    v6->_maskingStyle = 0;
    objc_storeStrong(&v6->_appName, 0);
  }

  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AKIconContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKIconContext *)v3 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = selfCopy->_data;
    selfCopy->_data = v4;
    MEMORY[0x1E69E5920](data);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_scale"];
    scale = selfCopy->_scale;
    selfCopy->_scale = v6;
    MEMORY[0x1E69E5920](scale);
    v8 = [location[0] decodeIntegerForKey:@"_maskingStyle"];
    selfCopy->_maskingStyle = v8;
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appName"];
    appName = selfCopy->_appName;
    selfCopy->_appName = v9;
    MEMORY[0x1E69E5920](appName);
  }

  v12 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_data forKey:@"_data"];
  [location[0] encodeObject:selfCopy->_scale forKey:@"_scale"];
  [location[0] encodeInteger:selfCopy->_maskingStyle forKey:@"_maskingStyle"];
  [location[0] encodeObject:selfCopy->_appName forKey:@"_appName"];
  objc_storeStrong(location, 0);
}

@end