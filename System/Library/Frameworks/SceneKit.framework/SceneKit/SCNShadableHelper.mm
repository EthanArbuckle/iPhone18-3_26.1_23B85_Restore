@interface SCNShadableHelper
- (BOOL)_bindValueForSymbol:(id)symbol atLocation:(unsigned int)location programID:(unsigned int)d node:(id)node renderer:(id)renderer;
- (NSArray)shaderModifiersArgumentsNames;
- (NSDictionary)shaderModifiers;
- (SCNProgram)program;
- (SCNShadableHelper)initWithCoder:(id)coder;
- (SCNShadableHelper)initWithOwner:(id)owner;
- (__C3DFXGLSLProgram)_programFromPassAtIndex:(int64_t)index;
- (__C3DFXTechnique)_technique;
- (void)_commonInit;
- (void)_customEncodingOfSCNShadableHelper:(id)helper;
- (void)_parseAndSetShaderModifier:(id)modifier;
- (void)_programDidChange:(id)change;
- (void)_setC3DProgram;
- (void)_setC3DProgramDelegate;
- (void)_startObservingProgram;
- (void)_stopObservingProgram;
- (void)_unbindValueForSymbol:(id)symbol atLocation:(unsigned int)location programID:(unsigned int)d node:(id)node renderer:(id)renderer;
- (void)_updateAllC3DProgramInputs;
- (void)_updateC3DProgramInput:(__C3DFXGLSLProgram *)input forSymbol:(id)symbol;
- (void)_updateC3DProgramInputForSymbol:(id)symbol;
- (void)copyModifiersFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setProgram:(id)program;
- (void)setShaderModifiers:(id)modifiers;
@end

@implementation SCNShadableHelper

- (void)_commonInit
{
  self->_symbolToBinder = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_symbolToUnbinder = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_argumentsNames = objc_alloc_init(MEMORY[0x277CBEB18]);
}

- (SCNShadableHelper)initWithOwner:(id)owner
{
  v7.receiver = self;
  v7.super_class = SCNShadableHelper;
  v4 = [(SCNShadableHelper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SCNShadableHelper *)v4 _commonInit];
    v5->_owner = owner;
  }

  return v5;
}

- (NSArray)shaderModifiersArgumentsNames
{
  v2 = [(NSMutableArray *)self->_argumentsNames copy];

  return v2;
}

- (void)dealloc
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_owner == nil";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Must call [SCNShadableHelper ownerWillDie] before releasing it !", &v1, 0xCu);
}

- (void)_startObservingProgram
{
  if (self->_program)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    program = self->_program;

    [defaultCenter addObserver:self selector:sel__programDidChange_ name:@"SCNProgramDidChangeNotification" object:program];
  }
}

- (void)_stopObservingProgram
{
  if (self->_program)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    program = self->_program;

    [defaultCenter removeObserver:self name:@"SCNProgramDidChangeNotification" object:program];
  }
}

- (void)setProgram:(id)program
{
  if (program && [(NSDictionary *)self->_shaderModifiers count])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNShadableHelper setProgram:];
    }
  }

  else if (self->_program != program)
  {
    [(SCNShadableHelper *)self _stopObservingProgram];

    self->_program = program;
    sceneRef = [self->_owner sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNShadableHelper_setProgram___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

uint64_t __32__SCNShadableHelper_setProgram___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setC3DProgram];
  v2 = *(a1 + 32);

  return [v2 _startObservingProgram];
}

- (SCNProgram)program
{
  v2 = self->_program;

  return v2;
}

- (BOOL)_bindValueForSymbol:(id)symbol atLocation:(unsigned int)location programID:(unsigned int)d node:(id)node renderer:(id)renderer
{
  v9 = *&d;
  v10 = *&location;
  v11 = [(NSDictionary *)self->_symbolToBinder objectForKey:symbol];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9, v10, node, renderer);
  }

  return v12 != 0;
}

- (void)_unbindValueForSymbol:(id)symbol atLocation:(unsigned int)location programID:(unsigned int)d node:(id)node renderer:(id)renderer
{
  if ([(NSDictionary *)self->_symbolToBinder objectForKey:?])
  {
    v9 = [(NSDictionary *)self->_symbolToUnbinder objectForKey:symbol];
    if (v9)
    {
      v10 = v9[2];

      v10();
    }
  }
}

- (void)_parseAndSetShaderModifier:(id)modifier
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_argumentsNames removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [modifier countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(modifier);
        }

        Arguments = C3DShaderModifierGetArguments(*(*(&v15 + 1) + 8 * i));
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __48__SCNShadableHelper__parseAndSetShaderModifier___block_invoke;
        v14[3] = &unk_2782FC900;
        v14[4] = self;
        [Arguments enumerateKeysAndObjectsUsingBlock:v14];
      }

      v6 = [modifier countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    __CFObject = [self->_owner __CFObject];
    sceneRef = [self->_owner sceneRef];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SCNShadableHelper__parseAndSetShaderModifier___block_invoke_2;
    v13[3] = &unk_2782FB7D0;
    v13[4] = modifier;
    v13[5] = __CFObject;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v13];
  }

  else
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCNShadableHelper _parseAndSetShaderModifier:];
    }
  }
}

- (NSDictionary)shaderModifiers
{
  v2 = self->_shaderModifiers;

  return v2;
}

- (void)setShaderModifiers:(id)modifiers
{
  if (self->_program && [modifiers count])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNShadableHelper setShaderModifiers:];
    }
  }

  else
  {
    shaderModifiers = self->_shaderModifiers;
    if (shaderModifiers != modifiers)
    {

      if ([modifiers count])
      {
        v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:modifiers copyItems:1];
      }

      else if (modifiers)
      {
        v7 = MEMORY[0x277CBEC10];
      }

      else
      {
        v7 = 0;
      }

      self->_shaderModifiers = v7;
      owner = [(SCNShadableHelper *)self owner];
      v9 = self->_shaderModifiers;
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](v9, "count")}];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = ____arrayOfC3DModifiersFromDictionary_block_invoke;
      v12[3] = &unk_2782FD200;
      v12[4] = v10;
      v12[5] = owner;
      [(NSDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v12];

      v11 = v10;
      self->_c3dShaderModifierCache = v11;
      [(SCNShadableHelper *)self _parseAndSetShaderModifier:v11];
    }
  }
}

- (void)copyModifiersFrom:(id)from
{
  v4 = *(from + 4);
  shaderModifiers = [from shaderModifiers];
  v6 = shaderModifiers;
  if (v4)
  {
    if (self->_program && [(NSDictionary *)shaderModifiers count])
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SCNShadableHelper setShaderModifiers:];
      }
    }

    else
    {
      shaderModifiers = self->_shaderModifiers;
      if (shaderModifiers != v6)
      {

        if ([(NSDictionary *)v6 count])
        {
          v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v6 copyItems:1];
        }

        else if (v6)
        {
          v9 = MEMORY[0x277CBEC10];
        }

        else
        {
          v9 = 0;
        }

        self->_shaderModifiers = v9;

        self->_c3dShaderModifierCache = v4;

        [(SCNShadableHelper *)self _parseAndSetShaderModifier:v4];
      }
    }
  }

  else
  {

    [(SCNShadableHelper *)self setShaderModifiers:shaderModifiers];
  }
}

- (void)setMinimumLanguageVersion:(id)version
{
  minimumLanguageVersion = self->_minimumLanguageVersion;
  if (minimumLanguageVersion != version)
  {
    v9[10] = v3;
    v9[11] = v4;

    self->_minimumLanguageVersion = version;
    sceneRef = [self->_owner sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__SCNShadableHelper_setMinimumLanguageVersion___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = self;
    v9[5] = version;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
  }
}

void __47__SCNShadableHelper_setMinimumLanguageVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v2 __CFObject];
    v4 = *(a1 + 40);

    C3DEntitySetShadableMinimumMTLLanguageVersion(v3, v4);
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__SCNShadableHelper_setMinimumLanguageVersion___block_invoke_cold_1();
    }
  }
}

- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block
{
  v6 = [block copy];
  if (v6)
  {
    v7 = v6;
    symbolToBinder = self->_symbolToBinder;

    [(NSDictionary *)symbolToBinder setValue:v7 forKey:symbol];
  }
}

- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block
{
  v6 = [block copy];
  if (v6)
  {
    v7 = v6;
    symbolToUnbinder = self->_symbolToUnbinder;

    [(NSDictionary *)symbolToUnbinder setValue:v7 forKey:symbol];
  }
}

- (void)_programDidChange:(id)change
{
  sceneRef = [self->_owner sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNShadableHelper__programDidChange___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = change;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

uint64_t __39__SCNShadableHelper__programDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  if (v2)
  {
    v3 = [v2 valueForKey:@"parameter"];
    if (v3)
    {
      [*(a1 + 40) _updateC3DProgramInputForSymbol:v3];
    }
  }

  else
  {
    [*(a1 + 40) _setC3DProgram];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [objc_msgSend(*(a1 + 40) "owner")];

  return [v4 postNotificationName:@"kC3DSceneDidUpdateNotification" object:v5];
}

- (__C3DFXTechnique)_technique
{
  result = [self->_owner materialRef];
  if (result)
  {

    return C3DMaterialGetTechnique(result);
  }

  return result;
}

- (__C3DFXGLSLProgram)_programFromPassAtIndex:(int64_t)index
{
  result = [(SCNShadableHelper *)self _technique];
  if (result)
  {

    return C3DFXTechniqueGetSingleProgram(result);
  }

  return result;
}

- (void)_updateC3DProgramInput:(__C3DFXGLSLProgram *)input forSymbol:(id)symbol
{
  v18 = *MEMORY[0x277D85DE8];
  PassAtIndex = C3DFXTechniqueGetPassAtIndex([(SCNShadableHelper *)self _technique], 0);
  InputWithName = C3DFXPassGetInputWithName(PassAtIndex, symbol);
  v9 = InputWithName;
  if (InputWithName || (v9 = C3DFXPassAddInputWithName(PassAtIndex, symbol), C3DFXPassInputSetSymbolName(v9, symbol), v9))
  {
    v10 = _fxSemanticFromSemanticString([(SCNProgram *)self->_program semanticForSymbol:symbol]);
    C3DFXPassInputSetSemantic(v9, v10);
    v11 = [objc_msgSend(-[SCNProgram _optionsForSymbol:](self->_program _optionsForSymbol:{symbol), "valueForKey:", @"mappingChannel", "intValue"}];
    if (v11 >= 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = v11;
    }

    C3DFXPassInputSetChannelIndex(v9, v12);
    v13 = C3DVertexAttribFromParameterSemantic(v10, v12);
    if (v13 == 14)
    {
      if (!InputWithName)
      {
        NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(input);
        C3DFXPassInputSetUniformIndex(v9, NextUniformIndex);

        C3DFXGLSLProgramSetUniformIndex(input, symbol, NextUniformIndex);
      }
    }

    else
    {

      C3DFXGLSLProgramSetAttributeIndex(input, symbol, v13);
    }
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      symbolCopy = symbol;
      _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: _updateC3DProgramInput can't find input named %@", &v16, 0xCu);
    }
  }
}

- (void)_updateC3DProgramInputForSymbol:(id)symbol
{
  v5 = [(SCNShadableHelper *)self _programFromPassAtIndex:0];
  if (v5)
  {

    [(SCNShadableHelper *)self _updateC3DProgramInput:v5 forSymbol:symbol];
  }
}

- (void)_updateAllC3DProgramInputs
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SCNShadableHelper *)self _programFromPassAtIndex:0];
  if (v3)
  {
    v4 = v3;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    _allSymbolsWithSceneKitSemantic = [(SCNProgram *)self->_program _allSymbolsWithSceneKitSemantic];
    v6 = [_allSymbolsWithSceneKitSemantic countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(_allSymbolsWithSceneKitSemantic);
          }

          [(SCNShadableHelper *)self _updateC3DProgramInput:v4 forSymbol:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [_allSymbolsWithSceneKitSemantic countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setC3DProgramDelegate
{
  v3 = [(SCNShadableHelper *)self _programFromPassAtIndex:0];
  if (v3)
  {
    v4 = v3;
    *&v6 = _programBindValueForSymbolCallback;
    *(&v6 + 1) = _programDelegateUnbindValueForSymbolCallback;
    v7 = _programDelegateHandleErrorCallback;
    v8 = _programDelegateIsOpaqueCallback;
    v5 = C3DFXProgramDelegateCreate(&v6, self);
    C3DFXProgramSetDelegate(v4, v5);
    CFRelease(v5);
  }
}

- (void)_setC3DProgram
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "mat";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

CFHashCode __35__SCNShadableHelper__setC3DProgram__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) libraryProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [v1 _libraryHash];
  }

  else if (v1)
  {

    return CFHash(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t __35__SCNShadableHelper__setC3DProgram__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryProvider];

  return [v3 libraryForDevice:a2];
}

void __35__SCNShadableHelper__setC3DProgram__block_invoke_4(uint64_t a1, int a2, const void *a3, int a4)
{
  v8 = *(a1 + 32);
  if (v8 && (Shader = C3DFXGLSLProgramGetShader(v8, a2)) != 0)
  {
    v10 = Shader;
    C3DFXGLSLProgramSetShader(*(a1 + 48), Shader);

    C3DFXShaderSetSource(v10, a3);
  }

  else if (a3 || a4)
  {
    v11 = C3DFXShaderCreate(a2);
    C3DFXGLSLProgramSetShader(*(a1 + 40), v11);
    C3DFXShaderSetSource(v11, a3);

    CFRelease(v11);
  }
}

- (void)_customEncodingOfSCNShadableHelper:(id)helper
{
  owner = self->_owner;
  if (owner)
  {
    [helper encodeObject:owner forKey:@"owner"];
  }
}

- (void)encodeWithCoder:(id)coder
{
  [(SCNShadableHelper *)self _customEncodingOfSCNShadableHelper:?];
  program = self->_program;
  if (program)
  {
    [coder encodeObject:program forKey:@"program"];
  }

  shaderModifiers = self->_shaderModifiers;
  if (shaderModifiers)
  {
    [coder encodeObject:shaderModifiers forKey:@"shaderModifiers"];
  }

  if (self->_minimumLanguageVersion)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (SCNShadableHelper)initWithCoder:(id)coder
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SCNShadableHelper;
  v4 = [(SCNShadableHelper *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(SCNShadableHelper *)v4 _commonInit];
    v6 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNShadableHelper *)v5 _customDecodingOfSCNShadableHelper:coder];
    if (v5->_owner)
    {
      -[SCNShadableHelper setProgram:](v5, "setProgram:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"program"]);
      v7 = MEMORY[0x277CBEB98];
      v10[0] = objc_opt_class();
      v10[1] = objc_opt_class();
      -[SCNShadableHelper setShaderModifiers:](v5, "setShaderModifiers:", [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 2)), @"shaderModifiers"}]);
      -[SCNShadableHelper setMinimumLanguageVersion:](v5, "setMinimumLanguageVersion:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"minimumLanguageVersion"]);
    }

    [(SCNShadableHelper *)v5 _didDecodeSCNShadableHelper:coder];
    [SCNTransaction setImmediateMode:v6];
  }

  return v5;
}

void __47__SCNShadableHelper_setMinimumLanguageVersion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end