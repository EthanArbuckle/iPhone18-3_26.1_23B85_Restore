@interface _ANEModelInstanceParameters
+ (id)withProcedureData:(id)data procedureArray:(id)array;
- (_ANEModelInstanceParameters)initWithCoder:(id)coder;
- (_ANEModelInstanceParameters)initWithProcedureData:(id)data procedureArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANEModelInstanceParameters

+ (id)withProcedureData:(id)data procedureArray:(id)array
{
  arrayCopy = array;
  dataCopy = data;
  v8 = [[self alloc] initWithProcedureData:dataCopy procedureArray:arrayCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  instanceName = [(_ANEModelInstanceParameters *)self instanceName];
  v7 = [v3 stringWithFormat:@"%@: { instanceName=%@ }", v5, instanceName];

  return v7;
}

- (_ANEModelInstanceParameters)initWithProcedureData:(id)data procedureArray:(id)array
{
  dataCopy = data;
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = _ANEModelInstanceParameters;
  v9 = [(_ANEModelInstanceParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instanceName, data);
    objc_storeStrong(&v10->_procedureArray, array);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  instanceName = [(_ANEModelInstanceParameters *)self instanceName];
  [coderCopy encodeObject:instanceName forKey:@"instanceName"];

  v7 = +[_ANELog common];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEModelInstanceParameters *)a2 encodeWithCoder:?];
  }

  procedureArray = [(_ANEModelInstanceParameters *)self procedureArray];
  [coderCopy encodeObject:procedureArray forKey:@"procedureArray"];
}

- (_ANEModelInstanceParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceName"];
  v7 = +[_ANELog common];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModelInstanceParameters initWithCoder:a2];
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"procedureArray"];
  v12 = [(_ANEModelInstanceParameters *)self initWithProcedureData:v6 procedureArray:v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = +[_ANELog common];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ANEProcedureData copyWithZone:a2];
  }

  return 0;
}

- (void)encodeWithCoder:(const char *)a1 .cold.1(const char *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v10 = [a2 instanceName];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end