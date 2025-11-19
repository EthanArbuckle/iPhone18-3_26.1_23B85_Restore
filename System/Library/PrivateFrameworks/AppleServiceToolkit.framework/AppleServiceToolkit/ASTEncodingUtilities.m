@interface ASTEncodingUtilities
+ (id)MD5ForFileHandle:(id)a3;
+ (id)SHA256HashForString:(id)a3;
+ (id)jsonSerializeObject:(id)a3 error:(id *)a4;
+ (id)parseJSONResponseWithData:(id)a3 error:(id *)a4;
@end

@implementation ASTEncodingUtilities

+ (id)parseJSONResponseWithData:(id)a3 error:(id *)a4
{
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:a4];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

+ (id)jsonSerializeObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![MEMORY[0x277CCAAA0] isValidJSONObject:v5] || (objc_msgSend(MEMORY[0x277CCAAA0], "dataWithJSONObject:options:error:", v5, 0, a4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ASTEncodingUtilities jsonSerializeObject:error:];
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4001 userInfo:0];
    }

    v6 = [MEMORY[0x277CBEA90] data];
  }

  return v6;
}

+ (id)SHA256HashForString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ASTEncodingUtilities SHA256HashForString:];
    }

    goto LABEL_13;
  }

  *md = 0u;
  v13 = 0u;
  v5 = [v3 UTF8String];
  v6 = [v4 lengthOfBytesUsingEncoding:4];
  if ((v6 - 0x80000000) <= 0xFFFFFFFF80000000)
  {
    v7 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASTEncodingUtilities *)v4 SHA256HashForString:v6, v7];
    }

LABEL_13:

    v8 = 0;
    goto LABEL_14;
  }

  if (!v5)
  {
    v7 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ASTEncodingUtilities SHA256HashForString:];
    }

    goto LABEL_13;
  }

  CC_SHA256(v5, v6, md);
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v8 appendFormat:@"%02X", md[i]];
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)MD5ForFileHandle:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 offsetInFile];
  [v3 seekToFileOffset:0];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  do
  {
    v5 = [v3 readDataOfLength:0x10000];
    v6 = [v5 length];
    v7 = v5;
    CC_MD5_Update(&c, [v5 bytes], v6);
  }

  while (v6);
  [v3 seekToFileOffset:v4];
  CC_MD5_Final(md, &c);
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v8 appendFormat:@"%02x", md[i]];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)jsonSerializeObject:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)SHA256HashForString:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_240F3C000, log, OS_LOG_TYPE_ERROR, "SHA256HashForString: Invalid stride length %lu for string %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)MD5ForFileHandle:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end