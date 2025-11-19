@interface AKLoginCodeNotificationBuilder
+ (__CFUserNotification)buildLoginCodeNotificationWithTitle:(id)a3 body:(id)a4 footer:(id)a5 loginCode:(id)a6;
+ (id)buildLoginCodeNotificationOptionsWithTitle:(id)a3 body:(id)a4 footer:(id)a5 loginCode:(id)a6;
@end

@implementation AKLoginCodeNotificationBuilder

+ (__CFUserNotification)buildLoginCodeNotificationWithTitle:(id)a3 body:(id)a4 footer:(id)a5 loginCode:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  if ([MEMORY[0x1E6985DD8] deviceIsAudioAccessory])
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_193225000, log, type, "Attempted to show login code CFUserNotification on HomePod, AuthKit prompts aren't made for this!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v21 = 0;
    v13 = 1;
  }

  else
  {
    v12 = [AKLoginCodeNotificationBuilder buildLoginCodeNotificationOptionsWithTitle:location[0] body:v19 footer:v18 loginCode:v17];
    v21 = AKUserNotificationCreate(*MEMORY[0x1E695E480], 0, 0, v12, 0.0);
    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v21;
}

+ (id)buildLoginCodeNotificationOptionsWithTitle:(id)a3 body:(id)a4 footer:(id)a5 loginCode:(id)a6
{
  v35[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = 0;
  objc_storeStrong(&v31, a6);
  v30 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [(AKAppleIDAuthenticationContext *)v30 _setMessage:location[0]];
  [(AKAppleIDAuthenticationContext *)v30 setReason:v33];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%06u", objc_msgSend(v31, "unsignedIntValue")];
  [(AKAppleIDAuthenticationContext *)v30 setGeneratedCode:?];
  MEMORY[0x1E69E5920](v15);
  [(AKAppleIDAuthenticationContext *)v30 setNotificationDisclaimer:v32];
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v16 = [v17 localizedStringForKey:@"LOGIN_CODE_ALERT_OK_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v6 = *MEMORY[0x1E695EE78];
  [v29 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  v18 = [(AKAppleIDAuthenticationContext *)v30 _message];
  v7 = *MEMORY[0x1E69D4518];
  [v29 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v18);
  v19 = [(AKAppleIDAuthenticationContext *)v30 _interpolatedReason];
  v8 = *MEMORY[0x1E69D4520];
  [v29 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v19);
  v9 = *MEMORY[0x1E695EE68];
  v24 = MEMORY[0x1E695E118];
  [v29 setObject:? forKeyedSubscript:?];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v21 resourceURL];
  v10 = *MEMORY[0x1E695EE90];
  [v29 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v21);
  v28 = [MEMORY[0x1E696ABE0] extensionItemWithAppleIDAuthenticationContext:v30];
  v22 = MEMORY[0x1E696ACC8];
  v35[0] = v28;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v27 = [v22 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  MEMORY[0x1E69E5920](v23);
  v25 = MEMORY[0x1E69D44F8];
  [v29 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69D44F8]];
  [v29 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69D44D0]];
  [v29 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69D44E8]];
  [v29 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69D4508]];
  [v29 setObject:v27 forKeyedSubscript:*v25];
  [v29 setObject:@"com.apple.AuthKitUI.AKSecondFactorAlert" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
  v26 = MEMORY[0x1E69E5928](v29);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v26;
}

@end