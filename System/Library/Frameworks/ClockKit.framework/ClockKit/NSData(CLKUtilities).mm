@interface NSData(CLKUtilities)
+ (id)dataWithJSONObjectRepresentation:()CLKUtilities bundle:;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:()CLKUtilities;
- (id)clk_hexEncodedString;
@end

@implementation NSData(CLKUtilities)

+ (id)dataWithJSONObjectRepresentation:()CLKUtilities bundle:
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v6}];
  }

  v8 = [v6 objectForKeyedSubscript:@"file name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"file name", v8}];
  }

  v9 = [v7 bundlePath];
  v10 = [v9 stringByAppendingPathComponent:v8];

  v11 = [a1 dataWithContentsOfFile:v10];

  return v11;
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:()CLKUtilities
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v6 UUIDString];
  v8 = [v7 stringByAppendingPathExtension:@"sui"];

  [v5 setObject:v8 forKeyedSubscript:@"file name"];
  v9 = [v4 stringByAppendingPathComponent:v8];

  v13 = 0;
  LOBYTE(v4) = [a1 writeToFile:v9 options:1 error:&v13];
  v10 = v13;
  if ((v4 & 1) == 0)
  {
    v11 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSData(CLKUtilities) *)v10 JSONObjectRepresentationWritingResourcesToBundlePath:v9, v11];
    }
  }

  return v5;
}

- (id)clk_hexEncodedString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(a1, "length")}];
  v3 = [a1 bytes];
  if ([a1 length])
  {
    v4 = 0;
    do
    {
      [v2 appendFormat:@"%02x", *(v3 + v4++)];
    }

    while (v4 < [a1 length]);
  }

  v5 = [v2 copy];

  return v5;
}

- (void)JSONObjectRepresentationWritingResourcesToBundlePath:()CLKUtilities .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Error %@: failed to write SwiftUI data to disk. Path: %@", &v3, 0x16u);
}

@end