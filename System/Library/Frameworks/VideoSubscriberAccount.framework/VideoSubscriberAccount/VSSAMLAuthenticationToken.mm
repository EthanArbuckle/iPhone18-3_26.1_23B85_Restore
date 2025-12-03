@interface VSSAMLAuthenticationToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSDate)expirationDate;
- (NSString)body;
- (NSString)description;
- (VSSAMLAuthenticationToken)initWithSerializedData:(id)data;
- (unint64_t)hash;
- (void)body;
- (void)expirationDate;
- (void)setBody:(id)body;
@end

@implementation VSSAMLAuthenticationToken

- (VSSAMLAuthenticationToken)initWithSerializedData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The serializedData parameter must not be nil."];
  }

  v5 = [(VSSAMLAuthenticationToken *)self init];
  if (v5)
  {
    v6 = [dataCopy copy];
    serializedData = v5->_serializedData;
    v5->_serializedData = v6;
  }

  return v5;
}

- (NSDate)expirationDate
{
  v3 = VSSharedSAMLParserController();
  body = [(VSSAMLAuthenticationToken *)self body];
  v10 = 0;
  v5 = [v3 parseCachedResponse:body error:&v10];
  v6 = v10;

  if (v5)
  {
    authenticationTTL = [v5 authenticationTTL];
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VSSAMLAuthenticationToken expirationDate];
    }

    authenticationTTL = 0;
  }

  return authenticationTTL;
}

- (BOOL)isValid
{
  v3 = VSSharedSAMLParserController();
  body = [(VSSAMLAuthenticationToken *)self body];
  v10 = 0;
  v5 = [v3 parseCachedResponse:body error:&v10];
  v6 = v10;

  if (v5)
  {
    hasValidAuthentication = [v5 hasValidAuthentication];
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VSSAMLAuthenticationToken expirationDate];
    }

    hasValidAuthentication = 0;
  }

  return hasValidAuthentication;
}

- (NSString)body
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  serializedData = [(VSSAMLAuthenticationToken *)self serializedData];
  v5 = [v3 initWithData:serializedData encoding:4];

  v6 = [VSOptional optionalWithObject:v5];
  v7 = [v6 unwrapWithFallback:&stru_284DD5B48];

  simulatedExpirationDate = [(VSSAMLAuthenticationToken *)self simulatedExpirationDate];

  if (simulatedExpirationDate)
  {
    v9 = VSDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Simulate expired token enabled, will return augmented token body.", buf, 2u);
    }

    v10 = VSSharedSAMLParserController();
    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The currentBody parameter must not be nil."];
    }

    v21 = 0;
    v11 = [v10 parseCachedResponse:v7 error:&v21];
    v12 = v21;

    if (v11)
    {
      v13 = MEMORY[0x277CBEAA8];
      v14 = v11;
      distantPast = [v13 distantPast];
      [v14 setAuthenticationTTL:distantPast];

      v16 = [v14 xmlString:0];

      v17 = [VSOptional optionalWithObject:v16];
      v18 = [v17 unwrapWithFallback:&stru_284DD5B48];

      goto LABEL_12;
    }

    v19 = VSErrorLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VSSAMLAuthenticationToken body];
    }
  }

  v18 = v7;
LABEL_12:

  return v18;
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  if (!bodyCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The body parameter must not be nil."];
  }

  v5 = [bodyCopy dataUsingEncoding:4];
  v6 = [VSOptional optionalWithObject:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__VSSAMLAuthenticationToken_setBody___block_invoke;
  v7[3] = &unk_278B74078;
  v7[4] = self;
  [v6 conditionallyUnwrapObject:v7 otherwise:&__block_literal_global_17];
}

- (unint64_t)hash
{
  serializedData = [(VSSAMLAuthenticationToken *)self serializedData];
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
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSSAMLAuthenticationToken.", v10}];
      }

      v11 = v6;
      serializedData = [(VSSAMLAuthenticationToken *)self serializedData];
      serializedData2 = [(VSSAMLAuthenticationToken *)v11 serializedData];

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
  expirationDate = [(VSSAMLAuthenticationToken *)self expirationDate];
  v7 = [v3 stringWithFormat:@"<%@ %@=%@>", v5, @"expirationDate", expirationDate];

  return v7;
}

- (void)expirationDate
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)body
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end