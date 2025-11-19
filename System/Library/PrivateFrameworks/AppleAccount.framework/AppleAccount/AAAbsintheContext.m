@interface AAAbsintheContext
- (AAAbsintheContext)init;
- (BOOL)R6XtwiyjL3q2:(id)a3 error:(id *)a4;
- (id)TgBfoO2wtF5L:(id)a3 error:(id *)a4;
- (id)cao1NI5PNJBn:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation AAAbsintheContext

- (AAAbsintheContext)init
{
  v3.receiver = self;
  v3.super_class = AAAbsintheContext;
  result = [(AAAbsintheContext *)&v3 init];
  if (result)
  {
    result->_contextRef = 0;
  }

  return result;
}

- (void)dealloc
{
  contextRef = self->_contextRef;
  if (contextRef)
  {
    IW1PcFszqNK(contextRef);
  }

  v4.receiver = self;
  v4.super_class = AAAbsintheContext;
  [(AAAbsintheContext *)&v4 dealloc];
}

- (id)TgBfoO2wtF5L:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    [AAAbsintheContext TgBfoO2wtF5L:a2 error:self];
  }

  if (self->_contextRef)
  {
    [AAAbsintheContext TgBfoO2wtF5L:a2 error:self];
  }

  KxmB0CKvgWt([v7 bytes], objc_msgSend(v7, "length"));
  if (v8)
  {
    v9 = v8;
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext TgBfoO2wtF5L:v9 error:?];
    }

    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v16 = @"AAAbsintheError";
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      v17[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a4 = [v11 aa_errorWithCode:-4403 userInfo:v13];

      a4 = 0;
    }
  }

  else
  {
    a4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:0 length:0 deallocator:&__block_literal_global_10];
  }

  v14 = *MEMORY[0x1E69E9840];

  return a4;
}

- (BOOL)R6XtwiyjL3q2:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    [AAAbsintheContext R6XtwiyjL3q2:a2 error:self];
  }

  nDYmeMqvWb(self->_contextRef, [v7 bytes], objc_msgSend(v7, "length"));
  v9 = v8;
  if (v8)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext R6XtwiyjL3q2:v9 error:?];
    }

    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v16 = @"AAAbsintheError";
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      v17[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a4 = [v11 aa_errorWithCode:-4403 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (id)cao1NI5PNJBn:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  contextRef = self->_contextRef;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  t1BoNctgaUu66(contextRef, v9, v10, &v21);
  if (v11)
  {
    v12 = v11;
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext cao1NI5PNJBn:v12 error:?];
    }

    if (v21)
    {
      Be81a395Bf0(v21);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v22 = @"AAAbsintheError";
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v23[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = [v14 aa_errorWithCode:-4403 userInfo:v16];
    }

    v17 = 0;
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E695DEF0]);
    v17 = [v18 initWithBytesNoCopy:v21 length:0 deallocator:&__block_literal_global_54];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"certificateData"}];
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:48 description:@"Proxy already initialized!"];
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:.cold.3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to initialize context: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)R6XtwiyjL3q2:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"sessionInfo"}];
}

- (void)R6XtwiyjL3q2:(uint64_t)a1 error:.cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to establish key: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)cao1NI5PNJBn:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to generate signature: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end