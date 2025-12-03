@interface AGXG18PFamilyBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
@end

@implementation AGXG18PFamilyBinaryArchive

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  device = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeComputePipelineDescriptor:descriptor];
  v10 = *(*(device + 106) + 7168);
  if (error)
  {
    *error = 0;
    if (!descriptor)
    {
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
      localizedDescription = @"pipeline descriptor is nil";
      goto LABEL_12;
    }

    v24[0] = 0;
    if (![descriptor validateWithDevice:device error:v24])
    {
      localizedDescription = [v24[0] localizedDescription];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
LABEL_12:
      v20 = [v12 dictionaryWithObject:localizedDescription forKey:v13];
      v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
      *error = v21;
      v22 = v21;
      goto LABEL_14;
    }
  }

  else
  {
    if (!descriptor)
    {
LABEL_14:
      v19 = 0;
      return v19 & 1;
    }

    v24[0] = 0;
    if (![descriptor validateWithDevice:device error:v24])
    {
      [v24[0] localizedDescription];
      goto LABEL_14;
    }
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v34, device, [descriptor computeFunction], objc_msgSend(descriptor, "linkedFunctions"), objc_msgSend(descriptor, "preloadedLibraries"), error);
  v14 = v34;
  if (v34)
  {
    computeFunction = [descriptor computeFunction];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v16 = v10[2];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
    block[3] = &unk_29F3416A0;
    block[4] = computeFunction;
    block[5] = &v30;
    dispatch_sync(v16, block);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    newSerializedComputeData = [descriptor newSerializedComputeData];
    v18 = v31[3];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2;
    v24[3] = &unk_29F3412C0;
    v24[5] = v10;
    v24[6] = error;
    v24[4] = &v25;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgramVariant(v10, descriptor, device, options, self, 0, v14, v18, newSerializedComputeData, 0, 0, v24);
    if (newSerializedComputeData)
    {
      dispatch_release(newSerializedComputeData);
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

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  device = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeMeshRenderPipelineDescriptor:descriptor];
  if (error)
  {
    *error = 0;
    if (!descriptor)
    {
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
      localizedDescription = @"pipeline descriptor is nil";
      goto LABEL_9;
    }

    v16 = 0;
    if (![descriptor validateWithDevice:device error:&v16])
    {
      localizedDescription = [v16 localizedDescription];
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
LABEL_9:
      v12 = [v10 dictionaryWithObject:localizedDescription forKey:v11];
      v13 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v12];
      *error = v13;
      v14 = v13;
      return 0;
    }

LABEL_7:
    operator new();
  }

  if (descriptor)
  {
    v16 = 0;
    if (![descriptor validateWithDevice:device error:&v16])
    {
      [v16 localizedDescription];
      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  device = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeTileRenderPipelineDescriptor:descriptor];
  v10 = *(*(device + 106) + 7176);
  if (error)
  {
    *error = 0;
    if (!descriptor)
    {
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
      localizedDescription = @"pipeline descriptor is nil";
      goto LABEL_12;
    }

    v24[0] = 0;
    if (![descriptor validateWithDevice:device error:v24])
    {
      localizedDescription = [v24[0] localizedDescription];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = *MEMORY[0x29EDB9ED8];
LABEL_12:
      v20 = [v12 dictionaryWithObject:localizedDescription forKey:v13];
      v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
      *error = v21;
      v22 = v21;
      goto LABEL_14;
    }
  }

  else
  {
    if (!descriptor)
    {
LABEL_14:
      v19 = 0;
      return v19 & 1;
    }

    v24[0] = 0;
    if (![descriptor validateWithDevice:device error:v24])
    {
      [v24[0] localizedDescription];
      goto LABEL_14;
    }
  }

  tileFunction = [descriptor tileFunction];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v15 = v10[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
  block[3] = &unk_29F3416A0;
  block[4] = tileFunction;
  block[5] = &v31;
  dispatch_sync(v15, block);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v25, device, [descriptor tileFunction], objc_msgSend(descriptor, "linkedFunctions"), objc_msgSend(descriptor, "preloadedLibraries"), error);
  v16 = v25;
  if (v25)
  {
    v17 = v32[3];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2;
    v24[3] = &unk_29F3412C0;
    v24[5] = v10;
    v24[6] = error;
    v24[4] = &v26;
    AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileProgramVariant(v10, descriptor, device, options, self, 0, v25, v17, 0, 0, v24);
    if (error)
    {
      v18 = *error;
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

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  device = [(_MTLBinaryArchive *)self device];
  [(_MTLBinaryArchive *)self storeRenderPipelineDescriptor:descriptor];
  if (error)
  {
    *error = 0;
    if (!descriptor)
    {
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
      localizedDescription = @"pipeline descriptor is nil";
      goto LABEL_9;
    }

    v16[0] = 0;
    if (![descriptor validateWithDevice:device error:v16])
    {
      localizedDescription = [v16[0] localizedDescription];
      v10 = MEMORY[0x29EDB8DC0];
      v11 = *MEMORY[0x29EDB9ED8];
LABEL_9:
      v12 = [v10 dictionaryWithObject:localizedDescription forKey:v11];
      v13 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v12];
      *error = v13;
      v14 = v13;
      return 0;
    }

LABEL_7:
    v16[22] = 0;
    operator new();
  }

  if (descriptor)
  {
    v16[0] = 0;
    if (![descriptor validateWithDevice:device error:v16])
    {
      [v16[0] localizedDescription];
      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

@end