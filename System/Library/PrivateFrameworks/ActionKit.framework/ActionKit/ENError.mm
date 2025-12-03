@interface ENError
+ (id)connectionFailedError;
+ (id)errorFromException:(id)exception;
+ (id)localizedDescriptionForENErrorCode:(int64_t)code;
+ (id)noteSizeLimitReachedError;
+ (int64_t)sanitizedErrorCodeFromEDAMErrorCode:(int)code;
@end

@implementation ENError

+ (id)localizedDescriptionForENErrorCode:(int64_t)code
{
  if ((code - 2) > 8)
  {
    return @"Unknown error";
  }

  else
  {
    return off_278C19160[code - 2];
  }
}

+ (int64_t)sanitizedErrorCodeFromEDAMErrorCode:(int)code
{
  if ((code - 2) > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_23E24AC70[code - 2];
  }
}

+ (id)errorFromException:(id)exception
{
  exceptionCopy = exception;
  v4 = exceptionCopy;
  if (!exceptionCopy)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v5 = MEMORY[0x277CBEB38];
  userInfo = [exceptionCopy userInfo];
  v7 = [v5 dictionaryWithDictionary:userInfo];

  if (objc_opt_respondsToSelector())
  {
    errorCode = [v4 errorCode];
    intValue = [errorCode intValue];

    v10 = [objc_opt_class() sanitizedErrorCodeFromEDAMErrorCode:intValue];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    [v7 setObject:v11 forKeyedSubscript:@"EDAMErrorCode"];

    v12 = *MEMORY[0x277CCA450];
    v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    if (v13)
    {
      goto LABEL_12;
    }

    v14 = [objc_opt_class() localizedDescriptionForENErrorCode:v10];
    [v7 setObject:v14 forKeyedSubscript:v12];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v4 description];
    v17 = [v16 length];

    if (v17)
    {
      v14 = [v4 description];
      [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA450]];
      v10 = 1;
LABEL_9:

      goto LABEL_12;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = v4;
    rateLimitDuration = [identifier rateLimitDuration];

    if (rateLimitDuration)
    {
      rateLimitDuration2 = [identifier rateLimitDuration];
      [v7 setObject:rateLimitDuration2 forKeyedSubscript:@"rateLimitDuration"];
    }

    message = [identifier message];

    if (message)
    {
      message2 = [identifier message];
      [v7 setObject:message2 forKeyedSubscript:@"message"];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [v4 identifier];
    [v7 setObject:identifier forKeyedSubscript:@"parameter"];
    v10 = 4;
LABEL_19:
  }

  if (objc_opt_respondsToSelector())
  {
    parameter = [v4 parameter];
    if (parameter)
    {
      [v7 setObject:parameter forKeyedSubscript:@"parameter"];
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ENErrorDomain" code:v10 userInfo:v7];

LABEL_25:

  return v15;
}

+ (id)noteSizeLimitReachedError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"Note exceeded size limit to upload.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"ENErrorDomain" code:6 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)connectionFailedError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"Connection failed to Evernote Service.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"ENErrorDomain" code:1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end