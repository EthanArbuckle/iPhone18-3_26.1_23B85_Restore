@interface LAHostingController
+ (id)makeHostingControllerWithConfiguration:(id)a3;
@end

@implementation LAHostingController

+ (id)makeHostingControllerWithConfiguration:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_alloc(MEMORY[0x277D241E8]) initWithConfiguration:v3];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __62__LAHostingController_makeHostingControllerWithConfiguration___block_invoke;
      v8[3] = &unk_278A65F88;
      v9 = v3;
      [v4 prepareRemoteSceneWithCompletion:v8];
      v5 = v9;
      goto LABEL_10;
    }

    v5 = LACLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "LAHostingController unable to decode configuration";
      goto LABEL_8;
    }
  }

  else
  {
    v5 = LACLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "LAHostingController missing configuration";
LABEL_8:
      _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

void __62__LAHostingController_makeHostingControllerWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = LACLogUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__LAHostingController_makeHostingControllerWithConfiguration___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

void __62__LAHostingController_makeHostingControllerWithConfiguration___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_238BCD000, log, OS_LOG_TYPE_ERROR, "Unable to prepare remote scene for configuration: %@ with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end