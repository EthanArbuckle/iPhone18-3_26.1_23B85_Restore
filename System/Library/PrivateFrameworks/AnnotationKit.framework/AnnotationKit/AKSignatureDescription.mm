@interface AKSignatureDescription
+ (id)stringValueForSignatureDescriptionTag:(int64_t)a3;
+ (int64_t)signatureDescriptionTagFromStringValue:(id)a3;
@end

@implementation AKSignatureDescription

+ (id)stringValueForSignatureDescriptionTag:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_278C7B4A8[a3 - 1];
    v4 = +[AKController akBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_28519E870 table:@"AKSignatureDescription"];
  }

  return v5;
}

+ (int64_t)signatureDescriptionTagFromStringValue:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if (v6 && [v6 length])
  {
    v7 = +[AKController akBundle];
    v8 = [v7 localizedStringForKey:@"Full Name" value:&stru_28519E870 table:@"AKSignatureDescription"];
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v12 = +[AKController akBundle];
      v13 = [v12 localizedStringForKey:@"Given Name" value:&stru_28519E870 table:@"AKSignatureDescription"];
      v14 = [v6 isEqualToString:v13];

      if (v14)
      {
        v10 = 2;
      }

      else
      {
        v15 = +[AKController akBundle];
        v16 = [v15 localizedStringForKey:@"Family Name" value:&stru_28519E870 table:@"AKSignatureDescription"];
        v17 = [v6 isEqualToString:v16];

        if (v17)
        {
          v10 = 3;
        }

        else
        {
          v18 = +[AKController akBundle];
          v19 = [v18 localizedStringForKey:@"Nickname" value:&stru_28519E870 table:@"AKSignatureDescription"];
          v20 = [v6 isEqualToString:v19];

          if (v20)
          {
            v10 = 4;
          }

          else
          {
            v21 = +[AKController akBundle];
            v22 = [v21 localizedStringForKey:@"Initials" value:&stru_28519E870 table:@"AKSignatureDescription"];
            v23 = [v6 isEqualToString:v22];

            if (v23)
            {
              v10 = 5;
            }

            else
            {
              v10 = -1;
            }
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end