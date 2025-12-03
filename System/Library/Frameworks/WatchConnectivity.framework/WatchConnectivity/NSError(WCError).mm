@interface NSError(WCError)
+ (id)userInfoDictionaryWithErrorStringsForErrorCode:()WCError;
+ (id)wcErrorFromInternalError:()WCError;
+ (id)wcErrorFromReceivedCode:()WCError;
+ (id)wcErrorWithCode:()WCError underlyingError:;
+ (id)wcErrorWithCode:()WCError underlyingWCErrorWithCode:;
+ (id)wcErrorWithCode:()WCError userInfo:;
@end

@implementation NSError(WCError)

+ (id)wcErrorWithCode:()WCError userInfo:
{
  v6 = a4;
  v7 = [self userInfoDictionaryWithErrorStringsForErrorCode:a3];
  [v7 addEntriesFromDictionary:v6];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WCErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)wcErrorFromReceivedCode:()WCError
{
  if (a3 == 7010)
  {
    v5 = 7014;
    v3 = 7010;
  }

  else
  {
    v3 = a3;
    if (a3 == 7014)
    {
      v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7014];
      goto LABEL_7;
    }

    v5 = 7011;
  }

  v4 = [MEMORY[0x277CCA9B8] wcErrorWithCode:v5 underlyingWCErrorWithCode:v3];
LABEL_7:

  return v4;
}

+ (id)wcErrorWithCode:()WCError underlyingError:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA7E8];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self wcErrorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)wcErrorWithCode:()WCError underlyingWCErrorWithCode:
{
  v6 = [self wcErrorWithCode:a4];
  v7 = [self wcErrorWithCode:a3 underlyingError:v6];

  return v7;
}

+ (id)wcErrorFromInternalError:()WCError
{
  v3 = a3;
  domain = [v3 domain];
  v5 = [domain isEqual:@"WCInternalErrorDomain"];

  v6 = v3;
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    if (([v3 code] - 7501) <= 1)
    {
      v6 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7001 underlyingError:v3];
    }
  }

  return v6;
}

+ (id)userInfoDictionaryWithErrorStringsForErrorCode:()WCError
{
  if (userInfoDictionaryWithErrorStringsForErrorCode__onceToken != -1)
  {
    +[NSError(WCError) userInfoDictionaryWithErrorStringsForErrorCode:];
  }

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Err%d", a3];
  v6 = [userInfoDictionaryWithErrorStringsForErrorCode__bundle localizedStringForKey:v5 value:&stru_284DF9400 table:0];
  if ([v6 length])
  {
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-C", v5];
  v8 = [userInfoDictionaryWithErrorStringsForErrorCode__bundle localizedStringForKey:v7 value:&stru_284DF9400 table:0];
  if ([v8 length])
  {
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-R", v5];
  v10 = [userInfoDictionaryWithErrorStringsForErrorCode__bundle localizedStringForKey:v9 value:&stru_284DF9400 table:0];
  if ([v10 length])
  {
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  return v4;
}

@end