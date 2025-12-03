@interface USKData_helper
+ (id)dataWithDouble:(double)double;
+ (id)dataWithInt:(int)int;
+ (id)dataWithString:(id)string;
+ (id)dataWithToken:(id)token;
@end

@implementation USKData_helper

+ (id)dataWithToken:(id)token
{
  v3 = [[USKData_weak alloc] initWithToken:token];

  return v3;
}

+ (id)dataWithInt:(int)int
{
  v3 = [[USKData_weak alloc] initWithInt:*&int];

  return v3;
}

+ (id)dataWithDouble:(double)double
{
  v3 = [[USKData_weak alloc] initWithDouble:double];

  return v3;
}

+ (id)dataWithString:(id)string
{
  v3 = [[USKData_weak alloc] initWithString:string];

  return v3;
}

@end