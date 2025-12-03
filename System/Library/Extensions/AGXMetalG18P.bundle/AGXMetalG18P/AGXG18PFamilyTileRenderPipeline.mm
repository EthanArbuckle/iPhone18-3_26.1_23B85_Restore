@interface AGXG18PFamilyTileRenderPipeline
- (AGXG18PFamilyTileRenderPipeline)initWithDeviceAndTileDesc:(id)desc tilePipelineStateDescriptor:(id)descriptor;
- (id)_newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions tileFunctionResourceIndices:(const unint64_t *)indices error:(id *)error;
- (id)newTileShaderDebugInfo;
- (void)dealloc;
@end

@implementation AGXG18PFamilyTileRenderPipeline

- (id)_newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions tileFunctionResourceIndices:(const unint64_t *)indices error:(id *)error
{
  v51 = *MEMORY[0x29EDCA608];
  if (self->super._basePipeline)
  {
    basePipeline = self->super._basePipeline;
  }

  else
  {
    basePipeline = self;
  }

  v9 = [(AGXG18PFamilyRenderPipeline *)[AGXG18PFamilyTileRenderPipeline alloc] initWithParent:basePipeline];
  device = [(_MTLRenderPipelineState *)self device];
  v11 = @"Failed to allocate a new pipeline";
  v42 = @"Failed to allocate a new pipeline";
  v38 = v9;
  if (v9)
  {
    p_impl = &v9->super._impl;
    v13 = &self->super._impl;
    v40 = device;
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(p_impl, device, &self->super._impl, [functions count]);
    v41 = p_impl;
    prime = vcvtps_u32_f32(([functions count] + *(p_impl + 2816)) / *(p_impl + 2824));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v15 = *(p_impl + 2800);
    if (prime > *&v15)
    {
      goto LABEL_10;
    }

    if (prime < *&v15)
    {
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      v17 = vcvtps_u32_f32(*(p_impl + 2816) / *(p_impl + 2824));
      if (*&v15 < 3uLL || v16.u32[0] > 1uLL)
      {
        v19 = prime;
        v17 = std::__next_prime(v17);
        prime = v19;
      }

      else
      {
        v20 = 1 << -__clz(v17 - 1);
        if (v17 >= 2)
        {
          v17 = v20;
        }
      }

      if (prime <= v17)
      {
        prime = v17;
      }

      if (prime < *&v15)
      {
LABEL_10:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v41 + 2792, prime);
      }
    }

    if (AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(v40, functions, indices, (v41 + 2792), v41 + 3456, &v13[11].object_variant, LODWORD(v13[5].resource_info[9].iosurface), &v42))
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v21 = [functions countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v21)
      {
        v22 = *v44;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v44 != v22)
            {
              objc_enumerationMutation(functions);
            }

            v24 = *(*(&v43 + 1) + 8 * i);
            if (([v40 requiresRaytracingEmulation] & 1) != 0 || objc_msgSend(v24, "functionType") != 6)
            {
              if (![v24 vendorPrivate] || (objc_msgSend(v24, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v25 = objc_msgSend(v24, "vendorPrivate"), (v26 = v25) == 0))
              {
                v29 = v47;
                if (v47)
                {
                  v30 = v48;
                  if (v48 != v47)
                  {
                    do
                    {
                      v31 = *(v30 - 1);
                      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v31->__on_zero_shared)(v31);
                        std::__shared_weak_count::__release_weak(v31);
                      }

                      v30 -= 16;
                    }

                    while (v30 != v29);
                    v29 = v47;
                  }

                  operator delete(v29);
                }

                goto LABEL_52;
              }

              AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(v25[7], [v25 relocations]);
              std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v47, (v26 + 7));
            }
          }

          v21 = [functions countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v21);
        v28 = v47;
        v27 = v48;
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      if ((((v27 - v28) >> 1) + ((v13[11].mesh_variant - v13[11].object_variant) >> 1) + 1) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_52:
    if (([v40 requiresRaytracingEmulation] & 1) == 0)
    {
      AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(v41);
      AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(v41);
      AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(v41, v40[106]);
    }

    if (*v41 && (*(*v41 + 2407) & 0x18) != 0)
    {
      *(v41 + 790) = 1;
    }

    v32 = *(v41 + 8);
    if (v32 && (*(v32 + 2407) & 0x18) != 0)
    {
      *(v41 + 790) = 1;
    }

    v33 = *(v41 + 16);
    if (v33 && (*(v33 + 2407) & 0x18) != 0)
    {
      *(v41 + 790) = 1;
    }

    v34 = *(v41 + 24);
    if (v34 && (*(v34 + 2407) & 0x18) != 0)
    {
      *(v41 + 790) = 1;
    }

    v35 = *(v41 + 32);
    if (v35 && (*(v35 + 2407) & 0x18) != 0)
    {
      *(v41 + 790) = 1;
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(v41, v40[106]);
    *(v41 + 1024) = v40;
    v11 = v42;
  }

  if (error && v11)
  {
    v36 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v11 forKey:*MEMORY[0x29EDB9ED8]];
    *error = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:1 userInfo:v36];
  }

  return 0;
}

- (id)newTileShaderDebugInfo
{
  tile_variant = self->super._impl.tile_variant;
  if (!tile_variant)
  {
    return 0;
  }

  if ((*(tile_variant + 2031) & 0x8000000000000000) != 0)
  {
    if (*(tile_variant + 252))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(tile_variant + 2031))
  {
    return 0;
  }

LABEL_4:
  v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v4 = *(tile_variant + 2031);
  if (v4 < 0)
  {
    v5 = *(tile_variant + 251);
    v4 = *(tile_variant + 252);
  }

  else
  {
    v5 = tile_variant + 2008;
  }

  return [v3 initWithBytes:v5 length:v4];
}

- (void)dealloc
{
  self->_tp = 0;
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyTileRenderPipeline;
  [(AGXG18PFamilyRenderPipeline *)&v3 dealloc];
}

- (AGXG18PFamilyTileRenderPipeline)initWithDeviceAndTileDesc:(id)desc tilePipelineStateDescriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = AGXG18PFamilyTileRenderPipeline;
  v5 = [(_MTLRenderPipelineState *)&v9 initWithDeviceAndTileDesc:desc tilePipelineStateDescriptor:?];
  if (v5)
  {
    v6 = [objc_msgSend(descriptor "tileFunction")];
    v5->_tp = v6;
    v7 = v6;
  }

  return v5;
}

@end