@interface BCSURLDataParser
+ (id)_canonicalizeMessageURL:(id)a3;
+ (id)parseString:(id)a3;
+ (id)parseURL:(id)a3 originalString:(id)a4;
+ (int64_t)_dataTypeForSchemeIfSupportedByDataDetectors:(id)a3;
@end

@implementation BCSURLDataParser

+ (id)parseString:(id)a3
{
  v4 = a3;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [(BCSURLDataParser *)v5 parseString:v6, v7, v8, v9, v10, v11, v12];
  }

  if ([v4 length] < 0xFA1)
  {
    if ([v4 _bcs_hasCaseInsensitivePrefix:@"URL:"])
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        [(BCSURLDataParser *)v14 parseString:v15, v16, v17, v18, v19, v20, v21];
      }

      v22 = [v4 substringFromIndex:4];
      v23 = [v22 _bcs_trimmedString];

      v4 = v23;
    }

    v24 = [MEMORY[0x277CBEBC0] _bcs_URLWithUserTypedString:v4];
    if (v24)
    {
      v13 = [a1 parseURL:v24 originalString:v4];
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
      [BCSURLDataParser parseString:v4];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)parseURL:(id)a3 originalString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 _bcs_isMapsURL])
  {
    v8 = [[BCSParsedURLData alloc] initWithURL:v6 type:6];
    goto LABEL_52;
  }

  v9 = [v6 scheme];
  v10 = [v9 lowercaseString];

  if (![(__CFString *)v10 length])
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      [(BCSURLDataParser *)v20 parseURL:v21 originalString:v22, v23, v24, v25, v26, v27];
    }

    v8 = 0;
    goto LABEL_51;
  }

  if (([(__CFString *)v10 isEqualToString:@"smsto"]& 1) != 0 || [(__CFString *)v10 isEqualToString:@"sms"])
  {
    v11 = [a1 _canonicalizeMessageURL:v6];

    v10 = @"sms";
    v6 = v11;
  }

  if ([(__CFString *)v10 isEqualToString:@"continuitycamera"])
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSURLDataParser *)v12 parseURL:v13 originalString:v14, v15, v16, v17, v18, v19];
    }

    v8 = [[BCSParsedURLData alloc] initWithURL:v6 type:15];
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
  v30 = [v6 absoluteString];
  v31 = [v28 communicationProtocolForSetupPayloadURLString:v30];

  if (v31)
  {
    v32 = [v31 integerValue];
    if (v32 == 2)
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = MEMORY[0x277CCACA8];
      v65 = [v6 absoluteString];
      v66 = [v64 stringWithFormat:@"com.apple.Home-private://addAccessory?payload=%@", v65];
      v53 = [v63 _bcs_URLWithUserTypedString:v66];

      v67 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v67)
      {
        [(BCSURLDataParser *)v67 parseURL:v68 originalString:v69, v70, v71, v72, v73, v74];
      }

      v54 = [[BCSParsedURLData alloc] initWithURL:v53 type:12];
      goto LABEL_36;
    }

    if (v32 == 1)
    {
      v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v33)
      {
        [(BCSURLDataParser *)v33 parseURL:v34 originalString:v35, v36, v37, v38, v39, v40];
      }

      v41 = [BCSParsedURLData alloc];
      v42 = v6;
      v43 = 9;
      goto LABEL_48;
    }
  }

  if (![v6 _bcs_isSHCURL])
  {
    if ([v6 _bcs_isWalletRemoteRequestURL] && _os_feature_enabled_impl())
    {
      v41 = [BCSParsedURLData alloc];
      v42 = v6;
      v43 = 16;
    }

    else if ([v6 as_isPasskeyRegistrationURL])
    {
      v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v55)
      {
        [(BCSURLDataParser *)v55 parseURL:v56 originalString:v57, v58, v59, v60, v61, v62];
      }

      v41 = [BCSParsedURLData alloc];
      v42 = v6;
      v43 = 14;
    }

    else if (([v6 as_isPasskeyURL] & 1) != 0 || objc_msgSend(v6, "_bcs_hasScheme:", @"fido"))
    {
      v75 = [v6 as_passkeyURLType];
      v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v75 == 3)
      {
        if (v76)
        {
          [(BCSURLDataParser *)v76 parseURL:v77 originalString:v78, v79, v80, v81, v82, v83];
        }

        v41 = [BCSParsedURLData alloc];
        v42 = v6;
        v43 = 17;
      }

      else
      {
        if (v76)
        {
          [(BCSURLDataParser *)v76 parseURL:v77 originalString:v78, v79, v80, v81, v82, v83];
        }

        v41 = [BCSParsedURLData alloc];
        v42 = v6;
        v43 = 13;
      }
    }

    else
    {
      v84 = [a1 _dataTypeForSchemeIfSupportedByDataDetectors:v10];
      v41 = [BCSParsedURLData alloc];
      v42 = v6;
      if (!v84)
      {
        v85 = [(BCSParsedURLData *)v41 initWithURL:v6];
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
  v53 = [v6 _bcs_redirectedHealthURLWithOriginalString:v7];
  v54 = [(BCSParsedURLData *)v52 initWithURL:v53];
LABEL_36:
  v8 = v54;

LABEL_50:
LABEL_51:

LABEL_52:

  return v8;
}

+ (int64_t)_dataTypeForSchemeIfSupportedByDataDetectors:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"facetime") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"facetime-audio"))
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"mailto"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"sms"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_canonicalizeMessageURL:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [v4 scheme];

  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"smsto"];

  if (v8)
  {
    v9 = [v5 path];
    v10 = [v9 rangeOfString:@":"];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v9 substringToIndex:v10];

      [v5 setPath:v11];
      v9 = v11;
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