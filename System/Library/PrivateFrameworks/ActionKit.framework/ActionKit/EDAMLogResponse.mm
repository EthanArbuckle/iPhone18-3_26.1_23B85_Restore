@interface EDAMLogResponse
+ (id)structFields;
@end

@implementation EDAMLogResponse

+ (id)structFields
{
  v2 = structFields_structFields_2068;
  if (!structFields_structFields_2068)
  {
    v2 = MEMORY[0x277CBEBF8];
    structFields_structFields_2068 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

@end