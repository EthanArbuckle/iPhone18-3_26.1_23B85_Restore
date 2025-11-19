@interface AKIconContext
- (AKIconContext)init;
- (AKIconContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (AKIconContext)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v14 = [(AKIconContext *)v3 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v14->_data;
    v14->_data = v4;
    MEMORY[0x1E69E5920](data);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_scale"];
    scale = v14->_scale;
    v14->_scale = v6;
    MEMORY[0x1E69E5920](scale);
    v8 = [location[0] decodeIntegerForKey:@"_maskingStyle"];
    v14->_maskingStyle = v8;
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appName"];
    appName = v14->_appName;
    v14->_appName = v9;
    MEMORY[0x1E69E5920](appName);
  }

  v12 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_data forKey:@"_data"];
  [location[0] encodeObject:v4->_scale forKey:@"_scale"];
  [location[0] encodeInteger:v4->_maskingStyle forKey:@"_maskingStyle"];
  [location[0] encodeObject:v4->_appName forKey:@"_appName"];
  objc_storeStrong(location, 0);
}

@end