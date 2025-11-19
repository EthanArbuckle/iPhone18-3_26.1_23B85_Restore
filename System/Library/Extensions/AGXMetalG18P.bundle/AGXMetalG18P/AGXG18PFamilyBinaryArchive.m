@interface AGXG18PFamilyBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation AGXG18PFamilyBinaryArchive

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeComputePipelineDescriptor:a3];
  v10 = *(*(v9 + 106) + 7168);
  if (a5)
  {
    *a5 = 0;
    if (!a3)
    {
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
      v11 = @"pipeline descriptor is nil";
      goto LABEL_12;
    }

    v24[0] = 0;
    if (![a3 validateWithDevice:v9 error:v24])
    {
      v11 = [v24[0] localizedDescription];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
LABEL_12:
      v20 = [v12 dictionaryWithObject:v11 forKey:v13];
      v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
      *a5 = v21;
      v22 = v21;
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
LABEL_14:
      v19 = 0;
      return v19 & 1;
    }

    v24[0] = 0;
    if (![a3 validateWithDevice:v9 error:v24])
    {
      [v24[0] localizedDescription];
      goto LABEL_14;
    }
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v34, v9, [a3 computeFunction], objc_msgSend(a3, "linkedFunctions"), objc_msgSend(a3, "preloadedLibraries"), a5);
  v14 = v34;
  if (v34)
  {
    v15 = [a3 computeFunction];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v16 = v10[2];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
    block[3] = &unk_29F3416A0;
    block[4] = v15;
    block[5] = &v30;
    dispatch_sync(v16, block);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v17 = [a3 newSerializedComputeData];
    v18 = v31[3];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2;
    v24[3] = &unk_29F3412C0;
    v24[5] = v10;
    v24[6] = a5;
    v24[4] = &v25;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgramVariant(v10, a3, v9, a4, self, 0, v14, v18, v17, 0, 0, v24);
    if (v17)
    {
      dispatch_release(v17);
    }

    v19 = *(v26 + 24);
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeMeshRenderPipelineDescriptor:a3];
  if (a5)
  {
    *a5 = 0;
    if (!a3)
    {
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
      v9 = @"pipeline descriptor is nil";
      goto LABEL_9;
    }

    v16 = 0;
    if (![a3 validateWithDevice:v8 error:&v16])
    {
      v9 = [v16 localizedDescription];
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
LABEL_9:
      v12 = [v10 dictionaryWithObject:v9 forKey:v11];
      v13 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v12];
      *a5 = v13;
      v14 = v13;
      return 0;
    }

LABEL_7:
    operator new();
  }

  if (a3)
  {
    v16 = 0;
    if (![a3 validateWithDevice:v8 error:&v16])
    {
      [v16 localizedDescription];
      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeTileRenderPipelineDescriptor:a3];
  v10 = *(*(v9 + 106) + 7176);
  if (a5)
  {
    *a5 = 0;
    if (!a3)
    {
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
      v11 = @"pipeline descriptor is nil";
      goto LABEL_12;
    }

    v24[0] = 0;
    if (![a3 validateWithDevice:v9 error:v24])
    {
      v11 = [v24[0] localizedDescription];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
LABEL_12:
      v20 = [v12 dictionaryWithObject:v11 forKey:v13];
      v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
      *a5 = v21;
      v22 = v21;
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
LABEL_14:
      v19 = 0;
      return v19 & 1;
    }

    v24[0] = 0;
    if (![a3 validateWithDevice:v9 error:v24])
    {
      [v24[0] localizedDescription];
      goto LABEL_14;
    }
  }

  v14 = [a3 tileFunction];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v15 = v10[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
  block[3] = &unk_29F3416A0;
  block[4] = v14;
  block[5] = &v31;
  dispatch_sync(v15, block);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v25, v9, [a3 tileFunction], objc_msgSend(a3, "linkedFunctions"), objc_msgSend(a3, "preloadedLibraries"), a5);
  v16 = v25;
  if (v25)
  {
    v17 = v32[3];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2;
    v24[3] = &unk_29F3412C0;
    v24[5] = v10;
    v24[6] = a5;
    v24[4] = &v26;
    AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileProgramVariant(v10, a3, v9, a4, self, 0, v25, v17, 0, 0, v24);
    if (a5)
    {
      v18 = *a5;
    }

    v19 = *(v27 + 24);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v31, 8);
  return v19 & 1;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeRenderPipelineDescriptor:a3];
  if (a5)
  {
    *a5 = 0;
    if (!a3)
    {
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
      v9 = @"pipeline descriptor is nil";
      goto LABEL_9;
    }

    v16[0] = 0;
    if (![a3 validateWithDevice:v8 error:v16])
    {
      v9 = [v16[0] localizedDescription];
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
LABEL_9:
      v12 = [v10 dictionaryWithObject:v9 forKey:v11];
      v13 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v12];
      *a5 = v13;
      v14 = v13;
      return 0;
    }

LABEL_7:
    v16[22] = 0;
    operator new();
  }

  if (a3)
  {
    v16[0] = 0;
    if (![a3 validateWithDevice:v8 error:v16])
    {
      [v16[0] localizedDescription];
      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

@end