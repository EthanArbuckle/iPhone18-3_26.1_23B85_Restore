@interface ENError
+ (id)connectionFailedError;
+ (id)errorFromException:(id)a3;
+ (id)localizedDescriptionForENErrorCode:(int64_t)a3;
+ (id)noteSizeLimitReachedError;
+ (int64_t)sanitizedErrorCodeFromEDAMErrorCode:(int)a3;
@end

@implementation ENError

+ (id)localizedDescriptionForENErrorCode:(int64_t)a3
{
  if ((a3 - 2) > 8)
  {
    return @"Unknown error";
  }

  else
  {
    return off_278C19160[a3 - 2];
  }
}

+ (int64_t)sanitizedErrorCodeFromEDAMErrorCode:(int)a3
{
  if ((a3 - 2) > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_23E24AC70[a3 - 2];
  }
}

+ (id)errorFromException:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v5 = MEMORY[0x277CBEB38];
  v6 = [v3 userInfo];
  v7 = [v5 dictionaryWithDictionary:v6];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 errorCode];
    v9 = [v8 intValue];

    v10 = [objc_opt_class() sanitizedErrorCodeFromEDAMErrorCode:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
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
    v18 = v4;
    v19 = [v18 rateLimitDuration];

    if (v19)
    {
      v20 = [v18 rateLimitDuration];
      [v7 setObject:v20 forKeyedSubscript:@"rateLimitDuration"];
    }

    v21 = [v18 message];

    if (v21)
    {
      v22 = [v18 message];
      [v7 setObject:v22 forKeyedSubscript:@"message"];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v4 identifier];
    [v7 setObject:v18 forKeyedSubscript:@"parameter"];
    v10 = 4;
LABEL_19:
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v4 parameter];
    if (v23)
    {
      [v7 setObject:v23 forKeyedSubscript:@"parameter"];
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