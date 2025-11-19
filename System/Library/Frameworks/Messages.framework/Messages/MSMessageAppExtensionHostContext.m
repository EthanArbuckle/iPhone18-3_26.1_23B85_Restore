@interface MSMessageAppExtensionHostContext
@end

@implementation MSMessageAppExtensionHostContext

void __88___MSMessageAppExtensionHostContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS____MSMessageAppExtensionHostContext;
  v1 = objc_msgSendSuper2(&v7, sel__extensionContextHostProtocolAllowedClassesForItems);
  v2 = MEMORY[0x1E695DFA8];
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setWithArray:v3];

  [v4 unionSet:v1];
  v5 = [v4 copy];
  v6 = _extensionContextHostProtocolAllowedClassesForItems_allowedClasses_0;
  _extensionContextHostProtocolAllowedClassesForItems_allowedClasses_0 = v5;
}

@end