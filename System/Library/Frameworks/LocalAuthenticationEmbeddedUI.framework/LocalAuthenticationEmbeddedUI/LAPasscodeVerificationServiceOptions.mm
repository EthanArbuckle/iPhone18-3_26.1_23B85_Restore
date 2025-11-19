@interface LAPasscodeVerificationServiceOptions
- (id)description;
@end

@implementation LAPasscodeVerificationServiceOptions

- (id)description
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v15[0] = @"title";
  v5 = [(LAPasscodeVerificationServiceOptions *)self title];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = v6;
  v15[1] = @"passcodePrompt";
  v7 = [(LAPasscodeVerificationServiceOptions *)self passcodePrompt];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = v8;
  v15[2] = @"dismissUIAfterCompletion";
  v9 = [(LAPasscodeVerificationServiceOptions *)self dismissUIAfterCompletion];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v16[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v12 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v11];;

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end