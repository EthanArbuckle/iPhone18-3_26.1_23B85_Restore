@interface _EXFBSSceneSession
- (id)makeSceneWithError:(id *)a3;
- (void)connectWithFBSScene:(id)a3;
@end

@implementation _EXFBSSceneSession

- (id)makeSceneWithError:(id *)a3
{
  v4 = [(_EXSceneSession *)self extension];
  v5 = [v4 hasSwiftEntryPoint];

  if (v5)
  {
    v6 = [(_EXSceneSession *)self configuration];
    v7 = [(_EXSceneSession *)self extension];
    v8 = [v7 makeSceneWithConfiguration:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)connectWithFBSScene:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_fbsScene, a3);
  v6 = [v5 identifier];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  if (v7)
  {
    [(_EXSceneSession *)self setIdentifier:v7];
    v8 = objc_alloc_init(MEMORY[0x1E6966D20]);
    v9 = [v5 settings];
    v10 = [v9 ex_role];
    [v8 setSceneIdentifier:v10];

    v11 = [(_EXSceneSession *)self makeConfigurationWithParameters:v8];
    [(_EXSceneSession *)self setConfiguration:v11];

    v12 = [(_EXSceneSession *)self extension];
    v13 = [(_EXSceneSession *)self configuration];
    [v12 prepareForSceneConnectionWithConfiguration:v13];

    v14 = [MEMORY[0x1E6966D18] sharedInstance];
    [v14 addSession:self];

    v16 = 0;
    v15 = [(_EXFBSSceneSession *)self makeSceneWithError:&v16];
    if (v15)
    {
      [(_EXSceneSession *)self setScene:v15];
      [(_EXSceneSession *)self connectToScene:v15];
    }
  }

  else
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(_EXFBSSceneSession *)v6 connectWithFBSScene:v8];
    }
  }
}

- (void)connectWithFBSScene:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1D29CC000, a2, OS_LOG_TYPE_FAULT, "Unexpected scene identifier. ExtensionKit requires the scene identifier to be a UUID string. Got: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end