@interface VSOpaqueAuthenticationToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromUnsupportedProvider;
- (BOOL)isValid;
- (NSData)serializedData;
- (NSString)description;
- (VSOpaqueAuthenticationToken)init;
- (VSOpaqueAuthenticationToken)initWithSerializedData:(id)data;
- (unint64_t)hash;
- (void)serializedData;
@end

@implementation VSOpaqueAuthenticationToken

- (VSOpaqueAuthenticationToken)init
{
  v8.receiver = self;
  v8.super_class = VSOpaqueAuthenticationToken;
  v2 = [(VSOpaqueAuthenticationToken *)&v8 init];
  v3 = v2;
  if (v2)
  {
    body = v2->_body;
    v2->_body = &stru_284DD5B48;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    expirationDate = v3->_expirationDate;
    v3->_expirationDate = distantFuture;
  }

  return v3;
}

- (VSOpaqueAuthenticationToken)initWithSerializedData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The serializedData parameter must not be nil."];
  }

  v5 = [(VSOpaqueAuthenticationToken *)self init];
  if (v5)
  {
    v31 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v31];
    v7 = v31;
    if (v6)
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x277CBEAD8];
          v10 = *MEMORY[0x277CBE660];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          [v9 raise:v10 format:{@"Unexpectedly, plist was %@, instead of NSDictionary.", v12}];
        }

        v13 = v8;
        v14 = [v13 objectForKey:@"expirationDate"];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v29 = MEMORY[0x277CBEAD8];
              v17 = *MEMORY[0x277CBE660];
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              [v29 raise:v17 format:{@"Unexpectedly, expirationDate was %@, instead of NSDate.", v19}];
            }

            [(VSOpaqueAuthenticationToken *)v5 setExpirationDate:v16];
          }

          else
          {
            v20 = VSErrorLogObject();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [VSOpaqueAuthenticationToken initWithSerializedData:];
            }
          }
        }

        else
        {
          v16 = VSErrorLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [VSOpaqueAuthenticationToken initWithSerializedData:];
          }
        }

        v21 = [v13 objectForKey:@"body"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = MEMORY[0x277CBEAD8];
              v28 = *MEMORY[0x277CBE660];
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              [v30 raise:v28 format:{@"Unexpectedly, body was %@, instead of NSString.", v25}];
            }

            [(VSOpaqueAuthenticationToken *)v5 setBody:v23];
          }

          else
          {
            v26 = VSErrorLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [VSOpaqueAuthenticationToken initWithSerializedData:];
            }
          }
        }

        else
        {
          v23 = VSErrorLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [VSOpaqueAuthenticationToken initWithSerializedData:];
          }
        }
      }

      else
      {
        v13 = VSErrorLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [VSOpaqueAuthenticationToken initWithSerializedData:];
        }
      }
    }

    else
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [VSOpaqueAuthenticationToken initWithSerializedData:];
      }
    }
  }

  return v5;
}

- (BOOL)isValid
{
  vs_currentDate = [MEMORY[0x277CBEAA8] vs_currentDate];
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v5 = [expirationDate vs_isAfter:vs_currentDate];

  return v5;
}

- (BOOL)isFromUnsupportedProvider
{
  body = [(VSOpaqueAuthenticationToken *)self body];
  v3 = [body length] == 0;

  return v3;
}

- (NSData)serializedData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v5 = [VSOptional optionalWithObject:expirationDate];

  forceUnwrapObject = [v5 forceUnwrapObject];
  [v3 setObject:forceUnwrapObject forKey:@"expirationDate"];

  body = [(VSOpaqueAuthenticationToken *)self body];
  [v3 setObject:body forKey:@"body"];

  v12 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:100 options:0 error:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [VSOpaqueAuthenticationToken serializedData];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to serialize opaque authentication token."];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The data parameter must not be nil."];
  }

  return v8;
}

- (unint64_t)hash
{
  serializedData = [(VSOpaqueAuthenticationToken *)self serializedData];
  v3 = [serializedData hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSOpaqueAuthenticationToken.", v10}];
      }

      v11 = v6;
      serializedData = [(VSOpaqueAuthenticationToken *)self serializedData];
      serializedData2 = [(VSOpaqueAuthenticationToken *)v11 serializedData];

      v14 = [serializedData isEqual:serializedData2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v7 = [v3 stringWithFormat:@"<%@ %@=%@>", v5, @"expirationDate", expirationDate];

  return v7;
}

- (void)initWithSerializedData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)serializedData
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end