@interface EDAMAd
+ (id)structFields;
@end

@implementation EDAMAd

+ (id)structFields
{
  v20[13] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2016;
  if (!structFields_structFields_2016)
  {
    v19 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"id"];
    v20[0] = v19;
    v18 = [FATField fieldWithIndex:2 type:6 optional:1 name:@"width"];
    v20[1] = v18;
    v17 = [FATField fieldWithIndex:3 type:6 optional:1 name:@"height"];
    v20[2] = v17;
    v16 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"advertiserName"];
    v20[3] = v16;
    v3 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"imageUrl"];
    v20[4] = v3;
    v4 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"destinationUrl"];
    v20[5] = v4;
    v5 = [FATField fieldWithIndex:7 type:6 optional:1 name:@"displaySeconds"];
    v20[6] = v5;
    v6 = [FATField fieldWithIndex:8 type:4 optional:1 name:@"score"];
    v20[7] = v6;
    v7 = [FATField fieldWithIndex:9 type:16 optional:1 name:@"image"];
    v20[8] = v7;
    v8 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"imageMime"];
    v20[9] = v8;
    v9 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"html"];
    v20[10] = v9;
    v10 = [FATField fieldWithIndex:12 type:4 optional:1 name:@"displayFrequency"];
    v20[11] = v10;
    v11 = [FATField fieldWithIndex:13 type:2 optional:1 name:@"openInTrunk"];
    v20[12] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:13];
    v13 = structFields_structFields_2016;
    structFields_structFields_2016 = v12;

    v2 = structFields_structFields_2016;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end