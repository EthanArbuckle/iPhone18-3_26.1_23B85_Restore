@interface ASTConnectionUtilities
+ (BOOL)didEncounterNetworkDisconnectionError:(id)a3;
+ (BOOL)isGzipEnabled;
+ (BOOL)isValidResponse:(id)a3;
+ (BOOL)relaxTimeouts;
+ (BOOL)trustIsValidWithProtectionSpace:(id)a3 rootOfTrust:(unint64_t)a4;
+ (BOOL)useChunkedTransferEncoding;
+ (id)MD5HeaderValueForTask:(id)a3;
+ (id)getServerLoggingSelection;
+ (unint64_t)allowCellularSizeThreshold;
@end

@implementation ASTConnectionUtilities

+ (BOOL)didEncounterNetworkDisconnectionError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code] == -1009 || objc_msgSend(v4, "code") == -1005 || objc_msgSend(v4, "code") == -1004 || objc_msgSend(v4, "code") == -1001;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isValidResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"code"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      isKindOfClass = [v5 isEqualToString:@"NoError"];
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2852D5E98];
    isKindOfClass = [v8 containsObject:v7];
  }

  v9 = [v3 objectForKeyedSubscript:@"suites"];
  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v10 = [v3 objectForKeyedSubscript:@"diagnosticEventId"];
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v21 = [v3 objectForKeyedSubscript:@"archived"];
  v11 = (v21 != 0) | isKindOfClass;
  v12 = [v3 objectForKeyedSubscript:@"messages"];
  v13 = [v3 objectForKeyedSubscript:@"options"];
  v14 = [v3 objectForKeyedSubscript:@"images"];
  v15 = v14;
  if (v12 && v13 && v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = v9;
  v23 = v4;
  v17 = [v3 objectForKeyedSubscript:{@"suiteName", v21}];
  v18 = [v3 objectForKeyedSubscript:@"components"];
  v19 = v18;
  if (v17 && v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

+ (BOOL)relaxTimeouts
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  v2 = CFPreferencesCopyAppValue(@"RelaxTimeouts", @"com.apple.AppleServiceToolkit");
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)getServerLoggingSelection
{
  if (getServerLoggingSelection_onceToken != -1)
  {
    +[ASTConnectionUtilities getServerLoggingSelection];
  }

  if (getServerLoggingSelection_selection)
  {
    v3 = getServerLoggingSelection_selection;
  }

  else
  {
    v3 = &unk_2852D5EC8;
  }

  return v3;
}

uint64_t __51__ASTConnectionUtilities_getServerLoggingSelection__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  getServerLoggingSelection_selection = CFPreferencesCopyAppValue(@"ServerLogging", @"com.apple.AppleServiceToolkit");

  return MEMORY[0x2821F96F8]();
}

+ (id)MD5HeaderValueForTask:(id)a3
{
  v3 = [a3 response];
  v4 = [v3 allHeaderFields];
  v5 = [v4 objectForKeyedSubscript:@"AST-file-MD5"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AST-file-MD5"];
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"Etag"];

    if (v7)
    {
      v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];
      v9 = [v4 objectForKeyedSubscript:@"Etag"];
      v6 = [v9 stringByTrimmingCharactersInSet:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)isGzipEnabled
{
  if (isGzipEnabled_onceToken != -1)
  {
    +[ASTConnectionUtilities isGzipEnabled];
  }

  return isGzipEnabled_gzipEnabled;
}

uint64_t __39__ASTConnectionUtilities_isGzipEnabled__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"GZIPEnabled", @"com.apple.AppleServiceToolkit", &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  v2 = v1;
  isGzipEnabled_gzipEnabled = v2;
  return result;
}

+ (BOOL)useChunkedTransferEncoding
{
  if (useChunkedTransferEncoding_onceToken != -1)
  {
    +[ASTConnectionUtilities useChunkedTransferEncoding];
  }

  return useChunkedTransferEncoding__useChunkedTransferEncoding;
}

uint64_t __52__ASTConnectionUtilities_useChunkedTransferEncoding__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"UseChunkedTransferEncoding", @"com.apple.AppleServiceToolkit", &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  v2 = v1;
  useChunkedTransferEncoding__useChunkedTransferEncoding = v2;
  return result;
}

+ (unint64_t)allowCellularSizeThreshold
{
  if (allowCellularSizeThreshold_onceToken != -1)
  {
    +[ASTConnectionUtilities allowCellularSizeThreshold];
  }

  return allowCellularSizeThreshold__allowCellularSizeThreshold;
}

CFIndex __52__ASTConnectionUtilities_allowCellularSizeThreshold__block_invoke()
{
  allowCellularSizeThreshold__allowCellularSizeThreshold = -1;
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"AllowCellularData", @"com.apple.AppleServiceToolkit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      allowCellularSizeThreshold__allowCellularSizeThreshold = result;
    }
  }

  return result;
}

+ (BOOL)trustIsValidWithProtectionSpace:(id)a3 rootOfTrust:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:];
    }

    goto LABEL_9;
  }

  v7 = [v5 serverTrust];
  if (!v7)
  {
LABEL_9:
    v13 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:];
    }

    v8 = 0;
    v14 = 0;
LABEL_13:
    v15 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:];
    }

    v11 = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v8 = v7;
  if (a4 - 4 > 0xFFFFFFFFFFFFFFFDLL || ([v6 host], v9 = objc_claimAutoreleasedReturnValue(), AppleAST2Service = SecPolicyCreateAppleAST2Service(), v9, !AppleAST2Service))
  {
    v14 = 1;
    goto LABEL_13;
  }

  v11 = SecTrustSetPolicies(v8, AppleAST2Service);
  CFRelease(AppleAST2Service);
LABEL_16:
  if (!v11)
  {
    error = 0;
    LODWORD(v8) = SecTrustEvaluateWithError(v8, &error);
    v16 = error;
    v17 = ASTLogHandleForCategory(1);
    v18 = v17;
    if (v8)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_240F3C000, v18, OS_LOG_TYPE_DEFAULT, "SecTrust cert is trusted", v20, 2u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:];
    }

    goto LABEL_26;
  }

LABEL_20:
  v8 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:];
  }

  LOBYTE(v8) = 0;
LABEL_26:

  return v8;
}

+ (void)trustIsValidWithProtectionSpace:rootOfTrust:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)trustIsValidWithProtectionSpace:rootOfTrust:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end