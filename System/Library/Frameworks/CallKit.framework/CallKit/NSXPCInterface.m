@interface NSXPCInterface
@end

@implementation NSXPCInterface

void __87__NSXPCInterface_CXCallDirectoryManagerSupport___cx_callDirectoryManagerAllowedClasses__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = _cx_callDirectoryManagerAllowedClasses_allowedClasses;
  _cx_callDirectoryManagerAllowedClasses_allowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __63__NSXPCInterface_CXProviderSupport___cx_providerAllowedClasses__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v3 = [v1 setByAddingObjectsFromArray:{v2, v6, v7}];
  v4 = _cx_providerAllowedClasses_providerAllowedClasses;
  _cx_providerAllowedClasses_providerAllowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __75__NSXPCInterface_CXCallControllerSupport___cx_callControllerAllowedClasses__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = _cx_callControllerAllowedClasses_providerAllowedClasses;
  _cx_callControllerAllowedClasses_providerAllowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __81__NSXPCInterface_CXVoicemailProviderSupport___cx_voicemailProviderAllowedClasses__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v3 = [v1 setByAddingObjectsFromArray:{v2, v6, v7}];
  v4 = _cx_voicemailProviderAllowedClasses_voicemailProviderAllowedClasses;
  _cx_voicemailProviderAllowedClasses_voicemailProviderAllowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __85__NSXPCInterface_CXVoicemailControllerSupport___cx_voicemailControllerAllowedClasses__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = _cx_voicemailControllerAllowedClasses_voicemailControllerAllowedClasses;
  _cx_voicemailControllerAllowedClasses_voicemailControllerAllowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __89__NSXPCInterface_CXCallDirectoryProviderSupport___cx_callDirectoryProviderAllowedClasses__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cx_allowedClasses];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = _cx_callDirectoryProviderAllowedClasses_allowedClasses;
  _cx_callDirectoryProviderAllowedClasses_allowedClasses = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end