@interface AGXG18PFamilyComputePipeline
- (AGXG18PFamilyComputePipeline)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4;
- (AGXG18PFamilyComputePipeline)initWithParent:(id)a3;
- (id)functionHandleWithBinaryFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3;
- (id)functionHandleWithName:(id)a3;
- (id)functionReflectionWithFunctionDescriptor:(id)a3;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5;
- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (id)pipelineBinaries;
- (unint64_t)allocatedSize;
- (unint64_t)imageBlockMemoryLengthForDimensions:(id *)a3;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
@end

@implementation AGXG18PFamilyComputePipeline

- (id)functionReflectionWithFunctionDescriptor:(id)a3
{
  v5 = [(_MTLComputePipelineState *)self device];
  v6 = [(AGXG18PFamilyComputePipeline *)self reflectionData];

  return MEMORY[0x2A1C5C358](a3, v5, v6);
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  }

  else
  {
    v7 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v7 addObject:*(*(*(&v13 + 1) + 8 * i) + 80)];
      }

      v9 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return [(AGXG18PFamilyComputePipeline *)self newComputePipelineStateWithAdditionalBinaryFunctions:v7 resourceIndices:0 error:a4];
}

- (id)functionHandleWithBinaryFunction:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_impl.max_wg_size, *(a3 + 10));
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)functionHandleWithName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v11 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&self->_impl.function_handle_map.__table_.__max_load_factor_, &__dst);
  v8 = v7;
  if ((v11 & 0x80000000) == 0)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  operator delete(__dst);
  if (!v8)
  {
    return 0;
  }

LABEL_10:
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_impl.max_wg_size, v8[5]);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)pipelineBinaries
{
  v30 = *MEMORY[0x29EDCA608];
  p_impl = &self->_impl;
  if (!self->_impl.compute_variant)
  {
    return 0;
  }

  v3 = AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(&self->_impl.ift_set.__cntrl_);
  if (!v3)
  {
    v24 = @"compute";
    v12 = objc_alloc(MEMORY[0x29EDBB728]);
    compute_variant = p_impl->compute_variant;
    if ((*(compute_variant + 2031) & 0x8000000000000000) != 0)
    {
      if (*(compute_variant + 252))
      {
        goto LABEL_10;
      }
    }

    else if (*(compute_variant + 2031))
    {
LABEL_10:
      v14 = v12;
      v15 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v16 = *(compute_variant + 2031);
      if (v16 < 0)
      {
        v17 = *(compute_variant + 251);
        v16 = *(compute_variant + 252);
      }

      else
      {
        v17 = compute_variant + 2008;
      }

      v22 = [v15 initWithBytes:v17 length:v16];
      compute_variant = p_impl->compute_variant;
      v12 = v14;
      goto LABEL_21;
    }

    v22 = 0;
LABEL_21:
    v23 = [v12 initWithBinary:v22 uniqueIdentifier:*(compute_variant + 177) debugIdentifier:*(compute_variant + 352)];
    v27 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v23 count:1];
    v25 = @"compute-dynamic-libraries";
    PipelineBinaries = AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)0>::getPipelineBinaries(&p_impl->loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers);
    v20 = MEMORY[0x29EDB8DC0];
    v21 = 2;
    return [v20 dictionaryWithObjects:&v27 forKeys:&v24 count:v21];
  }

  v4 = v3;
  v24 = @"compute";
  v5 = objc_alloc(MEMORY[0x29EDBB728]);
  v6 = p_impl->compute_variant;
  if ((*(v6 + 2031) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 252))
    {
      goto LABEL_5;
    }
  }

  else if (*(v6 + 2031))
  {
LABEL_5:
    v7 = v5;
    v8 = objc_alloc(MEMORY[0x29EDB8DA0]);
    v9 = *(v6 + 2031);
    if (v9 < 0)
    {
      v10 = *(v6 + 251);
      v9 = *(v6 + 252);
    }

    else
    {
      v10 = v6 + 2008;
    }

    v18 = [v8 initWithBytes:v10 length:v9];
    v6 = p_impl->compute_variant;
    v5 = v7;
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:
  v23 = [v5 initWithBinary:v18 uniqueIdentifier:*(v6 + 177) debugIdentifier:*(v6 + 352)];
  v27 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v23 count:1];
  v25 = @"compute-dynamic-libraries";
  v19 = AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)0>::getPipelineBinaries(&p_impl->loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers);
  v26 = @"compute-intersection-functions";
  PipelineBinaries = v19;
  v29 = v4;
  v20 = MEMORY[0x29EDB8DC0];
  v21 = 3;
  return [v20 dictionaryWithObjects:&v27 forKeys:&v24 count:v21];
}

- (unint64_t)allocatedSize
{
  if (self->_impl.supports_indirect_command_buffers)
  {
    v2 = 112;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + *(self->_impl.compute_variant + 924));
}

- (unint64_t)uniqueIdentifier
{
  result = &self->_impl;
  if (*(result + 24) == 1)
  {
    return *(result + 32);
  }

  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  v5 = [(_MTLComputePipelineState *)self device];
  LODWORD(v7) = 0;
  return -[AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]([AGXG18PFamilyVisibleFunctionTable alloc], "initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:", v5, [a3 functionCount], 0, *(*(v5 + 106) + 16989), objc_msgSend(a3, "resourceIndex"), self, v7);
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  v5 = [(_MTLComputePipelineState *)self device];
  if ([(MTLDevice *)v5 requiresRaytracingEmulation])
  {
    v6 = objc_alloc_init(MEMORY[0x29EDBB688]);
    [v6 setFunctionCount:{objc_msgSend(a3, "functionCount")}];
    [v6 setResourceIndex:{objc_msgSend(a3, "resourceIndex")}];
    [v6 setForceResourceIndex:{objc_msgSend(a3, "forceResourceIndex")}];
    v7 = [(AGXG18PFamilyComputePipeline *)self newVisibleFunctionTableWithDescriptor:v6];

    v8 = [objc_alloc(MEMORY[0x29EDC55A8]) initWithVisibleFunctionTable:v7];
    return v8;
  }

  else
  {
    if ([a3 forceResourceIndex])
    {
      v10 = [a3 resourceIndex];
    }

    else
    {
      v10 = 0;
    }

    v11 = [AGXG18PFamilyUserIntersectionFunctionTable alloc];
    v12 = [a3 functionCount];

    return [(AGXG18PFamilyUserIntersectionFunctionTable *)v11 initWithDevice:v5 numTableFnSlots:v12 pipelineSets:&self->_impl.ift_set.__cntrl_ pipeline:self stage:0 resourceIndex:v10];
  }
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5
{
  v60 = *MEMORY[0x29EDCA608];
  if (self->_cp)
  {
    cp = self->_cp;
  }

  else
  {
    cp = self;
  }

  v10 = [[AGXG18PFamilyComputePipeline alloc] initWithParent:cp];
  v49 = [(_MTLComputePipelineState *)self device];
  v11 = @"Failed to allocate a new pipeline";
  v51 = @"Failed to allocate a new pipeline";
  if (v10)
  {
    v47 = a5;
    v48 = v10;
    p_impl = &v10->_impl;
    v10->_impl.compute_variant = self->_impl.compute_variant;
    LODWORD(v10->_impl.dylib_resources.dylibs.__cap_) = self->_impl.dylib_resources.dylibs.__cap_;
    v10->_impl.supports_indirect_command_buffers = self->_impl.supports_indirect_command_buffers;
    v10->_impl.descendent_pipeline = 1;
    v13 = *&self->_impl.ei_state.pipeline_state_gpu_address;
    v14 = *&self->_impl.ei_state.allocation.buffer_.address.cpu;
    v15 = *&self->_impl.ei_state.allocation.resource_;
    v10->_impl.resource_indirection_heap_allocation.buffer_.address.gpu = self->_impl.resource_indirection_heap_allocation.buffer_.address.gpu;
    *&v10->_impl.ei_state.allocation.buffer_.address.cpu = v14;
    *&v10->_impl.ei_state.allocation.resource_ = v15;
    *&v10->_impl.ei_state.pipeline_state_gpu_address = v13;
    v16 = ((self->_impl.dylib_resources.dylibs.__begin_ - self->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers.mask) >> 4) + [a3 count];
    v50 = &v10->_impl;
    if (v16 > (v10->_impl.dylib_resources.dylibs.__end_ - v10->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers.mask) >> 4)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>,std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>>(&v10->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers, v10->_impl.dylib_resources.dylibs.__begin_, self->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers.mask, self->_impl.dylib_resources.dylibs.__begin_, (self->_impl.dylib_resources.dylibs.__begin_ - self->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers.mask) >> 4);
    mask = v10->_impl.loader_runtime_state.global_binding_table_layout.global_binding_tgbuffers.mask;
    begin = p_impl->dylib_resources.dylibs.__begin_;
    while (mask != begin)
    {
      v19 = *mask;
      mask += 2;
      AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateCodeHeap(v19);
    }

    if (v48 != self)
    {
      *(v50 + 496) = self->_impl.function_handle_map.__table_.__size_;
      std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(v50 + 464, self->_impl.function_handle_map.__table_.__bucket_list_.__deleter_.__size_);
    }

    prime = vcvtps_u32_f32(([a3 count] + *(v50 + 488)) / *(v50 + 496));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v21 = *(v50 + 472);
    if (prime > *&v21)
    {
      goto LABEL_17;
    }

    if (prime < *&v21)
    {
      v22 = vcvtps_u32_f32(*(v50 + 488) / *(v50 + 496));
      if (*&v21 < 3uLL || (v23 = vcnt_s8(v21), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
      {
        v25 = prime;
        v22 = std::__next_prime(v22);
        prime = v25;
      }

      else
      {
        v24 = 1 << -__clz(v22 - 1);
        if (v22 >= 2)
        {
          v22 = v24;
        }
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime < *&v21)
      {
LABEL_17:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v50 + 464, prime);
      }
    }

    v26 = *&self->_impl.name_to_function_map.__table_.__max_load_factor_;
    ptr = self->_impl.vft_set.__ptr_;
    if (ptr)
    {
      atomic_fetch_add_explicit(ptr + 1, 1uLL, memory_order_relaxed);
    }

    *(v50 + 544) = v26;
    v28 = *(v50 + 552);
    *(v50 + 552) = ptr;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    clone_visible_function_table_heap = self->_impl.clone_visible_function_table_heap;
    v30 = self->_impl.ift_set.__ptr_;
    if (v30)
    {
      atomic_fetch_add_explicit(v30 + 1, 1uLL, memory_order_relaxed);
    }

    *(v50 + 568) = clone_visible_function_table_heap;
    v31 = *(v50 + 576);
    *(v50 + 576) = v30;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }

    if (AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(v49, a3, a4, (v50 + 464), v50 + 584, &self->_impl.ift_set.__cntrl_, self->_impl.loader_runtime_state.total_ipr_buffer_bytes, &v51))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v32 = [a3 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v32)
      {
        v33 = *v53;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v53 != v33)
            {
              objc_enumerationMutation(a3);
            }

            v35 = *(*(&v52 + 1) + 8 * i);
            if (([v49 requiresRaytracingEmulation] & 1) != 0 || objc_msgSend(v35, "functionType") != 6)
            {
              if (![v35 vendorPrivate] || (objc_msgSend(v35, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v36 = objc_msgSend(v35, "vendorPrivate"), (v37 = v36) == 0))
              {
                v40 = v56;
                if (v56)
                {
                  v41 = v57;
                  if (v57 != v56)
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
                    v40 = v56;
                  }

                  operator delete(v40);
                }

                goto LABEL_67;
              }

              AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(v36[7], [v36 relocations]);
              std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v56, (v37 + 7));
            }
          }

          v32 = [a3 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v32);
        v39 = v56;
        v38 = v57;
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      if ((((v38 - v39) >> 1) + ((self->_impl.intersection_pipeline_sets.__begin_ - self->_impl.ift_set.__cntrl_) >> 1) + 1) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_67:
    if (([v49 requiresRaytracingEmulation] & 1) == 0)
    {
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(v50);
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTable(v50);
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(v50, v49[106]);
    }

    if ((*(*(v50 + 16) + 2407) & 5) != 0)
    {
      *(v50 + 25) = 1;
    }

    *(v50 + 112) = v49;
    a5 = v47;
    v11 = v51;
    v10 = v48;
  }

  if (a5 && v11)
  {
    v43 = a5;
    v44 = v10;
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v11 forKey:*MEMORY[0x29EDB9ED8]];
    *v43 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:1 userInfo:v45];
    v10 = v44;
  }

  return 0;
}

- (id)functionHandleWithFunction:(id)a3
{
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&self->_impl.max_wg_size, a3);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (unint64_t)imageBlockMemoryLengthForDimensions:(id *)a3
{
  var1 = a3->var1;
  v4 = (*(self->_impl.compute_variant + 1021) + 3) & 0xFFFFFFFC;
  if (v4 * LODWORD(a3->var0) * var1)
  {
    return v4 * (1 << -__clz(LODWORD(a3->var0) - 1) << -__clz(var1 - 1));
  }

  else
  {
    return 0;
  }
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3
{
  var1 = a3->var1;
  v4 = (*(self->_impl.compute_variant + 1021) + 3) & 0xFFFFFFFC;
  if (v4 * LODWORD(a3->var0) * var1)
  {
    return v4 * (1 << -__clz(LODWORD(a3->var0) - 1) << -__clz(var1 - 1));
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  self->_impl.ift_spill_info.__cntrl_ = 0;

  reflection = self->_reflection;
  if (reflection)
  {
    dispatch_release(&reflection->super);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyComputePipeline;
  [(_MTLComputePipelineState *)&v4 dealloc];
}

- (AGXG18PFamilyComputePipeline)initWithParent:(id)a3
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyComputePipeline;
  result = [(_MTLComputePipelineState *)&v7 initWithParent:?];
  if (result)
  {
    v5 = result;
    v6 = a3;
    result = v5;
    v5->_cp = v6;
  }

  return result;
}

- (AGXG18PFamilyComputePipeline)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4
{
  v9.receiver = self;
  v9.super_class = AGXG18PFamilyComputePipeline;
  v5 = [(_MTLComputePipelineState *)&v9 initWithDevice:a3 pipelineStateDescriptor:?];
  if (v5)
  {
    v6 = [objc_msgSend(a4 "computeFunction")];
    v5->_impl.ift_spill_info.__cntrl_ = v6;
    v7 = v6;
  }

  return v5;
}

@end