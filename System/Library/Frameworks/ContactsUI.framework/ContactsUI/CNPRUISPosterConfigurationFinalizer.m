@interface CNPRUISPosterConfigurationFinalizer
+ (id)finalizedConfiguration:(id)a3 forExtensionIdentifier:(id)a4;
@end

@implementation CNPRUISPosterConfigurationFinalizer

+ (id)finalizedConfiguration:(id)a3 forExtensionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v7 = getPRSPosterConfigurationAttributesClass_softClass;
  v34 = getPRSPosterConfigurationAttributesClass_softClass;
  if (!getPRSPosterConfigurationAttributesClass_softClass)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getPRSPosterConfigurationAttributesClass_block_invoke;
    v29 = &unk_1E74E7518;
    v30 = &v31;
    __getPRSPosterConfigurationAttributesClass_block_invoke(&v26);
    v7 = v32[3];
  }

  v8 = v7;
  _Block_object_dispose(&v31, 8);
  v9 = [v7 alloc];
  v10 = [v5 wrappedMutablePosterConfiguration];
  v11 = [v10 _path];
  v12 = [v9 initWithPath:v11 extensionIdentifier:v6];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v13 = getPRPosterConfiguredPropertiesClass_softClass;
  v34 = getPRPosterConfiguredPropertiesClass_softClass;
  if (!getPRPosterConfiguredPropertiesClass_softClass)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getPRPosterConfiguredPropertiesClass_block_invoke;
    v29 = &unk_1E74E7518;
    v30 = &v31;
    __getPRPosterConfiguredPropertiesClass_block_invoke(&v26);
    v13 = v32[3];
  }

  v14 = v13;
  _Block_object_dispose(&v31, 8);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v15 = getPRSPosterRoleIncomingCallSymbolLoc_ptr;
  v34 = getPRSPosterRoleIncomingCallSymbolLoc_ptr;
  if (!getPRSPosterRoleIncomingCallSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getPRSPosterRoleIncomingCallSymbolLoc_block_invoke;
    v29 = &unk_1E74E7518;
    v30 = &v31;
    v16 = PosterBoardServicesLibrary();
    v17 = dlsym(v16, "PRSPosterRoleIncomingCall");
    *(v30[1] + 24) = v17;
    getPRSPosterRoleIncomingCallSymbolLoc_ptr = *(v30[1] + 24);
    v15 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v15)
  {
    v18 = [v13 defaultConfiguredPropertiesForRole:*v15];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v19 = getPRUISPosterConfigurationFinalizerClass_softClass;
    v34 = getPRUISPosterConfigurationFinalizerClass_softClass;
    if (!getPRUISPosterConfigurationFinalizerClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getPRUISPosterConfigurationFinalizerClass_block_invoke;
      v29 = &unk_1E74E7518;
      v30 = &v31;
      __getPRUISPosterConfigurationFinalizerClass_block_invoke(&v26);
      v19 = v32[3];
    }

    v20 = v19;
    _Block_object_dispose(&v31, 8);
    v21 = [v19 finalizedConfigurationForAttributes:v12 withConfiguredProperties:v18 error:0];
    v22 = [[CNPRSPosterConfiguration alloc] initWithPosterConfiguration:v21];

    return v22;
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPRSPosterRoleIncomingCall(void)"];
    [v24 handleFailureInFunction:v25 file:@"CNPostersSoftLink.h" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end