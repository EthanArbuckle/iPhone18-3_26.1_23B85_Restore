@interface ASTSuiteResultTest
- (ASTSuiteResultTest)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResultTest)initWithTestID:(id)d name:(id)name value:(id)value status:(id)status result:(id)result description:(id)description;
@end

@implementation ASTSuiteResultTest

- (ASTSuiteResultTest)initWithTestID:(id)d name:(id)name value:(id)value status:(id)status result:(id)result description:(id)description
{
  dCopy = d;
  nameCopy = name;
  valueCopy = value;
  statusCopy = status;
  resultCopy = result;
  descriptionCopy = description;
  v24.receiver = self;
  v24.super_class = ASTSuiteResultTest;
  v18 = [(ASTSuiteResultTest *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_testID, d);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_value, value);
    objc_storeStrong(&v19->_status, status);
    objc_storeStrong(&v19->_result, result);
    objc_storeStrong(&v19->_testDescription, description);
  }

  return v19;
}

- (ASTSuiteResultTest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = ASTSuiteResultTest;
  v7 = [(ASTSuiteResultTest *)&v29 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"testID"];
  v28 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [[ASTSuiteResultStatus alloc] initWithDictionary:v10 error:error];
LABEL_9:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"summary"];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"testDescription"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v9 | v11)
          {
            testID = v7->_testID;
            v7->_testID = v8;
            v27 = v8;

            name = v7->_name;
            v7->_name = v28;
            v16 = v28;

            value = v7->_value;
            v7->_value = v9;
            v18 = v9;

            status = v7->_status;
            v7->_status = v11;
            v20 = v11;

            v21 = v7->_result;
            v7->_result = v12;
            v22 = v12;

            testDescription = v7->_testDescription;
            v7->_testDescription = v13;

LABEL_15:
            v24 = v7;
            goto LABEL_21;
          }
        }
      }
    }
  }

  v25 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v25];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

  v24 = 0;
LABEL_21:

  return v24;
}

@end