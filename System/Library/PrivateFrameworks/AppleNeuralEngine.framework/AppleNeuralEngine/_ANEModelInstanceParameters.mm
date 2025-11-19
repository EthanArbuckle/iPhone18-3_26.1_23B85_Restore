@interface _ANEModelInstanceParameters
+ (id)withProcedureData:(id)a3 procedureArray:(id)a4;
- (_ANEModelInstanceParameters)initWithCoder:(id)a3;
- (_ANEModelInstanceParameters)initWithProcedureData:(id)a3 procedureArray:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ANEModelInstanceParameters

+ (id)withProcedureData:(id)a3 procedureArray:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProcedureData:v7 procedureArray:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEModelInstanceParameters *)self instanceName];
  v7 = [v3 stringWithFormat:@"%@: { instanceName=%@ }", v5, v6];

  return v7;
}

- (_ANEModelInstanceParameters)initWithProcedureData:(id)a3 procedureArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _ANEModelInstanceParameters;
  v9 = [(_ANEModelInstanceParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instanceName, a3);
    objc_storeStrong(&v10->_procedureArray, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(_ANEModelInstanceParameters *)self instanceName];
  [v5 encodeObject:v6 forKey:@"instanceName"];

  v7 = +[_ANELog common];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEModelInstanceParameters *)a2 encodeWithCoder:?];
  }

  v8 = [(_ANEModelInstanceParameters *)self procedureArray];
  [v5 encodeObject:v8 forKey:@"procedureArray"];
}

- (_ANEModelInstanceParameters)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"instanceName"];
  v7 = +[_ANELog common];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModelInstanceParameters initWithCoder:a2];
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v5 decodeObjectOfClasses:v10 forKey:@"procedureArray"];
  v12 = [(_ANEModelInstanceParameters *)self initWithProcedureData:v6 procedureArray:v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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