@interface NSXPCConnection(AKAdaptiveServiceShouldHandle)
- (uint64_t)setShouldHandleInvalidation:()AKAdaptiveServiceShouldHandle;
- (uint64_t)shouldHandleInvalidation;
@end

@implementation NSXPCConnection(AKAdaptiveServiceShouldHandle)

- (uint64_t)shouldHandleInvalidation
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = objc_getAssociatedObject(a1, &_AKAdaptiveServiceShouldHandleInvalidationKey);
  v3 = [v4[0] BOOLValue];
  objc_storeStrong(v4, 0);
  return v3;
}

- (uint64_t)setShouldHandleInvalidation:()AKAdaptiveServiceShouldHandle
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3 & 1];
  objc_setAssociatedObject(a1, &_AKAdaptiveServiceShouldHandleInvalidationKey, v5, 0x301);
  return MEMORY[0x1E69E5920](v5);
}

@end