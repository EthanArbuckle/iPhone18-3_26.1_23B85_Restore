@interface LAPasscodeChangeServiceOptions
- (LAPasscodeChangeServiceOptions)init;
- (id)description;
@end

@implementation LAPasscodeChangeServiceOptions

- (LAPasscodeChangeServiceOptions)init
{
  v3.receiver = self;
  v3.super_class = LAPasscodeChangeServiceOptions;
  result = [(LAPasscodeChangeServiceOptions *)&v3 init];
  if (result)
  {
    result->_skipSuccessNotification = 1;
  }

  return result;
}

- (id)description
{
  v21[6] = *MEMORY[0x277D85DE8];
  v19 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v20[0] = @"title";
  title = [(LAPasscodeChangeServiceOptions *)self title];
  v4 = title;
  if (!title)
  {
    title = [MEMORY[0x277CBEB68] null];
  }

  v17 = title;
  v21[0] = title;
  v20[1] = @"passcodePrompt";
  passcodePrompt = [(LAPasscodeChangeServiceOptions *)self passcodePrompt];
  null = passcodePrompt;
  if (!passcodePrompt)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v21[1] = null;
  v20[2] = @"calloutURL";
  calloutURL = [(LAPasscodeChangeServiceOptions *)self calloutURL];
  null2 = calloutURL;
  if (!calloutURL)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v21[2] = null2;
  v20[3] = @"calloutReason";
  calloutReason = [(LAPasscodeChangeServiceOptions *)self calloutReason];
  null3 = calloutReason;
  if (!calloutReason)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v21[3] = null3;
  v20[4] = @"skipSuccessNotification";
  if ([(LAPasscodeChangeServiceOptions *)self skipSuccessNotification])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v21[4] = v11;
  v20[5] = @"hidePasscodeRecoveryMessage";
  if ([(LAPasscodeChangeServiceOptions *)self hidePasscodeRecoveryMessage])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v21[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v14 = [v19 stringWithFormat:@"<%@ %p %@>", v18, self, v13];;

  if (!calloutReason)
  {
  }

  if (!calloutURL)
  {
  }

  if (!passcodePrompt)
  {
  }

  if (!v4)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end