@interface ASTSuiteResultTest
- (ASTSuiteResultTest)initWithDictionary:(id)a3 error:(id *)a4;
- (ASTSuiteResultTest)initWithTestID:(id)a3 name:(id)a4 value:(id)a5 status:(id)a6 result:(id)a7 description:(id)a8;
@end

@implementation ASTSuiteResultTest

- (ASTSuiteResultTest)initWithTestID:(id)a3 name:(id)a4 value:(id)a5 status:(id)a6 result:(id)a7 description:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = ASTSuiteResultTest;
  v18 = [(ASTSuiteResultTest *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_testID, a3);
    objc_storeStrong(&v19->_name, a4);
    objc_storeStrong(&v19->_value, a5);
    objc_storeStrong(&v19->_status, a6);
    objc_storeStrong(&v19->_result, a7);
    objc_storeStrong(&v19->_testDescription, a8);
  }

  return v19;
}

- (ASTSuiteResultTest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = ASTSuiteResultTest;
  v7 = [(ASTSuiteResultTest *)&v29 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 objectForKeyedSubscript:@"testID"];
  v28 = [v6 objectForKeyedSubscript:@"name"];
  v9 = [v6 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"status"];
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

  v11 = [[ASTSuiteResultStatus alloc] initWithDictionary:v10 error:a4];
LABEL_9:
  v12 = [v6 objectForKeyedSubscript:@"summary"];
  v13 = [v6 objectForKeyedSubscript:@"testDescription"];
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

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

  v24 = 0;
LABEL_21:

  return v24;
}

@end