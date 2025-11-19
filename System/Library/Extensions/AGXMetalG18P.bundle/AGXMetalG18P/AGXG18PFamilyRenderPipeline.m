@interface AGXG18PFamilyRenderPipeline
- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6;
- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6 maxTotalThreadgroupsPerMeshGrid:(unint64_t)a7;
- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4;
- (AGXG18PFamilyRenderPipeline)initWithParent:(id)a3;
- (AGXG18PFamilyRenderPipeline)initWithUnretainedParent:(id)a3;
- (id)_newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 vertexFunctionResourceIndices:(const unint64_t *)a4 fragmentAdditionalBinaryFunctions:(id)a5 fragmentFunctionResourceIndices:(const unint64_t *)a6 error:(id *)a7;
- (id)fragmentFunctionHandleWithFunction:(id)a3;
- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4;
- (id)functionReflectionWithFunctionDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)meshFunctionHandleWithFunction:(id)a3;
- (id)newFragmentShaderDebugInfo;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newMeshShaderDebugInfo;
- (id)newObjectShaderDebugInfo;
- (id)newRenderPipelineDescriptorForSpecialization;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 completionHandler:(id)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newVertexShaderDebugInfo;
- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)a3;
- (id)objectFunctionHandleWithFunction:(id)a3;
- (id)pipelineBinaries;
- (id)tileFunctionHandleWithFunction:(id)a3;
- (id)vertexFunctionHandleWithFunction:(id)a3;
- (unint64_t)allocatedSize;
- (unint64_t)imageBlockMemoryLengthForDimensions:(id *)a3;
- (unint64_t)imageBlockSampleLength;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3;
- (unint64_t)imageblockSampleLength;
- (unint64_t)maxTotalThreadsPerMeshThreadgroup;
- (unint64_t)maxTotalThreadsPerObjectThreadgroup;
- (unint64_t)maxTotalThreadsPerThreadgroup;
- (unint64_t)uniqueIdentifier;
- (unsigned)getFragmentShaderTelemetryID;
- (unsigned)getVertexShaderTelemetryID;
- (void)dealloc;
@end

@implementation AGXG18PFamilyRenderPipeline

- (id)functionReflectionWithFunctionDescriptor:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v6 = [(_MTLRenderPipelineState *)self device];
      v7 = [(AGXG18PFamilyRenderPipeline *)self vertexReflectionData];
      goto LABEL_12;
    }

    if (a4 == 2)
    {
      v6 = [(_MTLRenderPipelineState *)self device];
      v7 = [(AGXG18PFamilyRenderPipeline *)self fragmentReflectionData];
      goto LABEL_12;
    }

    return 0;
  }

  if (a4 == 4)
  {
    v6 = [(_MTLRenderPipelineState *)self device];
    v7 = [(AGXG18PFamilyRenderPipeline *)self tileReflectionData];
    goto LABEL_12;
  }

  if (a4 == 8)
  {
    v6 = [(_MTLRenderPipelineState *)self device];
    v7 = [(AGXG18PFamilyRenderPipeline *)self objectReflectionData];
    goto LABEL_12;
  }

  if (a4 != 16)
  {
    return 0;
  }

  v6 = [(_MTLRenderPipelineState *)self device];
  v7 = [(AGXG18PFamilyRenderPipeline *)self meshReflectionData];
LABEL_12:

  return MEMORY[0x2A1C5C358](a3, v6, v7);
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x29EDCA608];
  v6 = objc_opt_new();
  v7 = [a3 vertexAdditionalBinaryFunctions];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v9 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [v9 addObject:*(*(*(&v45 + 1) + 8 * i) + 80)];
      }

      v11 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v11);
  }

  [v6 setVertexAdditionalBinaryFunctions:v9];
  v14 = [a3 fragmentAdditionalBinaryFunctions];
  v15 = v14;
  if (v14)
  {
    v16 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  }

  else
  {
    v16 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v15);
        }

        [v16 addObject:*(*(*(&v45 + 1) + 8 * j) + 80)];
      }

      v18 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v18);
  }

  [v6 setFragmentAdditionalBinaryFunctions:v16];
  v21 = [a3 tileAdditionalBinaryFunctions];
  v22 = v21;
  if (v21)
  {
    v23 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  }

  else
  {
    v23 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v22);
        }

        [v23 addObject:*(*(*(&v45 + 1) + 8 * k) + 80)];
      }

      v25 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v25);
  }

  [v6 setTileAdditionalBinaryFunctions:v23];
  v28 = [a3 meshAdditionalBinaryFunctions];
  v29 = v28;
  if (v28)
  {
    v30 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v28, "count")}];
  }

  else
  {
    v30 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v46;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v29);
        }

        [v30 addObject:*(*(*(&v45 + 1) + 8 * m) + 80)];
      }

      v32 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v32);
  }

  [v6 setMeshAdditionalBinaryFunctions:v30];
  v35 = [a3 objectAdditionalBinaryFunctions];
  v36 = v35;
  if (v35)
  {
    v37 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v35, "count")}];
  }

  else
  {
    v37 = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = [v36 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v46;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v36);
        }

        [v37 addObject:*(*(*(&v45 + 1) + 8 * n) + 80)];
      }

      v39 = [v36 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v39);
  }

  [v6 setObjectAdditionalBinaryFunctions:v37];
  v42 = [(AGXG18PFamilyRenderPipeline *)self newRenderPipelineStateWithAdditionalBinaryFunctions:v6 error:a4];

  return v42;
}

- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v4 = 0;
      if (a3)
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (a4 == 2)
    {
      v4 = 1;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_19:
    v4 = -1;
    if (a3)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (a4 == 4)
  {
    v4 = 2;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a4 == 8)
  {
    v4 = 3;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a4 != 16)
  {
    goto LABEL_19;
  }

  v4 = 4;
  if (!a3)
  {
    return 0;
  }

LABEL_16:
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[40 * v4 + 2400], *(a3 + 10));
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v5 = 0;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (a4 == 2)
    {
      v5 = 1;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        v5 = 2;
        if (!a3)
        {
          return 0;
        }

        goto LABEL_18;
      case 8uLL:
        v5 = 3;
        if (!a3)
        {
          return 0;
        }

        goto LABEL_18;
      case 0x10uLL:
        v5 = 4;
        if (!a3)
        {
          return 0;
        }

        goto LABEL_18;
    }
  }

  v5 = -1;
  if (!a3)
  {
    return 0;
  }

LABEL_18:
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = v7;
  p_impl = &self->_impl;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v14 = v7;
  if (v7)
  {
    memmove(&__dst, v6, v7);
  }

  *(&__dst + v8) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&self->_anon_228[40 * v5 + 2600], &__dst);
  v11 = v10;
  if ((v14 & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    return 0;
  }

  operator delete(__dst);
  if (!v11)
  {
    return 0;
  }

LABEL_26:
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&p_impl[8].resource_info[5 * v5 + 15].iosurface, v11[5]);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 completionHandler:(id)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a6)
    {
      v15 = MEMORY[0x29EDB9FA0];
      v33 = *MEMORY[0x29EDB9ED8];
      v34[0] = @"Provided pipeline was not of the correct type";
      v16 = MEMORY[0x29EDB8DC0];
      v17 = v34;
      v18 = &v33;
      goto LABEL_10;
    }

    return 0;
  }

  v9 = a4;
  v10 = a4 + 240;
  v11 = *(a4 + 491);
  if (v11)
  {
    hasAnyUnspecialized = AGX::SpecializableRenderPipelineState::hasAnyUnspecialized(v11);
    v9 = a4;
    if (hasAnyUnspecialized)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 && (v14 & 1) == 0)
      {
        if (a6)
        {
          v15 = MEMORY[0x29EDB9FA0];
          v31 = *MEMORY[0x29EDB9ED8];
          v32 = @"Provided descriptor was of incorrect type";
          v16 = MEMORY[0x29EDB8DC0];
          v17 = &v32;
          v18 = &v31;
LABEL_10:
          v19 = [v15 errorWithDomain:@"AGXMetalG18P" code:1 userInfo:{objc_msgSend(v16, "dictionaryWithObjects:forKeys:count:", v17, v18, 1, a4)}];
          result = 0;
          *a6 = v19;
          return result;
        }

        return 0;
      }

      v21 = [[AGXG18PFamilyRenderPipeline alloc] initWithUnretainedParent:a4];
      if (!v21)
      {
        if (a6)
        {
          v15 = MEMORY[0x29EDB9FA0];
          v29 = *MEMORY[0x29EDB9ED8];
          v30 = @"Failed to allocate new pipeline object";
          v16 = MEMORY[0x29EDB8DC0];
          v17 = &v30;
          v18 = &v29;
          goto LABEL_10;
        }

        return 0;
      }

      v22 = v21;
      p_impl = &v21->_impl;
      v24 = [(_MTLRenderPipelineState *)self device];
      v25 = *(a4 + 491);
      if (isKindOfClass)
      {
        if (v25)
        {
          if (v22 != a4)
          {
            AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(p_impl, v24, v10, 0);
          }

          goto LABEL_25;
        }
      }

      else if (v25)
      {
        if (v22 != a4)
        {
          AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(p_impl, v24, v10, 0);
        }

LABEL_25:
        AGX::SpecializableRenderPipelineState::specialize<MTL4RenderPipelineDescriptor>(*(p_impl + 3688), a3);
        if (AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::linkSpecialization(p_impl, v24))
        {
          return v22;
        }
      }

      if (a6)
      {
        v27 = *MEMORY[0x29EDB9ED8];
        v28 = @"Specialization failed";
        *a6 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"AGXMetalG18P" code:1 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      }

      return 0;
    }
  }

  return v9;
}

- (id)newRenderPipelineDescriptorForSpecialization
{
  p_impl = &self->_impl;
  if (self->_impl.tile_variant)
  {

    return objc_opt_new();
  }

  else
  {
    v4 = objc_opt_new();
    iosurface = p_impl[11].resource_info[20].iosurface;
    if (iosurface && AGX::SpecializableRenderPipelineState::hasAnyUnspecialized(iosurface))
    {
      AGX::SpecializableRenderPipelineState::reconstructColorAttachments(iosurface, [v4 colorAttachments]);
    }

    return v4;
  }
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  v7 = [(_MTLRenderPipelineState *)self device];
  if ([(MTLDevice *)v7 requiresRaytracingEmulation])
  {
    v8 = objc_alloc_init(MEMORY[0x29EDBB688]);
    [v8 setFunctionCount:{objc_msgSend(a3, "functionCount")}];
    [v8 setResourceIndex:{objc_msgSend(a3, "resourceIndex")}];
    [v8 setForceResourceIndex:{objc_msgSend(a3, "forceResourceIndex")}];
    v9 = 0;
    if (a4 <= 0x10 && ((1 << a4) & 0x10116) != 0)
    {
      v9 = [(AGXG18PFamilyRenderPipeline *)self newVisibleFunctionTableWithDescriptor:v8 stage:a4];
    }

    v10 = [objc_alloc(MEMORY[0x29EDC55A8]) initWithVisibleFunctionTable:v9];
    return v10;
  }

  if (a4 > 0x10 || ((1 << a4) & 0x10116) == 0)
  {
    return 0;
  }

  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v12 = 0;
      goto LABEL_20;
    }

    if (a4 == 2)
    {
      v12 = 1;
      goto LABEL_20;
    }

    return 0;
  }

  if (a4 == 4)
  {
    v12 = 2;
    goto LABEL_20;
  }

  if (a4 == 8)
  {
    v12 = 3;
    goto LABEL_20;
  }

  if (a4 != 16)
  {
    return 0;
  }

  v12 = 4;
LABEL_20:
  v13 = &self->_impl + 24 * v12;
  v14 = __clz(__rbit32(a4));
  if ([a3 forceResourceIndex])
  {
    v15 = [a3 resourceIndex];
  }

  else
  {
    v15 = 0;
  }

  v16 = [AGXG18PFamilyUserIntersectionFunctionTable alloc];
  v17 = [a3 functionCount];

  return [(AGXG18PFamilyUserIntersectionFunctionTable *)v16 initWithDevice:v7 numTableFnSlots:v17 pipelineSets:v13 + 3408 pipeline:self stage:v14 + 1 resourceIndex:v15];
}

- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)a3
{
  v5 = [(_MTLRenderPipelineState *)self device];
  LODWORD(v7) = 3;
  return -[AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]([AGXG18PFamilyVisibleFunctionTable alloc], "initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:", v5, [a3 functionCount], 0, *(*(v5 + 106) + 16989), objc_msgSend(a3, "resourceIndex"), self, v7);
}

- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)a3
{
  v5 = [(_MTLRenderPipelineState *)self device];
  LODWORD(v7) = 2;
  return -[AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]([AGXG18PFamilyVisibleFunctionTable alloc], "initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:", v5, [a3 functionCount], 0, *(*(v5 + 106) + 16989), objc_msgSend(a3, "resourceIndex"), self, v7);
}

- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)a3
{
  v5 = [(_MTLRenderPipelineState *)self device];
  LODWORD(v7) = 1;
  return -[AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]([AGXG18PFamilyVisibleFunctionTable alloc], "initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:", v5, [a3 functionCount], 0, *(*(v5 + 106) + 16989), objc_msgSend(a3, "resourceIndex"), self, v7);
}

- (id)pipelineBinaries
{
  v49[1] = *MEMORY[0x29EDCA608];
  p_impl = &self->_impl;
  if (!self->_impl.fragment_variant && !self->_impl.vertex_variant && !self->_impl.tile_variant && !self->_impl.object_variant && !self->_impl.mesh_variant)
  {
    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (p_impl->fragment_variant)
  {
    v4 = objc_alloc(MEMORY[0x29EDBB728]);
    fragment_variant = p_impl->fragment_variant;
    if ((*(p_impl->fragment_variant + 2031) & 0x8000000000000000) != 0)
    {
      if (*(fragment_variant + 252))
      {
        goto LABEL_9;
      }
    }

    else if (*(p_impl->fragment_variant + 2031))
    {
LABEL_9:
      v6 = v4;
      v7 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v8 = *(fragment_variant + 2031);
      if (v8 < 0)
      {
        v9 = *(fragment_variant + 251);
        v8 = *(fragment_variant + 252);
      }

      else
      {
        v9 = fragment_variant + 2008;
      }

      v10 = [v7 initWithBytes:v9 length:v8];
      fragment_variant = p_impl->fragment_variant;
      v4 = v6;
LABEL_15:
      v49[0] = [v4 initWithBinary:v10 uniqueIdentifier:*(fragment_variant + 177) debugIdentifier:*(fragment_variant + 352)];
      [v3 setObject:objc_msgSend(MEMORY[0x29EDB8D80] forKeyedSubscript:{"arrayWithObjects:count:", v49, 1), @"fragment"}];
      [v3 setObject:AGX::PipelineDylibResources<AGX::HAL300::ObjClasses forKeyedSubscript:{AGX::HAL300::Classes, (AGX::ICBType)0>::getPipelineBinaries(&p_impl[8].resource_info[3]), @"fragment-dynamic-libraries"}];
      v11 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&p_impl[11]);
      if (v11)
      {
        [v3 setObject:v11 forKeyedSubscript:@"fragment-intersection-functions"];
      }

      goto LABEL_17;
    }

    v10 = 0;
    goto LABEL_15;
  }

LABEL_17:
  if (!p_impl->vertex_variant)
  {
    goto LABEL_28;
  }

  v12 = objc_alloc(MEMORY[0x29EDBB728]);
  vertex_variant = p_impl->vertex_variant;
  if ((*(vertex_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(vertex_variant + 252))
    {
      goto LABEL_20;
    }

LABEL_23:
    v18 = 0;
    goto LABEL_26;
  }

  if (!*(vertex_variant + 2031))
  {
    goto LABEL_23;
  }

LABEL_20:
  v14 = v12;
  v15 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v16 = *(vertex_variant + 2031);
  if (v16 < 0)
  {
    v17 = *(vertex_variant + 251);
    v16 = *(vertex_variant + 252);
  }

  else
  {
    v17 = vertex_variant + 2008;
  }

  v18 = [v15 initWithBytes:v17 length:v16];
  vertex_variant = p_impl->vertex_variant;
  v12 = v14;
LABEL_26:
  v48 = [v12 initWithBinary:v18 uniqueIdentifier:*(vertex_variant + 177) debugIdentifier:*(vertex_variant + 352)];
  [v3 setObject:objc_msgSend(MEMORY[0x29EDB8D80] forKeyedSubscript:{"arrayWithObjects:count:", &v48, 1), @"vertex"}];
  [v3 setObject:AGX::PipelineDylibResources<AGX::HAL300::ObjClasses forKeyedSubscript:{AGX::HAL300::Classes, (AGX::ICBType)0>::getPipelineBinaries(p_impl[8].resource_info), @"vertex-dynamic-libraries"}];
  v19 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&p_impl[10].resource_info[24]);
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"vertex-intersection-functions"];
  }

LABEL_28:
  if (!p_impl->tile_variant)
  {
    goto LABEL_39;
  }

  v20 = objc_alloc(MEMORY[0x29EDBB728]);
  tile_variant = p_impl->tile_variant;
  if ((*(tile_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(tile_variant + 252))
    {
      goto LABEL_31;
    }

LABEL_34:
    v26 = 0;
    goto LABEL_37;
  }

  if (!*(tile_variant + 2031))
  {
    goto LABEL_34;
  }

LABEL_31:
  v22 = v20;
  v23 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v24 = *(tile_variant + 2031);
  if (v24 < 0)
  {
    v25 = *(tile_variant + 251);
    v24 = *(tile_variant + 252);
  }

  else
  {
    v25 = tile_variant + 2008;
  }

  v26 = [v23 initWithBytes:v25 length:v24];
  tile_variant = p_impl->tile_variant;
  v20 = v22;
LABEL_37:
  v47 = [v20 initWithBinary:v26 uniqueIdentifier:*(tile_variant + 177) debugIdentifier:*(tile_variant + 352)];
  [v3 setObject:objc_msgSend(MEMORY[0x29EDB8D80] forKeyedSubscript:{"arrayWithObjects:count:", &v47, 1), @"tile"}];
  [v3 setObject:AGX::PipelineDylibResources<AGX::HAL300::ObjClasses forKeyedSubscript:{AGX::HAL300::Classes, (AGX::ICBType)0>::getPipelineBinaries(&p_impl[8].resource_info[6]), @"tile-dynamic-libraries"}];
  v27 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&p_impl[11].object_variant);
  if (v27)
  {
    [v3 setObject:v27 forKeyedSubscript:@"tile-intersection-functions"];
  }

LABEL_39:
  if (!p_impl->object_variant)
  {
    goto LABEL_50;
  }

  v28 = objc_alloc(MEMORY[0x29EDBB728]);
  object_variant = p_impl->object_variant;
  if ((*(object_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(object_variant + 252))
    {
      goto LABEL_42;
    }

LABEL_45:
    v34 = 0;
    goto LABEL_48;
  }

  if (!*(object_variant + 2031))
  {
    goto LABEL_45;
  }

LABEL_42:
  v30 = v28;
  v31 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v32 = *(object_variant + 2031);
  if (v32 < 0)
  {
    v33 = *(object_variant + 251);
    v32 = *(object_variant + 252);
  }

  else
  {
    v33 = object_variant + 2008;
  }

  v34 = [v31 initWithBytes:v33 length:v32];
  object_variant = p_impl->object_variant;
  v28 = v30;
LABEL_48:
  v46 = [v28 initWithBinary:v34 uniqueIdentifier:*(object_variant + 177) debugIdentifier:*(object_variant + 352)];
  [v3 setObject:objc_msgSend(MEMORY[0x29EDB8D80] forKeyedSubscript:{"arrayWithObjects:count:", &v46, 1), @"object"}];
  [v3 setObject:AGX::PipelineDylibResources<AGX::HAL300::ObjClasses forKeyedSubscript:{AGX::HAL300::Classes, (AGX::ICBType)0>::getPipelineBinaries(&p_impl[8].resource_info[9]), @"object-dynamic-libraries"}];
  v35 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&p_impl[11].vertex_spill_params.config.dirPages[2]);
  if (v35)
  {
    [v3 setObject:v35 forKeyedSubscript:@"object-intersection-functions"];
  }

LABEL_50:
  if (p_impl->mesh_variant)
  {
    v36 = objc_alloc(MEMORY[0x29EDBB728]);
    mesh_variant = p_impl->mesh_variant;
    if ((*(mesh_variant + 2031) & 0x8000000000000000) != 0)
    {
      if (*(mesh_variant + 252))
      {
        goto LABEL_53;
      }
    }

    else if (*(mesh_variant + 2031))
    {
LABEL_53:
      v38 = v36;
      v39 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v40 = *(mesh_variant + 2031);
      if (v40 < 0)
      {
        v41 = *(mesh_variant + 251);
        v40 = *(mesh_variant + 252);
      }

      else
      {
        v41 = mesh_variant + 2008;
      }

      v42 = [v39 initWithBytes:v41 length:v40];
      mesh_variant = p_impl->mesh_variant;
      v36 = v38;
      goto LABEL_59;
    }

    v42 = 0;
LABEL_59:
    v45 = [v36 initWithBinary:v42 uniqueIdentifier:*(mesh_variant + 177) debugIdentifier:*(mesh_variant + 352)];
    [v3 setObject:objc_msgSend(MEMORY[0x29EDB8D80] forKeyedSubscript:{"arrayWithObjects:count:", &v45, 1), @"mesh"}];
    [v3 setObject:AGX::PipelineDylibResources<AGX::HAL300::ObjClasses forKeyedSubscript:{AGX::HAL300::Classes, (AGX::ICBType)0>::getPipelineBinaries(&p_impl[8].resource_info[12]), @"mesh-dynamic-libraries"}];
    v43 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&p_impl[11].fragment_tile_spill_params);
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"mesh-intersection-functions"];
    }
  }

  return [v3 copy];
}

- (id)_newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 vertexFunctionResourceIndices:(const unint64_t *)a4 fragmentAdditionalBinaryFunctions:(id)a5 fragmentFunctionResourceIndices:(const unint64_t *)a6 error:(id *)a7
{
  v65 = *MEMORY[0x29EDCA608];
  if (self->_basePipeline)
  {
    basePipeline = self->_basePipeline;
  }

  else
  {
    basePipeline = self;
  }

  v13 = [[AGXG18PFamilyRenderPipeline alloc] initWithParent:basePipeline];
  v14 = [(_MTLRenderPipelineState *)self device];
  v15 = @"Failed to allocate a new pipeline";
  v56 = @"Failed to allocate a new pipeline";
  v52 = v13;
  if (!v13)
  {
    goto LABEL_92;
  }

  p_impl = &v13->_impl;
  v54 = v14;
  v51 = &self->_impl;
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(p_impl, v14, &self->_impl, [a5 count] + objc_msgSend(a3, "count"));
  v55 = p_impl;
  prime = vcvtps_u32_f32(([a3 count] + *(p_impl + 2736)) / *(p_impl + 2744));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v18 = *(p_impl + 2720);
  if (prime > *&v18)
  {
    goto LABEL_10;
  }

  if (prime < *&v18)
  {
    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    v20 = vcvtps_u32_f32(*(p_impl + 2736) / *(p_impl + 2744));
    if (*&v18 < 3uLL || v19.u32[0] > 1uLL)
    {
      v22 = prime;
      v20 = std::__next_prime(v20);
      prime = v22;
    }

    else
    {
      v23 = 1 << -__clz(v20 - 1);
      if (v20 >= 2)
      {
        v20 = v23;
      }
    }

    if (prime <= v20)
    {
      prime = v20;
    }

    if (prime < *&v18)
    {
LABEL_10:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v55 + 2712, prime);
    }
  }

  v24 = vcvtps_u32_f32(([a5 count] + *(v55 + 2776)) / *(v55 + 2784));
  if (v24 == 1)
  {
    v24 = 2;
  }

  else if ((v24 & (v24 - 1)) != 0)
  {
    v24 = std::__next_prime(v24);
  }

  v25 = *(v55 + 2760);
  if (v24 > *&v25)
  {
    goto LABEL_28;
  }

  if (v24 < *&v25)
  {
    v26 = vcvtps_u32_f32(*(v55 + 2776) / *(v55 + 2784));
    if (*&v25 < 3uLL || (v27 = vcnt_s8(v25), v27.i16[0] = vaddlv_u8(v27), v27.u32[0] > 1uLL))
    {
      v29 = v24;
      v26 = std::__next_prime(v26);
      v24 = v29;
    }

    else
    {
      v28 = 1 << -__clz(v26 - 1);
      if (v26 >= 2)
      {
        v26 = v28;
      }
    }

    if (v24 <= v26)
    {
      v24 = v26;
    }

    if (v24 < *&v25)
    {
LABEL_28:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v55 + 2752, v24);
    }
  }

  v30 = AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(v54, a3, a4, (v55 + 2712), v55 + 3408, &v51[10].resource_info[24].iosurface, LODWORD(v51[3].resource_info[9].iosurface), &v56) ^ 1;
  if (!*v55 || (v30 & 1) != 0)
  {
    if (*v55)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    if (v31)
    {
      goto LABEL_74;
    }
  }

  else if ((AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(v54, a5, a6, (v55 + 2752), v55 + 3432, &v51[11].fragment_variant, LODWORD(v51[4].resource_info[9].iosurface), &v56) & 1) == 0)
  {
    goto LABEL_74;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v32 = [a3 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (!v32)
  {
    v39 = 0;
    v38 = 0;
LABEL_63:
    if ((((v38 - v39) >> 1) + ((v51[10].resource_info[25].iosurface - v51[10].resource_info[24].iosurface) >> 1) + 1) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v33 = *v58;
LABEL_49:
  v34 = 0;
  while (1)
  {
    if (*v58 != v33)
    {
      objc_enumerationMutation(a3);
    }

    v35 = *(*(&v57 + 1) + 8 * v34);
    if (([v54 requiresRaytracingEmulation] & 1) == 0 && objc_msgSend(v35, "functionType") == 6)
    {
      goto LABEL_50;
    }

    if (![v35 vendorPrivate])
    {
      break;
    }

    [v35 vendorPrivate];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v36 = [v35 vendorPrivate];
    v37 = v36;
    if (!v36)
    {
      break;
    }

    AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(v36[7], [v36 relocations]);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v61, (v37 + 7));
LABEL_50:
    if (v32 == ++v34)
    {
      v32 = [a3 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (!v32)
      {
        v39 = v61;
        v38 = v62;
        goto LABEL_63;
      }

      goto LABEL_49;
    }
  }

  v40 = v61;
  if (v61)
  {
    v41 = v62;
    if (v62 != v61)
    {
      do
      {
        v42 = *(v41 - 1);
        if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

        v41 -= 16;
      }

      while (v41 != v40);
      v40 = v61;
    }

    operator delete(v40);
  }

LABEL_74:
  if (([v54 requiresRaytracingEmulation] & 1) == 0)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(v55);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(v55);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(v55, v54[106]);
  }

  if (*v55 && (*(*v55 + 2407) & 0x18) != 0)
  {
    *(v55 + 790) = 1;
  }

  v43 = *(v55 + 8);
  if (v43 && (*(v43 + 2407) & 0x18) != 0)
  {
    *(v55 + 790) = 1;
  }

  v44 = *(v55 + 16);
  if (v44 && (*(v44 + 2407) & 0x18) != 0)
  {
    *(v55 + 790) = 1;
  }

  v45 = *(v55 + 24);
  if (v45 && (*(v45 + 2407) & 0x18) != 0)
  {
    *(v55 + 790) = 1;
  }

  v46 = *(v55 + 32);
  if (v46 && (*(v46 + 2407) & 0x18) != 0)
  {
    *(v55 + 790) = 1;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(v55, v54[106]);
  *(v55 + 1024) = v54;
  v15 = v56;
LABEL_92:
  if (a7 && v15)
  {
    v47 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v15 forKey:*MEMORY[0x29EDB9ED8]];
    *a7 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:1 userInfo:v47];
  }

  return 0;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  if (self->_impl.mesh_variant)
  {
    if (self->_basePipeline)
    {
      basePipeline = self->_basePipeline;
    }

    else
    {
      basePipeline = self;
    }

    v8 = [[AGXG18PFamilyRenderPipeline alloc] initWithParent:basePipeline];
    v9 = [(_MTLRenderPipelineState *)self device];
    v10 = @"Failed to allocate a new mesh pipeline";
    v22 = @"Failed to allocate a new mesh pipeline";
    v11 = [a3 meshAdditionalBinaryFunctionResourceIndices];
    v12 = [a3 objectAdditionalBinaryFunctionResourceIndices];
    v13 = [a3 fragmentAdditionalBinaryFunctionResourceIndices];
    if (v8)
    {
      if (AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setPipelineStateWithAdditionalMeshObjectFragmentFunctions(&v8->_impl, v9, self, [a3 meshAdditionalBinaryFunctions], v11, objc_msgSend(a3, "objectAdditionalBinaryFunctions"), v12, objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"), v13, &v22))
      {
        return v8;
      }

      v10 = v22;
    }

    if (a4)
    {
      if (v10)
      {
        v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v10 forKey:*MEMORY[0x29EDB9ED8]];
        *a4 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:1 userInfo:v14];
      }
    }

    return 0;
  }

  if (self->_impl.tile_variant)
  {
    v16 = [a3 tileAdditionalBinaryFunctions];
    v17 = [a3 tileAdditionalBinaryFunctionResourceIndices];

    return [(AGXG18PFamilyRenderPipeline *)self _newTileRenderPipelineStateWithAdditionalBinaryFunctions:v16 tileFunctionResourceIndices:v17 error:a4];
  }

  else
  {
    v18 = [a3 vertexAdditionalBinaryFunctions];
    v19 = [a3 vertexAdditionalBinaryFunctionResourceIndices];
    v20 = [a3 fragmentAdditionalBinaryFunctions];
    v21 = [a3 fragmentAdditionalBinaryFunctionResourceIndices];

    return [(AGXG18PFamilyRenderPipeline *)self _newRenderPipelineStateWithAdditionalBinaryFunctions:v18 vertexFunctionResourceIndices:v19 fragmentAdditionalBinaryFunctions:v20 fragmentFunctionResourceIndices:v21 error:a4];
  }
}

- (id)meshFunctionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[2560], a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)objectFunctionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[2520], a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)tileFunctionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[2480], a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)fragmentFunctionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[2440], a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)vertexFunctionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_anon_228[2400], a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (unint64_t)allocatedSize
{
  p_impl = &self->_impl;
  vertex_variant = self->_impl.vertex_variant;
  if (vertex_variant)
  {
    LODWORD(vertex_variant) = *(vertex_variant + 1080) + *(vertex_variant + 924);
  }

  tile_variant = self->_impl.tile_variant;
  if (tile_variant)
  {
    LODWORD(tile_variant) = *(tile_variant + 926);
  }

  fragment_variant = p_impl->fragment_variant;
  if (p_impl->fragment_variant)
  {
    LODWORD(fragment_variant) = *(fragment_variant + 926);
  }

  v6 = tile_variant + vertex_variant + fragment_variant;
  if (self->_anon_228[477])
  {
    v7 = 440;
  }

  else
  {
    v7 = 0;
  }

  return (v6 + v7);
}

- (unint64_t)uniqueIdentifier
{
  result = &self->_impl;
  if (*(result + 789) == 1)
  {
    return *(result + 944);
  }

  return result;
}

- (unint64_t)imageblockSampleLength
{
  fragment_variant = self->_impl.fragment_variant;
  if (fragment_variant)
  {
    return fragment_variant[948];
  }

  fragment_variant = self->_impl.tile_variant;
  if (fragment_variant)
  {
    return fragment_variant[948];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3
{
  fragment_variant = self->_impl.fragment_variant;
  if (fragment_variant)
  {
    return fragment_variant[948] * a3->var1 * a3->var0 * *&self->_anon_228[444];
  }

  fragment_variant = self->_impl.tile_variant;
  if (fragment_variant)
  {
    return fragment_variant[948] * a3->var1 * a3->var0 * *&self->_anon_228[444];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)imageBlockMemoryLengthForDimensions:(id *)a3
{
  fragment_variant = self->_impl.fragment_variant;
  if (fragment_variant)
  {
    return fragment_variant[948] * a3->var1 * a3->var0 * *&self->_anon_228[444];
  }

  fragment_variant = self->_impl.tile_variant;
  if (fragment_variant)
  {
    return fragment_variant[948] * a3->var1 * a3->var0 * *&self->_anon_228[444];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)imageBlockSampleLength
{
  fragment_variant = self->_impl.fragment_variant;
  if (fragment_variant)
  {
    return fragment_variant[948];
  }

  fragment_variant = self->_impl.tile_variant;
  if (fragment_variant)
  {
    return fragment_variant[948];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)maxTotalThreadsPerMeshThreadgroup
{
  mesh_variant = self->_impl.mesh_variant;
  if (mesh_variant)
  {
    return *(mesh_variant + 1009);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)maxTotalThreadsPerObjectThreadgroup
{
  object_variant = self->_impl.object_variant;
  if (object_variant)
  {
    return *(object_variant + 987);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)maxTotalThreadsPerThreadgroup
{
  tile_variant = self->_impl.tile_variant;
  if (tile_variant)
  {
    return *(tile_variant + 958);
  }

  else
  {
    return 0;
  }
}

- (unsigned)getFragmentShaderTelemetryID
{
  fragment_variant = self->_impl.fragment_variant;
  if (fragment_variant)
  {
    return *(fragment_variant + 354);
  }

  else
  {
    return 0;
  }
}

- (unsigned)getVertexShaderTelemetryID
{
  vertex_variant = self->_impl.vertex_variant;
  if (vertex_variant)
  {
    return *(vertex_variant + 354);
  }

  else
  {
    return 0;
  }
}

- (id)newObjectShaderDebugInfo
{
  object_variant = self->_impl.object_variant;
  if (!object_variant)
  {
    return 0;
  }

  if ((*(object_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(object_variant + 252))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(object_variant + 2031))
  {
    return 0;
  }

LABEL_4:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(object_variant + 2031);
  if (v4 < 0)
  {
    v5 = *(object_variant + 251);
    v4 = *(object_variant + 252);
  }

  else
  {
    v5 = object_variant + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (id)newMeshShaderDebugInfo
{
  mesh_variant = self->_impl.mesh_variant;
  if (!mesh_variant)
  {
    return 0;
  }

  if ((*(mesh_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(mesh_variant + 252))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(mesh_variant + 2031))
  {
    return 0;
  }

LABEL_4:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(mesh_variant + 2031);
  if (v4 < 0)
  {
    v5 = *(mesh_variant + 251);
    v4 = *(mesh_variant + 252);
  }

  else
  {
    v5 = mesh_variant + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (id)newFragmentShaderDebugInfo
{
  fragment_variant = self->_impl.fragment_variant;
  if (!fragment_variant)
  {
    return 0;
  }

  if ((*(fragment_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(fragment_variant + 252))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(fragment_variant + 2031))
  {
    return 0;
  }

LABEL_4:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(fragment_variant + 2031);
  if (v4 < 0)
  {
    v5 = *(fragment_variant + 251);
    v4 = *(fragment_variant + 252);
  }

  else
  {
    v5 = fragment_variant + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (id)newVertexShaderDebugInfo
{
  vertex_variant = self->_impl.vertex_variant;
  if (!vertex_variant)
  {
    return 0;
  }

  if ((*(vertex_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(vertex_variant + 252))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(vertex_variant + 2031))
  {
    return 0;
  }

LABEL_4:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(vertex_variant + 2031);
  if (v4 < 0)
  {
    v5 = *(vertex_variant + 251);
    v4 = *(vertex_variant + 252);
  }

  else
  {
    v5 = vertex_variant + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (void)dealloc
{
  self->_vp = 0;

  self->_fp = 0;
  self->_basePipeline = 0;

  self->_op = 0;
  self->_mp = 0;

  vertexReflectionData = self->_vertexReflectionData;
  if (vertexReflectionData)
  {
    dispatch_release(vertexReflectionData);
  }

  fragmentReflectionData = self->_fragmentReflectionData;
  if (fragmentReflectionData)
  {
    dispatch_release(fragmentReflectionData);
  }

  tileReflectionData = self->_tileReflectionData;
  if (tileReflectionData)
  {
    dispatch_release(tileReflectionData);
  }

  meshReflectionData = self->_meshReflectionData;
  if (meshReflectionData)
  {
    dispatch_release(meshReflectionData);
  }

  objectReflectionData = self->_objectReflectionData;
  if (objectReflectionData)
  {
    dispatch_release(objectReflectionData);
  }

  v8.receiver = self;
  v8.super_class = AGXG18PFamilyRenderPipeline;
  [(_MTLRenderPipelineState *)&v8 dealloc];
}

- (AGXG18PFamilyRenderPipeline)initWithUnretainedParent:(id)a3
{
  v10.receiver = self;
  v10.super_class = AGXG18PFamilyRenderPipeline;
  v4 = [(_MTLRenderPipelineState *)&v10 initWithParent:?];
  if (v4)
  {
    v5 = *(a3 + 494);
    if (v5)
    {
      v4->_fp = v5;
    }

    v6 = *(a3 + 495);
    if (v6)
    {
      v4->_vp = v6;
    }

    v7 = *(a3 + 497);
    if (v7)
    {
      v4->_op = v7;
    }

    v8 = *(a3 + 498);
    if (v8)
    {
      v4->_mp = v8;
    }
  }

  return v4;
}

- (AGXG18PFamilyRenderPipeline)initWithParent:(id)a3
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyRenderPipeline;
  result = [(_MTLRenderPipelineState *)&v7 initWithParent:?];
  if (result)
  {
    v5 = result;
    v6 = a3;
    result = v5;
    v5->_basePipeline = v6;
  }

  return result;
}

- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6 maxTotalThreadgroupsPerMeshGrid:(unint64_t)a7
{
  v16.receiver = self;
  v16.super_class = AGXG18PFamilyRenderPipeline;
  v8 = [(_MTLRenderPipelineState *)&v16 initWithDevice:a3 meshRenderPipelineStateDescriptor:a4 objectThreadExecutionWidth:a5 meshThreadExecutionWidth:a6 maxTotalThreadgroupsPerMeshGrid:a7];
  if (v8)
  {
    v9 = [objc_msgSend(a4 "fragmentFunction")];
    v8->_fp = v9;
    v10 = v9;
    v11 = [objc_msgSend(a4 "objectFunction")];
    v8->_op = v11;
    v12 = v11;
    v13 = [objc_msgSend(a4 "meshFunction")];
    v8->_mp = v13;
    v14 = v13;
  }

  return v8;
}

- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6
{
  v15.receiver = self;
  v15.super_class = AGXG18PFamilyRenderPipeline;
  v7 = [(_MTLRenderPipelineState *)&v15 initWithDevice:a3 meshRenderPipelineStateDescriptor:a4 objectThreadExecutionWidth:a5 meshThreadExecutionWidth:a6];
  if (v7)
  {
    v8 = [objc_msgSend(a4 "fragmentFunction")];
    v7->_fp = v8;
    v9 = v8;
    v10 = [objc_msgSend(a4 "objectFunction")];
    v7->_op = v10;
    v11 = v10;
    v12 = [objc_msgSend(a4 "meshFunction")];
    v7->_mp = v12;
    v13 = v12;
  }

  return v7;
}

- (AGXG18PFamilyRenderPipeline)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4
{
  v15.receiver = self;
  v15.super_class = AGXG18PFamilyRenderPipeline;
  v5 = [(_MTLRenderPipelineState *)&v15 initWithDevice:a3 pipelineStateDescriptor:?];
  if (v5)
  {
    v6 = [objc_msgSend(a4 "fragmentFunction")];
    v5->_fp = v6;
    v7 = v6;
    v8 = [objc_msgSend(a4 "vertexFunction")];
    v5->_vp = v8;
    v9 = v8;
    v10 = [objc_msgSend(a4 "objectFunction")];
    v5->_op = v10;
    v11 = v10;
    v12 = [objc_msgSend(a4 "meshFunction")];
    v5->_mp = v12;
    v13 = v12;
  }

  return v5;
}

@end