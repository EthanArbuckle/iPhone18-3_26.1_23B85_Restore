@interface MPSGraphPackageMLIRLibrary
- (BOOL)optimizedModuleWithSignature:(id)a3;
- (BOOL)optimizedNoDeviceModuleWithSignature:(id)a3;
- (BOOL)originalFileExists;
- (MPSGraphPackageMLIRLibrary)init;
- (MPSGraphPackageMLIRLibrary)initWithMLIRLibraryDict:(id)a3;
- (unint64_t)getResourceStorageMode;
- (void)addOptimizedNoDeviceResourcesUsed:(id)a3 withSignature:(id)a4;
- (void)addOptimizedResourcesUsed:(id)a3 withSignature:(id)a4;
- (void)setOptimizedModule:(id)a3 withSignature:(id)a4;
- (void)setOptimizedNoDeviceModule:(id)a3 withSignature:(id)a4;
- (void)setResourceStorageMode:(unint64_t)a3;
- (void)updateWithMLIRLibrary:(id)a3;
@end

@implementation MPSGraphPackageMLIRLibrary

- (MPSGraphPackageMLIRLibrary)init
{
  v12.receiver = self;
  v12.super_class = MPSGraphPackageMLIRLibrary;
  v2 = [(MPSGraphPackageMLIRLibrary *)&v12 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mlirLibrary = v2->_mlirLibrary;
  v2->_mlirLibrary = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v5 forKeyedSubscript:@"Optimized Modules"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v6 forKeyedSubscript:@"Optimized No Device Modules"];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v7 forKeyedSubscript:@"Optimized Resources Used"];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v8 forKeyedSubscript:@"Optimized No Device Resources Used"];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v9 forKeyedSubscript:@"Resource Offsets"];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v2->_mlirLibrary setObject:v10 forKeyedSubscript:@"Binary File Resources"];

  return v2;
}

- (MPSGraphPackageMLIRLibrary)initWithMLIRLibraryDict:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPSGraphPackageMLIRLibrary;
  v5 = [(MPSGraphPackageMLIRLibrary *)&v9 init];
  v6 = [v4 mutableCopy];
  mlirLibrary = v5->_mlirLibrary;
  v5->_mlirLibrary = v6;

  return v5;
}

- (unint64_t)getResourceStorageMode
{
  v2 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Storage Mode"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];

    return v4;
  }

  else
  {

    return 0;
  }
}

- (void)updateWithMLIRLibrary:(id)a3
{
  v23 = a3;
  v4 = [v23 getDict];
  v5 = [(NSMutableDictionary *)self->_mlirLibrary objectForKey:@"Original"];
  if (v5 && ([v4 objectForKeyedSubscript:@"Original"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v9 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized Modules"];
    v10 = [v4 objectForKeyedSubscript:@"Optimized Modules"];
    [v9 addEntriesFromDictionary:v10];

    v11 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized No Device Modules"];
    v12 = [v4 objectForKeyedSubscript:@"Optimized No Device Modules"];
    [v11 addEntriesFromDictionary:v12];

    v13 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Storage Mode"];
    [v4 objectForKeyedSubscript:@"Resource Storage Mode"];

    v14 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Storage Mode"];
    v15 = [v4 objectForKeyedSubscript:@"Resource Storage Mode"];

    if (v14 != v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v16 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized Resources Used"];
    v17 = [v4 objectForKeyedSubscript:@"Optimized Resources Used"];
    [v16 addEntriesFromDictionary:v17];

    v18 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized No Device Resources Used"];
    v19 = [v4 objectForKeyedSubscript:@"Optimized No Device Resources Used"];
    [v18 addEntriesFromDictionary:v19];

    v20 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Offsets"];
    v21 = [v4 objectForKeyedSubscript:@"Resource Offsets"];
    [v20 addEntriesFromDictionary:v21];

    mlirLibrary = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Binary File Resources"];
    v22 = [v4 objectForKeyedSubscript:@"Binary File Resources"];
    [mlirLibrary addEntriesFromDictionary:v22];
  }

  else
  {
    v7 = [v4 mutableCopy];
    mlirLibrary = self->_mlirLibrary;
    self->_mlirLibrary = v7;
  }
}

- (BOOL)originalFileExists
{
  v2 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Original"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)optimizedModuleWithSignature:(id)a3
{
  v4 = a3;
  v5 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedModules];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)optimizedNoDeviceModuleWithSignature:(id)a3
{
  v4 = a3;
  v5 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceModules];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6 != 0;

  return v7;
}

- (void)setOptimizedModule:(id)a3 withSignature:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedModules];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)setOptimizedNoDeviceModule:(id)a3 withSignature:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceModules];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)setResourceStorageMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)addOptimizedResourcesUsed:(id)a3 withSignature:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedResourcesUsedLibrary];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)addOptimizedNoDeviceResourcesUsed:(id)a3 withSignature:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceResourcesUsedLibrary];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

@end