@interface QLMediaItemTransformer
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLMediaItemTransformer

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE6650];
  lCopy = l;
  v7 = [v5 alloc];
  v12 = *MEMORY[0x277CE6260];
  v13[0] = &unk_284D72F70;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 initWithURL:lCopy options:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end