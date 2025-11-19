@interface EDAMResource
+ (id)structFields;
@end

@implementation EDAMResource

+ (id)structFields
{
  v19[12] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1446;
  if (!structFields_structFields_1446)
  {
    v18 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"guid"];
    v19[0] = v18;
    v17 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"noteGuid"];
    v19[1] = v17;
    v3 = [FATField fieldWithIndex:3 type:12 optional:1 name:@"data" structClass:objc_opt_class()];
    v19[2] = v3;
    v4 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"mime"];
    v19[3] = v4;
    v5 = [FATField fieldWithIndex:5 type:6 optional:1 name:@"width"];
    v19[4] = v5;
    v6 = [FATField fieldWithIndex:6 type:6 optional:1 name:@"height"];
    v19[5] = v6;
    v7 = [FATField fieldWithIndex:7 type:6 optional:1 name:@"duration"];
    v19[6] = v7;
    v8 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"active"];
    v19[7] = v8;
    v9 = [FATField fieldWithIndex:9 type:12 optional:1 name:@"recognition" structClass:objc_opt_class()];
    v19[8] = v9;
    v10 = [FATField fieldWithIndex:11 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v19[9] = v10;
    v11 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"updateSequenceNum"];
    v19[10] = v11;
    v12 = [FATField fieldWithIndex:13 type:12 optional:1 name:@"alternateData" structClass:objc_opt_class()];
    v19[11] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:12];
    v14 = structFields_structFields_1446;
    structFields_structFields_1446 = v13;

    v2 = structFields_structFields_1446;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end