@interface NSXPCConnection(AKAdaptiveServiceShouldHandle)
- (uint64_t)setShouldHandleInvalidation:()AKAdaptiveServiceShouldHandle;
- (uint64_t)shouldHandleInvalidation;
@end

@implementation NSXPCConnection(AKAdaptiveServiceShouldHandle)

- (uint64_t)shouldHandleInvalidation
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_getAssociatedObject(self, &_AKAdaptiveServiceShouldHandleInvalidationKey);
  bOOLValue = [v4[0] BOOLValue];
  objc_storeStrong(v4, 0);
  return bOOLValue;
}

- (uint64_t)setShouldHandleInvalidation:()AKAdaptiveServiceShouldHandle
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3 & 1];
  objc_setAssociatedObject(self, &_AKAdaptiveServiceShouldHandleInvalidationKey, v5, 0x301);
  return MEMORY[0x1E69E5920](v5);
}

@end