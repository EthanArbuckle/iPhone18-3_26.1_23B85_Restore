@interface NSUUID
+ (id)asd_generateLogKey;
@end

@implementation NSUUID

+ (id)asd_generateLogKey
{
  v0 = [objc_opt_self() UUID];
  v1 = [v0 UUIDString];
  v2 = [v1 componentsSeparatedByString:@"-"];
  v3 = [v2 firstObject];

  return v3;
}

@end