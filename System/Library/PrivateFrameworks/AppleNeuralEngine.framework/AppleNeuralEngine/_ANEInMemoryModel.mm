@interface _ANEInMemoryModel
+ (id)inMemoryModelWithDescriptor:(id)descriptor;
+ (void)initialize;
- (BOOL)compiledModelExists;
- (_ANEInMemoryModel)initWithDesctiptor:(id)desctiptor;
- (id)localModelPath;
- (id)saveModelFiles;
- (void)dealloc;
- (void)purgeCompiledModel;
- (void)saveModelFiles;
- (void)unmapIOSurfacesWithRequest:(id)request;
@end

@implementation _ANEInMemoryModel

+ (void)initialize
{
  gLogger = +[_ANELog framework];

  MEMORY[0x1EEE66BB8]();
}

- (_ANEInMemoryModel)initWithDesctiptor:(id)desctiptor
{
  desctiptorCopy = desctiptor;
  v22.receiver = self;
  v22.super_class = _ANEInMemoryModel;
  v7 = [(_ANEInMemoryModel *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_descriptor, desctiptor);
    hexStringIdentifier = [desctiptorCopy hexStringIdentifier];
    hexStringIdentifier = v8->_hexStringIdentifier;
    v8->_hexStringIdentifier = hexStringIdentifier;

    v8->_isMILModel = [desctiptorCopy isMILModel];
    modelAttributes = v8->_modelAttributes;
    v8->_modelAttributes = MEMORY[0x1E695E0F8];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(desctiptorCopy, "hash")];
    [v12 UTF8String];
    v13 = kdebug_trace_string();
    v8->_string_id = v13;
    if (v13 == -1)
    {
      v14 = +[_ANELog common];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_ANEInMemoryModel initWithDesctiptor:a2];
      }
    }

    program = v8->_program;
    v8->_programHandle = 0;
    v8->_program = 0;
    v8->_queueDepth = 0;

    v8->_perfStatsMask = 0;
    v8->_state = 0;
    optionsPlist = [desctiptorCopy optionsPlist];
    v17 = optionsPlist;
    if (optionsPlist)
    {
      optionsPlist = +[_ANEStrings defaultANECIROptionsFileName];
    }

    compilerOptionsFileName = v8->_compilerOptionsFileName;
    v8->_compilerOptionsFileName = optionsPlist;

    v19 = +[_ANEClient sharedConnection];
    sharedConnection = v8->_sharedConnection;
    v8->_sharedConnection = v19;
  }

  return v8;
}

- (void)dealloc
{
  self->_state = 5;
  string_id = self->_string_id;
  v5 = kdebug_trace_string();
  self->_string_id = v5;
  if (v5 == -1)
  {
    v6 = +[_ANELog common];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_ANEInMemoryModel initWithDesctiptor:a2];
    }
  }

  v7.receiver = self;
  v7.super_class = _ANEInMemoryModel;
  [(_ANEInMemoryModel *)&v7 dealloc];
}

- (id)localModelPath
{
  v3 = NSTemporaryDirectory();
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  v5 = [v3 stringByAppendingPathComponent:hexStringIdentifier];

  return v5;
}

- (id)saveModelFiles
{
  v56 = *MEMORY[0x1E69E9840];
  modelURL = [(_ANEInMemoryModel *)self modelURL];

  if (modelURL)
  {
    modelURL2 = [(_ANEInMemoryModel *)self modelURL];
    goto LABEL_33;
  }

  localModelPath = [(_ANEInMemoryModel *)self localModelPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v48 = 0;
  v8 = [defaultManager createDirectoryAtPath:localModelPath withIntermediateDirectories:1 attributes:0 error:&v48];
  v9 = v48;
  if ((v8 & 1) == 0)
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412802;
      v51 = v40;
      v52 = 2112;
      v53 = localModelPath;
      v54 = 2112;
      v55 = v9;
      _os_log_error_impl(&dword_1AD246000, v11, OS_LOG_TYPE_ERROR, "%@: createDirectoryAtPath:... failed tmp=%@ : lErr=%@", buf, 0x20u);
    }

    modelURL2 = 0;
    goto LABEL_32;
  }

  v10 = +[_ANEStrings defaultANECIRFileName];
  v11 = [localModelPath stringByAppendingPathComponent:v10];

  descriptor = [(_ANEInMemoryModel *)self descriptor];
  networkText = [descriptor networkText];
  v14 = [networkText writeToFile:v11 atomically:1];

  if (v14)
  {
    compilerOptionsFileName = [(_ANEInMemoryModel *)self compilerOptionsFileName];

    if (!compilerOptionsFileName)
    {
LABEL_8:
      v41 = v11;
      v42 = v9;
      v43 = defaultManager;
      descriptor2 = [(_ANEInMemoryModel *)self descriptor];
      weights = [descriptor2 weights];
      allKeys = [weights allKeys];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v17 = allKeys;
      v24 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(v17);
            }

            v28 = *(*(&v44 + 1) + 8 * i);
            descriptor3 = [(_ANEInMemoryModel *)self descriptor];
            weights2 = [descriptor3 weights];
            v31 = [weights2 objectForKeyedSubscript:v28];

            allKeys2 = [v31 allKeys];
            firstObject = [allKeys2 firstObject];

            v34 = [v31 objectForKeyedSubscript:firstObject];
            v35 = [localModelPath stringByAppendingPathComponent:firstObject];
            if (([v34 writeToFile:v35 atomically:1] & 1) == 0)
            {
              v36 = +[_ANELog common];
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                [_ANEInMemoryModel saveModelFiles];
              }

              modelURL2 = 0;
              goto LABEL_26;
            }
          }

          v25 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      modelURL2 = [MEMORY[0x1E695DFF8] fileURLWithPath:localModelPath isDirectory:1];
      if (modelURL2)
      {
        [(_ANEInMemoryModel *)self setModelURL:modelURL2];
        [(_ANEInMemoryModel *)self setDescriptor:0];
      }

LABEL_26:
      v9 = v42;
      defaultManager = v43;
      v11 = v41;
      goto LABEL_31;
    }

    compilerOptionsFileName2 = [(_ANEInMemoryModel *)self compilerOptionsFileName];
    v17 = [localModelPath stringByAppendingPathComponent:compilerOptionsFileName2];

    descriptor4 = [(_ANEInMemoryModel *)self descriptor];
    optionsPlist = [descriptor4 optionsPlist];
    v20 = [optionsPlist writeToFile:v17 atomically:1];

    if (v20)
    {

      goto LABEL_8;
    }

    v37 = +[_ANELog common];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel saveModelFiles];
    }
  }

  else
  {
    v17 = +[_ANELog common];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel saveModelFiles];
    }
  }

  modelURL2 = 0;
LABEL_31:

LABEL_32:
LABEL_33:
  v38 = *MEMORY[0x1E69E9840];

  return modelURL2;
}

+ (id)inMemoryModelWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[self alloc] initWithDesctiptor:descriptorCopy];

  return v5;
}

- (BOOL)compiledModelExists
{
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  v5 = [sharedConnection compiledModelExistsMatchingHash:hexStringIdentifier];

  return v5;
}

- (void)purgeCompiledModel
{
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  [sharedConnection purgeCompiledModelMatchingHash:hexStringIdentifier];
}

- (void)unmapIOSurfacesWithRequest:(id)request
{
  requestCopy = request;
  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  model = [(_ANEInMemoryModel *)self model];
  [sharedConnection unmapIOSurfacesWithModel:model request:requestCopy];
}

- (void)initWithDesctiptor:(const char *)a1 .cold.1(const char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9(&dword_1AD246000, v3, v4, "%@: kdebug_trace_string() failed errno=%d", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveModelFiles
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_1(&dword_1AD246000, v2, v3, "%@:  Write weightsFilePath=%@ failed", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)compileWithQoS:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: compileModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compileWithQoS:(void *)a1 options:(const char *)a2 error:.cold.2(void *a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: saveModelFiles failed", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)loadWithQoS:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_1(&dword_1AD246000, v5, v6, "%@: modelIdentifier=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)loadWithQoS:options:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_1(&dword_1AD246000, v5, v6, "%@: modelURL=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)loadWithQoS:options:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: loadModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unloadWithQoS:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: unLoadModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)evaluateWithQoS:(void *)a1 options:(const char *)a2 request:error:.cold.1(void *a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end