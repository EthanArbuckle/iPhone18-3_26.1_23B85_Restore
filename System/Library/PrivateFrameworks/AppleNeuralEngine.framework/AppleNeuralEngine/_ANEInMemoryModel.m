@interface _ANEInMemoryModel
+ (id)inMemoryModelWithDescriptor:(id)a3;
+ (void)initialize;
- (BOOL)compiledModelExists;
- (_ANEInMemoryModel)initWithDesctiptor:(id)a3;
- (id)localModelPath;
- (id)saveModelFiles;
- (void)dealloc;
- (void)purgeCompiledModel;
- (void)saveModelFiles;
- (void)unmapIOSurfacesWithRequest:(id)a3;
@end

@implementation _ANEInMemoryModel

+ (void)initialize
{
  gLogger = +[_ANELog framework];

  MEMORY[0x1EEE66BB8]();
}

- (_ANEInMemoryModel)initWithDesctiptor:(id)a3
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = _ANEInMemoryModel;
  v7 = [(_ANEInMemoryModel *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_descriptor, a3);
    v9 = [v6 hexStringIdentifier];
    hexStringIdentifier = v8->_hexStringIdentifier;
    v8->_hexStringIdentifier = v9;

    v8->_isMILModel = [v6 isMILModel];
    modelAttributes = v8->_modelAttributes;
    v8->_modelAttributes = MEMORY[0x1E695E0F8];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v6, "hash")];
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
    v16 = [v6 optionsPlist];
    v17 = v16;
    if (v16)
    {
      v16 = +[_ANEStrings defaultANECIROptionsFileName];
    }

    compilerOptionsFileName = v8->_compilerOptionsFileName;
    v8->_compilerOptionsFileName = v16;

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
  v4 = [(_ANEInMemoryModel *)self hexStringIdentifier];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)saveModelFiles
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = [(_ANEInMemoryModel *)self modelURL];

  if (v4)
  {
    v5 = [(_ANEInMemoryModel *)self modelURL];
    goto LABEL_33;
  }

  v6 = [(_ANEInMemoryModel *)self localModelPath];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v48 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v48];
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
      v53 = v6;
      v54 = 2112;
      v55 = v9;
      _os_log_error_impl(&dword_1AD246000, v11, OS_LOG_TYPE_ERROR, "%@: createDirectoryAtPath:... failed tmp=%@ : lErr=%@", buf, 0x20u);
    }

    v5 = 0;
    goto LABEL_32;
  }

  v10 = +[_ANEStrings defaultANECIRFileName];
  v11 = [v6 stringByAppendingPathComponent:v10];

  v12 = [(_ANEInMemoryModel *)self descriptor];
  v13 = [v12 networkText];
  v14 = [v13 writeToFile:v11 atomically:1];

  if (v14)
  {
    v15 = [(_ANEInMemoryModel *)self compilerOptionsFileName];

    if (!v15)
    {
LABEL_8:
      v41 = v11;
      v42 = v9;
      v43 = v7;
      v21 = [(_ANEInMemoryModel *)self descriptor];
      v22 = [v21 weights];
      v23 = [v22 allKeys];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v17 = v23;
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
            v29 = [(_ANEInMemoryModel *)self descriptor];
            v30 = [v29 weights];
            v31 = [v30 objectForKeyedSubscript:v28];

            v32 = [v31 allKeys];
            v33 = [v32 firstObject];

            v34 = [v31 objectForKeyedSubscript:v33];
            v35 = [v6 stringByAppendingPathComponent:v33];
            if (([v34 writeToFile:v35 atomically:1] & 1) == 0)
            {
              v36 = +[_ANELog common];
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                [_ANEInMemoryModel saveModelFiles];
              }

              v5 = 0;
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

      v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
      if (v5)
      {
        [(_ANEInMemoryModel *)self setModelURL:v5];
        [(_ANEInMemoryModel *)self setDescriptor:0];
      }

LABEL_26:
      v9 = v42;
      v7 = v43;
      v11 = v41;
      goto LABEL_31;
    }

    v16 = [(_ANEInMemoryModel *)self compilerOptionsFileName];
    v17 = [v6 stringByAppendingPathComponent:v16];

    v18 = [(_ANEInMemoryModel *)self descriptor];
    v19 = [v18 optionsPlist];
    v20 = [v19 writeToFile:v17 atomically:1];

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

  v5 = 0;
LABEL_31:

LABEL_32:
LABEL_33:
  v38 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)inMemoryModelWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDesctiptor:v4];

  return v5;
}

- (BOOL)compiledModelExists
{
  v3 = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  v4 = [(_ANEInMemoryModel *)self sharedConnection];
  v5 = [v4 compiledModelExistsMatchingHash:v3];

  return v5;
}

- (void)purgeCompiledModel
{
  v3 = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  v4 = [(_ANEInMemoryModel *)self sharedConnection];
  [v4 purgeCompiledModelMatchingHash:v3];
}

- (void)unmapIOSurfacesWithRequest:(id)a3
{
  v4 = a3;
  v6 = [(_ANEInMemoryModel *)self sharedConnection];
  v5 = [(_ANEInMemoryModel *)self model];
  [v6 unmapIOSurfacesWithModel:v5 request:v4];
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