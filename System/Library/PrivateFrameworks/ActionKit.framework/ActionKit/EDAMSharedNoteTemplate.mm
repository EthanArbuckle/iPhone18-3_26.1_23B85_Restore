@interface EDAMSharedNoteTemplate
+ (id)structFields;
@end

@implementation EDAMSharedNoteTemplate

+ (id)structFields
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1790;
  if (!structFields_structFields_1790)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"noteGuid"];
    v12[0] = v3;
    v4 = [FATField fieldWithIndex:4 type:10 optional:1 name:@"recipientThreadId"];
    v12[1] = v4;
    v5 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v6 = [FATField fieldWithIndex:2 type:15 optional:1 name:@"recipientContacts" valueField:v5];
    v12[2] = v6;
    v7 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"privilege"];
    v12[3] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    v9 = structFields_structFields_1790;
    structFields_structFields_1790 = v8;

    v2 = structFields_structFields_1790;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end