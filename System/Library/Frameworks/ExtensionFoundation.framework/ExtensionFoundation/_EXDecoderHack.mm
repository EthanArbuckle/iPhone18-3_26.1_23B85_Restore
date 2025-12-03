@interface _EXDecoderHack
- (_EXDecoderHack)initWithContextFactory:(id)factory;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
@end

@implementation _EXDecoderHack

- (_EXDecoderHack)initWithContextFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = _EXDecoderHack;
  v5 = [(_EXDecoderHack *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(factoryCopy);
    contextFactory = v5->_contextFactory;
    v5->_contextFactory = v6;
  }

  return v5;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  if (EXGetExtensionContextInternalClass() != class)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXDecoderHack decodeObjectOfClass:forKey:];
    }

    goto LABEL_10;
  }

  if (([keyCopy isEqualToString:@"self.internalExtensionContext"] & 1) == 0)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXDecoderHack decodeObjectOfClass:forKey:];
    }

LABEL_10:

    __break(1u);
    return result;
  }

  v7 = (*(self->_contextFactory + 2))();

  return v7;
}

- (void)decodeObjectOfClass:forKey:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "aClass == EXGetExtensionContextInternalClass()";
  v4 = 2080;
  OUTLINED_FUNCTION_0();
  v5 = 38;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected class for decoding", v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)decodeObjectOfClass:forKey:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "[key isEqualToString:@self.internalExtensionContext]";
  v4 = 2080;
  OUTLINED_FUNCTION_0();
  v5 = 39;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected key for decoding", v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

@end