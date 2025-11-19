@interface NSExtensionContext(ExtensionKitAdditions)
- (id)_derivedExtensionAuxiliaryHostProtocol;
- (void)_derivedExtensionAuxiliaryHostProtocol;
@end

@implementation NSExtensionContext(ExtensionKitAdditions)

- (id)_derivedExtensionAuxiliaryHostProtocol
{
  v0 = [EXExtensionContextImplementation _derivedExtensionAuxiliaryHostProtocolWithContextClass:objc_opt_class()];
  v1 = _EXLegacyLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    [NSExtensionContext(ExtensionKitAdditions) _derivedExtensionAuxiliaryHostProtocol];
  }

  return v0;
}

- (void)_derivedExtensionAuxiliaryHostProtocol
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Derived context: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end