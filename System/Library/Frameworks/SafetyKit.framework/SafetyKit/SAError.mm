@interface SAError
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error;
@end

@implementation SAError

+ (id)errorWithCode:(int64_t)code
{
  if (code < 4096)
  {
    if ((code - 1) > 3)
    {
      v5 = 0;
    }

    else
    {
      v6 = off_278B67D40[code - 1];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v7 localizedStringForKey:v6 value:&stru_284DA6B88 table:0];
    }
  }

  else if (((code == 4096) & os_variant_has_internal_content()) != 0)
  {
    v5 = @"Place holder for future private errors";
  }

  else
  {
    v5 = 0;
  }

  switch(code)
  {
    case 1:
      v8 = @"SAErrorNotAuthorizedRecovery";
      goto LABEL_14;
    case 4:
      v8 = @"SAErrorOperationFailed";
      goto LABEL_14;
    case 2:
      v8 = @"SAErrorNotAvailableRecovery";
LABEL_14:
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:v8 value:&stru_284DA6B88 table:0];

      goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  v11 = [self errorWithCode:code description:v5 recoverySuggestion:v10];

  return v11;
}

+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error
{
  descriptionCopy = description;
  suggestionCopy = suggestion;
  errorCopy = error;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v13 = v12;
  if (descriptionCopy)
  {
    [v12 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (suggestionCopy)
  {
    [v13 setObject:suggestionCopy forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:SAErrorDomain code:code userInfo:v13];

  return v14;
}

@end