@interface ASTResponse
+ (id)responseWithDictionary:(id)dictionary;
+ (id)stringFromCommand:(int64_t)command;
- (ASTResponse)initWithDictionary:(id)dictionary;
- (BOOL)validateResponse:(id)response key:(id)key expectedClass:(Class)class;
- (BOOL)validateTestId:(id)id command:(int64_t)command;
- (id)description;
- (id)validateData:(id)data command:(int64_t)command;
@end

@implementation ASTResponse

- (ASTResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = ASTResponse;
  v5 = [(ASTResponse *)&v24 init];
  if (v5)
  {
    if ([(ASTResponse *)v5 validateResponse:dictionaryCopy key:@"statusResponse" expectedClass:objc_opt_class()])
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"statusResponse"];
    }

    else
    {
      v7 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ASTResponse initWithDictionary:];
      }

      v6 = 0;
      v5 = 0;
    }

    v8 = +[ASTResponse _stringToCommand];
    if (v5 && -[ASTResponse validateResponse:key:expectedClass:](v5, "validateResponse:key:expectedClass:", v6, @"command", objc_opt_class()) && ([v6 objectForKeyedSubscript:@"command"], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = [v6 objectForKeyedSubscript:@"command"];
      commandString = v5->_commandString;
      v5->_commandString = v11;

      v13 = [v6 objectForKeyedSubscript:@"command"];
      v14 = [v8 objectForKeyedSubscript:v13];
      v5->_command = [v14 integerValue];

      v15 = [v6 objectForKeyedSubscript:@"data"];
      v16 = [(ASTResponse *)v5 validateData:v15 command:v5->_command];
      data = v5->_data;
      v5->_data = v16;

      if (v5->_data)
      {
        if ([(ASTResponse *)v5 validateResponse:v6 key:@"testId" expectedClass:objc_opt_class()])
        {
          v18 = [v6 objectForKeyedSubscript:@"testId"];
          testId = v5->_testId;
          v5->_testId = v18;
        }

        if ([(ASTResponse *)v5 validateTestId:v5->_testId command:v5->_command])
        {
          if (![(ASTResponse *)v5 validateResponse:v6 key:@"progress" expectedClass:objc_opt_class()])
          {
LABEL_20:

            goto LABEL_21;
          }

          v20 = [v6 objectForKeyedSubscript:@"progress"];
          progress = v5->_progress;
          v5->_progress = v20;
LABEL_19:

          goto LABEL_20;
        }

        v22 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ASTResponse initWithDictionary:];
        }
      }

      else
      {
        v22 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ASTResponse initWithDictionary:];
        }
      }
    }

    else
    {
      v22 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ASTResponse initWithDictionary:];
      }
    }

    progress = v5;
    v5 = 0;
    goto LABEL_19;
  }

LABEL_21:

  return v5;
}

+ (id)responseWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

+ (id)stringFromCommand:(int64_t)command
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASTResponse_stringFromCommand___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (stringFromCommand__onceToken != -1)
  {
    dispatch_once(&stringFromCommand__onceToken, block);
  }

  v4 = stringFromCommand___stringFromCommand;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:command];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = v8;

  return v8;
}

void __33__ASTResponse_stringFromCommand___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _stringToCommand];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v13}];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = stringFromCommand___stringFromCommand;
  stringFromCommand___stringFromCommand = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  commandString = [(ASTResponse *)self commandString];
  data = [(ASTResponse *)self data];
  testId = [(ASTResponse *)self testId];
  progress = [(ASTResponse *)self progress];
  v8 = [v3 stringWithFormat:@"Command: %@, Data: %@, TestId: %@, Progress: %@", commandString, data, testId, progress];

  return v8;
}

- (BOOL)validateResponse:(id)response key:(id)key expectedClass:(Class)class
{
  responseCopy = response;
  keyCopy = key;
  v8 = [responseCopy objectForKeyedSubscript:keyCopy];
  if (v8 && (v9 = v8, [responseCopy objectForKeyedSubscript:keyCopy], v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
  {
    v12 = [responseCopy objectForKeyedSubscript:keyCopy];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [responseCopy objectForKeyedSubscript:keyCopy];
      v15 = [v14 length] != 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)validateTestId:(id)id command:(int64_t)command
{
  if (id)
  {
    v4 = 0;
  }

  else
  {
    v4 = (command - 5) >= 0xFFFFFFFFFFFFFFFELL;
  }

  v5 = !v4;
  if (v4)
  {
    v6 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASTResponse validateTestId:command:];
    }
  }

  return v5;
}

- (id)validateData:(id)data command:(int64_t)command
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  v8 = MEMORY[0x277CBEC10];
  if (command > 9)
  {
    if ((command - 11) < 2)
    {
      if (!dataCopy)
      {
        goto LABEL_74;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_39;
    }

    if (command != 10)
    {
      if (command != 13)
      {
        goto LABEL_75;
      }

      if (!dataCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v20 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }

      if ([(ASTResponse *)self validateResponse:v7 key:@"instructionId" expectedClass:objc_opt_class()]&& [(ASTResponse *)self validateResponse:v7 key:@"type" expectedClass:objc_opt_class()])
      {
        v17 = [v7 objectForKeyedSubscript:@"type"];
        v18 = [v17 isEqualToString:@"Alert"];
        if (v18 & 1) != 0 || ([v7 objectForKeyedSubscript:@"type"], command = objc_claimAutoreleasedReturnValue(), (objc_msgSend(command, "isEqualToString:", @"Query")))
        {
          v19 = [(ASTResponse *)self validateResponse:v7 key:@"reference" expectedClass:objc_opt_class()];
          if (v18)
          {

            if (v19)
            {
              goto LABEL_39;
            }
          }

          else
          {

            if (v19)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
        }
      }

      v20 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ASTResponse validateData:command:];
      }

      goto LABEL_73;
    }

    if (dataCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(ASTResponse *)self validateResponse:v7 key:@"actions" expectedClass:objc_opt_class()])
        {
          v20 = ASTLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [ASTResponse validateData:command:];
          }

          goto LABEL_73;
        }

        goto LABEL_39;
      }
    }

    v20 = ASTLogHandleForCategory(1);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

  if (command > 4)
  {
    if (command == 5)
    {
      if (dataCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(ASTResponse *)self validateResponse:v7 key:@"propertyItems" expectedClass:objc_opt_class()])
          {
            v20 = ASTLogHandleForCategory(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [ASTResponse validateData:command:];
            }

            goto LABEL_73;
          }

          goto LABEL_39;
        }
      }

      v20 = ASTLogHandleForCategory(1);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (command != 6)
      {
        goto LABEL_75;
      }

      if (dataCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_39;
        }
      }

      v20 = ASTLogHandleForCategory(1);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

LABEL_67:
    [ASTResponse validateData:command:];
    goto LABEL_73;
  }

  if (command == 2)
  {
    if (dataCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(ASTResponse *)self validateResponse:v7 key:@"imageName" expectedClass:objc_opt_class()]&& (![(ASTResponse *)self validateResponse:v7 key:@"action" expectedClass:objc_opt_class()]|| ![(ASTResponse *)self validateResponse:v7 key:@"viewTitle" expectedClass:objc_opt_class()]|| ![(ASTResponse *)self validateResponse:v7 key:@"suiteName" expectedClass:objc_opt_class()]))
        {
          v20 = ASTLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [ASTResponse validateData:command:];
          }

          goto LABEL_73;
        }

LABEL_39:
        v8 = v7;
        goto LABEL_75;
      }
    }

    v20 = ASTLogHandleForCategory(1);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

  if (command != 3)
  {
    goto LABEL_75;
  }

  if (!dataCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

LABEL_73:

LABEL_74:
    v8 = 0;
    goto LABEL_75;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v8, @"predicates", v8, @"parameters", v8, @"specifications", 0}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys copy];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([(ASTResponse *)self validateResponse:v7 key:v15 expectedClass:objc_opt_class()])
        {
          v16 = [v7 objectForKeyedSubscript:v15];
          [v8 setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v16 = ASTLogHandleForCategory(1);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v15;
            _os_log_impl(&dword_240F3C000, v16, OS_LOG_TYPE_DEFAULT, "Warning: statusResponse is missing %@ key. Defaulting to empty dictionary.", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v12);
  }

LABEL_75:
  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)initWithDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end