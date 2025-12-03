@interface _ANEProcedureData
+ (id)procedureDataWithSymbol:(id)symbol weightArray:(id)array;
- (_ANEProcedureData)initWithCoder:(id)coder;
- (_ANEProcedureData)initWithProcedure:(id)procedure weightArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANEProcedureData

+ (id)procedureDataWithSymbol:(id)symbol weightArray:(id)array
{
  arrayCopy = array;
  symbolCopy = symbol;
  v8 = [[self alloc] initWithProcedure:symbolCopy weightArray:arrayCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  procedureSymbol = [(_ANEProcedureData *)self procedureSymbol];
  v7 = [v3 stringWithFormat:@"%@: { procedureSymbol=%@ }", v5, procedureSymbol];

  return v7;
}

- (_ANEProcedureData)initWithProcedure:(id)procedure weightArray:(id)array
{
  procedureCopy = procedure;
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = _ANEProcedureData;
  v9 = [(_ANEProcedureData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_procedureSymbol, procedure);
    objc_storeStrong(&v10->_weightArray, array);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = +[_ANELog common];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEProcedureData *)a2 encodeWithCoder:?];
  }

  procedureSymbol = [(_ANEProcedureData *)self procedureSymbol];
  [coderCopy encodeObject:procedureSymbol forKey:@"procedureSymbol"];

  weightArray = [(_ANEProcedureData *)self weightArray];
  [coderCopy encodeObject:weightArray forKey:@"weightArray"];
}

- (_ANEProcedureData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"procedureSymbol"];
  v7 = +[_ANELog common];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ANEProcedureData initWithCoder:a2];
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"weightArray"];
  v12 = [(_ANEProcedureData *)self initWithProcedure:v6 weightArray:v11];

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
  v10 = [a2 procedureSymbol];
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

- (void)copyWithZone:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end