@interface SCNProgram
+ (SCNProgram)program;
+ (SCNProgram)programWithLibrary:(id)a3;
- (NSString)semanticForSymbol:(NSString *)symbol;
- (SCNProgram)init;
- (SCNProgram)initWithCoder:(id)a3;
- (id)_allSymbolsWithSceneKitSemantic;
- (id)_optionsForSymbol:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleBindingOfBufferNamed:(NSString *)name frequency:(SCNBufferFrequency)frequency usingBlock:(SCNBufferBindingBlock)block;
- (void)setFragmentFunctionName:(NSString *)fragmentFunctionName;
- (void)setFragmentShader:(NSString *)fragmentShader;
- (void)setLibrary:(id)library;
- (void)setLibraryProvider:(id)a3;
- (void)setName:(id)a3;
- (void)setOpaque:(BOOL)opaque;
- (void)setSemantic:(NSString *)semantic forSymbol:(NSString *)symbol options:(NSDictionary *)options;
- (void)setSemanticInfos:(id)a3;
- (void)setSourceFile:(id)a3;
- (void)setVertexFunctionName:(NSString *)vertexFunctionName;
- (void)setVertexShader:(NSString *)vertexShader;
@end

@implementation SCNProgram

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNProgram;
  [(SCNProgram *)&v3 dealloc];
}

- (SCNProgram)init
{
  v4.receiver = self;
  v4.super_class = SCNProgram;
  v2 = [(SCNProgram *)&v4 init];
  if (v2 && (C3DWasLinkedBeforeMajorOSYear2014() & 1) == 0)
  {
    v2->_opaque = 1;
  }

  return v2;
}

- (void)setLibrary:(id)library
{
  v4 = self->_library;
  if (v4 != library)
  {

    self->_library = library;
    self->_libraryProvider = [[SCNMetalLibraryProvider alloc] iniWithLibrary:library];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];

    [v7 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setLibraryProvider:(id)a3
{
  if (self->_libraryProvider != a3)
  {

    self->_library = 0;
    self->_libraryProvider = a3;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];

    [v6 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setName:(id)a3
{
  if (![(NSString *)self->_name isEqualToString:?])
  {

    self->_name = [a3 copy];
  }
}

+ (SCNProgram)program
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNProgram)programWithLibrary:(id)a3
{
  v4 = objc_alloc_init(a1);
  [(SCNProgram *)v4 setLibrary:a3];
  return v4;
}

- (void)setSourceFile:(id)a3
{
  sourceFile = self->_sourceFile;
  if (sourceFile != a3)
  {

    self->_sourceFile = a3;
  }
}

- (void)setOpaque:(BOOL)opaque
{
  if (self->_opaque != opaque)
  {
    self->_opaque = opaque;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setVertexFunctionName:(NSString *)vertexFunctionName
{
  if (![(NSString *)self->_vertexFunctionName isEqualToString:?])
  {

    self->_vertexFunctionName = [(NSString *)vertexFunctionName copy];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setFragmentFunctionName:(NSString *)fragmentFunctionName
{
  if (![(NSString *)self->_fragmentFunctionName isEqualToString:?])
  {

    self->_fragmentFunctionName = [(NSString *)fragmentFunctionName copy];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setVertexShader:(NSString *)vertexShader
{
  if (![(NSString *)self->_vertexShader isEqualToString:?])
  {

    self->_vertexShader = [(NSString *)vertexShader copy];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setFragmentShader:(NSString *)fragmentShader
{
  if (![(NSString *)self->_fragmentShader isEqualToString:?])
  {

    self->_fragmentShader = [(NSString *)fragmentShader copy];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }
}

- (void)setSemantic:(NSString *)semantic forSymbol:(NSString *)symbol options:(NSDictionary *)options
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!self->_semanticInfos)
  {
    self->_semanticInfos = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [(NSMutableDictionary *)self->_semanticInfos setValue:[SCNProgramSemanticInfo forKey:"infoWithSemantic:options:" infoWithSemantic:options options:?], symbol];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"parameter";
  v11[0] = symbol;
  [v9 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
}

- (NSString)semanticForSymbol:(NSString *)symbol
{
  v3 = [(NSMutableDictionary *)self->_semanticInfos valueForKey:symbol];

  return [v3 semantic];
}

- (id)_optionsForSymbol:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_semanticInfos valueForKey:a3];

  return [v3 options];
}

- (id)_allSymbolsWithSceneKitSemantic
{
  result = self->_semanticInfos;
  if (result)
  {
    return [result allKeys];
  }

  return result;
}

- (void)setSemanticInfos:(id)a3
{
  semanticInfos = self->_semanticInfos;
  if (semanticInfos)
  {
    [(NSMutableDictionary *)semanticInfos removeAllObjects];
    if (!a3)
    {
      return;
    }
  }

  else
  {
    self->_semanticInfos = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!a3)
    {
      return;
    }
  }

  v6 = self->_semanticInfos;

  [(NSMutableDictionary *)v6 addEntriesFromDictionary:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setVertexShader:{-[SCNProgram vertexShader](self, "vertexShader")}];
  [v4 setVertexFunctionName:{-[SCNProgram vertexFunctionName](self, "vertexFunctionName")}];
  [v4 setFragmentFunctionName:{-[SCNProgram fragmentFunctionName](self, "fragmentFunctionName")}];
  [v4 setFragmentShader:{-[SCNProgram fragmentShader](self, "fragmentShader")}];
  [v4 setName:{-[SCNProgram name](self, "name")}];
  [v4 setLibrary:{-[SCNProgram library](self, "library")}];
  [v4 setLibraryProvider:{-[SCNProgram libraryProvider](self, "libraryProvider")}];
  [v4 setSemanticInfos:self->_semanticInfos];
  return v4;
}

- (void)handleBindingOfBufferNamed:(NSString *)name frequency:(SCNBufferFrequency)frequency usingBlock:(SCNBufferBindingBlock)block
{
  bufferBindings = self->_bufferBindings;
  if (block)
  {
    if (!bufferBindings)
    {
      self->_bufferBindings = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v10 = objc_alloc_init(SCNBufferBinding);
    [(SCNBufferBinding *)v10 setName:name];
    [(SCNBufferBinding *)v10 setFrequency:frequency];
    [(SCNBufferBinding *)v10 setBlock:_Block_copy(block)];
    [(NSMutableDictionary *)self->_bufferBindings setValue:v10 forKey:name];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];

    [v11 postNotificationName:@"SCNProgramDidChangeNotification" object:self userInfo:0];
  }

  else
  {
    [(NSMutableDictionary *)bufferBindings removeObjectForKey:name, frequency];
    v12 = objc_alloc_init(SCNBufferBinding);
    [(SCNBufferBinding *)v12 setName:name];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

- (void)encodeWithCoder:(id)a3
{
  [(SCNProgram *)self _customEncodingOfSCNProgram:?];
  vertexShader = self->_vertexShader;
  if (vertexShader)
  {
    [a3 encodeObject:vertexShader forKey:@"vertexShader"];
  }

  fragmentShader = self->_fragmentShader;
  if (fragmentShader)
  {
    [a3 encodeObject:fragmentShader forKey:@"fragmentShader"];
  }

  vertexFunctionName = self->_vertexFunctionName;
  if (vertexFunctionName)
  {
    [a3 encodeObject:vertexFunctionName forKey:@"vertexFunctionName"];
  }

  sourceFile = self->_sourceFile;
  if (sourceFile)
  {
    [a3 encodeObject:sourceFile forKey:@"sourceFile"];
  }

  fragmentFunctionName = self->_fragmentFunctionName;
  if (fragmentFunctionName)
  {
    [a3 encodeObject:fragmentFunctionName forKey:@"fragmentFunctionName"];
  }

  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  semanticInfos = self->_semanticInfos;
  if (semanticInfos)
  {
    [a3 encodeObject:semanticInfos forKey:@"semanticInfos"];
  }

  opaque = self->_opaque;

  [a3 encodeBool:opaque forKey:@"opaque"];
}

- (SCNProgram)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SCNProgram;
  v4 = [(SCNProgram *)&v8 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNProgram *)v4 _customDecodingOfSCNProgram:a3];
    -[SCNProgram setVertexShader:](v4, "setVertexShader:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"vertexShader"]);
    -[SCNProgram setFragmentShader:](v4, "setFragmentShader:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fragmentShader"]);
    -[SCNProgram setVertexFunctionName:](v4, "setVertexFunctionName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"vertexFunctionName"]);
    -[SCNProgram setFragmentFunctionName:](v4, "setFragmentFunctionName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fragmentFunctionName"]);
    -[SCNProgram setSourceFile:](v4, "setSourceFile:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceFile"]);
    -[SCNProgram setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    v6 = SCNPlistClasses();
    -[SCNProgram setSemanticInfos:](v4, "setSemanticInfos:", [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setByAddingObject:", objc_opt_class()), @"semanticInfos"}]);
    -[SCNProgram setOpaque:](v4, "setOpaque:", [a3 decodeBoolForKey:@"opaque"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end