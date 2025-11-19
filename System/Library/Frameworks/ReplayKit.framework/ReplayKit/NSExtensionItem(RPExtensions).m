@interface NSExtensionItem(RPExtensions)
+ (id)itemWithTitle:()RPExtensions attachmentItem:;
@end

@implementation NSExtensionItem(RPExtensions)

+ (id)itemWithTitle:()RPExtensions attachmentItem:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9D8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:0];

  [v8 setAttributedTitle:v9];
  v10 = objc_alloc(MEMORY[0x277CCAA88]);
  v11 = [v10 initWithItem:v6 typeIdentifier:*MEMORY[0x277CC2050]];

  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v8 setAttachments:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

@end