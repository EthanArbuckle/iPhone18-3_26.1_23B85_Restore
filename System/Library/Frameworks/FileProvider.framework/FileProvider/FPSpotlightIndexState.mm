@interface FPSpotlightIndexState
+ (FPSpotlightIndexState)stateWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (FPSpotlightIndexState)init;
- (FPSpotlightIndexState)initWithChangeToken:(id)token;
- (FPSpotlightIndexState)initWithPage:(id)page changeToken:(id)token;
- (NSData)dataRepresentation;
- (id)description;
- (void)dataRepresentation;
@end

@implementation FPSpotlightIndexState

- (NSData)dataRepresentation
{
  p_lastChangeToken = &self->_lastChangeToken;
  lastChangeToken = self->_lastChangeToken;
  p_lastPage = &self->_lastPage;
  lastPage = self->_lastPage;
  if (!(lastChangeToken | lastPage))
  {
    v7 = 0;
    goto LABEL_9;
  }

  if ([(NSData *)lastPage length]<= 0x1F4 && [(NSData *)*p_lastChangeToken length]< 0x401)
  {
    v9 = objc_opt_new();
    v12 = 1;
    v13 = [(NSData *)*p_lastPage length];
    v14 = [(NSData *)*p_lastChangeToken length];
    [v9 appendBytes:&v12 length:5];
    if (*p_lastPage)
    {
      [v9 appendData:?];
    }

    if (*p_lastChangeToken)
    {
      [v9 appendData:?];
    }

    if ([v9 length]< 0x401)
    {
      v7 = v9;
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPSpotlightIndexState.m" lineNumber:137 description:{@"UNREACHABLE: index state is too large! %@", v9}];
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FPSpotlightIndexState *)p_lastPage dataRepresentation];
    }
  }

  v7 = 0;
LABEL_8:

LABEL_9:

  return v7;
}

- (FPSpotlightIndexState)init
{
  v5.receiver = self;
  v5.super_class = FPSpotlightIndexState;
  v2 = [(FPSpotlightIndexState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_lastPage, &_NSFileProviderInitialPageSortedByDate);
  }

  return v3;
}

- (FPSpotlightIndexState)initWithPage:(id)page changeToken:(id)token
{
  pageCopy = page;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = FPSpotlightIndexState;
  v9 = [(FPSpotlightIndexState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastPage, page);
    objc_storeStrong(&v10->_lastChangeToken, token);
  }

  return v10;
}

- (FPSpotlightIndexState)initWithChangeToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = FPSpotlightIndexState;
  v6 = [(FPSpotlightIndexState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lastChangeToken, token);
  }

  return v7;
}

+ (FPSpotlightIndexState)stateWithData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  memset(v13, 0, 5);
  if (!dataCopy)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if ([dataCopy length] > 4)
  {
    [v4 getBytes:v13 length:5];
    if (LOBYTE(v13[0]) != 1)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [FPSpotlightIndexState stateWithData:v13];
      }

      goto LABEL_13;
    }

    if (*(v13 + 1))
    {
      v7 = *(v13 + 1) + 5;
      if (v7 > [v4 length])
      {
        v5 = fp_current_or_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          [FPSpotlightIndexState stateWithData:?];
        }

        goto LABEL_13;
      }

      v5 = [v4 subdataWithRange:{5, *(v13 + 1)}];
      v9 = *(v13 + 1) + 5;
    }

    else
    {
      v5 = 0;
      v9 = 5;
    }

    if (*(v13 + 3))
    {
      v10 = v9 + *(v13 + 3);
      if (v10 > [v4 length])
      {
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [FPSpotlightIndexState stateWithData:?];
        }

        goto LABEL_13;
      }

      v12 = [v4 subdataWithRange:{v9, *(v13 + 3)}];
    }

    else
    {
      v12 = 0;
    }

    if (v5 | v12)
    {
      v6 = [[FPSpotlightIndexState alloc] initWithPage:v5 changeToken:v12];

      goto LABEL_14;
    }

    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexState stateWithData:v5];
    }
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(FPSpotlightIndexState *)v4 stateWithData:v5];
    }
  }

LABEL_13:
  v6 = 0;
LABEL_14:

LABEL_15:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    lastPage = [v5 lastPage];
    if (lastPage == self->_lastPage)
    {
      v8 = 1;
    }

    else
    {
      lastPage2 = [v5 lastPage];
      v8 = [lastPage2 isEqual:self->_lastPage];
    }

    lastChangeToken = [v5 lastChangeToken];
    if (lastChangeToken != self->_lastChangeToken)
    {
      lastChangeToken2 = [v5 lastChangeToken];
      v8 &= [lastChangeToken2 isEqual:self->_lastChangeToken];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  phase = [(FPSpotlightIndexState *)self phase];
  phase2 = [(FPSpotlightIndexState *)self phase];
  v7 = 16;
  if (!phase2)
  {
    v7 = 8;
  }

  v8 = *(&self->super.isa + v7);
  v9 = @"changes";
  if (!phase)
  {
    v9 = @"gathering";
  }

  return [v3 stringWithFormat:@"@<%@: %p, %@ from %@>", v4, self, v9, v8];
}

+ (void)stateWithData:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1AAAE1000, v2, v3, "[CRIT] unexpected data version (%u): %@");
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)stateWithData:(unsigned __int16 *)a1 .cold.2(unsigned __int16 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1AAAE1000, v2, v3, "[CRIT] couldn't read page of size %u from data: %@");
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)stateWithData:(unsigned __int16 *)a1 .cold.3(unsigned __int16 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1AAAE1000, v2, v3, "[CRIT] couldn't read change token of size %u from data: %@");
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)stateWithData:(uint64_t)a1 .cold.5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "[CRIT] couldn't parse data header: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)dataRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] vendor token is too large! page:%@ change:%@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end