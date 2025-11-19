@interface LAPasscodeRecoveryErrorBuilder
+ (id)redactError:(id)a3;
@end

@implementation LAPasscodeRecoveryErrorBuilder

+ (id)redactError:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = [v4 domain];
  v7 = [v6 isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeRecoveryErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_15;
  }

  v9 = [v5 domain];
  v10 = [v9 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if ((v10 & 1) == 0)
  {
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v22;
    v16 = &v21;
LABEL_10:
    v11 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v12 = a1;
    v13 = 3;
    goto LABEL_14;
  }

  if (![v5 code])
  {
    v11 = [v5 userInfo];
    v12 = a1;
    v13 = 0;
    goto LABEL_14;
  }

  if ([v5 code] != 1)
  {
    if ([v5 code] == 3)
    {
      v11 = [v5 userInfo];
      v12 = a1;
      v13 = 2;
      goto LABEL_14;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v20 = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v20;
    v16 = &v19;
    goto LABEL_10;
  }

  v11 = [v5 userInfo];
  v12 = a1;
  v13 = 1;
LABEL_14:
  v8 = [v12 _errorWithCode:v13 userInfo:v11];

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end