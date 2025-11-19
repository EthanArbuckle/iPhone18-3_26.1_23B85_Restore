@interface LAPSErrorBuilder
+ (BOOL)checkError:(id)a3 hasCode:(int64_t)a4;
+ (BOOL)checkErrorIsInteractive:(id)a3;
+ (id)_errorWithCode:(int64_t)a3 debugDescription:(id)a4;
+ (id)genericErrorWithUnderlyingError:(id)a3;
+ (id)genericErrorWithUnderlyingError:(id)a3 debugDescription:(id)a4;
+ (id)invalidPasscodeError;
+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)a3;
+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)a3 backoffTimeout:(int64_t)a4;
+ (id)newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:(id)a3;
@end

@implementation LAPSErrorBuilder

+ (id)invalidPasscodeError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCA068];
  v8[0] = @"Invalid passcode";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [a1 errorWithCode:4 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CCA068];
  v9[1] = @"LAPSFailedAttemptsErrorKey";
  v10[0] = @"Invalid passcode";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [a1 errorWithCode:4 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)a3 backoffTimeout:(int64_t)a4
{
  v14[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA068];
  v14[0] = @"Invalid passcode";
  v13[0] = v6;
  v13[1] = @"LAPSFailedAttemptsErrorKey";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14[1] = v7;
  v13[2] = @"LAPSBackOffTimeoutErrorKey";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [a1 errorWithCode:4 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    +[LAPSErrorBuilder newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:];
  }

  v5 = v4;
  v6 = *MEMORY[0x277CCA450];
  v11[0] = *MEMORY[0x277CCA068];
  v11[1] = v6;
  v12[0] = @"Passcode does not meet requirements";
  v12[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [a1 errorWithCode:6 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)genericErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    +[LAPSErrorBuilder genericErrorWithUnderlyingError:];
  }

  v5 = v4;
  v10 = *MEMORY[0x277CCA7E8];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [a1 errorWithCode:9 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)genericErrorWithUnderlyingError:(id)a3 debugDescription:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA068];
  v14[0] = *MEMORY[0x277CCA7E8];
  v14[1] = v6;
  v15[0] = a3;
  v15[1] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = [a1 errorWithCode:9 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)checkError:(id)a3 hasCode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if (v7)
  {
    v8 = [v5 code] == a4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)checkErrorIsInteractive:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:@"LAPSInteractiveErrorKey"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_errorWithCode:(int64_t)a3 debugDescription:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA068];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.LocalAuthentication.LAPSErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end