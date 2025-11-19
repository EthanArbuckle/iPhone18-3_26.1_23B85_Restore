@interface NSString
- (BOOL)atx_isCreditCardNumber;
- (BOOL)atx_isSSN;
- (id)atx_appNameFromBundleID;
- (id)atx_dataDetectors;
- (id)atx_phoneNumberFromTelURLString;
@end

@implementation NSString

- (BOOL)atx_isSSN
{
  if ([(NSString *)self length]== 9 || [(NSString *)self length]== 11)
  {
    if ([(NSString *)self length]== 9)
    {
      v3 = self;
LABEL_5:
      v4 = v3;
LABEL_12:
      v6 = +[NSCharacterSet decimalDigitCharacterSet];
      v7 = [v6 invertedSet];
      v5 = [(NSString *)v4 rangeOfCharacterFromSet:v7]== 0x7FFFFFFFFFFFFFFFLL;

      return v5;
    }

    if ([(NSString *)self length]!= 11)
    {
      v4 = 0;
      goto LABEL_12;
    }

    if ([(NSString *)self characterAtIndex:3]== 45 && [(NSString *)self characterAtIndex:6]== 45)
    {
      v3 = [(NSString *)self stringByReplacingOccurrencesOfString:@"-" withString:&stru_100025D20];
      goto LABEL_5;
    }
  }

  return 0;
}

- (BOOL)atx_isCreditCardNumber
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@" " withString:&stru_100025D20];
  v3 = +[NSCharacterSet decimalDigitCharacterSet];
  v4 = [v3 invertedSet];
  v5 = [v2 rangeOfCharacterFromSet:v4];

  v6 = [v2 length];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL || (v6 - 15) > 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v6;
    v10 = [v2 UTF8String];
    v11 = 0;
    v12 = v9 - 1;
    do
    {
      LOBYTE(v13) = v12[v10] - 48;
      if (((v12 ^ v9) & 1) == 0)
      {
        v13 = (2 * v13);
        if (v13 >= 10)
        {
          v13 = v13 - 10 * (v13 / 0xAu) + v13 / 0xAu;
        }
      }

      v11 += v13;
      v14 = (v12-- + 1);
    }

    while (v14 > 1);
    HIDWORD(v15) = -858993459 * v11 + 429496728;
    LODWORD(v15) = HIDWORD(v15);
    v8 = (v15 >> 1) < 0x19999999;
  }

  return v8;
}

- (id)atx_dataDetectors
{
  if (![(NSString *)self length])
  {
LABEL_11:
    v8 = &__NSArray0__struct;
    goto LABEL_18;
  }

  v3 = sub_100001940();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100018248();
  }

  v12 = 0;
  v4 = DDScannerCreate();
  if (!v4)
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001833C(&v12, v9);
    }

    goto LABEL_11;
  }

  v5 = v4;
  if (!DDScannerScanString())
  {
    v10 = sub_100001940();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000182FC();
    }

    goto LABEL_16;
  }

  v6 = DDScannerCopyResultsWithOptions();
  if (!v6)
  {
    v10 = sub_100001940();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000182BC();
    }

LABEL_16:

    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = sub_10001781C(v6, self, 0);
  CFRelease(v7);
LABEL_17:
  CFRelease(v5);
LABEL_18:

  return v8;
}

- (id)atx_phoneNumberFromTelURLString
{
  v2 = self;
  if ([(NSString *)v2 hasPrefix:@"tel://"])
  {
    v3 = 6;
  }

  else
  {
    if (![(NSString *)v2 hasPrefix:@"tel:"])
    {
      goto LABEL_6;
    }

    v3 = 4;
  }

  v4 = [(NSString *)v2 substringFromIndex:v3];

  v2 = v4;
LABEL_6:
  v5 = [(NSString *)v2 stringByReplacingOccurrencesOfString:@"p" withString:@", "];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"w" withString:@""];;

  v7 = [v6 rangeOfString:@";" options:2];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = [v6 substringFromIndex:v7];
    v10 = [v6 substringToIndex:v9];

    v6 = v10;
  }

  v11 = [v6 stringByRemovingPercentEncoding];

  if (v8)
  {
    v12 = [v8 rangeOfString:@";ext=" options:2];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v8 stringByRemovingPercentEncoding];
      v15 = [v14 stringByReplacingOccurrencesOfString:@"p" withString:{@", "}];

      v16 = [v15 stringByReplacingOccurrencesOfString:@"w" withString:@""];;

      v17 = [v11 stringByAppendingString:v16];

      v11 = v17;
    }

    else
    {
      v18 = &v12[v13];
      v19 = [v8 rangeOfString:@";" options:2 range:{v18, objc_msgSend(v8, "length") - v18}];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v8 substringFromIndex:v18];
      }

      else
      {
        [v8 substringWithRange:{v18, v19 - v18}];
      }
      v20 = ;
      v21 = [v20 stringByRemovingPercentEncoding];

      v25[0] = v11;
      v25[1] = v21;
      v22 = [NSArray arrayWithObjects:v25 count:2];
      v23 = [v22 componentsJoinedByString:{@", "}];

      v11 = v23;
    }
  }

  return v11;
}

- (id)atx_appNameFromBundleID
{
  if ([(NSString *)self isEqualToString:@"com.apple.Pasteboard.pbutil"])
  {
    v3 = @"pbutil";
  }

  else
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [v4 applicationIsInstalled:self];

    if (v5)
    {
      v6 = [ATXApplicationRecord localizedNameForBundle:self];
      v7 = v6;
      if (v6)
      {
        v7 = v6;
        v3 = v7;
      }

      else
      {
        v8 = sub_100001940();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = self;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "LSApplicationRecord cannot find localizedName for bundleID even though it is installed: %@", &v10, 0xCu);
        }

        v3 = 0;
      }
    }

    else
    {
      v7 = sub_100001940();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "bundleID has no installed application: %@", &v10, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

@end