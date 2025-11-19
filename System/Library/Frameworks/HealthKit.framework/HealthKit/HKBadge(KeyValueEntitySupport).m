@interface HKBadge(KeyValueEntitySupport)
@end

@implementation HKBadge(KeyValueEntitySupport)

+ (void)badgeFromKeyValueRepresentation:()KeyValueEntitySupport .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Invalid stored badge representation %zd", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end