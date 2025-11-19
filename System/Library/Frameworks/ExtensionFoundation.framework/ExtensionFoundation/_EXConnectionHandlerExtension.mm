@interface _EXConnectionHandlerExtension
- (BOOL)shouldAcceptConnection:(id)a3;
- (void)willFinishLaunching;
@end

@implementation _EXConnectionHandlerExtension

- (void)willFinishLaunching
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7();

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAcceptConnection:(id)a3
{
  v4 = a3;
  v5 = [(_EXConnectionHandlerExtension *)self connectionHandler];

  if (v5)
  {
    v6 = [(_EXConnectionHandlerExtension *)self connectionHandler];
    v7 = [v6 shouldAcceptXPCConnection:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end