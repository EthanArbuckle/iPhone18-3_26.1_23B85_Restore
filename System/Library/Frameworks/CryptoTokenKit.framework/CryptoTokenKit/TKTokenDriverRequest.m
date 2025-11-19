@interface TKTokenDriverRequest
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation TKTokenDriverRequest

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TKTokenDriverRequest *)a2 beginRequestWithExtensionContext:?];
  }

  v6 = v5;
  [v6 setup];
  v7 = TK_LOG_token();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [TKTokenDriverRequest beginRequestWithExtensionContext:v6];
  }
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKToken.m" lineNumber:283 description:@"Unexpected TKTokenDriverRequest context type"];
}

- (void)beginRequestWithExtensionContext:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 driver];
  v2 = [v1 classID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end