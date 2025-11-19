@interface EDAMNoteLockStatus
+ (id)structFields;
@end

@implementation EDAMNoteLockStatus

+ (id)structFields
{
  v17[7] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1473;
  if (!structFields_structFields_1473)
  {
    v16 = [FATField fieldWithIndex:1 type:8 optional:0 name:@"noteUpdateSequenceNumber"];
    v17[0] = v16;
    v3 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"lockHolderUserId"];
    v17[1] = v3;
    v4 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"lockRenewBy"];
    v17[2] = v4;
    v5 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v6 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"viewingUserIds" valueField:v5];
    v17[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"viewIdleExpiration"];
    v17[4] = v7;
    v8 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:6 type:13 optional:1 name:@"unknownUsers" keyField:v8 valueField:v9];
    v17[5] = v10;
    v11 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"currentTime"];
    v17[6] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:7];
    v13 = structFields_structFields_1473;
    structFields_structFields_1473 = v12;

    v2 = structFields_structFields_1473;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end