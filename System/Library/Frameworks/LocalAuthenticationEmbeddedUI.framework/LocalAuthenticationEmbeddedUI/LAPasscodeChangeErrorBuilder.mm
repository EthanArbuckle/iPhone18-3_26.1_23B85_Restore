@interface LAPasscodeChangeErrorBuilder
+ (id)genericErrorWithDebugDescription:(id)description;
+ (id)redactError:(id)error;
@end

@implementation LAPasscodeChangeErrorBuilder

+ (id)redactError:(id)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_11;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeChangeErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_11;
  }

  domain2 = [v5 domain];
  v10 = [domain2 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if (v10)
  {
    if (![v5 code])
    {
      userInfo = [v5 userInfo];
      selfCopy2 = self;
      v16 = 0;
      goto LABEL_10;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v20 = v5;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v20;
    v13 = &v19;
  }

  else
  {
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v5;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v22;
    v13 = &v21;
  }

  userInfo = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  selfCopy2 = self;
  v16 = 1;
LABEL_10:
  v8 = [selfCopy2 _errorWithCode:v16 userInfo:userInfo];

LABEL_11:
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

  v7 = [self _errorWithCode:1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end