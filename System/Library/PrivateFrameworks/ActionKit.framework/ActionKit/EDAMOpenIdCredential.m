@interface EDAMOpenIdCredential
+ (id)structFields;
@end

@implementation EDAMOpenIdCredential

+ (id)structFields
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_6791;
  if (!structFields_structFields_6791)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"tokenPayload"];
    v9[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:8 optional:0 name:@"serviceProvider"];
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = structFields_structFields_6791;
    structFields_structFields_6791 = v5;

    v2 = structFields_structFields_6791;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

@end