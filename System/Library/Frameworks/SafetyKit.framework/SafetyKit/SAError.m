@interface SAError
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6;
@end

@implementation SAError

+ (id)errorWithCode:(int64_t)a3
{
  if (a3 < 4096)
  {
    if ((a3 - 1) > 3)
    {
      v5 = 0;
    }

    else
    {
      v6 = off_278B67D40[a3 - 1];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v7 localizedStringForKey:v6 value:&stru_284DA6B88 table:0];
    }
  }

  else if (((a3 == 4096) & os_variant_has_internal_content()) != 0)
  {
    v5 = @"Place holder for future private errors";
  }

  else
  {
    v5 = 0;
  }

  switch(a3)
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
  v11 = [a1 errorWithCode:a3 description:v5 recoverySuggestion:v10];

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v13 = v12;
  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:SAErrorDomain code:a3 userInfo:v13];

  return v14;
}

@end