@interface USKObjectPath_helper
+ (id)objectPathWithString:(id)string;
@end

@implementation USKObjectPath_helper

+ (id)objectPathWithString:(id)string
{
  v3 = [[USKObjectPath_weak alloc] initWithString:string];

  return v3;
}

@end