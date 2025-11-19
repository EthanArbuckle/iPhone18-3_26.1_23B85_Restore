@interface EDAMNoteCollectionCounts
+ (id)structFields;
@end

@implementation EDAMNoteCollectionCounts

+ (id)structFields
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_790;
  if (!structFields_structFields_790)
  {
    v3 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v4 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v5 = [FATField fieldWithIndex:1 type:13 optional:1 name:@"notebookCounts" keyField:v3 valueField:v4];
    v6 = [FATField fieldWithIndex:0 type:11 optional:1 name:0, v5];
    v7 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v8 = [FATField fieldWithIndex:2 type:13 optional:1 name:@"tagCounts" keyField:v6 valueField:v7];
    v14[1] = v8;
    v9 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"trashCount"];
    v14[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v11 = structFields_structFields_790;
    structFields_structFields_790 = v10;

    v2 = structFields_structFields_790;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end