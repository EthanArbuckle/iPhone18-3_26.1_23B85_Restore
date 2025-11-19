@interface MPSGraphCompilationDescriptor
+ (MPSGraphCompilationDescriptor)descriptorWithDictionary:(id)a3;
- (BOOL)isEqualForModuleTo:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (MPSGraphCompilationDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)toDictionary;
- (vector<mlir::NamedAttribute,)getNamedAttrArray:(MPSGraphCompilationDescriptor *)self deviceDescriptor:(SEL)a3;
- (void)enableLayoutConversion:(BOOL)a3 dataChannelsLast:(BOOL)a4 weightsChannelsLast:(BOOL)a5;
- (void)setAllowedComputeDevices:(unint64_t)a3;
- (void)setEnableANECValidationWorkflow:(BOOL)a3;
- (void)setEnableMLIRDiagnostics:(BOOL)a3;
- (void)setEnableParallelEncode:(BOOL)a3;
- (void)setEnableShapeEquivalence:(BOOL)a3;
- (void)setOptimizationLevel:(MPSGraphOptimization)optimizationLevel;
- (void)setOptimizationProfile:(MPSGraphOptimizationProfile)optimizationProfile;
- (void)setPreferredDevice:(unint64_t)a3;
@end

@implementation MPSGraphCompilationDescriptor

- (MPSGraphCompilationDescriptor)init
{
  v12.receiver = self;
  v12.super_class = MPSGraphCompilationDescriptor;
  v2 = [(MPSGraphCompilationDescriptor *)&v12 init];
  v2->_compilerOptions = 1423;
  v2->_reducedPrecisionFastMath = 0;
  v2->_aneCompilerSpatialSplitting = 3;
  v2->_optimizationProfile = 0;
  v2->_optimizationLevel = 1;
  v2->_printANEPlacementAnalysis = 0;
  v2->_waitForCompilationCompletion = 0;
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = 0;

  v2->_preferredDevice = 0;
  v2->_allowedComputeDevices = 7;
  v2->_enableANEFWToFWSignal = 0;
  v2->_enableANELateLatch = 0;
  v2->_enableANECHWRankPromotion = 0;
  callables = v2->_callables;
  v2->_callables = 0;

  entryFunctionName = v2->_entryFunctionName;
  v2->_entryFunctionName = 0;

  constantData = v2->_constantData;
  v2->_constantData = 0;

  v2->_enableParallelEncode = 0;
  v7 = std::thread::hardware_concurrency();
  v8 = v7 << (v7 > 1);
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7 << (v7 > 1);
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v2->_maximumNumberOfParallelEncodingRegions = v10;
  v2->_minimumNumberOfOpsInParallelRegion = 5;
  v2->_enableMLIRDiagnostics = 0;
  v2->_enableShapeEquivalence = 0;
  v2->_enableCompileResourcesForPackage = 0;
  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphCompilationDescriptor alloc];
  [(MPSGraphCompilationDescriptor *)v4 setCompilerOptions:self->_compilerOptions];
  [(MPSGraphCompilationDescriptor *)v4 setReducedPrecisionFastMath:self->_reducedPrecisionFastMath];
  [(MPSGraphCompilationDescriptor *)v4 setAneCompilerSpatialSplitting:self->_aneCompilerSpatialSplitting];
  [(MPSGraphCompilationDescriptor *)v4 setOptimizationProfile:self->_optimizationProfile];
  [(MPSGraphCompilationDescriptor *)v4 setOptimizationLevel:self->_optimizationLevel];
  [(MPSGraphCompilationDescriptor *)v4 setPrintANEPlacementAnalysis:self->_printANEPlacementAnalysis];
  [(MPSGraphCompilationDescriptor *)v4 setWaitForCompilationCompletion:self->_waitForCompilationCompletion];
  [(MPSGraphCompilationDescriptor *)v4 setCompilationCompletionHandler:self->_compilationCompletionHandler];
  [(MPSGraphCompilationDescriptor *)v4 setPreferredDevice:self->_preferredDevice];
  [(MPSGraphCompilationDescriptor *)v4 setAllowedComputeDevices:self->_allowedComputeDevices];
  [(MPSGraphCompilationDescriptor *)v4 setEnableANEFWToFWSignal:self->_enableANEFWToFWSignal];
  [(MPSGraphCompilationDescriptor *)v4 setEnableANELateLatch:self->_enableANELateLatch];
  [(MPSGraphCompilationDescriptor *)v4 setEnableANECHWRankPromotion:self->_enableANECHWRankPromotion];
  [(MPSGraphCompilationDescriptor *)v4 setCallables:self->_callables];
  [(MPSGraphCompilationDescriptor *)v4 setEntryFunctionName:self->_entryFunctionName];
  [(MPSGraphCompilationDescriptor *)v4 setConstantData:self->_constantData];
  [(MPSGraphCompilationDescriptor *)v4 setEnableParallelEncode:self->_enableParallelEncode];
  [(MPSGraphCompilationDescriptor *)v4 setMaximumNumberOfParallelEncodingRegions:self->_maximumNumberOfParallelEncodingRegions];
  [(MPSGraphCompilationDescriptor *)v4 setMinimumNumberOfOpsInParallelRegion:self->_minimumNumberOfOpsInParallelRegion];
  [(MPSGraphCompilationDescriptor *)v4 setEnableMLIRDiagnostics:self->_enableMLIRDiagnostics];
  [(MPSGraphCompilationDescriptor *)v4 setEnableShapeEquivalence:self->_enableShapeEquivalence];
  [(MPSGraphCompilationDescriptor *)v4 setEnableANECValidationWorkflow:self->_enableANECValidationWorkflow];
  [(MPSGraphCompilationDescriptor *)v4 setEnableCompileResourcesForPackage:self->_enableCompileResourcesForPackage];
  return v4;
}

- (BOOL)isEqualForModuleTo:(id)a3
{
  v4 = a3;
  compilerOptions = self->_compilerOptions;
  if (compilerOptions == [v4 compilerOptions] && (aneCompilerSpatialSplitting = self->_aneCompilerSpatialSplitting, aneCompilerSpatialSplitting == objc_msgSend(v4, "aneCompilerSpatialSplitting")) && (optimizationProfile = self->_optimizationProfile, optimizationProfile == objc_msgSend(v4, "optimizationProfile")) && (optimizationLevel = self->_optimizationLevel, optimizationLevel == objc_msgSend(v4, "optimizationLevel")) && (printANEPlacementAnalysis = self->_printANEPlacementAnalysis, printANEPlacementAnalysis == objc_msgSend(v4, "printANEPlacementAnalysis")) && (preferredDevice = self->_preferredDevice, preferredDevice == objc_msgSend(v4, "preferredDevice")) && (allowedComputeDevices = self->_allowedComputeDevices, allowedComputeDevices == objc_msgSend(v4, "allowedComputeDevices")) && (enableANEFWToFWSignal = self->_enableANEFWToFWSignal, enableANEFWToFWSignal == objc_msgSend(v4, "enableANEFWToFWSignal")) && (enableANELateLatch = self->_enableANELateLatch, enableANELateLatch == objc_msgSend(v4, "enableANELateLatch")) && (enableANECHWRankPromotion = self->_enableANECHWRankPromotion, enableANECHWRankPromotion == objc_msgSend(v4, "enableANECHWRankPromotion")) && (enableParallelEncode = self->_enableParallelEncode, enableParallelEncode == objc_msgSend(v4, "enableParallelEncode")) && (!self->_enableParallelEncode || (maximumNumberOfParallelEncodingRegions = self->_maximumNumberOfParallelEncodingRegions, maximumNumberOfParallelEncodingRegions == objc_msgSend(v4, "maximumNumberOfParallelEncodingRegions")) && (minimumNumberOfOpsInParallelRegion = self->_minimumNumberOfOpsInParallelRegion, minimumNumberOfOpsInParallelRegion == objc_msgSend(v4, "minimumNumberOfOpsInParallelRegion"))))
  {
    enableANECValidationWorkflow = self->_enableANECValidationWorkflow;
    LOBYTE(enableANECValidationWorkflow) = enableANECValidationWorkflow == [v4 enableANECValidationWorkflow];

    return enableANECValidationWorkflow;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  if (-[MPSGraphCompilationDescriptor isEqualForModuleTo:](self, "isEqualForModuleTo:", v4) && (waitForCompilationCompletion = self->_waitForCompilationCompletion, waitForCompilationCompletion == [v4 waitForCompilationCompletion]) && (compilationCompletionHandler = self->_compilationCompletionHandler, objc_msgSend(v4, "compilationCompletionHandler"), v7 = objc_claimAutoreleasedReturnValue(), v7, compilationCompletionHandler == v7) && (callables = self->_callables, objc_msgSend(v4, "callables"), v9 = objc_claimAutoreleasedReturnValue(), v9, callables == v9) && (constantData = self->_constantData, objc_msgSend(v4, "constantData"), v11 = objc_claimAutoreleasedReturnValue(), v11, constantData == v11) && (enableMLIRDiagnostics = self->_enableMLIRDiagnostics, enableMLIRDiagnostics == objc_msgSend(v4, "enableMLIRDiagnostics")))
  {
    enableShapeEquivalence = self->_enableShapeEquivalence;
    v14 = enableShapeEquivalence == [v4 enableShapeEquivalence];
  }

  else
  {
    v14 = 0;
  }

  entryFunctionName = self->_entryFunctionName;
  v16 = [v4 entryFunctionName];

  if (entryFunctionName != v16)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    v17 = self->_entryFunctionName;
    v18 = [v4 entryFunctionName];
    LOBYTE(v17) = [(NSString *)v17 isEqual:v18];

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    enableCompileResourcesForPackage = self->_enableCompileResourcesForPackage;
    v19 = enableCompileResourcesForPackage == [v4 enableCompileResourcesForPackage];
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  v19 = 0;
LABEL_15:

  return v19;
}

- (id)toDictionary
{
  v26[19] = *MEMORY[0x1E69E9840];
  v25[0] = @"compilerOptions";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_compilerOptions];
  v26[0] = v24;
  v25[1] = @"reducedPrecisionFastMath";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_reducedPrecisionFastMath];
  v26[1] = v23;
  v25[2] = @"aneCompilerSpatialSplitting";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_aneCompilerSpatialSplitting];
  v26[2] = v22;
  v25[3] = @"optimizationProfile";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_optimizationProfile];
  v26[3] = v21;
  v25[4] = @"optimizationLevel";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_optimizationLevel];
  v26[4] = v20;
  v25[5] = @"printANEPlacementAnalysis";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_printANEPlacementAnalysis];
  v26[5] = v19;
  v25[6] = @"preferredDevice";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredDevice];
  v26[6] = v18;
  v25[7] = @"allowedComputeDevices";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allowedComputeDevices];
  v26[7] = v17;
  v25[8] = @"enableANEFWToFWSignal";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableANEFWToFWSignal];
  v26[8] = v16;
  v25[9] = @"enableANELateLatch";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableANELateLatch];
  v26[9] = v3;
  v25[10] = @"enableANECHWRankPromotion";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableANECHWRankPromotion];
  v5 = v4;
  entryFunctionName = self->_entryFunctionName;
  if (!entryFunctionName)
  {
    entryFunctionName = &stru_1F5B58250;
  }

  v26[10] = v4;
  v26[11] = entryFunctionName;
  v25[11] = @"entryFunctionName";
  v25[12] = @"enableParallelEncode";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableParallelEncode];
  v26[12] = v7;
  v25[13] = @"maximumNumberOfParallelEncodingRegions";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumNumberOfParallelEncodingRegions];
  v26[13] = v8;
  v25[14] = @"minimumNumberOfOpsInParallelRegion";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minimumNumberOfOpsInParallelRegion];
  v26[14] = v9;
  v25[15] = @"enableMLIRDiagnostics";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableMLIRDiagnostics];
  v26[15] = v10;
  v25[16] = @"enableShapeEquivalence";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableShapeEquivalence];
  v26[16] = v11;
  v25[17] = @"enableANECValidationWorkflow";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableANECValidationWorkflow];
  v26[17] = v12;
  v25[18] = @"enableCompileResourcesForPackage";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableCompileResourcesForPackage];
  v26[18] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:19];

  return v14;
}

+ (MPSGraphCompilationDescriptor)descriptorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"compilerOptions"];
  *(v4 + 72) = [v5 unsignedIntegerValue];

  v6 = [v3 objectForKeyedSubscript:@"reducedPrecisionFastMath"];
  *(v4 + 64) = [v6 unsignedIntegerValue];

  v7 = [v3 objectForKeyedSubscript:@"aneCompilerSpatialSplitting"];
  *(v4 + 80) = [v7 unsignedIntegerValue];

  v8 = [v3 objectForKeyedSubscript:@"optimizationProfile"];
  *(v4 + 48) = [v8 unsignedIntegerValue];

  v9 = [v3 objectForKeyedSubscript:@"optimizationLevel"];
  *(v4 + 24) = [v9 unsignedIntegerValue];

  v10 = [v3 objectForKeyedSubscript:@"printANEPlacementAnalysis"];
  *(v4 + 12) = [v10 BOOLValue];

  v11 = [v3 objectForKeyedSubscript:@"preferredDevice"];
  *(v4 + 88) = [v11 unsignedIntegerValue];

  v12 = [v3 objectForKeyedSubscript:@"allowedComputeDevices"];
  *(v4 + 96) = [v12 unsignedIntegerValue];

  v13 = [v3 objectForKeyedSubscript:@"enableANEFWToFWSignal"];
  *(v4 + 9) = [v13 BOOLValue];

  v14 = [v3 objectForKeyedSubscript:@"enableANELateLatch"];
  *(v4 + 10) = [v14 BOOLValue];

  v15 = [v3 objectForKeyedSubscript:@"enableANECHWRankPromotion"];
  *(v4 + 11) = [v15 BOOLValue];

  v16 = [v3 objectForKeyedSubscript:@"entryFunctionName"];
  v17 = *(v4 + 104);
  *(v4 + 104) = v16;

  v18 = [v3 objectForKeyedSubscript:@"enableParallelEncode"];
  *(v4 + 13) = [v18 BOOLValue];

  v19 = [v3 objectForKeyedSubscript:@"maximumNumberOfParallelEncodingRegions"];
  *(v4 + 120) = [v19 unsignedIntegerValue];

  v20 = [v3 objectForKeyedSubscript:@"minimumNumberOfOpsInParallelRegion"];
  *(v4 + 128) = [v20 unsignedIntegerValue];

  v21 = [v3 objectForKeyedSubscript:@"enableMLIRDiagnostics"];
  *(v4 + 14) = [v21 BOOLValue];

  v22 = [v3 objectForKeyedSubscript:@"enableShapeEquivalence"];
  *(v4 + 15) = [v22 BOOLValue];

  v23 = [v3 objectForKeyedSubscript:@"enableANECValidationWorkflow"];
  *(v4 + 16) = [v23 BOOLValue];

  v24 = [v3 objectForKeyedSubscript:@"enableCompileResourcesForPackage"];
  *(v4 + 17) = [v24 BOOLValue];

  return v4;
}

- (vector<mlir::NamedAttribute,)getNamedAttrArray:(MPSGraphCompilationDescriptor *)self deviceDescriptor:(SEL)a3
{
  v8 = a5;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v84[0] = "mps.compilerOptions";
  v85 = 259;
  v9 = mlir::StringAttr::get(a4, v84);
  v10 = mlir::IntegerType::get(a4, 64, 2u);
  v11 = mlir::IntegerAttr::get(v10, self->_compilerOptions);
  mlir::NamedAttribute::NamedAttribute(v81, v9, v11);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.reducedPrecisionFastMath";
  v85 = 259;
  v12 = mlir::StringAttr::get(a4, v84);
  v13 = mlir::IntegerType::get(a4, 64, 2u);
  v14 = mlir::IntegerAttr::get(v13, self->_reducedPrecisionFastMath);
  mlir::NamedAttribute::NamedAttribute(v81, v12, v14);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.aneCompilerSpatialSplitting";
  v85 = 259;
  v15 = mlir::StringAttr::get(a4, v84);
  v16 = mlir::IntegerType::get(a4, 64, 2u);
  v17 = mlir::IntegerAttr::get(v16, self->_aneCompilerSpatialSplitting);
  mlir::NamedAttribute::NamedAttribute(v81, v15, v17);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.optimizationLevel";
  v85 = 259;
  v18 = mlir::StringAttr::get(a4, v84);
  v19 = mlir::IntegerType::get(a4, 64, 2u);
  v20 = mlir::IntegerAttr::get(v19, self->_optimizationLevel);
  mlir::NamedAttribute::NamedAttribute(v81, v18, v20);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.optimizationProfile";
  v85 = 259;
  v21 = mlir::StringAttr::get(a4, v84);
  v22 = mlir::IntegerType::get(a4, 64, 2u);
  v23 = mlir::IntegerAttr::get(v22, self->_optimizationProfile);
  mlir::NamedAttribute::NamedAttribute(v81, v21, v23);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.allowedComputeDevices";
  v85 = 259;
  v24 = mlir::StringAttr::get(a4, v84);
  v25 = mlir::IntegerType::get(a4, 64, 2u);
  v26 = mlir::IntegerAttr::get(v25, self->_allowedComputeDevices);
  mlir::NamedAttribute::NamedAttribute(v81, v24, v26);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.preferredDevice";
  v85 = 259;
  v27 = mlir::StringAttr::get(a4, v84);
  v28 = mlir::IntegerType::get(a4, 64, 2u);
  v29 = mlir::IntegerAttr::get(v28, self->_preferredDevice);
  mlir::NamedAttribute::NamedAttribute(v81, v27, v29);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.sdkInfo";
  v85 = 259;
  v30 = mlir::StringAttr::get(a4, v84);
  v31 = mlir::IntegerType::get(a4, 64, 2u);
  active_platform = dyld_get_active_platform();
  program_sdk_version = dyld_get_program_sdk_version();
  v34 = mlir::IntegerAttr::get(v31, program_sdk_version | (active_platform << 32));
  mlir::NamedAttribute::NamedAttribute(v81, v30, v34);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  if (v8)
  {
    v84[0] = "mps.deviceType";
    v85 = 259;
    v35 = mlir::StringAttr::get(a4, v84);
    v36 = mlir::IntegerType::get(a4, 64, 2u);
    v37 = mlir::IntegerAttr::get(v36, [v8 type]);
    mlir::NamedAttribute::NamedAttribute(v81, v35, v37);
    std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
    if (![v8 type])
    {
      v84[0] = "mps.deviceGPUCoreCount";
      v85 = 259;
      v38 = mlir::StringAttr::get(a4, v84);
      v39 = mlir::IntegerType::get(a4, 64, 1u);
      v40 = mlir::IntegerAttr::get(v39, [v8 gpuCoreCount]);
      mlir::NamedAttribute::NamedAttribute(v81, v38, v40);
      std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
      v84[0] = "mps.deviceArchitecture";
      v85 = 259;
      v41 = mlir::StringAttr::get(a4, v84);
      v42 = [v8 architecture];
      v43 = [v42 UTF8String];
      v82 = 257;
      if (*v43)
      {
        *&v81[0] = v43;
        v44 = 3;
      }

      else
      {
        v44 = 1;
      }

      LOBYTE(v82) = v44;
      v45 = mlir::StringAttr::get(a4, v81);
      mlir::NamedAttribute::NamedAttribute(&v83, v41, v45);
      std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, &v83);
    }
  }

  v84[0] = "mps.aneEnableFWToFWSignal";
  v85 = 259;
  v46 = mlir::StringAttr::get(a4, v84);
  v47 = mlir::IntegerType::get(a4, 1, 0);
  v48 = mlir::IntegerAttr::get(v47, self->_enableANEFWToFWSignal);
  mlir::NamedAttribute::NamedAttribute(v81, v46, v48);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.aneEnableLateLatch";
  v85 = 259;
  v49 = mlir::StringAttr::get(a4, v84);
  v50 = mlir::IntegerType::get(a4, 1, 0);
  v51 = mlir::IntegerAttr::get(v50, self->_enableANELateLatch);
  mlir::NamedAttribute::NamedAttribute(v81, v49, v51);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.enableANECHWRankPromotion";
  v85 = 259;
  v52 = mlir::StringAttr::get(a4, v84);
  v53 = mlir::IntegerType::get(a4, 1, 0);
  v54 = mlir::IntegerAttr::get(v53, self->_enableANECHWRankPromotion);
  mlir::NamedAttribute::NamedAttribute(v81, v52, v54);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.enableParallelEncode";
  v85 = 259;
  v55 = mlir::StringAttr::get(a4, v84);
  v56 = mlir::IntegerType::get(a4, 1, 0);
  v57 = mlir::IntegerAttr::get(v56, self->_enableParallelEncode);
  mlir::NamedAttribute::NamedAttribute(v81, v55, v57);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  if (self->_enableParallelEncode)
  {
    v84[0] = "mps.maximumNumberOfParallelEncodingRegions";
    v85 = 259;
    v58 = mlir::StringAttr::get(a4, v84);
    v59 = mlir::IntegerType::get(a4, 64, 2u);
    v60 = mlir::IntegerAttr::get(v59, self->_maximumNumberOfParallelEncodingRegions);
    mlir::NamedAttribute::NamedAttribute(v81, v58, v60);
    std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
    v84[0] = "mps.minimumNumberOfOpsInParallelRegion";
    v85 = 259;
    v61 = mlir::StringAttr::get(a4, v84);
    v62 = mlir::IntegerType::get(a4, 64, 2u);
    v63 = mlir::IntegerAttr::get(v62, self->_minimumNumberOfOpsInParallelRegion);
    mlir::NamedAttribute::NamedAttribute(v81, v61, v63);
    std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  }

  v84[0] = "mps.enableMLIRDiagnostics";
  v85 = 259;
  v64 = mlir::StringAttr::get(a4, v84);
  v65 = mlir::IntegerType::get(a4, 1, 0);
  v66 = mlir::IntegerAttr::get(v65, self->_enableMLIRDiagnostics);
  mlir::NamedAttribute::NamedAttribute(v81, v64, v66);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.enableShapeEquivalence";
  v85 = 259;
  v67 = mlir::StringAttr::get(a4, v84);
  v68 = mlir::IntegerType::get(a4, 1, 0);
  v69 = mlir::IntegerAttr::get(v68, self->_enableShapeEquivalence);
  mlir::NamedAttribute::NamedAttribute(v81, v67, v69);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.enableANECValidationWorkflow";
  v85 = 259;
  v70 = mlir::StringAttr::get(a4, v84);
  v71 = mlir::IntegerType::get(a4, 1, 0);
  v72 = mlir::IntegerAttr::get(v71, self->_enableANECValidationWorkflow);
  mlir::NamedAttribute::NamedAttribute(v81, v70, v72);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  v84[0] = "mps.enableCompileResourcesForPackage";
  v85 = 259;
  v73 = mlir::StringAttr::get(a4, v84);
  v74 = mlir::IntegerType::get(a4, 1, 0);
  v75 = mlir::IntegerAttr::get(v74, self->_enableCompileResourcesForPackage);
  mlir::NamedAttribute::NamedAttribute(v81, v73, v75);
  std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, v81);
  if (self->_entryFunctionName)
  {
    v84[0] = "mps.entryFunctionName";
    v85 = 259;
    v76 = mlir::StringAttr::get(a4, v84);
    v77 = [(NSString *)self->_entryFunctionName UTF8String];
    v78 = 1;
    HIBYTE(v82) = 1;
    if (*v77)
    {
      *&v81[0] = v77;
      v78 = 3;
    }

    LOBYTE(v82) = v78;
    v79 = mlir::StringAttr::get(a4, v81);
    mlir::NamedAttribute::NamedAttribute(&v83, v76, v79);
    std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](retstr, &v83);
  }

  return result;
}

- (void)setOptimizationLevel:(MPSGraphOptimization)optimizationLevel
{
  self->_optimizationLevel = optimizationLevel;
  if (optimizationLevel == MPSGraphOptimizationLevel1)
  {
    v3 = self->_compilerOptions | 0x80;
  }

  else
  {
    if (optimizationLevel)
    {
      return;
    }

    v3 = self->_compilerOptions & 0xFFFFFFFFFFFFFF7FLL;
  }

  self->_compilerOptions = v3;
}

- (void)setEnableParallelEncode:(BOOL)a3
{
  self->_enableParallelEncode = a3;
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_compilerOptions = self->_compilerOptions & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setEnableMLIRDiagnostics:(BOOL)a3
{
  self->_enableMLIRDiagnostics = a3;
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_compilerOptions = self->_compilerOptions & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setEnableShapeEquivalence:(BOOL)a3
{
  self->_enableShapeEquivalence = a3;
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_compilerOptions = self->_compilerOptions & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setEnableANECValidationWorkflow:(BOOL)a3
{
  self->_enableANECValidationWorkflow = a3;
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_compilerOptions = self->_compilerOptions & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setOptimizationProfile:(MPSGraphOptimizationProfile)optimizationProfile
{
  self->_optimizationProfile = optimizationProfile;
  if (optimizationProfile == MPSGraphOptimizationProfilePowerEfficiency)
  {
    self->_preferredDevice = 2;
    self->_allowedComputeDevices |= 2uLL;
  }

  else if (optimizationProfile == MPSGraphOptimizationProfilePerformance)
  {
    self->_preferredDevice = 0;
  }
}

- (void)setAllowedComputeDevices:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          return;
        }

        v3 = 7;
        goto LABEL_14;
      }

      if (MTLReportFailureTypeEnabled())
      {

        goto LABEL_19;
      }

      return;
    }

    if (a3 == 4)
    {
      if (MTLReportFailureTypeEnabled())
      {

        goto LABEL_19;
      }

      return;
    }

    v3 = 5;
LABEL_14:
    self->_allowedComputeDevices = v3;
    return;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v3 = 1;
      goto LABEL_14;
    }

    if (MTLReportFailureTypeEnabled())
    {

LABEL_19:
      MTLReportFailure();
      return;
    }

    return;
  }

  if (a3 != 2)
  {
    v3 = 3;
    goto LABEL_14;
  }

  if (MTLReportFailureTypeEnabled())
  {

    goto LABEL_19;
  }
}

- (void)setPreferredDevice:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          self->_preferredDevice = 1;
        }
      }

      else
      {
        self->_preferredDevice = 0;
      }

      return;
    }

    if (a3 == 2)
    {
      self->_preferredDevice = 2;
      return;
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

LABEL_11:
    MTLReportFailure();
    return;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      self->_preferredDevice = 4;
      return;
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_11;
  }

  if (a3 == 6)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_11;
  }

  if (a3 == 7 && MTLReportFailureTypeEnabled())
  {

    goto LABEL_11;
  }
}

- (void)enableLayoutConversion:(BOOL)a3 dataChannelsLast:(BOOL)a4 weightsChannelsLast:(BOOL)a5
{
  v5 = 1;
  if (a4)
  {
    v5 = 2;
  }

  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  v7 = v6 + v5;
  if (!a3)
  {
    v7 = 0;
  }

  self->_layoutConversionPassConfig = v7;
}

@end