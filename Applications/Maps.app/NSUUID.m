@interface NSUUID
+ (BOOL)isValidUUIDString:(id)a3;
@end

@implementation NSUUID

+ (BOOL)isValidUUIDString:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:v3];

  return v4 != 0;
}

@end