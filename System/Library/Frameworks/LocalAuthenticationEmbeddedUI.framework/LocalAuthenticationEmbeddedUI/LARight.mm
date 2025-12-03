@interface LARight
- (id)_authOptionsWithLocalizedReason:(void *)reason presentationContext:;
@end

@implementation LARight

- (id)_authOptionsWithLocalizedReason:(void *)reason presentationContext:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  reasonCopy = reason;
  if (self)
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
    self = [v10 mutableCopy];

    if (reasonCopy)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FB0]];
      [self setObject:reasonCopy forKeyedSubscript:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return self;
}

@end