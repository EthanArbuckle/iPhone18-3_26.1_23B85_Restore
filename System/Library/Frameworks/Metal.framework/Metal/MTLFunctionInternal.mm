@interface MTLFunctionInternal
@end

@implementation MTLFunctionInternal

uint64_t __60___MTLFunctionInternal_initializeStitchableFunctionMetadata__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 371))
  {
    v2 = result;
    v3 = [*(v1 + 24) compiler];
    v4 = *(v2 + 32);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __60___MTLFunctionInternal_initializeStitchableFunctionMetadata__block_invoke_2;
    v8 = &unk_1E6EEC0F0;
    v9 = v4;
    result = [v3 reflectionWithFunction:? options:? sync:? completionHandler:?];
    *(*(v2 + 32) + 371) = 1;
  }

  return result;
}

void __60___MTLFunctionInternal_initializeStitchableFunctionMetadata__block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  ReflectionValidator<MTLStitchingReflectionReader>::Validate(*(*(a1 + 32) + 24), 0x20000000, a3);
  MTLNewReflectionData(a3);
  ReflectionReaderFactory<MTLStitchingReflectionReader>::Create();
}

uint64_t __77___MTLFunctionInternal_storeTrackingDataWithDescriptor_function_variantHash___block_invoke()
{
  result = MTLGetEnvDefault("MTL_ENABLE_METAL_SCRIPT_COLLECTION", 0);
  [_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:]::enableMetalScriptCollection = result != 0;
  return result;
}

void __130___MTLFunctionInternal_newSpecializedFunctionWithDescriptor_destinationArchive_functionCache_sync_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, dispatch_data_t data, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 remoteInsertionEnd];
  }

  if (a2)
  {
    if (a4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
      if (!v9)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
      }
    }

    else
    {
      v9 = @"empty error message";
    }

    v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:*MEMORY[0x1E696A578]];
    v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v24];
    v26 = *(a1 + 64);
    if (v26)
    {
      dispatch_release(v26);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v28 = 0;
    buffer_ptr.var0.var0 = 0;
    v10 = dispatch_data_create_map(data, &buffer_ptr, &v28);
    if ((*buffer_ptr.var0.var0 & 1) != 0 && (v11 = *(buffer_ptr.var0.var0 + 44), v11))
    {
      subrange = dispatch_data_create_subrange(data, *(buffer_ptr.var0.var0 + 40), v11);
    }

    else
    {
      subrange = 0;
    }

    dispatch_release(v10);
    v16 = MTLLibraryBuilder::newLibraryWithData(*(*(*(a1 + 40) + 24) + 440), *(*(a1 + 40) + 24), subrange, *(a1 + 48), 0, v13, v14, v15);
    v17 = [(_MTLLibrary *)v16 newFunctionWithName:*(a1 + 56)];
    *(v17 + 296) = *(*(a1 + 40) + 296);

    v18 = [*(a1 + 40) bitcodeData];
    v19 = dispatch_data_create([v18 bytes], objc_msgSend(v18, "length"), 0, 0);
    v20 = [[MTLAirEntry alloc] initWithData:subrange bitcode:v19 airScript:*(a1 + 64)];
    dispatch_release(v19);
    dispatch_release(subrange);
    v21 = *(a1 + 88);
    v22 = MTLHashKey::MTLHashKey(&buffer_ptr, a1 + 104);
    (*(*v21 + 112))(v21, &buffer_ptr, v20, v22);
    MTLHashKey::~MTLHashKey(&buffer_ptr);
    v23 = *(a1 + 64);
    if (*(v17 + 360))
    {
      if (v23)
      {
        dispatch_release(v23);
      }
    }

    else
    {
      *(v17 + 360) = v23;
    }

    [*(a1 + 40) storeTrackingDataWithDescriptor:*(a1 + 72) function:v17 variantHash:a1 + 104];
    (*(*(a1 + 80) + 16))();

    v25 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __113___MTLFunctionInternal_newSpecializedFunctionWithDescriptor_destinationArchive_functionCache_compilerTask_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end