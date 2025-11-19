@interface FPSpotlightIndexState
+ (FPSpotlightIndexState)stateWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FPSpotlightIndexState)init;
- (FPSpotlightIndexState)initWithChangeToken:(id)a3;
- (FPSpotlightIndexState)initWithPage:(id)a3 changeToken:(id)a4;
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

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"FPSpotlightIndexState.m" lineNumber:137 description:{@"UNREACHABLE: index state is too large! %@", v9}];
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

- (FPSpotlightIndexState)initWithPage:(id)a3 changeToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FPSpotlightIndexState;
  v9 = [(FPSpotlightIndexState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastPage, a3);
    objc_storeStrong(&v10->_lastChangeToken, a4);
  }

  return v10;
}

- (FPSpotlightIndexState)initWithChangeToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPSpotlightIndexState;
  v6 = [(FPSpotlightIndexState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lastChangeToken, a3);
  }

  return v7;
}

+ (FPSpotlightIndexState)stateWithData:(id)a3
{
  v3 = a3;
  v4 = v3;
  memset(v13, 0, 5);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if ([v3 length] > 4)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 lastPage];
    if (v6 == self->_lastPage)
    {
      v8 = 1;
    }

    else
    {
      v7 = [v5 lastPage];
      v8 = [v7 isEqual:self->_lastPage];
    }

    v9 = [v5 lastChangeToken];
    if (v9 != self->_lastChangeToken)
    {
      v10 = [v5 lastChangeToken];
      v8 &= [v10 isEqual:self->_lastChangeToken];
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
  v5 = [(FPSpotlightIndexState *)self phase];
  v6 = [(FPSpotlightIndexState *)self phase];
  v7 = 16;
  if (!v6)
  {
    v7 = 8;
  }

  v8 = *(&self->super.isa + v7);
  v9 = @"changes";
  if (!v5)
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
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] vendor token is too large! page:%@ change:%@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end