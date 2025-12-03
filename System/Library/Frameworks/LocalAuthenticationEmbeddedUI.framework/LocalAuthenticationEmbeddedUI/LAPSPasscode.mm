@interface LAPSPasscode
+ (id)emptyPasscode;
- (BOOL)isEqual:(id)equal;
- (LAPSPasscode)initWithLocalizedPasscode:(id)passcode type:(id)type;
- (LAPSPasscode)initWithPasscode:(id)passcode;
- (LAPSPasscode)initWithPasscode:(id)passcode type:(id)type;
- (id)externalizePasscode;
- (void)externalizePasscode;
@end

@implementation LAPSPasscode

- (LAPSPasscode)initWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [LAPSPasscodeType typeAllowingString:passcodeCopy];
  v6 = [(LAPSPasscode *)self initWithPasscode:passcodeCopy type:v5];

  return v6;
}

- (LAPSPasscode)initWithLocalizedPasscode:(id)passcode type:(id)type
{
  passcodeCopy = passcode;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__LAPSPasscode_initWithLocalizedPasscode_type___block_invoke;
  v12[3] = &unk_278A65B10;
  v13 = passcodeCopy;
  v7 = passcodeCopy;
  typeCopy = type;
  v9 = __47__LAPSPasscode_initWithLocalizedPasscode_type___block_invoke(v12);
  v10 = [(LAPSPasscode *)self initWithPasscode:v9 type:typeCopy];

  return v10;
}

id __47__LAPSPasscode_initWithLocalizedPasscode_type___block_invoke(uint64_t a1)
{
  v2 = [LAPSPasscodeType typeAllowingString:*(a1 + 32)];
  v3 = +[LAPSPasscodeType alphanumericType];
  v4 = [v2 isEqual:v3];

  v5 = *(a1 + 32);
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v6 stringByTrimmingCharactersInSet:v8];
    v10 = [v9 length];

    if (v10)
    {
      v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Numeric passcode contains non-numeric characters" userInfo:0];
      objc_exception_throw(v20);
    }

    if (LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_onceToken != -1)
    {
      __47__LAPSPasscode_initWithLocalizedPasscode_type___block_invoke_cold_1();
    }

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v6 length])
    {
      v11 = 0;
      do
      {
        v12 = LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt;
        v13 = [v6 substringWithRange:{v11, 1}];
        v14 = [v12 numberFromString:v13];

        v15 = LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt;
        v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
        [v15 setLocale:v16];

        v17 = [LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt stringFromNumber:v14];
        [v7 appendString:v17];

        ++v11;
      }

      while (v11 < [v6 length]);
    }

    v18 = [v7 length];
    if (v18 != [v6 length])
    {
      __47__LAPSPasscode_initWithLocalizedPasscode_type___block_invoke_cold_2();
    }
  }

  return v7;
}

+ (id)emptyPasscode
{
  v2 = [self alloc];
  v3 = +[LAPSPasscodeType noneType];
  v4 = [v2 initWithPasscode:&stru_284B7B4C0 type:v3];

  return v4;
}

- (LAPSPasscode)initWithPasscode:(id)passcode type:(id)type
{
  passcodeCopy = passcode;
  typeCopy = type;
  if (([typeCopy allowsString:passcodeCopy] & 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode type %@, does not allow string", typeCopy];
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v12);
  }

  v13.receiver = self;
  v13.super_class = LAPSPasscode;
  v8 = [(LAPSPasscode *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (passcodeCopy)
    {
      v10 = passcodeCopy;
    }

    else
    {
      v10 = &stru_284B7B4C0;
    }

    objc_storeStrong(&v8->_passcode, v10);
    objc_storeStrong(&v9->_type, type);
  }

  return v9;
}

- (id)externalizePasscode
{
  v3 = objc_alloc_init(MEMORY[0x277CD4790]);
  data = [(LAPSPasscode *)self data];
  v5 = [v3 setCredential:data type:-9];

  if (v5)
  {
    data2 = [(LAPSPasscode *)self data];
    v14 = 0;
    v7 = [v3 setCredential:data2 type:-1 error:&v14];
    v8 = v14;

    if (v7)
    {
      goto LABEL_3;
    }

    v10 = LACLogPasscodeService();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LAPSPasscode *)v8 externalizePasscode];
    }

    if ([MEMORY[0x277D24060] error:v8 hasCode:*MEMORY[0x277D23E80]] && (objc_msgSend(MEMORY[0x277D24068], "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "featureFlagPasscodeServicesProtectionEnabled"), v11, (v12 & 1) == 0))
    {
LABEL_3:
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    passcode = [(LAPSPasscode *)self passcode];
    passcode2 = [v5 passcode];
    v8 = [passcode isEqualToString:passcode2];

    if (v8)
    {
      type = [(LAPSPasscode *)self type];
      type2 = [v5 type];
      v11 = [type isEqual:type2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)externalizePasscode
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "Could not authenticate using credential %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end