@interface _ANEInputBuffersReady
- (BOOL)validate;
- (id)initInputsProcedureIndex:(unsigned int)a3 inputBufferInfoIndex:(id)a4 inputFreeValue:(id)a5 executionDelay:(unint64_t)a6;
- (void)validate;
@end

@implementation _ANEInputBuffersReady

- (id)initInputsProcedureIndex:(unsigned int)a3 inputBufferInfoIndex:(id)a4 inputFreeValue:(id)a5 executionDelay:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = _ANEInputBuffersReady;
  v13 = [(_ANEInputBuffersReady *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_procedureIndex = a3;
    objc_storeStrong(&v13->_inputBufferInfoIndex, a4);
    objc_storeStrong(&v14->_inputFreeValue, a5);
    v14->_executionDelay = a6;
  }

  return v14;
}

- (BOOL)validate
{
  v4 = [(_ANEInputBuffersReady *)self inputBufferInfoIndex];
  v5 = [v4 count];

  if (v5 >= 0x100)
  {
    v6 = +[_ANELog common];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_ANEInputBuffersReady *)a2 validate];
    }

LABEL_7:

    return 0;
  }

  v7 = [(_ANEInputBuffersReady *)self inputFreeValue];
  v8 = [v7 count];

  if (v8 >= 0x100)
  {
    v6 = +[_ANELog common];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_ANEInputBuffersReady *)a2 validate];
    }

    goto LABEL_7;
  }

  return 1;
}

- (void)validate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 inputBufferInfoIndex];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8(&dword_1AD246000, v5, v6, "%@: inputBufferInfoIndex[%lu] count is greater than kANEMaxBuffers=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end