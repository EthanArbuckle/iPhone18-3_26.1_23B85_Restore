@interface ASCloudDevice(CloudKitCodingSupport)
@end

@implementation ASCloudDevice(CloudKitCodingSupport)

+ (void)cloudDeviceWithRecord:()CloudKitCodingSupport .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)cloudDeviceWithRecord:()CloudKitCodingSupport .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() values];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v4, v5, "Cloud device record missing device type: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)cloudDeviceWithRecord:()CloudKitCodingSupport .cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() values];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v4, v5, "Cloud device record missing OS version: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)cloudDeviceWithRecord:()CloudKitCodingSupport .cold.4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() values];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v4, v5, "Cloud device record missing build: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end