@interface MPSGraphPackageMLIRLibrary
- (BOOL)optimizedModuleWithSignature:(id)signature;
- (BOOL)optimizedNoDeviceModuleWithSignature:(id)signature;
- (BOOL)originalFileExists;
- (MPSGraphPackageMLIRLibrary)init;
- (MPSGraphPackageMLIRLibrary)initWithMLIRLibraryDict:(id)dict;
- (unint64_t)getResourceStorageMode;
- (void)addOptimizedNoDeviceResourcesUsed:(id)used withSignature:(id)signature;
- (void)addOptimizedResourcesUsed:(id)used withSignature:(id)signature;
- (void)setOptimizedModule:(id)module withSignature:(id)signature;
- (void)setOptimizedNoDeviceModule:(id)module withSignature:(id)signature;
- (void)setResourceStorageMode:(unint64_t)mode;
- (void)updateWithMLIRLibrary:(id)library;
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

- (MPSGraphPackageMLIRLibrary)initWithMLIRLibraryDict:(id)dict
{
  dictCopy = dict;
  v9.receiver = self;
  v9.super_class = MPSGraphPackageMLIRLibrary;
  v5 = [(MPSGraphPackageMLIRLibrary *)&v9 init];
  v6 = [dictCopy mutableCopy];
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
    unsignedLongLongValue = [v2 unsignedLongLongValue];

    return unsignedLongLongValue;
  }

  else
  {

    return 0;
  }
}

- (void)updateWithMLIRLibrary:(id)library
{
  libraryCopy = library;
  getDict = [libraryCopy getDict];
  v5 = [(NSMutableDictionary *)self->_mlirLibrary objectForKey:@"Original"];
  if (v5 && ([getDict objectForKeyedSubscript:@"Original"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v9 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized Modules"];
    v10 = [getDict objectForKeyedSubscript:@"Optimized Modules"];
    [v9 addEntriesFromDictionary:v10];

    v11 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized No Device Modules"];
    v12 = [getDict objectForKeyedSubscript:@"Optimized No Device Modules"];
    [v11 addEntriesFromDictionary:v12];

    v13 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Storage Mode"];
    [getDict objectForKeyedSubscript:@"Resource Storage Mode"];

    v14 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Storage Mode"];
    v15 = [getDict objectForKeyedSubscript:@"Resource Storage Mode"];

    if (v14 != v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v16 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized Resources Used"];
    v17 = [getDict objectForKeyedSubscript:@"Optimized Resources Used"];
    [v16 addEntriesFromDictionary:v17];

    v18 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Optimized No Device Resources Used"];
    v19 = [getDict objectForKeyedSubscript:@"Optimized No Device Resources Used"];
    [v18 addEntriesFromDictionary:v19];

    v20 = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Resource Offsets"];
    v21 = [getDict objectForKeyedSubscript:@"Resource Offsets"];
    [v20 addEntriesFromDictionary:v21];

    mlirLibrary = [(NSMutableDictionary *)self->_mlirLibrary objectForKeyedSubscript:@"Binary File Resources"];
    v22 = [getDict objectForKeyedSubscript:@"Binary File Resources"];
    [mlirLibrary addEntriesFromDictionary:v22];
  }

  else
  {
    v7 = [getDict mutableCopy];
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

- (BOOL)optimizedModuleWithSignature:(id)signature
{
  signatureCopy = signature;
  getOptimizedModules = [(MPSGraphPackageMLIRLibrary *)self getOptimizedModules];
  v6 = [getOptimizedModules objectForKeyedSubscript:signatureCopy];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)optimizedNoDeviceModuleWithSignature:(id)signature
{
  signatureCopy = signature;
  getOptimizedNoDeviceModules = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceModules];
  v6 = [getOptimizedNoDeviceModules objectForKeyedSubscript:signatureCopy];
  v7 = v6 != 0;

  return v7;
}

- (void)setOptimizedModule:(id)module withSignature:(id)signature
{
  moduleCopy = module;
  signatureCopy = signature;
  getOptimizedModules = [(MPSGraphPackageMLIRLibrary *)self getOptimizedModules];
  [getOptimizedModules setObject:moduleCopy forKeyedSubscript:signatureCopy];
}

- (void)setOptimizedNoDeviceModule:(id)module withSignature:(id)signature
{
  moduleCopy = module;
  signatureCopy = signature;
  getOptimizedNoDeviceModules = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceModules];
  [getOptimizedNoDeviceModules setObject:moduleCopy forKeyedSubscript:signatureCopy];
}

- (void)setResourceStorageMode:(unint64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mode];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)addOptimizedResourcesUsed:(id)used withSignature:(id)signature
{
  usedCopy = used;
  signatureCopy = signature;
  getOptimizedResourcesUsedLibrary = [(MPSGraphPackageMLIRLibrary *)self getOptimizedResourcesUsedLibrary];
  [getOptimizedResourcesUsedLibrary setObject:usedCopy forKeyedSubscript:signatureCopy];
}

- (void)addOptimizedNoDeviceResourcesUsed:(id)used withSignature:(id)signature
{
  usedCopy = used;
  signatureCopy = signature;
  getOptimizedNoDeviceResourcesUsedLibrary = [(MPSGraphPackageMLIRLibrary *)self getOptimizedNoDeviceResourcesUsedLibrary];
  [getOptimizedNoDeviceResourcesUsedLibrary setObject:usedCopy forKeyedSubscript:signatureCopy];
}

@end