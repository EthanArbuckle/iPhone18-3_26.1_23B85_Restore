@interface EDAMTimeZone
+ (id)structFields;
@end

@implementation EDAMTimeZone

+ (id)structFields
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1332;
  if (!structFields_structFields_1332)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"id"];
    v13[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"displayName"];
    v13[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"rawUTCOffsetMillis"];
    v13[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:8 optional:1 name:@"dstSavingsAdjustmentMillis"];
    v13[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:10 optional:1 name:@"nextEnterDaylightSavings"];
    v13[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:10 optional:1 name:@"nextLeaveDaylightSavings"];
    v13[5] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
    v10 = structFields_structFields_1332;
    structFields_structFields_1332 = v9;

    v2 = structFields_structFields_1332;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

@end