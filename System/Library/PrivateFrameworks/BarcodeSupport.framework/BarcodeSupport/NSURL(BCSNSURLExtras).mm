@interface NSURL(BCSNSURLExtras)
+ (id)_bcs_searchURLWithQuery:()BCSNSURLExtras;
- (id)_bcs_displayString;
- (id)_bcs_hostWithoutWwwDot;
- (id)_bcs_localizedDisplayNameForRedirectedSHCURL;
- (id)_bcs_redirectedHealthURLWithOriginalString:()BCSNSURLExtras;
- (uint64_t)_bcs_hasScheme:()BCSNSURLExtras;
- (uint64_t)_bcs_isDataDetectorURL;
- (uint64_t)_bcs_isHTTPFamilyURL;
- (uint64_t)_bcs_isMapsURL;
- (uint64_t)_bcs_isOtpauthMigrationURL;
- (uint64_t)_bcs_isOtpauthURL;
- (uint64_t)_bcs_isRedirectedSHCURL;
- (uint64_t)_bcs_isSHCURL;
- (uint64_t)_bcs_isWalletRemoteRequestURL;
- (void)_bcs_localizedDisplayNameForRedirectedSHCURL;
@end

@implementation NSURL(BCSNSURLExtras)

- (uint64_t)_bcs_isHTTPFamilyURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [lowercaseString isEqualToString:@"https"];
  }

  return v3;
}

- (uint64_t)_bcs_isWalletRemoteRequestURL
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString safari_hasCaseInsensitivePrefix:@"https://wallet.apple.com/remoteRequest/?t="];

  return v2;
}

- (uint64_t)_bcs_isMapsURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"maps"])
  {
    v4 = 1;
  }

  else if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
  {
    host = [self host];
    lowercaseString2 = [host lowercaseString];
    v4 = [lowercaseString2 isEqualToString:@"maps.apple.com"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)_bcs_isSHCURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  v4 = validHealthURLPrefixForScheme(lowercaseString);
  if (v4)
  {
    absoluteString = [self absoluteString];
    if ([absoluteString safari_hasCaseInsensitivePrefix:v4] && (v6 = objc_msgSend(v4, "length"), objc_msgSend(absoluteString, "length") >= v6))
    {
      v8 = [absoluteString substringFromIndex:v6];
      v7 = [v8 hasPrefix:@"/"] ^ 1;
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

- (uint64_t)_bcs_isRedirectedSHCURL
{
  absoluteString = [self absoluteString];
  if ([absoluteString safari_hasCaseInsensitivePrefix:@"https://redirect.health.apple.com/SMARTHealthCard/"])
  {
    v3 = 1;
  }

  else
  {
    absoluteString2 = [self absoluteString];
    v3 = [absoluteString2 safari_hasCaseInsensitivePrefix:@"https://redirect.health.apple.com/EU-DCC/#"];
  }

  return v3;
}

- (uint64_t)_bcs_isOtpauthURL
{
  if ([self _bcs_hasScheme:@"otpauth"])
  {
    return 1;
  }

  return [self _bcs_hasScheme:@"apple-otpauth"];
}

- (uint64_t)_bcs_isOtpauthMigrationURL
{
  if ([self _bcs_hasScheme:@"otpauth-migration"])
  {
    return 1;
  }

  return [self _bcs_hasScheme:@"apple-otpauth-migration"];
}

- (id)_bcs_displayString
{
  if ([self _bcs_isHTTPFamilyURL])
  {
    _lp_simplifiedDisplayString = [self _lp_simplifiedDisplayString];
    if ([_lp_simplifiedDisplayString length] > 0x14)
    {
      _lp_highLevelDomain = [self _lp_highLevelDomain];
      if ([_lp_highLevelDomain length])
      {
        _bcs_stringForcingLeftToRightDirection = [_lp_highLevelDomain _bcs_stringForcingLeftToRightDirection];
      }

      else
      {
        _bcs_stringForcingLeftToRightDirection = _lp_simplifiedDisplayString;
      }

      scheme = _bcs_stringForcingLeftToRightDirection;
    }

    else
    {
      scheme = _lp_simplifiedDisplayString;
    }
  }

  else
  {
    scheme = [self scheme];
  }

  return scheme;
}

- (uint64_t)_bcs_isDataDetectorURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  v3 = [lowercaseString isEqualToString:@"x-barcode-datadetectors-action"];
  return v3;
}

- (id)_bcs_hostWithoutWwwDot
{
  v1 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  host = [v1 host];
  v3 = host;
  if (host)
  {
    if ([host rangeOfString:@"www." options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 substringFromIndex:4];
    }

    v6 = v4;
    if ([v4 length])
    {
      lowercaseString = [v6 lowercaseString];
    }

    else
    {
      lowercaseString = 0;
    }
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

- (id)_bcs_redirectedHealthURLWithOriginalString:()BCSNSURLExtras
{
  v4 = a3;
  scheme = [self scheme];
  v6 = validHealthURLPrefixForScheme(scheme);

  if (!v6)
  {
    v13 = 0;
    goto LABEL_10;
  }

  absoluteString = [self absoluteString];
  v8 = [absoluteString substringFromIndex:{objc_msgSend(v6, "length")}];

  scheme2 = [self scheme];
  v10 = [scheme2 caseInsensitiveCompare:@"shc"];

  if (!v10)
  {
    v14 = MEMORY[0x277CBEBC0];
    v15 = [@"https://redirect.health.apple.com/SMARTHealthCard/#" stringByAppendingString:v8];
    v13 = [v14 URLWithString:v15];
LABEL_8:

    goto LABEL_9;
  }

  scheme3 = [self scheme];
  v12 = [scheme3 caseInsensitiveCompare:@"hc1"];

  if (!v12)
  {
    v16 = [v4 substringFromIndex:{objc_msgSend(v6, "length")}];
    uRLFragmentAllowedCharacterSet = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v15 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];

    v18 = MEMORY[0x277CBEBC0];
    v19 = [@"https://redirect.health.apple.com/EU-DCC/#" stringByAppendingString:v15];
    v13 = [v18 URLWithString:v19];

    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:

LABEL_10:

  return v13;
}

- (id)_bcs_localizedDisplayNameForRedirectedSHCURL
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v2 = getHKSignedClinicalDataSourceClass_softClass;
  v29 = getHKSignedClinicalDataSourceClass_softClass;
  if (!getHKSignedClinicalDataSourceClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getHKSignedClinicalDataSourceClass_block_invoke;
    v24 = &unk_278CFE620;
    v25 = &v26;
    __getHKSignedClinicalDataSourceClass_block_invoke(&v21);
    v2 = v27[3];
  }

  v3 = v2;
  _Block_object_dispose(&v26, 8);
  absoluteString = [self absoluteString];
  v20 = 0;
  v5 = [v2 sourceWithQRCodeValue:absoluteString error:&v20];
  v6 = v20;

  if (v5)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getHKVerifiableHealthRecordsParserClass_softClass;
    v29 = getHKVerifiableHealthRecordsParserClass_softClass;
    if (!getHKVerifiableHealthRecordsParserClass_softClass)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __getHKVerifiableHealthRecordsParserClass_block_invoke;
      v24 = &unk_278CFE620;
      v25 = &v26;
      __getHKVerifiableHealthRecordsParserClass_block_invoke(&v21);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = objc_alloc_init(v7);
    v19 = v6;
    v10 = [v9 parseDataSource:v5 options:0 error:&v19];
    v11 = v19;

    if (v11 || ([v10 localizedTypeDisplayNames], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, !v15))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(NSURL(BCSNSURLExtras) *)v11 _bcs_localizedDisplayNameForRedirectedSHCURL];
      }
    }

    else
    {
      localizedTypeDisplayNames = [v10 localizedTypeDisplayNames];
      v17 = [localizedTypeDisplayNames count];

      if (v17 == 1)
      {
        localizedTypeDisplayNames2 = [v10 localizedTypeDisplayNames];
        firstObject = [localizedTypeDisplayNames2 firstObject];

        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(NSURL(BCSNSURLExtras) *)v10 _bcs_localizedDisplayNameForRedirectedSHCURL];
      }
    }

    firstObject = 0;
LABEL_10:

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(NSURL(BCSNSURLExtras) *)self _bcs_localizedDisplayNameForRedirectedSHCURL];
  }

  firstObject = 0;
  v11 = v6;
LABEL_14:

  return firstObject;
}

+ (id)_bcs_searchURLWithQuery:()BCSNSURLExtras
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  uRLQueryAllowedCharacterSet = [v3 URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-web-search://?%@", v6];
  v9 = [v7 URLWithString:v8];

  return v9;
}

- (uint64_t)_bcs_hasScheme:()BCSNSURLExtras
{
  v4 = a3;
  scheme = [self scheme];
  v6 = [scheme safari_isCaseInsensitiveEqualToString:v4];

  return v6;
}

- (void)_bcs_localizedDisplayNameForRedirectedSHCURL
{
  v9 = *MEMORY[0x277D85DE8];
  absoluteString = [self absoluteString];
  v5 = 138478083;
  v6 = absoluteString;
  v7 = 2113;
  v8 = a2;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSURLAction: Unable to create HKSignedClinicalDataSource for: %{private}@ error: %{private}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end