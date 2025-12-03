@interface BCSVCardParser
+ (id)parseString:(id)string;
@end

@implementation BCSVCardParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(BCSVCardParser *)v4 parseString:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([stringCopy length] <= 0xA)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSVCardParser *)v12 parseString:v13, v14, v15, v16, v17, v18, v19];
    }

LABEL_13:
    v33 = 0;
    goto LABEL_18;
  }

  if (([stringCopy _bcs_hasCaseInsensitivePrefix:@"BEGIN:VCARD"] & 1) == 0)
  {
    v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v34)
    {
      [(BCSVCardParser *)v34 parseString:v35, v36, v37, v38, v39, v40, v41];
    }

    goto LABEL_13;
  }

  CNContactVCardSerializationClass = getCNContactVCardSerializationClass();
  v21 = [stringCopy dataUsingEncoding:4];
  v22 = [CNContactVCardSerializationClass contactsWithData:v21 error:0];

  if ([v22 count])
  {
    v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      [(BCSVCardParser *)v23 parseString:v24, v25, v26, v27, v28, v29, v30];
    }

    v31 = [BCSContactData alloc];
    firstObject = [v22 firstObject];
    v33 = [(BCSContactData *)v31 initWithContact:firstObject];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BCSVCardParser parseString:];
    }

    v33 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:2 invalidContents:stringCopy];
  }

LABEL_18:

  return v33;
}

@end