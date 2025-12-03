@interface AKLAContextValidator
+ (BOOL)validateExternalizedContext:(id)context error:(id *)error;
@end

@implementation AKLAContextValidator

+ (BOOL)validateExternalizedContext:(id)context error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v4 = objc_alloc(MEMORY[0x1E696EE58]);
  v16 = [v4 initWithExternalizedContext:location[0]];
  v15 = 0;
  v14[1] = 4;
  obj = 0;
  v9 = [v16 evaluatePolicy:4 options:MEMORY[0x1E695E0F8] error:&obj];
  objc_storeStrong(&v15, obj);
  v14[0] = v9;
  oslog = _AKLogSiwa();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v21, v14[0], v15);
    _os_log_debug_impl(&dword_193225000, oslog, type, "Biometric validation of externalizedContext completed with result: %@ and error: %@", v21, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v15)
  {
    v10 = _AKLogSiwa();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v15);
      _os_log_error_impl(&dword_193225000, v10, OS_LOG_TYPE_ERROR, "Failed to validate externalized Context data with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v10, 0);
    if (errorCopy)
    {
      v7 = v15;
      v5 = v15;
      *errorCopy = v7;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v19 & 1;
}

@end