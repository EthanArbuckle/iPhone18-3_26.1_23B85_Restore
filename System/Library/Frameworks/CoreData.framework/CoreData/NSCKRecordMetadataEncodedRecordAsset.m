@interface NSCKRecordMetadataEncodedRecordAsset
+ (NSString)entityPath;
@end

@implementation NSCKRecordMetadataEncodedRecordAsset

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

@end