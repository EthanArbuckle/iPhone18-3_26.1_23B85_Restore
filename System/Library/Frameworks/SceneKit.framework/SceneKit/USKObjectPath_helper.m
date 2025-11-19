@interface USKObjectPath_helper
+ (id)objectPathWithString:(id)a3;
@end

@implementation USKObjectPath_helper

+ (id)objectPathWithString:(id)a3
{
  v3 = [[USKObjectPath_weak alloc] initWithString:a3];

  return v3;
}

@end