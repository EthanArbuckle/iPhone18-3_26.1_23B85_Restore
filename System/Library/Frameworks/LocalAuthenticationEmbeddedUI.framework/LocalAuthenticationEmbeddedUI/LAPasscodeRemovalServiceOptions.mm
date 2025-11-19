@interface LAPasscodeRemovalServiceOptions
- (id)description;
@end

@implementation LAPasscodeRemovalServiceOptions

- (id)description
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v13[0] = @"title";
  v5 = [(LAPasscodeRemovalServiceOptions *)self title];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = @"passcodePrompt";
  v14[0] = v6;
  v7 = [(LAPasscodeRemovalServiceOptions *)self passcodePrompt];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end