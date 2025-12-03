@interface AMSPaymentSheetInlineImage
+ (id)textEncapsulationForServerValue:(id)value;
- (AMSPaymentSheetInlineImage)initWithCoder:(id)coder;
- (AMSPaymentSheetInlineImage)initWithDictionary:(id)dictionary;
- (AMSPaymentSheetInlineImage)initWithURLString:(id)string;
- (id)_imageAssetConfigurationForDictionary:(id)dictionary;
- (id)_symbolAssetConfigurationForDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_ratingTypeForType:(id)type;
- (int64_t)_scaleForString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentSheetInlineImage

- (AMSPaymentSheetInlineImage)initWithURLString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    URLString = v5->_URLString;
    v5->_URLString = v6;

    v5->_imageType = 1;
  }

  return v5;
}

- (AMSPaymentSheetInlineImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v5->_imageType = [(AMSPaymentSheetInlineImage *)v5 _ratingTypeForType:v6];
    uppercaseString = [v6 uppercaseString];
    imageType = v5->_imageType;
    if (imageType <= 3)
    {
      if (imageType >= 3)
      {
        if (imageType == 3)
        {
          objc_storeStrong(&v5->_region, uppercaseString);
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
        v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
        uppercaseString2 = [v9 uppercaseString];
        v11 = [uppercaseString2 copy];
        value = v5->_value;
        v5->_value = v11;

        v13 = [(AMSPaymentSheetInlineImage *)v5 _imageAssetConfigurationForDictionary:dictionaryCopy];
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
          v13 = [(AMSPaymentSheetInlineImage *)v5 _symbolAssetConfigurationForDictionary:dictionaryCopy];
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    localAssetConfiguration = [dictionaryCopy objectForKeyedSubscript:@"value"];
    uppercaseString3 = [localAssetConfiguration uppercaseString];
    v16 = [uppercaseString3 copy];
    v17 = v5->_value;
    v5->_value = v16;

    goto LABEL_13;
  }

LABEL_15:

  return v5;
}

+ (id)textEncapsulationForServerValue:(id)value
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v4 = @"TV-Y";
  if (([valueCopy isEqualToString:@"TV-Y"] & 1) == 0)
  {
    v4 = @"TV-Y7";
    if (([valueCopy isEqualToString:@"TV-Y7"] & 1) == 0)
    {
      if ([valueCopy isEqualToString:@"FV"])
      {
        v4 = @"TV-Y7FV";
      }

      else
      {
        v4 = @"TV-14";
        if (([valueCopy isEqualToString:@"TV-14"] & 1) == 0)
        {
          v4 = @"TV-G";
          if (([valueCopy isEqualToString:@"TV-G"] & 1) == 0)
          {
            v4 = @"TV-PG";
            if (([valueCopy isEqualToString:@"TV-PG"] & 1) == 0)
            {
              v4 = @"TV-MA";
              if (([valueCopy isEqualToString:@"TV-MA"] & 1) == 0)
              {
                v4 = @"D";
                if (([valueCopy isEqualToString:@"D"] & 1) == 0)
                {
                  v4 = @"L";
                  if (([valueCopy isEqualToString:@"L"] & 1) == 0)
                  {
                    v4 = @"S";
                    if (([valueCopy isEqualToString:@"S"] & 1) == 0)
                    {
                      v4 = @"V";
                      if (([valueCopy isEqualToString:@"V"] & 1) == 0)
                      {
                        v5 = +[AMSLogConfig sharedConfig];
                        if (!v5)
                        {
                          v5 = +[AMSLogConfig sharedConfig];
                        }

                        oSLogObject = [v5 OSLogObject];
                        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
                        {
                          v7 = objc_opt_class();
                          v8 = AMSLogKey();
                          v10 = 138543874;
                          v11 = v7;
                          v12 = 2114;
                          v13 = v8;
                          v14 = 2112;
                          v15 = valueCopy;
                          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Failed to find text encapsulation mapping for: %@", &v10, 0x20u);
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

- (id)_imageAssetConfigurationForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _defaultAssetType = [(AMSPaymentSheetInlineImage *)self _defaultAssetType];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];

  uppercaseString = [v6 uppercaseString];

  imageType = [(AMSPaymentSheetInlineImage *)self imageType];
  v9 = 0;
  if (imageType <= 5)
  {
    if (imageType == 3)
    {
      region = [(AMSPaymentSheetInlineImage *)self region];
      v12 = [region isEqualToString:@"APPS-AUSTRALIA"];

      if (v12)
      {
        v13 = @"Australia";
      }

      else
      {
        region2 = [(AMSPaymentSheetInlineImage *)self region];
        v15 = [region2 isEqualToString:@"APPS-BRAZIL"];

        if (v15)
        {
          v13 = @"Brazil";
        }

        else
        {
          region3 = [(AMSPaymentSheetInlineImage *)self region];
          v17 = [region3 isEqualToString:@"APPS-FRANCE"];

          if (v17)
          {
            v13 = @"France";
          }

          else
          {
            region4 = [(AMSPaymentSheetInlineImage *)self region];
            v19 = [region4 isEqualToString:@"APPS-KOREA"];

            v13 = @"Korea";
            if (!v19)
            {
              v13 = 0;
            }
          }
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rating-%@_%@", v13, uppercaseString];
      if (v10)
      {
        goto LABEL_43;
      }

      goto LABEL_60;
    }

    if (imageType != 4)
    {
      if (imageType != 5)
      {
        goto LABEL_44;
      }

      if ([uppercaseString isEqualToString:@"CLEAN"])
      {
        v10 = @"Rating-RIAA_Clean";
LABEL_43:
        v9 = [[AMSPaymentSheetImageAssetConfiguration alloc] initWithFilename:v10 size:_defaultAssetType type:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

        goto LABEL_44;
      }

      if ([uppercaseString isEqualToString:@"EXPLICIT"])
      {
        v10 = @"Rating-RIAA_Explicit";
        goto LABEL_43;
      }

      goto LABEL_60;
    }

    if ([uppercaseString isEqualToString:@"G"])
    {
      v10 = @"Rating-MPAA_G";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"GP"])
    {
      goto LABEL_60;
    }

    if ([uppercaseString isEqualToString:@"PG"])
    {
      v10 = @"Rating-MPAA_PG";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"PG-13"])
    {
      v10 = @"Rating-MPAA_PG13";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"M"])
    {
      goto LABEL_60;
    }

    if ([uppercaseString isEqualToString:@"R"])
    {
      v10 = @"Rating-MPAA_R";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"NC-17"])
    {
      v10 = @"Rating-MPAA_NC17";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"UNRATED"])
    {
      v10 = @"Rating-MPAA_Unrated";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"NR"])
    {
      v10 = @"Rating-MPAA_NR";
      goto LABEL_43;
    }

    v22 = @"X";
LABEL_103:
    [uppercaseString isEqualToString:v22];
    goto LABEL_60;
  }

  if (imageType == 6)
  {
    if ([uppercaseString isEqualToString:@"G"])
    {
      v10 = @"Rating-Movie_NZ_G";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"PG"])
    {
      v10 = @"Rating-Movie_NZ_PG";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"M"])
    {
      v10 = @"Rating-Movie_NZ_M";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"R13"])
    {
      v10 = @"Rating-Movie_NZ_R13";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"R15"])
    {
      v10 = @"Rating-Movie_NZ_R15";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"R16"])
    {
      v10 = @"Rating-Movie_NZ_R16";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"R18"])
    {
      v10 = @"Rating-Movie_NZ_R18";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"RP13"])
    {
      v10 = @"Rating-Movie_NZ_RP13";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"RP16"])
    {
      v10 = @"Rating-Movie_NZ_RP16";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"R"])
    {
      v10 = @"Rating-Movie_NZ_R";
      goto LABEL_43;
    }

    v21 = @"NOT RATED";
LABEL_101:
    if ([uppercaseString isEqualToString:v21])
    {
      goto LABEL_60;
    }

    v22 = @"UNRATED";
    goto LABEL_103;
  }

  if (imageType == 7)
  {
    if ([uppercaseString isEqualToString:@"U"])
    {
      v10 = @"Rating-Movie_UK_U";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"UC"])
    {
      goto LABEL_60;
    }

    if ([uppercaseString isEqualToString:@"PG"])
    {
      v10 = @"Rating-Movie_UK_PG";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"12"])
    {
      v10 = @"Rating-Movie_UK_12";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"12A"])
    {
      v10 = @"Rating-Movie_UK_12A";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"15"])
    {
      v10 = @"Rating-Movie_UK_15";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"18"])
    {
      v10 = @"Rating-Movie_UK_18";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"18R"])
    {
      v10 = @"Rating-Movie_UK_R18";
      goto LABEL_43;
    }

    if ([uppercaseString isEqualToString:@"E"])
    {
      goto LABEL_60;
    }

    v21 = @"TBC";
    goto LABEL_101;
  }

  if (imageType != 8)
  {
    goto LABEL_44;
  }

  if ([uppercaseString isEqualToString:@"TV-Y"])
  {
    v10 = @"Rating-TV_US_Y";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"TV-Y7"])
  {
    v10 = @"Rating-TV_US_Y7";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"FV"])
  {
    v10 = @"Rating-TV_US_Y7FV";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"TV-14"])
  {
    v10 = @"Rating-TV_US_14";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"TV-G"])
  {
    v10 = @"Rating-TV_US_G";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"TV-PG"])
  {
    v10 = @"Rating-TV_US_PG";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"TV-MA"])
  {
    v10 = @"Rating-TV_US_MA";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"D"])
  {
    v10 = @"Rating-TV_US_D";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"L"])
  {
    v10 = @"Rating-TV_US_L";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"S"])
  {
    v10 = @"Rating-TV_US_S";
    goto LABEL_43;
  }

  if ([uppercaseString isEqualToString:@"V"])
  {
    v10 = @"Rating-TV_US_V";
    goto LABEL_43;
  }

LABEL_60:
  v9 = 0;
LABEL_44:

  return v9;
}

- (int64_t)_ratingTypeForType:(id)type
{
  uppercaseString = [type uppercaseString];
  if ([uppercaseString isEqualToString:@"APPS-AUSTRALIA"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"APPS-FRANCE") & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"APPS-KOREA") & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"APPS-BRAZIL"))
  {
    v4 = 3;
  }

  else if ([uppercaseString isEqualToString:@"GAMES"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"ITUNESGAMES") & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"ITUNES-GAMES"))
  {
    v4 = 2;
  }

  else if ([uppercaseString isEqualToString:@"NZ-OFLC"])
  {
    v4 = 6;
  }

  else if ([uppercaseString isEqualToString:@"BBFC"])
  {
    v4 = 7;
  }

  else if ([uppercaseString isEqualToString:@"MPAA"])
  {
    v4 = 4;
  }

  else if ([uppercaseString isEqualToString:@"RIAA"])
  {
    v4 = 5;
  }

  else if ([uppercaseString isEqualToString:@"TV-US"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"US-TV") & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"TV"))
  {
    v4 = 8;
  }

  else if ([uppercaseString isEqualToString:@"PAYMENTTYPE"])
  {
    v4 = 9;
  }

  else if ([uppercaseString isEqualToString:@"SYMBOL"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_scaleForString:(id)string
{
  v28 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (([stringCopy isEqualToString:@"small"] & 1) == 0)
  {
    if (([stringCopy isEqualToString:@"medium"] & 1) == 0)
    {
      if ([stringCopy isEqualToString:@"large"])
      {
        v5 = 2;
        goto LABEL_28;
      }

      v6 = +[AMSUnitTests isRunningUnitTests];
      v7 = +[AMSLogConfig sharedPurchaseConfig];
      defaultCenter = v7;
      if (v6)
      {
        if (!v7)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
          selfCopy = ;
          v21 = AMSHashIfNeeded(stringCopy);
          *buf = 138543618;
          v25 = selfCopy;
          v26 = 2114;
          v27 = v21;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unexpected image scale: %{public}@", buf, 0x16u);
          if (v10)
          {

            selfCopy = self;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedPurchaseConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v7)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
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
          selfCopy2 = ;
          v22 = AMSHashIfNeeded(stringCopy);
          *buf = 138543618;
          v25 = selfCopy2;
          v26 = 2114;
          v27 = v22;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Unexpected image scale: %{public}@", buf, 0x16u);
          if (v16)
          {

            selfCopy2 = self;
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

- (id)_symbolAssetConfigurationForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"accessibilityText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"scale"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AMSPaymentSheetInlineImage allocWithZone:](AMSPaymentSheetInlineImage init];
  v5->_imageType = [(AMSPaymentSheetInlineImage *)self imageType];
  uRLString = [(AMSPaymentSheetInlineImage *)self URLString];
  v7 = [uRLString copyWithZone:zone];
  URLString = v5->_URLString;
  v5->_URLString = v7;

  value = [(AMSPaymentSheetInlineImage *)self value];
  v10 = [value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v10;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AMSPaymentSheetInlineImage imageType](self forKey:{"imageType"), @"imagetype"}];
  region = [(AMSPaymentSheetInlineImage *)self region];
  [coderCopy encodeObject:region forKey:@"region"];

  uRLString = [(AMSPaymentSheetInlineImage *)self URLString];
  [coderCopy encodeObject:uRLString forKey:@"URLString"];

  value = [(AMSPaymentSheetInlineImage *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  localAssetConfiguration = [(AMSPaymentSheetInlineImage *)self localAssetConfiguration];
  [coderCopy encodeObject:localAssetConfiguration forKey:@"localAssetConfiguration"];
}

- (AMSPaymentSheetInlineImage)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AMSPaymentSheetInlineImage;
  v5 = [(AMSPaymentSheetInlineImage *)&v18 init];
  if (v5)
  {
    v5->_imageType = [coderCopy decodeIntegerForKey:@"imagetype"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLString"];
    URLString = v5->_URLString;
    v5->_URLString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"localAssetConfiguration"];
    localAssetConfiguration = v5->_localAssetConfiguration;
    v5->_localAssetConfiguration = v15;
  }

  return v5;
}

@end