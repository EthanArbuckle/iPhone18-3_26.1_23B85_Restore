@interface NSUUID
+ (id)asd_generateLogKey;
@end

@implementation NSUUID

+ (id)asd_generateLogKey
{
  uUID = [objc_opt_self() UUID];
  uUIDString = [uUID UUIDString];
  v2 = [uUIDString componentsSeparatedByString:@"-"];
  firstObject = [v2 firstObject];

  return firstObject;
}

@end