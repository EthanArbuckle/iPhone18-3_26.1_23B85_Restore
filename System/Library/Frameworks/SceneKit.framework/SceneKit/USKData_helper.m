@interface USKData_helper
+ (id)dataWithDouble:(double)a3;
+ (id)dataWithInt:(int)a3;
+ (id)dataWithString:(id)a3;
+ (id)dataWithToken:(id)a3;
@end

@implementation USKData_helper

+ (id)dataWithToken:(id)a3
{
  v3 = [[USKData_weak alloc] initWithToken:a3];

  return v3;
}

+ (id)dataWithInt:(int)a3
{
  v3 = [[USKData_weak alloc] initWithInt:*&a3];

  return v3;
}

+ (id)dataWithDouble:(double)a3
{
  v3 = [[USKData_weak alloc] initWithDouble:a3];

  return v3;
}

+ (id)dataWithString:(id)a3
{
  v3 = [[USKData_weak alloc] initWithString:a3];

  return v3;
}

@end