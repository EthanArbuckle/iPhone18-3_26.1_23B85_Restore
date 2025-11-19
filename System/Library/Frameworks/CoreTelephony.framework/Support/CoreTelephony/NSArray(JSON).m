@interface NSArray(JSON)
+ (id)arrayWithJSONString:()JSON;
@end

@implementation NSArray(JSON)

+ (id)arrayWithJSONString:()JSON
{
  v0 = [MEMORY[0x277D82BB8] objectWithJSONString:?];
  v1 = [MEMORY[0x277CBEA60] typecast:v0];

  return v1;
}

@end