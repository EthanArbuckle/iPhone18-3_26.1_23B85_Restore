@interface _ANEWeight
+ (id)weightWithSymbolAndURL:(id)l weightURL:(id)rL;
+ (id)weightWithSymbolAndURLSHA:(id)a weightURL:(id)l SHACode:(id)code;
- (_ANEWeight)initWithCoder:(id)coder;
- (_ANEWeight)initWithWeightSymbolAndURL:(id)l weightURL:(id)rL;
- (_ANEWeight)initWithWeightSymbolAndURLSHA:(id)a weightURL:(id)l SHACode:(id)code sandboxExtension:(id)extension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWeightURL:(id)l;
@end

@implementation _ANEWeight

+ (id)weightWithSymbolAndURL:(id)l weightURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [[self alloc] initWithWeightSymbolAndURL:lCopy weightURL:rLCopy];

  return v8;
}

+ (id)weightWithSymbolAndURLSHA:(id)a weightURL:(id)l SHACode:(id)code
{
  codeCopy = code;
  lCopy = l;
  aCopy = a;
  v11 = [[self alloc] initWithWeightSymbolAndURLSHA:aCopy weightURL:lCopy SHACode:codeCopy sandboxExtension:0];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  weightSymbol = [(_ANEWeight *)self weightSymbol];
  weightURL = [(_ANEWeight *)self weightURL];
  sHACode = [(_ANEWeight *)self SHACode];
  sandboxExtension = [(_ANEWeight *)self sandboxExtension];
  v10 = [v3 stringWithFormat:@"%@: { weightSymbol=%@ : weightURL=%@ : SHACode=%@ : sandboxExtension=%@} ", v5, weightSymbol, weightURL, sHACode, sandboxExtension];

  return v10;
}

- (_ANEWeight)initWithWeightSymbolAndURL:(id)l weightURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v12.receiver = self;
  v12.super_class = _ANEWeight;
  v9 = [(_ANEWeight *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weightURL, rL);
    objc_storeStrong(&v10->_weightSymbol, l);
  }

  return v10;
}

- (_ANEWeight)initWithWeightSymbolAndURLSHA:(id)a weightURL:(id)l SHACode:(id)code sandboxExtension:(id)extension
{
  aCopy = a;
  lCopy = l;
  codeCopy = code;
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = _ANEWeight;
  v15 = [(_ANEWeight *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_weightURL, l);
    objc_storeStrong(&v16->_weightSymbol, a);
    objc_storeStrong(&v16->_SHACode, code);
    objc_storeStrong(&v16->_sandboxExtension, extension);
  }

  return v16;
}

- (void)updateWeightURL:(id)l
{
  if (l)
  {
    [(_ANEWeight *)self setWeightURL:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  weightURL = [(_ANEWeight *)self weightURL];
  [coderCopy encodeObject:weightURL forKey:@"url"];

  weightSymbol = [(_ANEWeight *)self weightSymbol];
  [coderCopy encodeObject:weightSymbol forKey:@"weightSymbol"];

  sHACode = [(_ANEWeight *)self SHACode];
  [coderCopy encodeObject:sHACode forKey:@"SHACode"];

  sandboxExtension = [(_ANEWeight *)self sandboxExtension];
  [coderCopy encodeObject:sandboxExtension forKey:@"sandboxExtension"];
}

- (_ANEWeight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weightSymbol"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHACode"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];

  v9 = [(_ANEWeight *)self initWithWeightSymbolAndURLSHA:v6 weightURL:v5 SHACode:v7 sandboxExtension:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
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