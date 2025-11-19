@interface ASRelationship(CloudKitCodingSupport)
@end

@implementation ASRelationship(CloudKitCodingSupport)

+ (void)_relationshipWithRecord:()CloudKitCodingSupport relationshipEventRecords:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_relationshipWithRecord:()CloudKitCodingSupport relationshipEventRecords:completion:.cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 relationshipEvents];
  [v4 count];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(&dword_23E4FA000, v5, v6, "Recieved a mismatched number of relationship events when creating relationship, relationship has a count of %lu events and %lu events were found.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_relationshipWithRecord:()CloudKitCodingSupport relationshipEventRecords:completion:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_relationshipWithRecord:()CloudKitCodingSupport relationshipEventRecords:completion:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)relationshipWithCodableRelationship:()CloudKitCodingSupport version:.cold.1(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138543362;
  *a4 = v7;
  v8 = v7;
  _os_log_error_impl(&dword_23E4FA000, v6, OS_LOG_TYPE_ERROR, "Codable relationship contained an event that has class %{public}@", a1, 0xCu);
}

+ (void)relationshipsWithRelationshipAndEventRecords:()CloudKitCodingSupport .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end