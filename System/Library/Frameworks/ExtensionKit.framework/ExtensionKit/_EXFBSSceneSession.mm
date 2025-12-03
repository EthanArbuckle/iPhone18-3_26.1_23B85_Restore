@interface _EXFBSSceneSession
- (id)makeSceneWithError:(id *)error;
- (void)connectWithFBSScene:(id)scene;
@end

@implementation _EXFBSSceneSession

- (id)makeSceneWithError:(id *)error
{
  extension = [(_EXSceneSession *)self extension];
  hasSwiftEntryPoint = [extension hasSwiftEntryPoint];

  if (hasSwiftEntryPoint)
  {
    configuration = [(_EXSceneSession *)self configuration];
    extension2 = [(_EXSceneSession *)self extension];
    v8 = [extension2 makeSceneWithConfiguration:configuration];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)connectWithFBSScene:(id)scene
{
  sceneCopy = scene;
  objc_storeStrong(&self->_fbsScene, scene);
  identifier = [sceneCopy identifier];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier];
  if (v7)
  {
    [(_EXSceneSession *)self setIdentifier:v7];
    v8 = objc_alloc_init(MEMORY[0x1E6966D20]);
    settings = [sceneCopy settings];
    ex_role = [settings ex_role];
    [v8 setSceneIdentifier:ex_role];

    v11 = [(_EXSceneSession *)self makeConfigurationWithParameters:v8];
    [(_EXSceneSession *)self setConfiguration:v11];

    extension = [(_EXSceneSession *)self extension];
    configuration = [(_EXSceneSession *)self configuration];
    [extension prepareForSceneConnectionWithConfiguration:configuration];

    mEMORY[0x1E6966D18] = [MEMORY[0x1E6966D18] sharedInstance];
    [mEMORY[0x1E6966D18] addSession:self];

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
      [(_EXFBSSceneSession *)identifier connectWithFBSScene:v8];
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