@interface RAPUserInfoPart
- (RAPUserInfoPart)init;
@end

@implementation RAPUserInfoPart

- (RAPUserInfoPart)init
{
  v6.receiver = self;
  v6.super_class = RAPUserInfoPart;
  v2 = [(RAPTablePart *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RAPUserInfoSection);
    v7 = v3;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
    [(RAPTablePart *)v2 setSections:v4];
  }

  return v2;
}

@end