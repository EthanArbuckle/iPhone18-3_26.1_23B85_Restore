@interface AMSUIParentalVerificationCore
+ (BOOL)_isCardOnFileOnStack:(id)a3;
+ (id)_allowedAccountParameters:(id)a3;
+ (id)_minimumAgeFrom:(id)a3;
+ (id)_tokenFromObject:(id)a3;
+ (id)_tokenResultFromTokenString:(id)a3;
@end

@implementation AMSUIParentalVerificationCore

+ (id)_tokenFromObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && ![v6 integerValue])
    {
      v8 = [v4 objectForKeyedSubscript:@"paymentToken"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v9 = v7;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_tokenResultFromTokenString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [[AMSPaymentVerificationTokenResult alloc] initWithTokenData:v3];

  return v4;
}

+ (BOOL)_isCardOnFileOnStack:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && ![v6 integerValue])
    {
      v8 = [v4 objectForKeyedSubscript:@"aurumOnStack"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v7 = [v9 BOOLValue];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_allowedAccountParameters:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AMSUIParentalVerificationCore__allowedAccountParameters___block_invoke;
  v5[3] = &unk_1E7F25528;
  v6 = &unk_1F394ABA8;
  v3 = [a3 ams_filterUsingTest:v5];

  return v3;
}

+ (id)_minimumAgeFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"adultMinimumAge"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"adultMinimumAge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8 && (v9 = [v8 integerValue], v9 >= 1))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end