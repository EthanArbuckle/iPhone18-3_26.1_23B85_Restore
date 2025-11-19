@interface APOnDeviceConversionConfig
- (NSDictionary)dictionary;
@end

@implementation APOnDeviceConversionConfig

- (NSDictionary)dictionary
{
  v3 = objc_msgSend_configDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"properties");

  return v5;
}

@end