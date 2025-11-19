@interface AMSPaymentSheetInlineImage
+ (id)textEncapsulationForServerValue:(id)a3;
- (AMSPaymentSheetInlineImage)initWithCoder:(id)a3;
- (AMSPaymentSheetInlineImage)initWithDictionary:(id)a3;
- (AMSPaymentSheetInlineImage)initWithURLString:(id)a3;
- (id)_imageAssetConfigurationForDictionary:(id)a3;
- (id)_symbolAssetConfigurationForDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_ratingTypeForType:(id)a3;
- (int64_t)_scaleForString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentSheetInlineImage

- (AMSPaymentSheetInlineImage)initWithURLString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    URLString = v5->_URLString;
    v5->_URLString = v6;

    v5->_imageType = 1;
  }

  return v5;
}

- (AMSPaymentSheetInlineImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    v5->_imageType = [(AMSPaymentSheetInlineImage *)v5 _ratingTypeForType:v6];
    v7 = [v6 uppercaseString];
    imageType = v5->_imageType;
    if (imageType <= 3)
    {
      if (imageType >= 3)
      {
        if (imageType == 3)
        {
          objc_storeStrong(&v5->_region, v7);
          goto LABEL_4;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      if ((imageType - 4) < 5)
      {
LABEL_4:
        v9 = [v4 objectForKeyedSubscript:@"value"];
        v10 = [v9 uppercaseString];
        v11 = [v10 copy];
        value = v5->_value;
        v5->_value = v11;

        v13 = [(AMSPaymentSheetInlineImage *)v5 _imageAssetConfigurationForDictionary:v4];
LABEL_5:
        localAssetConfiguration = v5->_localAssetConfiguration;
        v5->_localAssetConfiguration = v13;
LABEL_13:

        goto LABEL_14;
      }

      if (imageType != 9)
      {
        if (imageType == 10)
        {
          v13 = [(AMSPaymentSheetInlineImage *)v5 _symbolAssetConfigurationForDictionary:v4];
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    localAssetConfiguration = [v4 objectForKeyedSubscript:@"value"];
    v15 = [localAssetConfiguration uppercaseString];
    v16 = [v15 copy];
    v17 = v5->_value;
    v5->_value = v16;

    goto LABEL_13;
  }

LABEL_15:

  return v5;
}

+ (id)textEncapsulationForServerValue:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = @"TV-Y";
  if (([v3 isEqualToString:@"TV-Y"] & 1) == 0)
  {
    v4 = @"TV-Y7";
    if (([v3 isEqualToString:@"TV-Y7"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"FV"])
      {
        v4 = @"TV-Y7FV";
      }

      else
      {
        v4 = @"TV-14";
        if (([v3 isEqualToString:@"TV-14"] & 1) == 0)
        {
          v4 = @"TV-G";
          if (([v3 isEqualToString:@"TV-G"] & 1) == 0)
          {
            v4 = @"TV-PG";
            if (([v3 isEqualToString:@"TV-PG"] & 1) == 0)
            {
              v4 = @"TV-MA";
              if (([v3 isEqualToString:@"TV-MA"] & 1) == 0)
              {
                v4 = @"D";
                if (([v3 isEqualToString:@"D"] & 1) == 0)
                {
                  v4 = @"L";
                  if (([v3 isEqualToString:@"L"] & 1) == 0)
                  {
                    v4 = @"S";
                    if (([v3 isEqualToString:@"S"] & 1) == 0)
                    {
                      v4 = @"V";
                      if (([v3 isEqualToString:@"V"] & 1) == 0)
                      {
                        v5 = +[AMSLogConfig sharedConfig];
                        if (!v5)
                        {
                          v5 = +[AMSLogConfig sharedConfig];
                        }

                        v6 = [v5 OSLogObject];
                        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
                        {
                          v7 = objc_opt_class();
                          v8 = AMSLogKey();
                          v10 = 138543874;
                          v11 = v7;
                          v12 = 2114;
                          v13 = v8;
                          v14 = 2112;
                          v15 = v3;
                          _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Failed to find text encapsulation mapping for: %@", &v10, 0x20u);
                        }

                        v4 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)_imageAssetConfigurationForDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentSheetInlineImage *)self _defaultAssetType];
  v6 = [v4 objectForKeyedSubscript:@"value"];

  v7 = [v6 uppercaseString];

  v8 = [(AMSPaymentSheetInlineImage *)self imageType];
  v9 = 0;
  if (v8 <= 5)
  {
    if (v8 == 3)
    {
      v11 = [(AMSPaymentSheetInlineImage *)self region];
      v12 = [v11 isEqualToString:@"APPS-AUSTRALIA"];

      if (v12)
      {
        v13 = @"Australia";
      }

      else
      {
        v14 = [(AMSPaymentSheetInlineImage *)self region];
        v15 = [v14 isEqualToString:@"APPS-BRAZIL"];

        if (v15)
        {
          v13 = @"Brazil";
        }

        else
        {
          v16 = [(AMSPaymentSheetInlineImage *)self region];
          v17 = [v16 isEqualToString:@"APPS-FRANCE"];

          if (v17)
          {
            v13 = @"France";
          }

          else
          {
            v18 = [(AMSPaymentSheetInlineImage *)self region];
            v19 = [v18 isEqualToString:@"APPS-KOREA"];

            v13 = @"Korea";
            if (!v19)
            {
              v13 = 0;
            }
          }
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rating-%@_%@", v13, v7];
      if (v10)
      {
        goto LABEL_43;
      }

      goto LABEL_60;
    }

    if (v8 != 4)
    {
      if (v8 != 5)
      {
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"CLEAN"])
      {
        v10 = @"Rating-RIAA_Clean";
LABEL_43:
        v9 = [[AMSPaymentSheetImageAssetConfiguration alloc] initWithFilename:v10 size:v5 type:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"EXPLICIT"])
      {
        v10 = @"Rating-RIAA_Explicit";
        goto LABEL_43;
      }

      goto LABEL_60;
    }

    if ([v7 isEqualToString:@"G"])
    {
      v10 = @"Rating-MPAA_G";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"GP"])
    {
      goto LABEL_60;
    }

    if ([v7 isEqualToString:@"PG"])
    {
      v10 = @"Rating-MPAA_PG";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"PG-13"])
    {
      v10 = @"Rating-MPAA_PG13";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"M"])
    {
      goto LABEL_60;
    }

    if ([v7 isEqualToString:@"R"])
    {
      v10 = @"Rating-MPAA_R";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"NC-17"])
    {
      v10 = @"Rating-MPAA_NC17";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"UNRATED"])
    {
      v10 = @"Rating-MPAA_Unrated";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"NR"])
    {
      v10 = @"Rating-MPAA_NR";
      goto LABEL_43;
    }

    v22 = @"X";
LABEL_103:
    [v7 isEqualToString:v22];
    goto LABEL_60;
  }

  if (v8 == 6)
  {
    if ([v7 isEqualToString:@"G"])
    {
      v10 = @"Rating-Movie_NZ_G";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"PG"])
    {
      v10 = @"Rating-Movie_NZ_PG";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"M"])
    {
      v10 = @"Rating-Movie_NZ_M";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"R13"])
    {
      v10 = @"Rating-Movie_NZ_R13";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"R15"])
    {
      v10 = @"Rating-Movie_NZ_R15";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"R16"])
    {
      v10 = @"Rating-Movie_NZ_R16";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"R18"])
    {
      v10 = @"Rating-Movie_NZ_R18";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"RP13"])
    {
      v10 = @"Rating-Movie_NZ_RP13";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"RP16"])
    {
      v10 = @"Rating-Movie_NZ_RP16";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"R"])
    {
      v10 = @"Rating-Movie_NZ_R";
      goto LABEL_43;
    }

    v21 = @"NOT RATED";
LABEL_101:
    if ([v7 isEqualToString:v21])
    {
      goto LABEL_60;
    }

    v22 = @"UNRATED";
    goto LABEL_103;
  }

  if (v8 == 7)
  {
    if ([v7 isEqualToString:@"U"])
    {
      v10 = @"Rating-Movie_UK_U";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"UC"])
    {
      goto LABEL_60;
    }

    if ([v7 isEqualToString:@"PG"])
    {
      v10 = @"Rating-Movie_UK_PG";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"12"])
    {
      v10 = @"Rating-Movie_UK_12";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"12A"])
    {
      v10 = @"Rating-Movie_UK_12A";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"15"])
    {
      v10 = @"Rating-Movie_UK_15";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"18"])
    {
      v10 = @"Rating-Movie_UK_18";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"18R"])
    {
      v10 = @"Rating-Movie_UK_R18";
      goto LABEL_43;
    }

    if ([v7 isEqualToString:@"E"])
    {
      goto LABEL_60;
    }

    v21 = @"TBC";
    goto LABEL_101;
  }

  if (v8 != 8)
  {
    goto LABEL_44;
  }

  if ([v7 isEqualToString:@"TV-Y"])
  {
    v10 = @"Rating-TV_US_Y";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"TV-Y7"])
  {
    v10 = @"Rating-TV_US_Y7";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"FV"])
  {
    v10 = @"Rating-TV_US_Y7FV";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"TV-14"])
  {
    v10 = @"Rating-TV_US_14";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"TV-G"])
  {
    v10 = @"Rating-TV_US_G";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"TV-PG"])
  {
    v10 = @"Rating-TV_US_PG";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"TV-MA"])
  {
    v10 = @"Rating-TV_US_MA";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"D"])
  {
    v10 = @"Rating-TV_US_D";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"L"])
  {
    v10 = @"Rating-TV_US_L";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"S"])
  {
    v10 = @"Rating-TV_US_S";
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"V"])
  {
    v10 = @"Rating-TV_US_V";
    goto LABEL_43;
  }

LABEL_60:
  v9 = 0;
LABEL_44:

  return v9;
}

- (int64_t)_ratingTypeForType:(id)a3
{
  v3 = [a3 uppercaseString];
  if ([v3 isEqualToString:@"APPS-AUSTRALIA"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"APPS-FRANCE") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"APPS-KOREA") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"APPS-BRAZIL"))
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GAMES"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ITUNESGAMES") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ITUNES-GAMES"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NZ-OFLC"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"BBFC"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"MPAA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RIAA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TV-US"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"US-TV") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TV"))
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PAYMENTTYPE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYMBOL"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_scaleForString:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqualToString:@"small"] & 1) == 0)
  {
    if (([v4 isEqualToString:@"medium"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"large"])
      {
        v5 = 2;
        goto LABEL_28;
      }

      v6 = +[AMSUnitTests isRunningUnitTests];
      v7 = +[AMSLogConfig sharedPurchaseConfig];
      v8 = v7;
      if (v6)
      {
        if (!v7)
        {
          v8 = +[AMSLogConfig sharedConfig];
        }

        v9 = [v8 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = AMSLogKey();
          v11 = MEMORY[0x1E696AEC0];
          v12 = objc_opt_class();
          v13 = v12;
          if (v10)
          {
            self = AMSLogKey();
            [v11 stringWithFormat:@"%@: [%@] ", v13, self];
          }

          else
          {
            [v11 stringWithFormat:@"%@: ", v12];
          }
          v14 = ;
          v21 = AMSHashIfNeeded(v4);
          *buf = 138543618;
          v25 = v14;
          v26 = 2114;
          v27 = v21;
          _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected image scale: %{public}@", buf, 0x16u);
          if (v10)
          {

            v14 = self;
          }
        }

        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        v15 = +[AMSLogConfig sharedPurchaseConfig];
        [v8 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v15 userInfo:0];
      }

      else
      {
        if (!v7)
        {
          v8 = +[AMSLogConfig sharedConfig];
        }

        v15 = [v8 OSLogObject];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = AMSLogKey();
          v17 = MEMORY[0x1E696AEC0];
          v18 = objc_opt_class();
          v19 = v18;
          if (v16)
          {
            self = AMSLogKey();
            [v17 stringWithFormat:@"%@: [%@] ", v19, self];
          }

          else
          {
            [v17 stringWithFormat:@"%@: ", v18];
          }
          v20 = ;
          v22 = AMSHashIfNeeded(v4);
          *buf = 138543618;
          v25 = v20;
          v26 = 2114;
          v27 = v22;
          _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_FAULT, "%{public}@Unexpected image scale: %{public}@", buf, 0x16u);
          if (v16)
          {

            v20 = self;
          }
        }
      }
    }

    v5 = 1;
    goto LABEL_28;
  }

  v5 = 0;
LABEL_28:

  return v5;
}

- (id)_symbolAssetConfigurationForDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"accessibilityText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"scale"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(AMSPaymentSheetInlineImage *)self _scaleForString:v10];
  if (v8)
  {
    v12 = [[AMSPaymentSheetSymbolAssetConfiguration alloc] initWithName:v8 accessibilityText:v6 scale:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[AMSPaymentSheetInlineImage allocWithZone:](AMSPaymentSheetInlineImage init];
  v5->_imageType = [(AMSPaymentSheetInlineImage *)self imageType];
  v6 = [(AMSPaymentSheetInlineImage *)self URLString];
  v7 = [v6 copyWithZone:a3];
  URLString = v5->_URLString;
  v5->_URLString = v7;

  v9 = [(AMSPaymentSheetInlineImage *)self value];
  v10 = [v9 copyWithZone:a3];
  value = v5->_value;
  v5->_value = v10;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AMSPaymentSheetInlineImage imageType](self forKey:{"imageType"), @"imagetype"}];
  v5 = [(AMSPaymentSheetInlineImage *)self region];
  [v4 encodeObject:v5 forKey:@"region"];

  v6 = [(AMSPaymentSheetInlineImage *)self URLString];
  [v4 encodeObject:v6 forKey:@"URLString"];

  v7 = [(AMSPaymentSheetInlineImage *)self value];
  [v4 encodeObject:v7 forKey:@"value"];

  v8 = [(AMSPaymentSheetInlineImage *)self localAssetConfiguration];
  [v4 encodeObject:v8 forKey:@"localAssetConfiguration"];
}

- (AMSPaymentSheetInlineImage)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v18 init];
  if (v5)
  {
    v5->_imageType = [v4 decodeIntegerForKey:@"imagetype"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLString"];
    URLString = v5->_URLString;
    v5->_URLString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"localAssetConfiguration"];
    localAssetConfiguration = v5->_localAssetConfiguration;
    v5->_localAssetConfiguration = v15;
  }

  return v5;
}

@end