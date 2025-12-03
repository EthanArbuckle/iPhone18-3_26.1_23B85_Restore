@interface NSArray(AssistantUIAdditions)
- (id)afui_arrayByMappingWithBlock:()AssistantUIAdditions;
@end

@implementation NSArray(AssistantUIAdditions)

- (id)afui_arrayByMappingWithBlock:()AssistantUIAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__NSArray_AssistantUIAdditions__afui_arrayByMappingWithBlock___block_invoke;
    v10[3] = &unk_278CD64E0;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [self enumerateObjectsUsingBlock:v10];
    v7 = v11;
    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end