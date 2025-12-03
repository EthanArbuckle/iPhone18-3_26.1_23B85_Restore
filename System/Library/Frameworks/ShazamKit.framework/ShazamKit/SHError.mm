@interface SHError
+ (BOOL)annotateClientError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides;
+ (BOOL)remapErrorToClientErrorPointer:(id *)pointer;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides;
+ (id)messageForCode:(int64_t)code;
+ (id)normalizedError:(id)error;
+ (id)normalizedUserInfo:(id)info;
+ (id)privateErrorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)remapErrorToClientError:(id)error;
@end

@implementation SHError

+ (id)privateErrorWithCode:(int64_t)code underlyingError:(id)error
{
  v5 = MEMORY[0x277CBEB38];
  errorCopy = error;
  dictionary = [v5 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  if (code == 203)
  {
    v8 = *MEMORY[0x277CCA068];
    [dictionary setValue:@"The match attempt was cancelled" forKey:*MEMORY[0x277CCA068]];
  }

  else
  {
    if (code != 204)
    {
      goto LABEL_6;
    }

    v8 = *MEMORY[0x277CCA068];
  }

  [dictionary setValue:@"Matching cannot take place until a customer has acknowledged the privacy disclosure" forKey:v8];
LABEL_6:
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit" code:code userInfo:dictionary];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides
{
  v8 = MEMORY[0x277CBEB38];
  overridesCopy = overrides;
  errorCopy = error;
  dictionary = [v8 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  v12 = [self messageForCode:code];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [dictionary setValuesForKeysWithDictionary:overridesCopy];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit" code:code userInfo:dictionary];

  return v13;
}

+ (BOOL)annotateClientError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides
{
  v7 = [SHError errorWithCode:code underlyingError:underlyingError keyOverrides:overrides];
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return error != 0;
}

+ (id)messageForCode:(int64_t)code
{
  v3 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  v4 = @"There was an error syncing items to the library.";
  v5 = @"ShazamKit encountered an internal error.";
  v6 = @"Failed to fetch Media Item. Ensure shazamID is valid.";
  if (code != 600)
  {
    v6 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code != 500)
  {
    v5 = v6;
  }

  if (code != 400)
  {
    v4 = v5;
  }

  v7 = @"The Catalog URL is not a file path URL that points to a valid catalog.";
  if (code != 301)
  {
    v7 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code == 300)
  {
    v7 = @"The Custom Catalog is invalid.";
  }

  if (code <= 399)
  {
    v4 = v7;
  }

  v8 = @"The provided signature duration is outside the valid range.";
  v9 = @"The match attempt failed.";
  if (code != 202)
  {
    v9 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code != 201)
  {
    v8 = v9;
  }

  if (code == 200)
  {
    v3 = @"The Signature was invalid (possibly no peaks). Ensure novel audio is playing.";
  }

  if (code == 100)
  {
    v3 = @"The supplied audio format is not supported. Please choose a supported audio format.";
  }

  if (code > 200)
  {
    v3 = v8;
  }

  if (code <= 299)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)normalizedError:(id)error
{
  if (error)
  {
    errorCopy = error;
    v4 = objc_opt_class();
    userInfo = [errorCopy userInfo];
    v6 = [v4 normalizedUserInfo:userInfo];

    v7 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v10 = [v7 errorWithDomain:domain code:code userInfo:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)normalizedUserInfo:(id)info
{
  v4 = MEMORY[0x277CBEB38];
  infoCopy = info;
  dictionary = [v4 dictionary];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __30__SHError_normalizedUserInfo___block_invoke;
  v13 = &unk_2788F7BE8;
  v14 = dictionary;
  selfCopy = self;
  v7 = dictionary;
  [infoCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __30__SHError_normalizedUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![MEMORY[0x277CCAC58] propertyList:v6 isValidForFormat:200])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([v5 isEqualToString:*MEMORY[0x277CCA7E8]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = *(a1 + 40);
        v8 = [objc_opt_class() normalizedError:v6];
      }

      else
      {
        if ([v5 isEqualToString:*MEMORY[0x277CCA578]])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = MEMORY[0x277CBEB18];
            v10 = v6;
            v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];
            v14 = MEMORY[0x277D85DD0];
            v15 = 3221225472;
            v16 = __30__SHError_normalizedUserInfo___block_invoke_2;
            v17 = &unk_2788F7BC0;
            v12 = *(a1 + 40);
            v18 = v11;
            v19 = v12;
            v13 = v11;
            [v10 enumerateObjectsUsingBlock:&v14];

            [*(a1 + 32) setObject:v13 forKeyedSubscript:{v5, v14, v15, v16, v17}];
LABEL_12:

            goto LABEL_13;
          }
        }

        v8 = [v6 description];
      }

      v13 = v8;
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
      goto LABEL_12;
    }
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
LABEL_13:
}

void __30__SHError_normalizedUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [objc_opt_class() normalizedError:v6];
    [v4 addObject:v5];
  }
}

+ (id)remapErrorToClientError:(id)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy sh_isPrivacyDisclosureAcknowledgementNeededError] || objc_msgSend(v4, "sh_isMatchAttemptCancelledError"))
    {
      goto LABEL_4;
    }

    if ([v4 sh_hasShazamKitPublicErrorDomain])
    {
      v6 = v4;
      goto LABEL_6;
    }

    if (![v4 sh_isShazamCoreError])
    {
      if ([v4 sh_isMediaLibraryError])
      {
        v5 = 400;
        goto LABEL_5;
      }

LABEL_4:
      v5 = 202;
LABEL_5:
      v6 = [SHError errorWithCode:v5 underlyingError:v4];
LABEL_6:
      v7 = v6;
      goto LABEL_8;
    }

    code = [v4 code];
    v11 = 202;
    if (code == 302)
    {
      v11 = 600;
    }

    if ((code - 400) < 2)
    {
      v11 = 500;
    }

    if ((code - 300) >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 300;
    }

    userInfo = [v4 userInfo];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v17 = *MEMORY[0x277CCA068];
    v15 = [MEMORY[0x277D54E10] messageForCode:code];
    v18[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v7 = [SHError errorWithCode:v12 underlyingError:v14 keyOverrides:v16];
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)remapErrorToClientErrorPointer:(id *)pointer
{
  if (pointer)
  {
    *pointer = [self remapErrorToClientError:*pointer];
  }

  return 1;
}

@end