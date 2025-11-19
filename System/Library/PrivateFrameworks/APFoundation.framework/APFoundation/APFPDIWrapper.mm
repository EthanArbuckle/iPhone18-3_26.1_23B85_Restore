@interface APFPDIWrapper
+ (int)FPDICreateContext:(void *)a3 withAttribute:(void *)a4 initRequest:(void *)a5 initRequestLength:(unsigned int *)a6;
+ (int)FPDIDestroyAllContext;
+ (int)FPDIDestroyAllNonStashedContexts;
+ (int)FPDIDestroyAttribute:(void *)a3;
+ (int)FPDIDestroyContext:(void *)a3;
+ (int)FPDIDestroyData:(void *)a3;
+ (int)FPDIInitAttribute:(void *)a3;
+ (int)FPDIInitContext:(void *)a3 withInitResponse:(void *)a4 initResponseLength:(unsigned int)a5 setupRequest:(void *)a6 setupRequestLength:(unsigned int *)a7;
+ (int)FPDISetHighPrivacyLevelForAttribute:(void *)a3;
+ (int)FPDISetStashingIsEnabled:(BOOL)a3 forAttribute:(void *)a4;
+ (int)FPDISetupContext:(void *)a3 withSetupResponse:(void *)a4 setupResponseLength:(unsigned int)a5;
+ (int)FPDISignWithContext:(void *)a3 message:(char *)a4 messageLength:(unsigned int)a5 rawSignature:(void *)a6 rawSignatureLength:(unsigned int *)a7;
@end

@implementation APFPDIWrapper

+ (int)FPDIInitAttribute:(void *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v5, v6, v7) && (objc_msgSend_settings(APFPDIWrapper, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failInitAttribute(v11, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_BOOLValue(v15, v16, v17, v18), v15, v11, (v19 & 1) != 0))
  {
    v20 = -44751;
  }

  else
  {
    v20 = sub_1BAF8DB88(a3);
  }

  v21 = CFAbsoluteTimeGetCurrent();
  v24 = objc_msgSend_stringByAppendingFormat_(@"FPDIInitAttribute", v22, @": %.3f", v23, v21 - Current);
  v25 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v24;
    _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (int)FPDISetHighPrivacyLevelForAttribute:(void *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v5, v6, v7) && (objc_msgSend_settings(APFPDIWrapper, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failSetHighPrivacyLevelForAttribute(v11, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_BOOLValue(v15, v16, v17, v18), v15, v11, (v19 & 1) != 0))
  {
    v20 = -44650;
  }

  else
  {
    v20 = sub_1BAF8D67C(a3, 1011340354);
  }

  v21 = CFAbsoluteTimeGetCurrent();
  v24 = objc_msgSend_stringByAppendingFormat_(@"FPDIAttrSetPrivacyLevel", v22, @": %.3f", v23, v21 - Current);
  v25 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v24;
    _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (int)FPDISetStashingIsEnabled:(BOOL)a3 forAttribute:(void *)a4
{
  v5 = a3;
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 1903055587;
  }

  else
  {
    v6 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (v5 && objc_msgSend_isAppleInternalInstall(APSystemInternal, v7, v8, v9) && (objc_msgSend_settings(APFPDIWrapper, v11, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failSetStashingIsEnabled(v14, v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v18, v19, v20, v21), v18, v14, (v22 & 1) != 0))
  {
    v23 = -44802;
  }

  else
  {
    v23 = sub_1BAF720D4(a4, v6);
  }

  v24 = CFAbsoluteTimeGetCurrent();
  v27 = objc_msgSend_stringByAppendingFormat_(@"FPDIAttrSetContextStashingPolicy", v25, @": %.3f", v26, v24 - Current);
  v28 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v27;
    _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (int)FPDICreateContext:(void *)a3 withAttribute:(void *)a4 initRequest:(void *)a5 initRequestLength:(unsigned int *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v11, v12, v13) && (objc_msgSend_settings(APFPDIWrapper, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failCreateContext(v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_BOOLValue(v21, v22, v23, v24), v21, v17, (v25 & 1) != 0))
  {
    v26 = -44654;
  }

  else
  {
    sub_1BAF7EAC4(a3, a4, a5, a6);
    v26 = v27;
  }

  v28 = CFAbsoluteTimeGetCurrent();
  v31 = objc_msgSend_stringByAppendingFormat_(@"FPDICreate", v29, @": %.3f", v30, v28 - Current);
  v32 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v31;
    _os_log_impl(&dword_1BADC1000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (int)FPDIInitContext:(void *)a3 withInitResponse:(void *)a4 initResponseLength:(unsigned int)a5 setupRequest:(void *)a6 setupRequestLength:(unsigned int *)a7
{
  v38 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v13, v14, v15) && (objc_msgSend_settings(APFPDIWrapper, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failContextInit(v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26), v23, v19, (v27 & 1) != 0))
  {
    v28 = -44654;
  }

  else
  {
    v28 = sub_1BAF722D4(a3, a4, a5, a6, a7);
  }

  v29 = CFAbsoluteTimeGetCurrent();
  v32 = objc_msgSend_stringByAppendingFormat_(@"FPDIInit", v30, @": %.3f", v31, v29 - Current);
  v33 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v32;
    _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (int)FPDISetupContext:(void *)a3 withSetupResponse:(void *)a4 setupResponseLength:(unsigned int)a5
{
  v33 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v7, v8, v9) && (objc_msgSend_settings(APFPDIWrapper, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failContextInit(v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_BOOLValue(v17, v18, v19, v20), v17, v13, (v21 & 1) != 0))
  {
    v22 = -44654;
  }

  else
  {
    sub_1BAF87C54(a3);
    v22 = v23;
  }

  v24 = CFAbsoluteTimeGetCurrent();
  v27 = objc_msgSend_stringByAppendingFormat_(@"FPDISetup", v25, @": %.3f", v26, v24 - Current);
  v28 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v27;
    _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (int)FPDISignWithContext:(void *)a3 message:(char *)a4 messageLength:(unsigned int)a5 rawSignature:(void *)a6 rawSignatureLength:(unsigned int *)a7
{
  v38 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v13, v14, v15) && (objc_msgSend_settings(APFPDIWrapper, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_failSigning(v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26), v23, v19, v27))
  {
    *a6 = 0;
    *a7 = 0;
    v28 = -44665;
  }

  else
  {
    v28 = sub_1BAF72510(a3, a4, a5, a6, a7);
  }

  v29 = CFAbsoluteTimeGetCurrent();
  v32 = objc_msgSend_stringByAppendingFormat_(@"FPDISign", v30, @": %.3f", v31, v29 - Current);
  v33 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v32;
    _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (int)FPDIDestroyAttribute:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_1BAF7270C(a3);
  v6 = CFAbsoluteTimeGetCurrent();
  v9 = objc_msgSend_stringByAppendingFormat_(@"FPDIAttrDestroy", v7, @": %.3f", v8, v6 - Current);
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (int)FPDIDestroyData:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_1BAF8D990(a3);
  v6 = CFAbsoluteTimeGetCurrent();
  v9 = objc_msgSend_stringByAppendingFormat_(@"FPDIDataDestroy", v7, @": %.3f", v8, v6 - Current);
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (int)FPDIDestroyContext:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_1BAF71EB4(a3);
  v6 = CFAbsoluteTimeGetCurrent();
  v9 = objc_msgSend_stringByAppendingFormat_(@"FPDIDestroy", v7, @": %.3f", v8, v6 - Current);
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (int)FPDIDestroyAllNonStashedContexts
{
  v14 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1BAF72924(2);
  v4 = v3;
  v5 = CFAbsoluteTimeGetCurrent();
  v8 = objc_msgSend_stringByAppendingFormat_(@"FPDIDestroyAllContexts", v6, @": %.3f", v7, v5 - Current);
  v9 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (int)FPDIDestroyAllContext
{
  v14 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1BAF72924(0);
  v4 = v3;
  v5 = CFAbsoluteTimeGetCurrent();
  v8 = objc_msgSend_stringByAppendingFormat_(@"FPDIDestroyAllContexts", v6, @": %.3f", v7, v5 - Current);
  v9 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

@end