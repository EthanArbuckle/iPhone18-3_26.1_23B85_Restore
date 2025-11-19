@interface EDAMResourceAttributes
+ (id)structFields;
@end

@implementation EDAMResourceAttributes

+ (id)structFields
{
  v19[12] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1339;
  if (!structFields_structFields_1339)
  {
    v18 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"sourceURL"];
    v19[0] = v18;
    v17 = [FATField fieldWithIndex:2 type:10 optional:1 name:@"timestamp"];
    v19[1] = v17;
    v16 = [FATField fieldWithIndex:3 type:4 optional:1 name:@"latitude"];
    v19[2] = v16;
    v3 = [FATField fieldWithIndex:4 type:4 optional:1 name:@"longitude"];
    v19[3] = v3;
    v4 = [FATField fieldWithIndex:5 type:4 optional:1 name:@"altitude"];
    v19[4] = v4;
    v5 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"cameraMake"];
    v19[5] = v5;
    v6 = [FATField fieldWithIndex:7 type:11 optional:1 name:@"cameraModel"];
    v19[6] = v6;
    v7 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"clientWillIndex"];
    v19[7] = v7;
    v8 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"recoType"];
    v19[8] = v8;
    v9 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"fileName"];
    v19[9] = v9;
    v10 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"attachment"];
    v19[10] = v10;
    v11 = [FATField fieldWithIndex:12 type:12 optional:1 name:@"applicationData" structClass:objc_opt_class()];
    v19[11] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:12];
    v13 = structFields_structFields_1339;
    structFields_structFields_1339 = v12;

    v2 = structFields_structFields_1339;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end