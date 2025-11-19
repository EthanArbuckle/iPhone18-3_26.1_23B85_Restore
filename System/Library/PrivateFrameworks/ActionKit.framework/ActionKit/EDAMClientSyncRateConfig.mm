@interface EDAMClientSyncRateConfig
+ (id)structFields;
@end

@implementation EDAMClientSyncRateConfig

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields;
  if (!structFields_structFields)
  {
    v3 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"syncStateIntervalMillis"];
    v4 = [FATField fieldWithIndex:2 type:10 optional:1 name:@"updateNoteWhenIdleForMillis", v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"updateNoteDuringEditIntervalMillis"];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields;
    structFields_structFields = v6;

    v2 = structFields_structFields;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end