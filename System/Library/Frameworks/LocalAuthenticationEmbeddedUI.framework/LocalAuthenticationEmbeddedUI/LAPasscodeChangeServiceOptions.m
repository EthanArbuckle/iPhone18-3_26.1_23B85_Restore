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
  v3 = [(LAPasscodeChangeServiceOptions *)self title];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v17 = v3;
  v21[0] = v3;
  v20[1] = @"passcodePrompt";
  v5 = [(LAPasscodeChangeServiceOptions *)self passcodePrompt];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v21[1] = v6;
  v20[2] = @"calloutURL";
  v7 = [(LAPasscodeChangeServiceOptions *)self calloutURL];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v21[2] = v8;
  v20[3] = @"calloutReason";
  v9 = [(LAPasscodeChangeServiceOptions *)self calloutReason];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v21[3] = v10;
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

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v4)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end