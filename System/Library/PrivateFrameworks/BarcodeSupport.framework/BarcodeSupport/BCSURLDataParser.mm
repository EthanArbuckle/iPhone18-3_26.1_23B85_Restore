@interface BCSURLDataParser
+ (id)_canonicalizeMessageURL:(id)l;
+ (id)parseString:(id)string;
+ (id)parseURL:(id)l originalString:(id)string;
+ (int64_t)_dataTypeForSchemeIfSupportedByDataDetectors:(id)detectors;
@end

@implementation BCSURLDataParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [(BCSURLDataParser *)v5 parseString:v6, v7, v8, v9, v10, v11, v12];
  }

  if ([stringCopy length] < 0xFA1)
  {
    if ([stringCopy _bcs_hasCaseInsensitivePrefix:@"URL:"])
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        [(BCSURLDataParser *)v14 parseString:v15, v16, v17, v18, v19, v20, v21];
      }

      v22 = [stringCopy substringFromIndex:4];
      _bcs_trimmedString = [v22 _bcs_trimmedString];

      stringCopy = _bcs_trimmedString;
    }

    v24 = [MEMORY[0x277CBEBC0] _bcs_URLWithUserTypedString:stringCopy];
    if (v24)
    {
      v13 = [self parseURL:v24 originalString:stringCopy];
    }

    else
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v25)
      {
        [(BCSURLDataParser *)v25 parseString:v26, v27, v28, v29, v30, v31, v32];
      }

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSURLDataParser parseString:stringCopy];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)parseURL:(id)l originalString:(id)string
{
  lCopy = l;
  stringCopy = string;
  if ([lCopy _bcs_isMapsURL])
  {
    v8 = [[BCSParsedURLData alloc] initWithURL:lCopy type:6];
    goto LABEL_52;
  }

  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (![(__CFString *)lowercaseString length])
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      [(BCSURLDataParser *)v20 parseURL:v21 originalString:v22, v23, v24, v25, v26, v27];
    }

    v8 = 0;
    goto LABEL_51;
  }

  if (([(__CFString *)lowercaseString isEqualToString:@"smsto"]& 1) != 0 || [(__CFString *)lowercaseString isEqualToString:@"sms"])
  {
    v11 = [self _canonicalizeMessageURL:lCopy];

    lowercaseString = @"sms";
    lCopy = v11;
  }

  if ([(__CFString *)lowercaseString isEqualToString:@"continuitycamera"])
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSURLDataParser *)v12 parseURL:v13 originalString:v14, v15, v16, v17, v18, v19];
    }

    v8 = [[BCSParsedURLData alloc] initWithURL:lCopy type:15];
    goto LABEL_51;
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x2050000000;
  v28 = getHMAccessorySetupCoordinatorClass_softClass;
  v91 = getHMAccessorySetupCoordinatorClass_softClass;
  if (!getHMAccessorySetupCoordinatorClass_softClass)
  {
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __getHMAccessorySetupCoordinatorClass_block_invoke;
    v87[3] = &unk_278CFE620;
    v87[4] = &v88;
    __getHMAccessorySetupCoordinatorClass_block_invoke(v87);
    v28 = v89[3];
  }

  v29 = v28;
  _Block_object_dispose(&v88, 8);
  absoluteString = [lCopy absoluteString];
  v31 = [v28 communicationProtocolForSetupPayloadURLString:absoluteString];

  if (v31)
  {
    integerValue = [v31 integerValue];
    if (integerValue == 2)
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = MEMORY[0x277CCACA8];
      absoluteString2 = [lCopy absoluteString];
      v66 = [v64 stringWithFormat:@"com.apple.Home-private://addAccessory?payload=%@", absoluteString2];
      v53 = [v63 _bcs_URLWithUserTypedString:v66];

      v67 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v67)
      {
        [(BCSURLDataParser *)v67 parseURL:v68 originalString:v69, v70, v71, v72, v73, v74];
      }

      v54 = [[BCSParsedURLData alloc] initWithURL:v53 type:12];
      goto LABEL_36;
    }

    if (integerValue == 1)
    {
      v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v33)
      {
        [(BCSURLDataParser *)v33 parseURL:v34 originalString:v35, v36, v37, v38, v39, v40];
      }

      v41 = [BCSParsedURLData alloc];
      v42 = lCopy;
      v43 = 9;
      goto LABEL_48;
    }
  }

  if (![lCopy _bcs_isSHCURL])
  {
    if ([lCopy _bcs_isWalletRemoteRequestURL] && _os_feature_enabled_impl())
    {
      v41 = [BCSParsedURLData alloc];
      v42 = lCopy;
      v43 = 16;
    }

    else if ([lCopy as_isPasskeyRegistrationURL])
    {
      v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v55)
      {
        [(BCSURLDataParser *)v55 parseURL:v56 originalString:v57, v58, v59, v60, v61, v62];
      }

      v41 = [BCSParsedURLData alloc];
      v42 = lCopy;
      v43 = 14;
    }

    else if (([lCopy as_isPasskeyURL] & 1) != 0 || objc_msgSend(lCopy, "_bcs_hasScheme:", @"fido"))
    {
      as_passkeyURLType = [lCopy as_passkeyURLType];
      v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (as_passkeyURLType == 3)
      {
        if (v76)
        {
          [(BCSURLDataParser *)v76 parseURL:v77 originalString:v78, v79, v80, v81, v82, v83];
        }

        v41 = [BCSParsedURLData alloc];
        v42 = lCopy;
        v43 = 17;
      }

      else
      {
        if (v76)
        {
          [(BCSURLDataParser *)v76 parseURL:v77 originalString:v78, v79, v80, v81, v82, v83];
        }

        v41 = [BCSParsedURLData alloc];
        v42 = lCopy;
        v43 = 13;
      }
    }

    else
    {
      v84 = [self _dataTypeForSchemeIfSupportedByDataDetectors:lowercaseString];
      v41 = [BCSParsedURLData alloc];
      v42 = lCopy;
      if (!v84)
      {
        v85 = [(BCSParsedURLData *)v41 initWithURL:lCopy];
        goto LABEL_49;
      }

      v43 = v84;
    }

LABEL_48:
    v85 = [(BCSParsedURLData *)v41 initWithURL:v42 type:v43];
LABEL_49:
    v8 = v85;
    goto LABEL_50;
  }

  v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v44)
  {
    [(BCSURLDataParser *)v44 parseURL:v45 originalString:v46, v47, v48, v49, v50, v51];
  }

  v52 = [BCSParsedURLData alloc];
  v53 = [lCopy _bcs_redirectedHealthURLWithOriginalString:stringCopy];
  v54 = [(BCSParsedURLData *)v52 initWithURL:v53];
LABEL_36:
  v8 = v54;

LABEL_50:
LABEL_51:

LABEL_52:

  return v8;
}

+ (int64_t)_dataTypeForSchemeIfSupportedByDataDetectors:(id)detectors
{
  detectorsCopy = detectors;
  if ([detectorsCopy isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(detectorsCopy, "isEqualToString:", @"facetime") & 1) != 0 || (objc_msgSend(detectorsCopy, "isEqualToString:", @"facetime-audio"))
  {
    v4 = 4;
  }

  else if ([detectorsCopy isEqualToString:@"mailto"])
  {
    v4 = 3;
  }

  else if ([detectorsCopy isEqualToString:@"sms"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_canonicalizeMessageURL:(id)l
{
  v3 = MEMORY[0x277CCACE0];
  lCopy = l;
  v5 = [[v3 alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [lCopy scheme];

  lowercaseString = [scheme lowercaseString];
  v8 = [lowercaseString isEqualToString:@"smsto"];

  if (v8)
  {
    path = [v5 path];
    v10 = [path rangeOfString:@":"];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [path substringToIndex:v10];

      [v5 setPath:v11];
      path = v11;
    }

    [v5 setQuery:0];
  }

  [v5 setScheme:@"sms"];
  v12 = [v5 URL];

  return v12;
}

+ (void)parseString:(void *)a1 .cold.4(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = [a1 length];
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSURLDataParser: QR code payload, with %ld characters, is too long", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end