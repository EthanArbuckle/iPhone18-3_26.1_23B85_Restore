@interface LAPasscodeChangeErrorBuilder
+ (id)genericErrorWithDebugDescription:(id)a3;
+ (id)redactError:(id)a3;
@end

@implementation LAPasscodeChangeErrorBuilder

+ (id)redactError:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [v4 domain];
  v7 = [v6 isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeChangeErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_11;
  }

  v9 = [v5 domain];
  v10 = [v9 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if (v10)
  {
    if (![v5 code])
    {
      v14 = [v5 userInfo];
      v15 = a1;
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

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = a1;
  v16 = 1;
LABEL_10:
  v8 = [v15 _errorWithCode:v16 userInfo:v14];

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)genericErrorWithDebugDescription:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 _errorWithCode:1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end