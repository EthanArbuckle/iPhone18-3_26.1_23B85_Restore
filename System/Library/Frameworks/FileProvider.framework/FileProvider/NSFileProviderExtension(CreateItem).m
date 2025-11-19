@interface NSFileProviderExtension(CreateItem)
@end

@implementation NSFileProviderExtension(CreateItem)

- (void)createItemBasedOnTemplate:()CreateItem fields:contents:options:completionHandler:.cold.1(const char *a1)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_5_6(v2 v3];
}

- (void)createItemBasedOnTemplate:()CreateItem fields:contents:options:completionHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileProviderExtension.m" lineNumber:969 description:@"cannot import document without an URL"];
}

@end