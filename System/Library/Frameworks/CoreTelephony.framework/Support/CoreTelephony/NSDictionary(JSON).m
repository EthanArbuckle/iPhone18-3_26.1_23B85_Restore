@interface NSDictionary(JSON)
+ (id)dictionaryWithJSONString:()JSON;
@end

@implementation NSDictionary(JSON)

+ (id)dictionaryWithJSONString:()JSON
{
  v0 = [MEMORY[0x277D82BB8] objectWithJSONString:?];
  v1 = [MEMORY[0x277CBEAC0] typecast:v0];

  return v1;
}

@end