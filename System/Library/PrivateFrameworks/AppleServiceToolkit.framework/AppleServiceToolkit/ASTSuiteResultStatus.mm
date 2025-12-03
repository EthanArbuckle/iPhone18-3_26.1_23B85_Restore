@interface ASTSuiteResultStatus
- (ASTSuiteResultStatus)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResultStatus)initWithStatus:(id)status statusCode:(id)code;
@end

@implementation ASTSuiteResultStatus

- (ASTSuiteResultStatus)initWithStatus:(id)status statusCode:(id)code
{
  statusCopy = status;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = ASTSuiteResultStatus;
  v9 = [(ASTSuiteResultStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_status, status);
    objc_storeStrong(&v10->_statusCode, code);
  }

  return v10;
}

- (ASTSuiteResultStatus)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ASTSuiteResultStatus;
  v7 = [(ASTSuiteResultStatus *)&v16 init];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"statusCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      status = v7->_status;
      v7->_status = v8;
      v13 = v8;

      statusCode = v7->_statusCode;
      v7->_statusCode = v9;

LABEL_10:
      v11 = v7;
      goto LABEL_11;
    }
  }

  v10 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v10];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end