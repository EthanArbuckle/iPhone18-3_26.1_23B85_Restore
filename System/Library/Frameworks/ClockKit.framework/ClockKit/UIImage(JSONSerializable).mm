@interface UIImage(JSONSerializable)
+ (id)imageWithJSONObjectRepresentation:()JSONSerializable bundle:;
+ (uint64_t)_numberForRenderingMode:()JSONSerializable;
+ (uint64_t)_renderingModeForNumber:()JSONSerializable;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:()JSONSerializable;
@end

@implementation UIImage(JSONSerializable)

+ (id)imageWithJSONObjectRepresentation:()JSONSerializable bundle:
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v5}];
  }

  v7 = [v5 objectForKeyedSubscript:@"file name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"file name", v7}];
  }

  v8 = [v5 objectForKeyedSubscript:@"scale"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"scale", v8}];
  }

  v9 = [v5 objectForKeyedSubscript:@"renderingMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"renderingMode", v9}];
  }

  v10 = [objc_opt_class() _renderingModeForNumber:v9];
  [v8 floatValue];
  v12 = v11;
  bundlePath = [v6 bundlePath];

  v14 = [bundlePath stringByAppendingPathComponent:v7];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [defaultManager contentsAtPath:v14];

  v17 = [MEMORY[0x277D755B8] imageWithData:v16 scale:v12];
  v18 = [v17 imageWithRenderingMode:v10];

  return v18;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:()JSONSerializable
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  uUIDString = [v6 UUIDString];
  v8 = [uUIDString stringByAppendingPathExtension:@"png"];

  [v5 setObject:v8 forKeyedSubscript:@"file name"];
  v9 = [v4 stringByAppendingPathComponent:v8];

  v10 = UIImagePNGRepresentation(self);
  v18 = 0;
  v11 = [v10 writeToFile:v9 options:1 error:&v18];
  v12 = v18;

  if ((v11 & 1) == 0)
  {
    v13 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(JSONSerializable) *)v12 JSONObjectRepresentationWritingResourcesToBundlePath:v9, v13];
    }
  }

  v14 = MEMORY[0x277CCABB0];
  [(UIImage *)self scale];
  v15 = [v14 numberWithDouble:?];
  [v5 setObject:v15 forKeyedSubscript:@"scale"];

  v16 = [objc_opt_class() _numberForRenderingMode:{-[UIImage renderingMode](self, "renderingMode")}];
  [v5 setObject:v16 forKeyedSubscript:@"renderingMode"];

  return v5;
}

+ (uint64_t)_numberForRenderingMode:()JSONSerializable
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 1;
  }

  return [MEMORY[0x277CCABB0] numberWithInt:v3];
}

+ (uint64_t)_renderingModeForNumber:()JSONSerializable
{
  intValue = [a3 intValue];
  if (intValue == 2)
  {
    return 2;
  }

  else
  {
    return intValue == 1;
  }
}

- (void)JSONObjectRepresentationWritingResourcesToBundlePath:()JSONSerializable .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Error %@: failed to write CLKImageProvider onePieceImage to disk. Path: %@", &v3, 0x16u);
}

@end