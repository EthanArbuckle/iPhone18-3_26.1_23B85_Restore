@interface _ANEInputBuffersReady
- (BOOL)validate;
- (id)initInputsProcedureIndex:(unsigned int)index inputBufferInfoIndex:(id)infoIndex inputFreeValue:(id)value executionDelay:(unint64_t)delay;
- (void)validate;
@end

@implementation _ANEInputBuffersReady

- (id)initInputsProcedureIndex:(unsigned int)index inputBufferInfoIndex:(id)infoIndex inputFreeValue:(id)value executionDelay:(unint64_t)delay
{
  infoIndexCopy = infoIndex;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = _ANEInputBuffersReady;
  v13 = [(_ANEInputBuffersReady *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_procedureIndex = index;
    objc_storeStrong(&v13->_inputBufferInfoIndex, infoIndex);
    objc_storeStrong(&v14->_inputFreeValue, value);
    v14->_executionDelay = delay;
  }

  return v14;
}

- (BOOL)validate
{
  inputBufferInfoIndex = [(_ANEInputBuffersReady *)self inputBufferInfoIndex];
  v5 = [inputBufferInfoIndex count];

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

  inputFreeValue = [(_ANEInputBuffersReady *)self inputFreeValue];
  v8 = [inputFreeValue count];

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
  v3 = NSStringFromSelector(self);
  inputBufferInfoIndex = [a2 inputBufferInfoIndex];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8(&dword_1AD246000, v5, v6, "%@: inputBufferInfoIndex[%lu] count is greater than kANEMaxBuffers=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end