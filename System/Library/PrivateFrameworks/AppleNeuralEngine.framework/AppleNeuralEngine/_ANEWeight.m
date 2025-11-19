@interface _ANEWeight
+ (id)weightWithSymbolAndURL:(id)a3 weightURL:(id)a4;
+ (id)weightWithSymbolAndURLSHA:(id)a3 weightURL:(id)a4 SHACode:(id)a5;
- (_ANEWeight)initWithCoder:(id)a3;
- (_ANEWeight)initWithWeightSymbolAndURL:(id)a3 weightURL:(id)a4;
- (_ANEWeight)initWithWeightSymbolAndURLSHA:(id)a3 weightURL:(id)a4 SHACode:(id)a5 sandboxExtension:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWeightURL:(id)a3;
@end

@implementation _ANEWeight

+ (id)weightWithSymbolAndURL:(id)a3 weightURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithWeightSymbolAndURL:v7 weightURL:v6];

  return v8;
}

+ (id)weightWithSymbolAndURLSHA:(id)a3 weightURL:(id)a4 SHACode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithWeightSymbolAndURLSHA:v10 weightURL:v9 SHACode:v8 sandboxExtension:0];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEWeight *)self weightSymbol];
  v7 = [(_ANEWeight *)self weightURL];
  v8 = [(_ANEWeight *)self SHACode];
  v9 = [(_ANEWeight *)self sandboxExtension];
  v10 = [v3 stringWithFormat:@"%@: { weightSymbol=%@ : weightURL=%@ : SHACode=%@ : sandboxExtension=%@} ", v5, v6, v7, v8, v9];

  return v10;
}

- (_ANEWeight)initWithWeightSymbolAndURL:(id)a3 weightURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _ANEWeight;
  v9 = [(_ANEWeight *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weightURL, a4);
    objc_storeStrong(&v10->_weightSymbol, a3);
  }

  return v10;
}

- (_ANEWeight)initWithWeightSymbolAndURLSHA:(id)a3 weightURL:(id)a4 SHACode:(id)a5 sandboxExtension:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _ANEWeight;
  v15 = [(_ANEWeight *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_weightURL, a4);
    objc_storeStrong(&v16->_weightSymbol, a3);
    objc_storeStrong(&v16->_SHACode, a5);
    objc_storeStrong(&v16->_sandboxExtension, a6);
  }

  return v16;
}

- (void)updateWeightURL:(id)a3
{
  if (a3)
  {
    [(_ANEWeight *)self setWeightURL:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ANEWeight *)self weightURL];
  [v4 encodeObject:v5 forKey:@"url"];

  v6 = [(_ANEWeight *)self weightSymbol];
  [v4 encodeObject:v6 forKey:@"weightSymbol"];

  v7 = [(_ANEWeight *)self SHACode];
  [v4 encodeObject:v7 forKey:@"SHACode"];

  v8 = [(_ANEWeight *)self sandboxExtension];
  [v4 encodeObject:v8 forKey:@"sandboxExtension"];
}

- (_ANEWeight)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weightSymbol"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHACode"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];

  v9 = [(_ANEWeight *)self initWithWeightSymbolAndURLSHA:v6 weightURL:v5 SHACode:v7 sandboxExtension:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = +[_ANELog common];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEWeight *)a2 copyWithZone:v4];
  }

  return 0;
}

- (void)copyWithZone:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1AD246000, a2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end