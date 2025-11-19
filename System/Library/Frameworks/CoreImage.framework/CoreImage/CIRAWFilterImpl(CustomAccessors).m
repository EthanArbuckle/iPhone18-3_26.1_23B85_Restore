@interface CIRAWFilterImpl(CustomAccessors)
@end

@implementation CIRAWFilterImpl(CustomAccessors)

- (void)setInputDecoderVersion:()CustomAccessors .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIRAWFilterImpl(CustomAccessors) setInputDecoderVersion:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Invalid argument type", &v1, 0xCu);
}

- (void)setInputDecoderVersion:()CustomAccessors .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 376);
  v4 = 136446722;
  v5 = "[CIRAWFilterImpl(CustomAccessors) setInputDecoderVersion:]";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s The file does not support version %{public}@. The version %{public}@ will be used instead.", &v4, 0x20u);
}

@end