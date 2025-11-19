@interface BKProtectionInfo
+ (id)newEmptyProtectionInfo:(id)a3;
@end

@implementation BKProtectionInfo

+ (id)newEmptyProtectionInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 newByClass:objc_opt_class()];

  return v4;
}

@end