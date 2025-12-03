@interface BKProtectionInfo
+ (id)newEmptyProtectionInfo:(id)info;
@end

@implementation BKProtectionInfo

+ (id)newEmptyProtectionInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy newByClass:objc_opt_class()];

  return v4;
}

@end