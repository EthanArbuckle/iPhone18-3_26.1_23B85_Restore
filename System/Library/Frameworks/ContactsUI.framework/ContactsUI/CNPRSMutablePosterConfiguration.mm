@interface CNPRSMutablePosterConfiguration
- (CNPRSMutablePosterConfiguration)init;
@end

@implementation CNPRSMutablePosterConfiguration

- (CNPRSMutablePosterConfiguration)init
{
  v17.receiver = self;
  v17.super_class = CNPRSMutablePosterConfiguration;
  v2 = [(CNPRSMutablePosterConfiguration *)&v17 init];
  if (!v2)
  {
    goto LABEL_9;
  }

  getPRSMutablePosterConfigurationClass();
  objc_opt_class();
  v3 = objc_opt_respondsToSelector();
  PRSMutablePosterConfigurationClass = getPRSMutablePosterConfigurationClass();
  v5 = PRSMutablePosterConfigurationClass;
  if ((v3 & 1) == 0)
  {
    v12 = [PRSMutablePosterConfigurationClass mutableConfiguration];
    wrappedMutablePosterConfiguration = v2->_wrappedMutablePosterConfiguration;
    v2->_wrappedMutablePosterConfiguration = v12;
    goto LABEL_8;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v6 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_65464;
  v26 = getPRSPosterRoleIncomingCallSymbolLoc_ptr_65464;
  if (!getPRSPosterRoleIncomingCallSymbolLoc_ptr_65464)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPRSPosterRoleIncomingCallSymbolLoc_block_invoke_65465;
    v21 = &unk_1E74E7518;
    v22 = &v23;
    v7 = PosterBoardServicesLibrary_65466();
    v8 = dlsym(v7, "PRSPosterRoleIncomingCall");
    *(v22[1] + 24) = v8;
    getPRSPosterRoleIncomingCallSymbolLoc_ptr_65464 = *(v22[1] + 24);
    v6 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v6)
  {
    wrappedMutablePosterConfiguration = *v6;
    v10 = [v5 mutableConfigurationWithRole:wrappedMutablePosterConfiguration];
    v11 = v2->_wrappedMutablePosterConfiguration;
    v2->_wrappedMutablePosterConfiguration = v10;

LABEL_8:
    v13 = v2;
LABEL_9:

    return v2;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPRSPosterRoleIncomingCall(void)"];
  [v15 handleFailureInFunction:v16 file:@"CNPostersSoftLink.h" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end