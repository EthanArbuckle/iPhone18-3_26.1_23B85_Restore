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
  title = [(LAPasscodeVerificationServiceOptions *)self title];
  null = title;
  if (!title)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = null;
  v15[1] = @"passcodePrompt";
  passcodePrompt = [(LAPasscodeVerificationServiceOptions *)self passcodePrompt];
  null2 = passcodePrompt;
  if (!passcodePrompt)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null2;
  v15[2] = @"dismissUIAfterCompletion";
  dismissUIAfterCompletion = [(LAPasscodeVerificationServiceOptions *)self dismissUIAfterCompletion];
  v10 = @"NO";
  if (dismissUIAfterCompletion)
  {
    v10 = @"YES";
  }

  v16[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v12 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v11];;

  if (!passcodePrompt)
  {
  }

  if (!title)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end