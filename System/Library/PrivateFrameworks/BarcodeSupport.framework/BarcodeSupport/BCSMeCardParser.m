@interface BCSMeCardParser
+ (id)parseString:(id)a3;
@end

@implementation BCSMeCardParser

+ (id)parseString:(id)a3
{
  v3 = a3;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(BCSMeCardParser *)v4 parseString:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([v3 length] <= 6)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSMeCardParser *)v12 parseString:v13, v14, v15, v16, v17, v18, v19];
    }

LABEL_13:
    v31 = 0;
    goto LABEL_18;
  }

  if (([v3 _bcs_hasCaseInsensitivePrefix:@"MECARD:"] & 1) == 0)
  {
    v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v32)
    {
      [(BCSMeCardParser *)v32 parseString:v33, v34, v35, v36, v37, v38, v39];
    }

    goto LABEL_13;
  }

  v20 = [getCNContactVCardSerializationClass() contactsWithMECARDString:v3 error:0];
  if ([v20 count])
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      [(BCSMeCardParser *)v21 parseString:v22, v23, v24, v25, v26, v27, v28];
    }

    v29 = [BCSContactData alloc];
    v30 = [v20 firstObject];
    v31 = [(BCSContactData *)v29 initWithContact:v30];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BCSMeCardParser parseString:];
    }

    v31 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:2 invalidContents:v3];
  }

LABEL_18:

  return v31;
}

+ (void)parseString:(void *)a3 .cold.3(void *a1, uint64_t a2, void *a3)
{
  v4 = objc_begin_catch(a1);
  *a3 = v4;
  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSMeCardParser: Failed to parse contact from MECARD string", v6, 2u);
  }
}

@end