@interface IOSurfaceTransaction
- (IOSurfaceTransaction)initWithSharedEvent:(id)a3 waitValue:(unint64_t)a4 isWrite:(BOOL)a5;
- (id)fromSerialized:(const void *)a3;
- (void)dealloc;
@end

@implementation IOSurfaceTransaction

- (IOSurfaceTransaction)initWithSharedEvent:(id)a3 waitValue:(unint64_t)a4 isWrite:(BOOL)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = IOSurfaceTransaction;
  v8 = [(IOSurfaceTransaction *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v8->_event = a3;
      v9->_waitValue = a4;
      v9->_isWrite = a5;
    }

    else
    {

      v9 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)fromSerialized:(const void *)a3
{
  v5 = objc_autoreleasePoolPush();
  if (!a3 || !*a3)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = [[IOSurfaceSharedEvent alloc] initWithMachPort:*a3];
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [IOSurfaceTransaction fromSerialized:];
    }

    goto LABEL_7;
  }

  v7 = v6;
  v8 = v6;
  v9 = [(IOSurfaceTransaction *)self initWithSharedEvent:v7 waitValue:*(a3 + 1) isWrite:*(a3 + 16) != 0];
LABEL_8:
  objc_autoreleasePoolPop(v5);
  return v9;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = IOSurfaceTransaction;
  [(IOSurfaceTransaction *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)fromSerialized:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "[IOSurfaceTransaction fromSerialized] got nil event from serialized data", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end