@interface MTLCompileOptionsInternal
- (BOOL)isEqual:(id)a3;
- (MTLCompileOptionsInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)exportDictionary;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)importDictionary:(id)a3;
- (void)setAdditionalCompilerArguments:(id)a3;
- (void)setFastMathEnabled:(BOOL)a3;
- (void)setLibraries:(id)a3;
- (void)setPreprocessorMacros:(id)a3;
- (void)setRequiredThreadsPerThreadgroup:(id *)a3;
@end

@implementation MTLCompileOptionsInternal

- (MTLCompileOptionsInternal)init
{
  v6.receiver = self;
  v6.super_class = MTLCompileOptionsInternal;
  v2 = [(MTLCompileOptionsInternal *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_mathMode = 2;
    v2->_mathFloatingPointFunctions = 0;
    if (getDefaultLanguageVersion(int)::pred != -1)
    {
      [MTLCompileOptionsInternal init];
    }

    v4 = getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion;
    if (getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion >= 0x40000)
    {
      v4 = 0x40000;
    }

    v3->_languageVersion = v4;
    v3->_tracingEnabled = 0;
    v3->_compileTimeStatisticsEnabled = 0;
    v3->_additionalCompilerArguments = 0;
    v3->_sourceLanguage = 0;
    v3->_libraryType = 0;
    v3->_libraries = 0;
    v3->_preserveInvariance = 0;
    v3->_optimizationLevel = 0;
    v3->_compileSymbolVisibility = 0;
    v3->_allowReferencingUndefinedSymbols = 0;
    v3->_maxTotalThreadsPerThreadgroup = 0;
    v3->_enableLogging = 0;
    v3->_requiredThreadsPerThreadgroup.height = 0;
    v3->_requiredThreadsPerThreadgroup.depth = 0;
    v3->_requiredThreadsPerThreadgroup.width = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCompileOptionsInternal;
  [(MTLCompileOptionsInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    preprocessorMacros = self->_preprocessorMacros;
    if (preprocessorMacros == *(a3 + 2) || (v6 = [(NSDictionary *)preprocessorMacros isEqual:?]) != 0)
    {
      if (self->_mathMode != *(a3 + 3) || self->_mathFloatingPointFunctions != *(a3 + 4) || self->_debuggingEnabled != *(a3 + 42) || self->_glBufferBindPoints != *(a3 + 40) || self->_tracingEnabled != *(a3 + 41) || self->_compileTimeStatisticsEnabled != *(a3 + 56))
      {
        goto LABEL_3;
      }

      additionalCompilerArguments = self->_additionalCompilerArguments;
      if (additionalCompilerArguments == *(a3 + 8) || (v6 = [(NSString *)additionalCompilerArguments isEqualToString:?]) != 0)
      {
        if (self->_userSetLanguageVersion != *(a3 + 8) || self->_languageVersion != *(a3 + 6) || self->_optimizationLevel != *(a3 + 14) || self->_sourceLanguage != *(a3 + 72) || self->_libraryType != *(a3 + 10))
        {
          goto LABEL_3;
        }

        v6 = MTLCompareArray(self->_libraries, *(a3 + 11), 1, 0);
        if (v6)
        {
          installName = self->_installName;
          if (installName == *(a3 + 12) || (v6 = [(NSString *)installName isEqualToString:?]) != 0)
          {
            if (self->_preserveInvariance != *(a3 + 104) || self->_compileSymbolVisibility != *(a3 + 15) || self->_allowReferencingUndefinedSymbols != *(a3 + 128) || self->_maxTotalThreadsPerThreadgroup != *(a3 + 17) || self->_enableLogging != *(a3 + 144) || self->_requiredThreadsPerThreadgroup.width != *(a3 + 19) || self->_requiredThreadsPerThreadgroup.height != *(a3 + 20))
            {
              goto LABEL_3;
            }

            LOBYTE(v6) = self->_requiredThreadsPerThreadgroup.depth == *(a3 + 21);
          }
        }
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v9, 0xA0uLL);
  v3 = [(NSDictionary *)self->_preprocessorMacros hash];
  mathMode = self->_mathMode;
  mathFloatingPointFunctions = self->_mathFloatingPointFunctions;
  v9[0] = v3;
  v9[1] = mathMode;
  v10 = mathFloatingPointFunctions;
  LOBYTE(v11) = self->_debuggingEnabled;
  BYTE1(v11) = self->_glBufferBindPoints;
  BYTE2(v11) = self->_userSetLanguageVersion;
  languageVersion = self->_languageVersion;
  LOBYTE(mathFloatingPointFunctions) = self->_compileTimeStatisticsEnabled;
  LOBYTE(v13) = self->_tracingEnabled;
  BYTE1(v13) = mathFloatingPointFunctions;
  v14 = [(NSString *)self->_additionalCompilerArguments hash:v3];
  libraryType = self->_libraryType;
  sourceLanguage = self->_sourceLanguage;
  v16 = libraryType;
  v17 = MTLHashArray(self->_libraries, 1, 0);
  v18 = [(NSString *)self->_installName hash];
  preserveInvariance = self->_preserveInvariance;
  compileSymbolVisibility = self->_compileSymbolVisibility;
  optimizationLevel = self->_optimizationLevel;
  v21 = compileSymbolVisibility;
  allowReferencingUndefinedSymbols = self->_allowReferencingUndefinedSymbols;
  maxTotalThreadsPerThreadgroup = self->_maxTotalThreadsPerThreadgroup;
  enableLogging = self->_enableLogging;
  requiredThreadsPerThreadgroup = self->_requiredThreadsPerThreadgroup;
  return _MTLHashState(v9, 0xA0uLL);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    *(v5 + 16) = [(NSDictionary *)self->_preprocessorMacros copyWithZone:a3];
    *(v5 + 24) = self->_mathMode;
    *(v5 + 32) = self->_mathFloatingPointFunctions;
    *(v5 + 42) = self->_debuggingEnabled;
    *(v5 + 40) = self->_glBufferBindPoints;
    *(v5 + 8) = self->_userSetLanguageVersion;
    *(v5 + 48) = self->_languageVersion;
    *(v5 + 41) = self->_tracingEnabled;
    *(v5 + 56) = self->_compileTimeStatisticsEnabled;
    *(v5 + 64) = [(NSString *)self->_additionalCompilerArguments copy];
    *(v5 + 72) = self->_sourceLanguage;
    *(v5 + 80) = self->_libraryType;
    *(v5 + 88) = [(NSArray *)self->_libraries copy];
    *(v5 + 96) = [(NSString *)self->_installName copy];
    *(v5 + 104) = self->_preserveInvariance;
    *(v5 + 112) = self->_optimizationLevel;
    *(v5 + 120) = self->_compileSymbolVisibility;
    *(v5 + 128) = self->_allowReferencingUndefinedSymbols;
    *(v5 + 136) = self->_maxTotalThreadsPerThreadgroup;
    *(v5 + 144) = self->_enableLogging;
    v6 = *&self->_requiredThreadsPerThreadgroup.width;
    *(v5 + 168) = self->_requiredThreadsPerThreadgroup.depth;
    *(v5 + 152) = v6;
  }

  return v5;
}

- (void)setLibraries:(id)a3
{
  libraries = self->_libraries;
  if (libraries != a3)
  {

    self->_libraries = [a3 copy];
  }
}

- (void)setPreprocessorMacros:(id)a3
{
  preprocessorMacros = self->_preprocessorMacros;
  if (preprocessorMacros != a3)
  {

    self->_preprocessorMacros = [a3 copy];
  }
}

- (void)setAdditionalCompilerArguments:(id)a3
{
  additionalCompilerArguments = self->_additionalCompilerArguments;
  if (additionalCompilerArguments != a3)
  {

    self->_additionalCompilerArguments = [a3 copy];
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v40[4] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  languageVersion = self->_languageVersion;
  preprocessorMacros = self->_preprocessorMacros;
  if (preprocessorMacros && (v8 = [(NSDictionary *)preprocessorMacros allKeys], v9 = [(NSDictionary *)self->_preprocessorMacros allValues], [(NSDictionary *)self->_preprocessorMacros count]))
  {
    v10 = 0;
    v11 = &stru_1EF478240;
    v12 = 1;
    do
    {
      v40[0] = v6;
      v40[1] = [(NSArray *)v8 objectAtIndexedSubscript:v10];
      v40[2] = @"=";
      v40[3] = [(NSArray *)v9 objectAtIndexedSubscript:v10];
      v11 = -[__CFString stringByAppendingString:](v11, "stringByAppendingString:", [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:{4), "componentsJoinedByString:", @" "}]);
      v10 = v12;
    }

    while ([(NSDictionary *)self->_preprocessorMacros count]> v12++);
  }

  else
  {
    v11 = &stru_1EF478240;
  }

  v38 = 0;
  v36 = *&self->_requiredThreadsPerThreadgroup.width;
  depth = self->_requiredThreadsPerThreadgroup.depth;
  MTLSizeToNSArray(&v36, &v38);
  v14 = MEMORY[0x1E696AEC0];
  v35.receiver = self;
  v35.super_class = MTLCompileOptionsInternal;
  v15 = [(MTLCompileOptionsInternal *)&v35 description];
  v39[0] = v5;
  v39[1] = @"preprocessorMacros:";
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = @"<null>";
  }

  v39[2] = v16;
  v39[3] = v5;
  v39[4] = @"mathMode =";
  mathMode = self->_mathMode;
  v18 = @"<unknown>";
  if (mathMode <= 2)
  {
    v18 = off_1E6EEC610[mathMode];
  }

  v39[5] = v18;
  v39[6] = v5;
  mathFloatingPointFunctions = self->_mathFloatingPointFunctions;
  v20 = @"MTLMathFloatingPointFunctionsFast";
  if (mathFloatingPointFunctions)
  {
    v20 = @"<unknown>";
  }

  v21 = mathFloatingPointFunctions == 1;
  v22 = @"MTLMathFloatingPointFunctionsPrecise";
  if (!v21)
  {
    v22 = v20;
  }

  v39[7] = @"mathFloatingPointFunctions =";
  v39[8] = v22;
  v39[9] = v5;
  v39[10] = @"preserveInvariance =";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_preserveInvariance];
  optimizationLevel = self->_optimizationLevel;
  v39[11] = v23;
  v39[12] = v5;
  v25 = @"MTLLibraryOptimizationLevelSize";
  if (optimizationLevel != 1)
  {
    v25 = @"<unknown>";
  }

  v21 = optimizationLevel == 0;
  v26 = @"MTLLibraryOptimizationLevelDefault";
  if (!v21)
  {
    v26 = v25;
  }

  v39[13] = @"optimizationLevel =";
  v39[14] = v26;
  libraryType = self->_libraryType;
  v39[15] = v5;
  v39[16] = @"libraryType =";
  v28 = @"MTLLibraryTypeDynamic";
  if (libraryType != 1)
  {
    v28 = @"<unknown>";
  }

  if (libraryType)
  {
    v29 = v28;
  }

  else
  {
    v29 = @"MTLLibraryTypeExecutable";
  }

  v39[17] = v29;
  v39[18] = v5;
  installName = self->_installName;
  if (!installName)
  {
    installName = @"<null>";
  }

  v39[19] = @"installName =";
  v39[20] = installName;
  v39[21] = v5;
  v39[22] = @"compileSymbolVisibility = ";
  v39[23] = [MEMORY[0x1E696AD98] numberWithInteger:self->_compileSymbolVisibility];
  v39[24] = v5;
  v39[25] = @"allowReferencingUndefinedSymbols = ";
  v39[26] = [MEMORY[0x1E696AD98] numberWithBool:self->_allowReferencingUndefinedSymbols];
  v39[27] = v5;
  v39[28] = @"maxTotalThreadsPerThreadgroup = ";
  v39[29] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxTotalThreadsPerThreadgroup];
  v39[30] = v5;
  v39[31] = @"enableLogging =";
  v39[32] = [MEMORY[0x1E696AD98] numberWithBool:self->_enableLogging];
  v39[33] = v5;
  v39[34] = @"languageVersion =";
  if (self->_userSetLanguageVersion)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u:%u", HIWORD(languageVersion), languageVersion];
  }

  else
  {
    v31 = @"default";
  }

  v39[35] = v31;
  v39[36] = v5;
  v39[37] = @"requiredThreadsPerThreadgroup = ";
  v39[38] = v38;
  result = [v14 stringWithFormat:@"%@%@", v15, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v39, 39), "componentsJoinedByString:", @" "];
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)exportDictionary
{
  v17[21] = *MEMORY[0x1E69E9840];
  v15 = 0;
  requiredThreadsPerThreadgroup = self->_requiredThreadsPerThreadgroup;
  MTLSizeToNSArray(&requiredThreadsPerThreadgroup, &v15);
  v16[0] = @"preprocessorMacros";
  v3 = [(MTLCompileOptionsInternal *)self preprocessorMacros];
  v4 = MEMORY[0x1E695E0F8];
  if (v3)
  {
    v4 = v3;
  }

  v17[0] = v4;
  v16[1] = @"fastMathEnabled";
  v17[1] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal fastMathEnabled](self, "fastMathEnabled")}];
  v16[2] = @"mathMode";
  v17[2] = [MEMORY[0x1E696AD98] numberWithInteger:{-[MTLCompileOptionsInternal mathMode](self, "mathMode")}];
  v16[3] = @"mathFloatingPointFunctions";
  v17[3] = [MEMORY[0x1E696AD98] numberWithInteger:{-[MTLCompileOptionsInternal mathFloatingPointFunctions](self, "mathFloatingPointFunctions")}];
  v16[4] = @"languageVersion";
  v17[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MTLCompileOptionsInternal languageVersion](self, "languageVersion")}];
  v16[5] = @"tracingEnabled";
  v17[5] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal tracingEnabled](self, "tracingEnabled")}];
  v16[6] = @"glBufferBindPoints";
  v17[6] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal glBufferBindPoints](self, "glBufferBindPoints")}];
  v16[7] = @"debuggingEnabled";
  v17[7] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal debuggingEnabled](self, "debuggingEnabled")}];
  v16[8] = @"compileTimeStatisticsEnabled";
  v17[8] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal compileTimeStatisticsEnabled](self, "compileTimeStatisticsEnabled")}];
  v16[9] = @"additionalCompilerArguments";
  v5 = [(MTLCompileOptionsInternal *)self additionalCompilerArguments];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1EF478240;
  }

  v17[9] = v6;
  v16[10] = @"sourceLanguage";
  v17[10] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MTLCompileOptionsInternal sourceLanguage](self, "sourceLanguage")}];
  v16[11] = @"type";
  v17[11] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MTLCompileOptionsInternal libraryType](self, "libraryType")}];
  v16[12] = @"libraries";
  v7 = [(MTLCompileOptionsInternal *)self libraries];
  v8 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v8 = v7;
  }

  v17[12] = v8;
  v16[13] = @"installName";
  v9 = [(MTLCompileOptionsInternal *)self installName];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1EF478240;
  }

  v17[13] = v10;
  v16[14] = @"preserveInvariance";
  v17[14] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal preserveInvariance](self, "preserveInvariance")}];
  v16[15] = @"optimizationLevel";
  v17[15] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MTLCompileOptionsInternal optimizationLevel](self, "optimizationLevel")}];
  v16[16] = @"compileSymbolVisibility";
  v17[16] = [MEMORY[0x1E696AD98] numberWithInteger:{-[MTLCompileOptionsInternal compileSymbolVisibility](self, "compileSymbolVisibility")}];
  v16[17] = @"allowReferencingUndefinedSymbols";
  v17[17] = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal allowReferencingUndefinedSymbols](self, "allowReferencingUndefinedSymbols")}];
  v16[18] = @"maxTotalThreadsPerThreadgroup";
  v17[18] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTLCompileOptionsInternal maxTotalThreadsPerThreadgroup](self, "maxTotalThreadsPerThreadgroup")}];
  v16[19] = @"enableLogging";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTLCompileOptionsInternal enableLogging](self, "enableLogging")}];
  v16[20] = @"requiredThreadsPerThreadgroup";
  v17[19] = v11;
  v17[20] = v15;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:21];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)importDictionary:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"preprocessorMacros"];
  if (v5)
  {
    [(MTLCompileOptionsInternal *)self setPreprocessorMacros:v5];
  }

  v6 = [a3 objectForKeyedSubscript:@"fastMathEnabled"];
  if (v6)
  {
    -[MTLCompileOptionsInternal setFastMathEnabled:](self, "setFastMathEnabled:", [v6 BOOLValue]);
  }

  v7 = [a3 objectForKeyedSubscript:@"mathMode"];
  if (v7)
  {
    -[MTLCompileOptionsInternal setMathMode:](self, "setMathMode:", [v7 unsignedLongValue]);
  }

  v8 = [a3 objectForKeyedSubscript:@"mathFloatingPointFunctions"];
  if (v8)
  {
    -[MTLCompileOptionsInternal setMathFloatingPointFunctions:](self, "setMathFloatingPointFunctions:", [v8 unsignedLongValue]);
  }

  v9 = [a3 objectForKeyedSubscript:@"languageVersion"];
  if (v9)
  {
    -[MTLCompileOptionsInternal setLanguageVersion:](self, "setLanguageVersion:", [v9 unsignedLongValue]);
  }

  v10 = [a3 objectForKeyedSubscript:@"tracingEnabled"];
  if (v10)
  {
    -[MTLCompileOptionsInternal setTracingEnabled:](self, "setTracingEnabled:", [v10 BOOLValue]);
  }

  v11 = [a3 objectForKeyedSubscript:@"glBufferBindPoints"];
  if (v11)
  {
    -[MTLCompileOptionsInternal setGlBufferBindPoints:](self, "setGlBufferBindPoints:", [v11 BOOLValue]);
  }

  v12 = [a3 objectForKeyedSubscript:@"debuggingEnabled"];
  if (v12)
  {
    -[MTLCompileOptionsInternal setDebuggingEnabled:](self, "setDebuggingEnabled:", [v12 BOOLValue]);
  }

  v13 = [a3 objectForKeyedSubscript:@"compileTimeStatisticsEnabled"];
  if (v13)
  {
    -[MTLCompileOptionsInternal setCompileTimeStatisticsEnabled:](self, "setCompileTimeStatisticsEnabled:", [v13 BOOLValue]);
  }

  v14 = [a3 objectForKeyedSubscript:@"additionalCompilerArguments"];
  if (v14)
  {
    [(MTLCompileOptionsInternal *)self setAdditionalCompilerArguments:v14];
  }

  v15 = [a3 objectForKeyedSubscript:@"sourceLanguage"];
  if (v15)
  {
    -[MTLCompileOptionsInternal setSourceLanguage:](self, "setSourceLanguage:", [v15 unsignedLongValue]);
  }

  v16 = [a3 objectForKeyedSubscript:@"libraryType"];
  if (v16)
  {
    -[MTLCompileOptionsInternal setLibraryType:](self, "setLibraryType:", [v16 unsignedLongValue]);
  }

  v17 = [a3 objectForKeyedSubscript:@"libraries"];
  if (v17)
  {
    [(MTLCompileOptionsInternal *)self setLibraries:v17];
  }

  v18 = [a3 objectForKeyedSubscript:@"installName"];
  if (v18)
  {
    [(MTLCompileOptionsInternal *)self setInstallName:v18];
  }

  v19 = [a3 objectForKeyedSubscript:@"preserveInvariance"];
  if (v19)
  {
    -[MTLCompileOptionsInternal setPreserveInvariance:](self, "setPreserveInvariance:", [v19 BOOLValue]);
  }

  v20 = [a3 objectForKeyedSubscript:@"optimizationLevel"];
  if (v20)
  {
    -[MTLCompileOptionsInternal setOptimizationLevel:](self, "setOptimizationLevel:", [v20 unsignedLongValue]);
  }

  v21 = [a3 objectForKeyedSubscript:@"compileSymbolVisibility"];
  if (v21)
  {
    -[MTLCompileOptionsInternal setCompileSymbolVisibility:](self, "setCompileSymbolVisibility:", [v21 unsignedLongValue]);
  }

  v22 = [a3 objectForKeyedSubscript:@"allowReferencingUndefinedSymbols"];
  if (v22)
  {
    -[MTLCompileOptionsInternal setAllowReferencingUndefinedSymbols:](self, "setAllowReferencingUndefinedSymbols:", [v22 BOOLValue]);
  }

  v23 = [a3 objectForKeyedSubscript:@"maxTotalThreadsPerThreadgroup"];
  if (v23)
  {
    -[MTLCompileOptionsInternal setMaxTotalThreadsPerThreadgroup:](self, "setMaxTotalThreadsPerThreadgroup:", [v23 unsignedLongValue]);
  }

  v24 = [a3 objectForKeyedSubscript:@"enableLogging"];
  if (v24)
  {
    -[MTLCompileOptionsInternal setEnableLogging:](self, "setEnableLogging:", [v24 BOOLValue]);
  }

  v25 = [a3 objectForKeyedSubscript:@"requiredThreadsPerThreadgroup"];
  if (v25)
  {
    v26 = v25;
    if ([v25 count] == 3)
    {
      v27[0] = [v26 objectAtIndexedSubscript:0];
      v27[1] = [v26 objectAtIndexedSubscript:1];
      v27[2] = [v26 objectAtIndexedSubscript:2];
      [(MTLCompileOptionsInternal *)self setRequiredThreadsPerThreadgroup:v27];
    }
  }
}

- (void)setFastMathEnabled:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_mathMode = v3;
  self->_mathFloatingPointFunctions = !a3;
}

- (void)setRequiredThreadsPerThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_requiredThreadsPerThreadgroup.width = *&a3->var0;
  self->_requiredThreadsPerThreadgroup.depth = var2;
}

@end