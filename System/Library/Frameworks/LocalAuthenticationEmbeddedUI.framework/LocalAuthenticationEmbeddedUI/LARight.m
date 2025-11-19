@interface LARight
- (id)_authOptionsWithLocalizedReason:(void *)a3 presentationContext:;
@end

@implementation LARight

- (id)_authOptionsWithLocalizedReason:(void *)a3 presentationContext:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F30]];
    v8 = v7;
    v9 = &stru_284B7B4C0;
    if (v5)
    {
      v9 = v5;
    }

    v14 = v7;
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    a1 = [v10 mutableCopy];

    if (v6)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FB0]];
      [a1 setObject:v6 forKeyedSubscript:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return a1;
}

@end