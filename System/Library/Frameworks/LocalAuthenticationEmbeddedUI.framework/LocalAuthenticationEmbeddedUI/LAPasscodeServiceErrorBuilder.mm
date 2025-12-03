@interface LAPasscodeServiceErrorBuilder
+ (id)genericErrorWithDebugDescription:(id)description;
+ (id)redactError:(id)error;
@end

@implementation LAPasscodeServiceErrorBuilder

+ (id)redactError:(id)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_17;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeServiceErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_17;
  }

  domain2 = [v5 domain];
  v10 = [domain2 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if ((v10 & 1) == 0)
  {
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v22;
    v16 = &v21;
LABEL_10:
    userInfo = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    selfCopy5 = self;
    v13 = 4;
    goto LABEL_16;
  }

  if (![v5 code])
  {
    userInfo = [v5 userInfo];
    selfCopy5 = self;
    v13 = 0;
    goto LABEL_16;
  }

  if ([v5 code] != 1)
  {
    if ([v5 code] == 2)
    {
      userInfo = [v5 userInfo];
      selfCopy5 = self;
      v13 = 3;
      goto LABEL_16;
    }

    if ([v5 code] == 3)
    {
      userInfo = [v5 userInfo];
      selfCopy5 = self;
      v13 = 2;
      goto LABEL_16;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v20 = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v20;
    v16 = &v19;
    goto LABEL_10;
  }

  userInfo = [v5 userInfo];
  selfCopy5 = self;
  v13 = 1;
LABEL_16:
  v8 = [selfCopy5 _errorWithCode:v13 userInfo:userInfo];

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)genericErrorWithDebugDescription:(id)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = description;
  v4 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [self _errorWithCode:4 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end