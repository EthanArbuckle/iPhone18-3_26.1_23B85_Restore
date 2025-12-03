@interface AGXG18PFamilyDevice
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- (AGXG18PFamilyDevice)initWithAcceleratorPort:(unsigned int)port simultaneousInstances:(unsigned int)instances;
- (BOOL)buildBVHForRIA;
- (BOOL)disableConsistentPerfState;
- (BOOL)enableConsistentPerfState:(int)state;
- (BOOL)isCompatibleWithAccelerationStructure:(id)structure;
- (BOOL)isVendorSliceCompatibleWithDeploymentTarget:(unsigned int)target platform:(unsigned int)platform sdkVersion:(unsigned int)version compilerPluginVersion:(unsigned int)pluginVersion;
- (BOOL)mapShaderSampleBufferWithBuffer:(id *)buffer capacity:(unint64_t)capacity size:(unint64_t)size;
- (BOOL)setupCompiler:(int)compiler;
- (BOOL)supportsMemoryOrderAtomics;
- (BOOL)supportsRaytracing;
- (MTLArchitecture)architecture;
- (MTLTargetDeviceArchitecture)targetDeviceArchitecture;
- (NSArray)counterSets;
- (id).cxx_construct;
- (id)copyIOSurfaceSharedTextureProperties:(id)properties;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index;
- (id)getConsistentPerfStateInfoAndReset:(BOOL)reset;
- (id)getConsistentPerfStateMappingTable;
- (id)getMostCompatibleArchitecture:(id)architecture;
- (id)gpuRevisionName;
- (id)mtlTensorFromGpuResourceID:(MTLResourceID)d;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor;
- (id)newArchiveWithURL:(id)l error:(id *)error;
- (id)newArgumentEncoderWithLayout:(id)layout;
- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size;
- (id)newCommandAllocator;
- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCounterSampleBufferWithLength:(unint64_t)length label:(id)label error:(id *)error;
- (id)newDefaultLibrary;
- (id)newDepthStencilStateWithDescriptor:(id)descriptor;
- (id)newDevicePoolAliasedCommandAllocator;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIndirectArgumentBufferLayoutWithStructType:(id)type;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer;
- (id)newLateEvalEvent;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newPerformanceStateAssertion:(int64_t)assertion error:(id *)error;
- (id)newProfileWithExecutionSize:(unint64_t)size;
- (id)newRasterizationRateMapWithDescriptor:(id)descriptor;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count;
- (id)newSamplerStateWithDescriptor:(id)descriptor;
- (id)newTensorWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset strides:(id)strides error:(id *)error;
- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureLayoutWithDescriptor:(id)descriptor isHeapOrBufferBacked:(BOOL)backed;
- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (int64_t)currentPerformanceState;
- (unint64_t)bufferRobustnessSupport;
- (unint64_t)latestSupportedGenericBVHVersion;
- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry;
- (unsigned)gpuCoreCount;
- (void)_decrementCommandQueueCount;
- (void)_deregisterForSignpostEnablement;
- (void)_incrementCommandQueueCount;
- (void)_purgeDevice;
- (void)_registerForSignpostEnablement;
- (void)_storeComputePipelineState:(id)state;
- (void)_storeRenderPipelineState:(id)state;
- (void)alertCommandBufferActivityComplete;
- (void)alertCommandBufferActivityStart;
- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor destinationBinaryArchive:(id)archive error:(id *)error;
- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor error:(id *)error;
- (void)dealloc;
- (void)deserializeCompileTimeStats:(id)stats addToDictionary:(id)dictionary;
- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)removePerformanceStateAssertion:(id)assertion;
- (void)reserveResourceIndicesForResourceType:(unint64_t)type indices:(unint64_t *)indices indexCount:(unint64_t)count;
- (void)sampleTimestamps:(unint64_t *)timestamps gpuTimestamp:(unint64_t *)timestamp;
- (void)setupDeferred;
- (void)shrinkHeaps;
- (void)unmapShaderSampleBuffer;
@end

@implementation AGXG18PFamilyDevice

- (id).cxx_construct
{
  self->_telemetry.clientKeys = 0;
  *&self->_telemetry.deviceName = 0u;
  *&self->_telemetry.backtracePayload = 0u;
  *(&self->_telemetry.dimensionPayload + 1) = 0u;
  bzero(&self->_telemetry.genericCounts, 0x410uLL);
  self->performance_state_assertion.lock.lock._os_unfair_lock_opaque = 0;
  return self;
}

- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry
{
  if (entry == 1)
  {
    return 8;
  }

  fwrite("AGX: MTLCounterHeap: Only timestamp counter heaps are currently supported.\n", 0x4BuLL, 1uLL, *MEMORY[0x29EDCA610]);
  return 0;
}

- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error
{
  v10[1] = *MEMORY[0x29EDCA608];
  if ([descriptor type] == 1)
  {
    v7 = [AGXTimestampCounterHeap alloc];

    return [(AGXTimestampCounterHeap *)v7 initWithDevice:self descriptor:descriptor error:error];
  }

  else
  {
    v9 = *MEMORY[0x29EDB9ED8];
    v10[0] = @"Type must be MTLCounterHeapTypeTimestamp";
    *error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"MTLCounterHeapDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
    fwrite("AGX: MTLCounterHeap: Only timestamp counter heaps are currently supported.\n", 0x4BuLL, 1uLL, *MEMORY[0x29EDCA610]);
    return 0;
  }
}

- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index
{
  if (([function options] & 1) == 0 || objc_msgSend(function, "functionType") != 6)
  {
    return 0;
  }

  return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBinaryLinkedIntersectionFnHandle(function, self);
}

- (id)functionHandleWithFunction:(id)function
{
  if (([function options] & 1) == 0 || objc_msgSend(function, "functionType") != 6)
  {
    return 0;
  }

  return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBinaryLinkedIntersectionFnHandle(function, self);
}

- (id)mtlTensorFromGpuResourceID:(MTLResourceID)d
{
  impl = d._impl;
  v4 = self->_impl;
  os_unfair_lock_lock(v4 + 2946);
  os_unfair_lock_assert_owner(v4 + 2946);
  v5 = *(*&v4[6 * v4[2928]._os_unfair_lock_opaque + 2758]._os_unfair_lock_opaque + 8 * (impl & 0x1FFFFFFF));
  os_unfair_lock_unlock(v4 + 2946);
  return v5;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor
{
  v4 = *[objc_msgSend(descriptor "dimensions")];
  if (v4)
  {
    v5 = 8 * v4 - 8;
    v6 = *([objc_msgSend(descriptor "dimensions")] + v5 + 8);
    v7 = *([objc_msgSend(descriptor "strides")] + v5 + 8) * v6;
    dataType = [descriptor dataType];
    if (dataType <= 36)
    {
      if (dataType > 28)
      {
        if (dataType == 29)
        {
          v9 = 7u;
          goto LABEL_40;
        }

        if (dataType == 33)
        {
          v9 = 8u;
          goto LABEL_40;
        }
      }

      else
      {
        if (dataType == 3)
        {
          v9 = 0;
          goto LABEL_40;
        }

        if (dataType == 16)
        {
          v9 = 1u;
          goto LABEL_40;
        }
      }
    }

    else if (dataType <= 44)
    {
      if (dataType == 37)
      {
        v9 = 5u;
        goto LABEL_40;
      }

      if (dataType == 41)
      {
        v9 = 6u;
        goto LABEL_40;
      }
    }

    else
    {
      switch(dataType)
      {
        case '-':
          v9 = 3u;
          goto LABEL_40;
        case '1':
          v9 = 4u;
          goto LABEL_40;
        case 'y':
          v9 = 2u;
LABEL_40:
          v11 = v7 * AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v9];
          goto LABEL_41;
      }
    }

    v9 = 0xFFu;
    goto LABEL_40;
  }

  dataType2 = [descriptor dataType];
  if (dataType2 <= 36)
  {
    if (dataType2 > 28)
    {
      if (dataType2 == 29)
      {
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[7];
        goto LABEL_41;
      }

      if (dataType2 == 33)
      {
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[8];
        goto LABEL_41;
      }
    }

    else
    {
      if (dataType2 == 3)
      {
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[0];
        goto LABEL_41;
      }

      if (dataType2 == 16)
      {
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[1];
        goto LABEL_41;
      }
    }
  }

  else if (dataType2 <= 44)
  {
    if (dataType2 == 37)
    {
      v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[5];
      goto LABEL_41;
    }

    if (dataType2 == 41)
    {
      v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[6];
      goto LABEL_41;
    }
  }

  else
  {
    switch(dataType2)
    {
      case '-':
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[3];
        goto LABEL_41;
      case '1':
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[4];
        goto LABEL_41;
      case 'y':
        v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[2];
        goto LABEL_41;
    }
  }

  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[255];
LABEL_41:
  dataType3 = [descriptor dataType];
  if (dataType3 <= 36)
  {
    if (dataType3 > 28)
    {
      if (dataType3 == 29)
      {
        v13 = 7u;
        goto LABEL_63;
      }

      if (dataType3 == 33)
      {
        v13 = 8u;
        goto LABEL_63;
      }
    }

    else
    {
      if (dataType3 == 3)
      {
        v13 = 0;
        goto LABEL_63;
      }

      if (dataType3 == 16)
      {
        v13 = 1u;
        goto LABEL_63;
      }
    }

LABEL_62:
    v13 = 0xFFu;
    goto LABEL_63;
  }

  if (dataType3 <= 44)
  {
    if (dataType3 == 37)
    {
      v13 = 5u;
      goto LABEL_63;
    }

    if (dataType3 == 41)
    {
      v13 = 6u;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (dataType3 == 45)
  {
    v13 = 3u;
    goto LABEL_63;
  }

  if (dataType3 == 49)
  {
    v13 = 4u;
    goto LABEL_63;
  }

  if (dataType3 != 121)
  {
    goto LABEL_62;
  }

  v13 = 2u;
LABEL_63:
  v14 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v13];
  v15 = v11;
  result.var1 = v14;
  result.var0 = v15;
  return result;
}

- (id)newTensorWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset strides:(id)strides error:(id *)error
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  if (![descriptor validateWithBuffer:buffer offset:offset error:error])
  {
    return 0;
  }

  dataType = [descriptor dataType];
  if (dataType <= 36)
  {
    if (dataType > 28)
    {
      if (dataType == 29)
      {
        v14 = 7u;
        goto LABEL_25;
      }

      if (dataType == 33)
      {
        v14 = 8u;
        goto LABEL_25;
      }
    }

    else
    {
      if (dataType == 3)
      {
        v14 = 0;
        goto LABEL_25;
      }

      if (dataType == 16)
      {
        v14 = 1u;
        goto LABEL_25;
      }
    }
  }

  else if (dataType <= 44)
  {
    if (dataType == 37)
    {
      v14 = 5u;
      goto LABEL_25;
    }

    if (dataType == 41)
    {
      v14 = 6u;
      goto LABEL_25;
    }
  }

  else
  {
    switch(dataType)
    {
      case '-':
        v14 = 3u;
        goto LABEL_25;
      case '1':
        v14 = 4u;
        goto LABEL_25;
      case 'y':
        v14 = 2u;
        goto LABEL_25;
    }
  }

  v14 = 0xFFu;
LABEL_25:
  v16 = offset / AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v14];
  v17 = [AGXG18PFamilyTensor alloc];
  v18 = [objc_msgSend(descriptor "dimensions")];
  v19 = [objc_msgSend(descriptor "dimensions")];
  tensorExtentsInternal = [strides tensorExtentsInternal];
  dataType2 = [descriptor dataType];
  if (dataType2 <= 36)
  {
    if (dataType2 > 28)
    {
      if (dataType2 == 29)
      {
        v22 = 7;
        goto LABEL_47;
      }

      if (dataType2 == 33)
      {
        v22 = 8;
        goto LABEL_47;
      }
    }

    else
    {
      if (dataType2 == 3)
      {
        v22 = 0;
        goto LABEL_47;
      }

      if (dataType2 == 16)
      {
        v22 = 1;
        goto LABEL_47;
      }
    }

LABEL_46:
    v22 = -1;
    goto LABEL_47;
  }

  if (dataType2 <= 44)
  {
    if (dataType2 == 37)
    {
      v22 = 5;
      goto LABEL_47;
    }

    if (dataType2 == 41)
    {
      v22 = 6;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (dataType2 == 45)
  {
    v22 = 3;
    goto LABEL_47;
  }

  if (dataType2 == 49)
  {
    v22 = 4;
    goto LABEL_47;
  }

  if (dataType2 != 121)
  {
    goto LABEL_46;
  }

  v22 = 2;
LABEL_47:
  LOBYTE(v23) = v22;
  return -[AGXG18PFamilyTensor initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:](v17, "initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:", buffer, self, v18, v19 + 8, tensorExtentsInternal + 8, v16, v23, [descriptor usage], objc_msgSend(descriptor, "resourceIndex"));
}

- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error
{
  v33[16] = *MEMORY[0x29EDCA608];
  [(AGXG18PFamilyDevice *)self setupDeferred];
  if (![descriptor validateWithDevice:self error:error])
  {
    return 0;
  }

  v7 = *[objc_msgSend(descriptor "dimensions")];
  dataType = [descriptor dataType];
  if (dataType <= 36)
  {
    if (dataType > 28)
    {
      if (dataType == 29)
      {
        v9 = 7u;
        goto LABEL_25;
      }

      if (dataType == 33)
      {
        v9 = 8u;
        goto LABEL_25;
      }
    }

    else
    {
      if (dataType == 3)
      {
        v9 = 0;
        goto LABEL_25;
      }

      if (dataType == 16)
      {
        v9 = 1u;
        goto LABEL_25;
      }
    }
  }

  else if (dataType <= 44)
  {
    if (dataType == 37)
    {
      v9 = 5u;
      goto LABEL_25;
    }

    if (dataType == 41)
    {
      v9 = 6u;
      goto LABEL_25;
    }
  }

  else
  {
    switch(dataType)
    {
      case '-':
        v9 = 3u;
        goto LABEL_25;
      case '1':
        v9 = 4u;
        goto LABEL_25;
      case 'y':
        v9 = 2u;
        goto LABEL_25;
    }
  }

  v9 = 0xFFu;
LABEL_25:
  v11 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v9];
  if (!v7)
  {
    goto LABEL_32;
  }

  v32 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v9];
  v33[0] = 1;
  if (v7 != 1)
  {
    v21 = 1;
    v22 = 1;
    while (1)
    {
      usage = [descriptor usage];
      v24 = ([objc_msgSend(descriptor "dimensions")] + 8);
      if (v22 == 1 && (usage & 4) != 0)
      {
        break;
      }

      v33[v21] = v33[v21 - 1] * v24[v21 - 1];
LABEL_44:
      v21 = ++v22;
      if (v7 <= v22)
      {
        goto LABEL_27;
      }
    }

    v25 = *v24;
    dataType2 = [descriptor dataType];
    if (dataType2 <= 36)
    {
      if (dataType2 > 28)
      {
        if (dataType2 == 29)
        {
          v27 = 7u;
          goto LABEL_69;
        }

        if (dataType2 == 33)
        {
          v27 = 8u;
          goto LABEL_69;
        }
      }

      else
      {
        if (dataType2 == 3)
        {
          v27 = 0;
          goto LABEL_69;
        }

        if (dataType2 == 16)
        {
          v27 = 1u;
          goto LABEL_69;
        }
      }
    }

    else if (dataType2 <= 44)
    {
      if (dataType2 == 37)
      {
        v27 = 5u;
        goto LABEL_69;
      }

      if (dataType2 == 41)
      {
        v27 = 6u;
        goto LABEL_69;
      }
    }

    else
    {
      switch(dataType2)
      {
        case '-':
          v27 = 3u;
          goto LABEL_69;
        case '1':
          v27 = 4u;
          goto LABEL_69;
        case 'y':
          v27 = 2u;
          goto LABEL_69;
      }
    }

    v27 = 0xFFu;
LABEL_69:
    v28 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v27];
    dataType3 = [descriptor dataType];
    if (dataType3 <= 36)
    {
      if (dataType3 > 28)
      {
        if (dataType3 == 29)
        {
          v30 = 7u;
          goto LABEL_91;
        }

        if (dataType3 == 33)
        {
          v30 = 8u;
          goto LABEL_91;
        }
      }

      else
      {
        if (dataType3 == 3)
        {
          v30 = 0;
          goto LABEL_91;
        }

        if (dataType3 == 16)
        {
          v30 = 1u;
          goto LABEL_91;
        }
      }
    }

    else if (dataType3 <= 44)
    {
      if (dataType3 == 37)
      {
        v30 = 5u;
        goto LABEL_91;
      }

      if (dataType3 == 41)
      {
        v30 = 6u;
        goto LABEL_91;
      }
    }

    else
    {
      switch(dataType3)
      {
        case '-':
          v30 = 3u;
          goto LABEL_91;
        case '1':
          v30 = 4u;
          goto LABEL_91;
        case 'y':
          v30 = 2u;
LABEL_91:
          v33[v21] = ((v25 * v28 + 63) & 0xFFFFFFFFFFFFFFC0) / AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v30];
          goto LABEL_44;
      }
    }

    v30 = 0xFFu;
    goto LABEL_91;
  }

LABEL_27:
  v12 = v33[v7 - 1];
  v13 = [objc_msgSend(descriptor "dimensions")];
  v14 = v12 * v32 * *(v13 + 8 * v7);
  usage2 = [descriptor usage];
  v16 = (v14 + 63) & 0xFFFFFFFFFFFFFFC0;
  if (v7 != 1)
  {
    v16 = v14;
  }

  if ((usage2 & 4) != 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v14;
  }

LABEL_32:
  v17 = [AGXG18PFamilyTensor alloc];
  v18 = [objc_msgSend(descriptor "dimensions")];
  dataType4 = [descriptor dataType];
  if (dataType4 <= 36)
  {
    if (dataType4 > 28)
    {
      if (dataType4 == 29)
      {
        v20 = 7;
        goto LABEL_104;
      }

      if (dataType4 == 33)
      {
        v20 = 8;
        goto LABEL_104;
      }
    }

    else
    {
      if (dataType4 == 3)
      {
        v20 = 0;
        goto LABEL_104;
      }

      if (dataType4 == 16)
      {
        v20 = 1;
        goto LABEL_104;
      }
    }

LABEL_103:
    v20 = -1;
    goto LABEL_104;
  }

  if (dataType4 <= 44)
  {
    if (dataType4 == 37)
    {
      v20 = 5;
      goto LABEL_104;
    }

    if (dataType4 == 41)
    {
      v20 = 6;
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  if (dataType4 == 45)
  {
    v20 = 3;
    goto LABEL_104;
  }

  if (dataType4 == 49)
  {
    v20 = 4;
    goto LABEL_104;
  }

  if (dataType4 != 121)
  {
    goto LABEL_103;
  }

  v20 = 2;
LABEL_104:
  LOBYTE(v31) = v20;
  return -[AGXG18PFamilyTensor initWithDevice:length:rank:dims:strides:offset:dataType:usage:resourceIndex:storageMode:resourceOptions:](v17, "initWithDevice:length:rank:dims:strides:offset:dataType:usage:resourceIndex:storageMode:resourceOptions:", self, v11, v7, v18 + 8, v33, 0, v31, [descriptor usage], objc_msgSend(descriptor, "resourceIndex"), 0, objc_msgSend(descriptor, "resourceOptions"));
}

- (void)reserveResourceIndicesForResourceType:(unint64_t)type indices:(unint64_t *)indices indexCount:(unint64_t)count
{
  v36 = *MEMORY[0x29EDCA608];
  if (type <= 5)
  {
    if (type <= 3)
    {
      if (type)
      {
        if (type != 1)
        {
          return;
        }

        impl = self->_impl;
        v8 = impl + 2346;
        os_unfair_lock_lock(impl + 2346);
        v11 = *&impl[2332]._os_unfair_lock_opaque;
        if (*(v11 + 784) || atomic_load_explicit((v11 + 780), memory_order_acquire) + 1 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "agxa_mempool_template.hpp";
            v32 = 1024;
            v33 = 792;
            v34 = 2080;
            v35 = "reserve";
            _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
          }

          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          goto LABEL_78;
        }

        if (!count)
        {
          goto LABEL_82;
        }

        if ((count & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v16 = self->_impl;
        v8 = (v16 + 8584);
        os_unfair_lock_lock(v16 + 2146);
        v17 = *(v16 + 2131);
        v18 = *(v16 + 1066);
        if (*(v18 + 1352) || atomic_load_explicit((v18 + 1348), memory_order_acquire) + 1 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "agxa_mempool_template.hpp";
            v32 = 1024;
            v33 = 792;
            v34 = 2080;
            v35 = "reserve";
            _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
          }

          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          goto LABEL_78;
        }

        if (!count)
        {
          if (atomic_load_explicit(v16 + 8412, memory_order_acquire))
          {
            v29 = *(v16 + 2147);
            if (v17)
            {
              AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::mapPagesForTiles((v16 + 8416), v29 >> 15, 1);
            }

            else
            {
              AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::setupDeferred(v16 + 2104, (v29 + 0x7FFF) >> 15);
            }
          }

          goto LABEL_82;
        }

        if ((count & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      goto LABEL_86;
    }

    v12 = self->_impl;
    if (type == 4)
    {
      v13 = 1476;
    }

    else
    {
      v13 = 1573;
    }

    goto LABEL_68;
  }

  if (type > 7)
  {
    switch(type)
    {
      case 8uLL:
        buildBVHForRIA = [(AGXG18PFamilyDevice *)self buildBVHForRIA];
        v21 = self->_impl;
        if (buildBVHForRIA)
        {
          v8 = v21 + 2546;
          os_unfair_lock_lock(v21 + 2546);
          v22 = *&v21[2532]._os_unfair_lock_opaque;
          if (*(v22 + 784) || atomic_load_explicit((v22 + 780), memory_order_acquire) + 1 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "agxa_mempool_template.hpp";
              v32 = 1024;
              v33 = 792;
              v34 = 2080;
              v35 = "reserve";
              _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
            }

            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
            {
              goto LABEL_82;
            }

            goto LABEL_78;
          }

          if (!count)
          {
            goto LABEL_82;
          }

          if ((count & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v8 = v21 + 2746;
          os_unfair_lock_lock(v21 + 2746);
          v28 = *&v21[2732]._os_unfair_lock_opaque;
          if (*(v28 + 784) || atomic_load_explicit((v28 + 780), memory_order_acquire) + 1 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "agxa_mempool_template.hpp";
              v32 = 1024;
              v33 = 792;
              v34 = 2080;
              v35 = "reserve";
              _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
            }

            if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
            {
              goto LABEL_82;
            }

            goto LABEL_78;
          }

          if (!count)
          {
            goto LABEL_82;
          }

          if ((count & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        break;
      case 9uLL:
        v26 = self->_impl;
        v8 = v26 + 2946;
        os_unfair_lock_lock(v26 + 2946);
        v27 = *&v26[2932]._os_unfair_lock_opaque;
        if (*(v27 + 784) || atomic_load_explicit((v27 + 780), memory_order_acquire) + 1 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "agxa_mempool_template.hpp";
            v32 = 1024;
            v33 = 792;
            v34 = 2080;
            v35 = "reserve";
            _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
          }

          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          goto LABEL_78;
        }

        if (!count)
        {
          goto LABEL_82;
        }

        if ((count & 0x8000000000000000) == 0)
        {
          operator new();
        }

        break;
      case 0xAuLL:
        v7 = self->_impl;
        v8 = v7 + 3722;
        os_unfair_lock_lock(v7 + 3722);
        v9 = *&v7[3708]._os_unfair_lock_opaque;
        if (!*(v9 + 760) && atomic_load_explicit((v9 + 756), memory_order_acquire) + 1 < 2)
        {
          if (count)
          {
            if ((count & 0x8000000000000000) == 0)
            {
              operator new();
            }

            break;
          }

          goto LABEL_82;
        }

        fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", "agxa_mempool_template.hpp", 792, "reserve");
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v31 = "agxa_mempool_template.hpp";
          v32 = 1024;
          v33 = 792;
          v34 = 2080;
          v35 = "reserve";
          _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
LABEL_78:
          *buf = 136315650;
          v31 = "agxa_mempool_template.hpp";
          v32 = 1024;
          v33 = 792;
          v34 = 2080;
          v35 = "reserve";
          _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** reserve() must be called before any allocation takes place\n", buf, 0x1Cu);
        }

LABEL_82:

        os_unfair_lock_unlock(v8);
        return;
      default:
        return;
    }

LABEL_86:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (type == 6)
  {
    requiresRaytracingEmulation = [(AGXG18PFamilyDevice *)self requiresRaytracingEmulation];
    v12 = self->_impl;
    if (!requiresRaytracingEmulation)
    {
      v13 = 1670;
      goto LABEL_68;
    }
  }

  else
  {
    requiresRaytracingEmulation2 = [(AGXG18PFamilyDevice *)self requiresRaytracingEmulation];
    v12 = self->_impl;
    if (!requiresRaytracingEmulation2)
    {
      v13 = 1864;
LABEL_68:

      AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::reserve(&v12[v13], indices, count);
      return;
    }
  }

  v25 = v12[1962];

  std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>((v12 + 1961), v25, indices, &indices[count], count);
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (self)
  {
    selfCopy = self;
    [(AGXG18PFamilyDevice *)self accelerationStructureSizesWithDescriptor:descriptor];
    self = selfCopy;
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(AGXG18PFamilyDevice *)self heapAccelerationStructureSizeAndAlignWithSize:v4];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size
{
  v4 = 1024;
  result.var1 = v4;
  result.var0 = size;
  return result;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  if ([(AGXG18PFamilyDevice *)self requiresRaytracingEmulation])
  {
    v27.receiver = self;
    v27.super_class = AGXG18PFamilyDevice;
    [(_MTLDevice *)&v27 deserializeInstanceAccelerationStructure:structure fromBytes:bytes primitiveAccelerationStructures:structures withDescriptor:descriptor];
    return;
  }

  structureCopy = structure;
  v26 = *(structure + 43);
  memcpy(v26, bytes + 24, *(bytes + 1) - 24);
  if (((*(bytes + 36) - *(bytes + 38)) & 0xFFFFFFF0) != 0)
  {
    v11 = 0;
    v12 = (v26 + v26[16] + 8);
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(bytes + 22) >> 30;
      if ([descriptor instanceDescriptorType] == 2)
      {
        break;
      }

      if (v15 > 2 != ([descriptor instanceDescriptorType] == 4))
      {
        goto LABEL_8;
      }

LABEL_9:
      v16 = *([structures objectAtIndexedSubscript:v14] + 360);
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      }

      v17 = v26 + v13;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
      {
        v18 = 3;
      }

      else
      {
        v18 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
      }

      v19 = 4 * (v18 > 4);
      if (v15 > 2)
      {
        v19 = 0;
      }

      *&v17[v19] = v16;
      if (v15 <= 2)
      {
        v20 = [objc_msgSend(structures objectAtIndexedSubscript:{v14), "buffer"}];
        v21 = *(v20 + *MEMORY[0x29EDC5638] + 8);
        v22 = [objc_msgSend(structures objectAtIndexedSubscript:{v14), "bufferOffset"}];
        v23 = 88;
        if (v18 < 5)
        {
          v23 = 84;
        }

        *&v17[v23] = v22 + v21;
      }

      *v12 = v16;
      v12 += 4;
      if (++v11 >= ((*(bytes + 36) - *(bytes + 38)) >> 4))
      {
        goto LABEL_23;
      }
    }

    if (v15 > 2)
    {
      goto LABEL_9;
    }

LABEL_8:
    fwrite("AGX: Unexpected instance descriptor type passed from app (ignored) for deserialize on CPU\n", 0x5AuLL, 1uLL, *MEMORY[0x29EDCA610]);
    goto LABEL_9;
  }

LABEL_23:
  v24 = structureCopy[43];
  *(v24 + 144) = [structureCopy accelerationStructureUniqueIdentifier];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor
{
  if ([(AGXG18PFamilyDevice *)self requiresRaytracingEmulation])
  {
    v10.receiver = self;
    v10.super_class = AGXG18PFamilyDevice;
    [(_MTLDevice *)&v10 deserializePrimitiveAccelerationStructure:structure fromBytes:bytes withDescriptor:descriptor];
  }

  else
  {
    memcpy(*(structure + 43), bytes + 24, *(bytes + 1) - 24);
    v9 = *(structure + 43);
    *(v9 + 144) = [structure accelerationStructureUniqueIdentifier];
  }
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  if ([(AGXG18PFamilyDevice *)self requiresRaytracingEmulation])
  {
    v12.receiver = self;
    v12.super_class = AGXG18PFamilyDevice;
    v9 = [(_MTLDevice *)&v12 deserializeInstanceAccelerationStructureFromBytes:bytes primitiveAccelerationStructures:structures withDescriptor:descriptor];
    v10 = [[AGXG18PFamilyRayTracingAccelerationStructureSW alloc] initWithDevice:self src:v9];
  }

  else
  {
    v10 = [[AGXG18PFamilyRayTracingAccelerationStructure alloc] initWithDevice:self length:*(bytes + 2) resourceIndex:0 storageMode:0];
    if (v10)
    {
      [(AGXG18PFamilyDevice *)self deserializeInstanceAccelerationStructure:v10 fromBytes:bytes primitiveAccelerationStructures:structures withDescriptor:descriptor];
    }
  }

  return v10;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor
{
  if ([(AGXG18PFamilyDevice *)self requiresRaytracingEmulation])
  {
    v9.receiver = self;
    v9.super_class = AGXG18PFamilyDevice;
    return [(_MTLDevice *)&v9 deserializePrimitiveAccelerationStructureFromBytes:bytes withDescriptor:descriptor];
  }

  else
  {
    result = [[AGXG18PFamilyRayTracingAccelerationStructure alloc] initWithDevice:self length:*(bytes + 2) resourceIndex:0 storageMode:0];
    if (result)
    {
      v8 = result;
      [(AGXG18PFamilyDevice *)self deserializePrimitiveAccelerationStructure:result fromBytes:bytes withDescriptor:descriptor];
      return v8;
    }
  }

  return result;
}

- (BOOL)isCompatibleWithAccelerationStructure:(id)structure
{
  if ([(AGXG18PFamilyDevice *)self requiresRaytracingEmulation])
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyDevice;
    return [(_MTLDevice *)&v8 isCompatibleWithAccelerationStructure:structure];
  }

  v6 = 2;
  if (structure.var0 != 465430)
  {
    v6 = 3;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v6] == structure.var0)
  {
    v7 = structure.var1 & 0xFFF0FFF;
    result = 1;
    if ((structure.var1 & 0xFFF0FFF) == 0x1000006 || !(structure.var1 & 0xE000 | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[v6] ^ structure.var1) & 0xFF0FFF))
    {
      return result;
    }
  }

  else
  {
    v7 = structure.var1 & 0xFFF0FFF;
    if ((structure.var1 & 0xFFF0FFF) == 0x1000006)
    {
      return 1;
    }
  }

  result = 1;
  if (v7 != 33554437 && v7 != 50331649)
  {
    return v7 == 0x4000000;
  }

  return result;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v19 = *MEMORY[0x29EDCA608];
  if ([(AGXG18PFamilyDevice *)self buildBVHForRIA])
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: !!! %s not supported for RIA BVH\n", "agxa_device_objc.mm", 3003, "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]", "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v12 = "agxa_device_objc.mm";
      v13 = 1024;
      v14 = 3003;
      v15 = 2080;
      v16 = "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]";
      v17 = 2080;
      v18 = "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: !!! %s not supported for RIA BVH\n", buf, 0x26u);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v12 = "agxa_device_objc.mm";
      v13 = 1024;
      v14 = 3003;
      v15 = 2080;
      v16 = "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]";
      v17 = 2080;
      v18 = "[AGXG18PFamilyDevice newAccelerationStructureWithBuffer:offset:resourceIndex:]";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: !!! %s not supported for RIA BVH\n", buf, 0x26u);
    }

    abort();
  }

  v9 = [AGXG18PFamilyRayTracingAccelerationStructureSW alloc];

  return [(AGXG18PFamilyRayTracingAccelerationStructureSW *)v9 initWithBuffer:buffer offset:offset device:self resourceIndex:index];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
{
  if ([descriptor forceResourceIndex])
  {
    resourceIndex = [descriptor resourceIndex];
  }

  else
  {
    resourceIndex = 0;
  }

  buildBVHForRIA = [(AGXG18PFamilyDevice *)self buildBVHForRIA];
  v9 = off_29F340780;
  if (!buildBVHForRIA)
  {
    v9 = off_29F340788;
  }

  v10 = objc_alloc(*v9);
  storageMode = [descriptor storageMode];

  return [v10 initWithDevice:self length:size resourceIndex:resourceIndex storageMode:storageMode];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  buildBVHForRIA = [(AGXG18PFamilyDevice *)self buildBVHForRIA];
  v8 = off_29F340780;
  if (!buildBVHForRIA)
  {
    v8 = off_29F340788;
  }

  v9 = objc_alloc(*v8);

  return [v9 initWithDevice:self length:size resourceIndex:index storageMode:2];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor
{
  if ([(AGXG18PFamilyDevice *)self buildBVHForRIA])
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newBVHDescriptor(v12, a4, 0);
    v24 = 0;
    v7 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(v12, &v24);
    retstr->var0 = v7;
    retstr->var2 = 0;
    LOBYTE(v14[0]) = 0;
    v14[1] = v7;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    if (v12[4] - 1 > 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(v13, v12, v14, v24);
    }

    else
    {
      result = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocatePLOCScratch(v13, v12, v14);
    }

    v9 = v19;
    if (v19 <= v20)
    {
      v9 = v20;
    }

    if (v9 <= v21)
    {
      v9 = v21;
    }

    if (v9 <= v22)
    {
      v9 = v22;
    }

    v10 = v23 + ((v9 + 63) & 0xFFFFFFFFFFFFFFC0) + 64;
    if (v10 <= 0x10)
    {
      v10 = 16;
    }

    retstr->var1 = v10;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = AGXG18PFamilyDevice;
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)&v11 accelerationStructureSizesWithDescriptor:a4];
  }

  return result;
}

- (BOOL)buildBVHForRIA
{
  {
    return 1;
  }

  {
    [AGXG18PFamilyDevice buildBVHForRIA]::riaBvhGenOverride = 0;
  }

  return 1;
}

- (unint64_t)latestSupportedGenericBVHVersion
{
  if ([(AGXG18PFamilyDevice *)self buildBVHForRIA])
  {
    return 261;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v4 latestSupportedGenericBVHVersion];
}

- (BOOL)supportsRaytracing
{
  argumentBuffersSupport = [(_MTLDevice *)self argumentBuffersSupport];
  if (argumentBuffersSupport)
  {

    LOBYTE(argumentBuffersSupport) = [(_MTLDevice *)self supportsFunctionPointers];
  }

  return argumentBuffersSupport;
}

- (id)newCounterSampleBufferWithLength:(unint64_t)length label:(id)label error:(id *)error
{
  v9 = [AGXMTLCounterSampleBuffer alloc];

  return [(AGXMTLCounterSampleBuffer *)v9 initWithDevice:self length:length label:label options:0 error:error];
}

- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = [AGXMTLCounterSampleBuffer alloc];

  return [(AGXMTLCounterSampleBuffer *)v7 initWithDevice:self descriptor:descriptor error:error];
}

- (NSArray)counterSets
{
  v2 = objc_alloc(MEMORY[0x29EDBB588]);
  v3 = [v2 initWithName:*MEMORY[0x29EDBB370] description:*MEMORY[0x29EDBB3D0]];
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:{v3, 0}];
  v5 = objc_alloc(MEMORY[0x29EDBB590]);
  v6 = [v5 initWithName:*MEMORY[0x29EDBB368] description:*MEMORY[0x29EDBB3E0] counters:v4];
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:{v6, 0}];

  return v7;
}

- (void)sampleTimestamps:(unint64_t *)timestamps gpuTimestamp:(unint64_t *)timestamp
{
  v6 = mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    v8 = v6;
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
    v6 = v8;
  }

  v7 = v6 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0;
  *timestamps = v7;
  *timestamp = v7;
}

- (id)copyIOSurfaceSharedTextureProperties:(id)properties
{
  v5 = objc_opt_new();
  v6 = [[AGXTextureLayout alloc] initWithDevice:self descriptor:properties isHeapOrBufferBacked:0];
  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{-[AGXTextureLayout size](v6, "size")}];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x29EDBB128]];

  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(properties, "compressionMode")), @"kAGXCompressionMode"}];
  return v5;
}

- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count
{
  if (os_parse_boot_arg_int() && [AGXG18PFamilyDevice newResourceGroupFromResources:count:]::disableDropHints == 1)
  {
    return 0;
  }

  v7 = [AGXG18PFamilyResourceGroup alloc];
  impl = self->_impl;

  return [(AGXG18PFamilyResourceGroup *)v7 initWithDevice:impl resources:resources count:count];
}

- (id)newRasterizationRateMapWithDescriptor:(id)descriptor
{
  v5 = [AGXG18PFamilyRasterizationRateMap alloc];

  return [(AGXG18PFamilyRasterizationRateMap *)v5 initWithDevice:self descriptor:descriptor];
}

- (id)newArgumentEncoderWithLayout:(id)layout
{
  v5 = [AGXG18PFamilyIndirectArgumentEncoder alloc];

  return [(AGXG18PFamilyIndirectArgumentEncoder *)v5 initWithLayout:layout device:self];
}

- (id)newIndirectArgumentBufferLayoutWithStructType:(id)type
{
  v4 = [AGXG18PFamilyIndirectArgumentBufferLayout alloc];

  return [(AGXG18PFamilyIndirectArgumentBufferLayout *)v4 initWithStructType:type];
}

- (BOOL)setupCompiler:(int)compiler
{
  v29 = *MEMORY[0x29EDCA608];
  impl = self->_impl;
  v5 = objc_autoreleasePoolPush();
  impl[4265] = compiler;
  if (compiler - 14) < 0xEu && ((0x38FDu >> (compiler - 14)))
  {
    v6 = (qword_29D2F2F20[(compiler - 14)] | qword_29D2F2EB0[(compiler - 14)]) >> 32;
  }

  else
  {
    v6 = 0;
    if (compiler > 196629)
    {
      if (compiler > 196639)
      {
        switch(compiler)
        {
          case 196640:
            v6 = 403;
LABEL_40:
            v7 = "g16g";
            goto LABEL_76;
          case 262175:
            v6 = 435;
            goto LABEL_48;
          case 327704:
            v6 = 275;
            goto LABEL_29;
        }
      }

      else
      {
        switch(compiler)
        {
          case 196630:
            v6 = 610;
LABEL_36:
            v7 = "g15p";
            goto LABEL_76;
          case 196632:
            v6 = 83;
LABEL_44:
            v7 = "g15g_b0";
            goto LABEL_76;
          case 196639:
            v6 = 243;
LABEL_19:
            v7 = "g16p_b0";
            goto LABEL_76;
        }
      }
    }

    else if (compiler > 65569)
    {
      switch(compiler)
      {
        case 65570:
          v6 = 323;
LABEL_38:
          v7 = "g17p";
          goto LABEL_76;
        case 65571:
          v6 = 339;
LABEL_46:
          v7 = "g17g";
          goto LABEL_76;
        case 65574:
          v6 = 371;
LABEL_24:
          v7 = "g18p";
          goto LABEL_76;
      }
    }

    else
    {
      switch(compiler)
      {
        case 65560:
          v6 = 67;
LABEL_34:
          v7 = "g15g_a0";
          goto LABEL_76;
        case 65567:
          v6 = 227;
LABEL_42:
          v7 = "g16p_a0";
          goto LABEL_76;
        case 65568:
          v6 = 259;
LABEL_13:
          v7 = "g16g_a0";
          goto LABEL_76;
      }
    }
  }

  if (compiler <= 196616)
  {
    switch(compiler)
    {
      case 65542:
        v7 = "g9p";
        break;
      case 65543:
        v7 = "g9g";
        break;
      case 65545:
        v7 = "g11p_a0";
        break;
      case 65546:
        v7 = "g11m_a0";
        break;
      case 65547:
      case 65559:
        goto LABEL_53;
      case 65550:
        v7 = "g13p_a0";
        break;
      case 65552:
        v7 = "g13g_a0";
        break;
      case 65553:
        v7 = "g14p_a0";
        break;
      case 65554:
        v7 = "g14g_a0";
        break;
      case 65555:
        v7 = "g14s_a0";
        break;
      case 65556:
        v7 = "g14c_a0";
        break;
      case 65557:
        v7 = "g14d_a0";
        break;
      case 65560:
        goto LABEL_34;
      case 65561:
      case 65562:
        v7 = "g13s_a0";
        break;
      case 65563:
        v7 = "g13d_a0";
        break;
      case 65567:
        goto LABEL_42;
      case 65568:
        goto LABEL_13;
      case 65570:
        goto LABEL_38;
      case 65571:
        goto LABEL_46;
      case 65574:
        goto LABEL_24;
      default:
        goto LABEL_52;
    }

    goto LABEL_76;
  }

  if (compiler > 262174)
  {
    if (compiler != 262175)
    {
      if (compiler == 327684)
      {
        v7 = "g5p";
        goto LABEL_76;
      }

      if (compiler != 327704)
      {
LABEL_52:
        v7 = 0;
        goto LABEL_76;
      }

LABEL_29:
      v7 = "g15g";
      goto LABEL_76;
    }

LABEL_48:
    v7 = "g16p";
    goto LABEL_76;
  }

  switch(compiler)
  {
    case 196617:
LABEL_53:
      v7 = "g11p";
      break;
    case 196618:
      v7 = "g11m";
      break;
    case 196620:
      v7 = "g12p";
      break;
    case 196622:
      v7 = "g13p";
      break;
    case 196624:
      v7 = "g13g";
      break;
    case 196625:
      v7 = "g14p";
      break;
    case 196626:
      v7 = "g14g";
      break;
    case 196627:
    case 196628:
      v7 = "g14s";
      break;
    case 196629:
      v7 = "g14d";
      break;
    case 196630:
      goto LABEL_36;
    case 196632:
      goto LABEL_44;
    case 196633:
    case 196634:
      v7 = "g13s";
      break;
    case 196635:
      v7 = "g13d";
      break;
    case 196639:
      goto LABEL_19;
    case 196640:
      goto LABEL_40;
    default:
      goto LABEL_52;
  }

LABEL_76:
  *(impl + 2129) = v6;
  impl[4260] = 131073;
  *(impl + 2131) = v7;
  impl[4264] = 16777218;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBundle(void)::pred != -1)
  {
    dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBundle(void)::pred, &__block_literal_global_126);
  }

  v8 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBundle(void)::bundle;
  v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"ds"];
  v10 = [v8 pathForResource:v9 ofType:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", *(impl + 2131))}];
  if (v10)
  {
    if ([objc_alloc(MEMORY[0x29EDBB720]) initWithFilePath:v10 readOnly:1 deviceInfo:impl + 4258])
    {
      operator new[]();
    }

    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** unable to load precompiled driver shaders\n", "agxa_device_template.hpp", 1477, "setupCompiler");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      buffer = 136315650;
      buffer_4 = "agxa_device_template.hpp";
      v21 = 1024;
      v22 = 1477;
      v23 = 2080;
      v24 = "setupCompiler";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** unable to load precompiled driver shaders\n", &buffer, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      buffer = 136315650;
      buffer_4 = "agxa_device_template.hpp";
      v21 = 1024;
      v22 = 1477;
      v23 = 2080;
      v24 = "setupCompiler";
      v13 = MEMORY[0x29EDCA988];
      v14 = "AGX: AGX: %s:%d:%s: *** unable to load precompiled driver shaders\n";
      v15 = 28;
      goto LABEL_89;
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** FATAL: driver shader binary file not found in %s for extension %s!!!\n\n", "agxa_device_template.hpp", 1467, "setupCompiler", [objc_msgSend(v8 "bundlePath")], *(impl + 2131));
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_msgSend(v8 "bundlePath")];
      v18 = *(impl + 2131);
      buffer = 136316162;
      buffer_4 = "agxa_device_template.hpp";
      v21 = 1024;
      v22 = 1467;
      v23 = 2080;
      v24 = "setupCompiler";
      v25 = 2080;
      v26 = v17;
      v27 = 2080;
      v28 = v18;
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** FATAL: driver shader binary file not found in %s for extension %s!!!\n\n", &buffer, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      v11 = [objc_msgSend(v8 "bundlePath")];
      v12 = *(impl + 2131);
      buffer = 136316162;
      buffer_4 = "agxa_device_template.hpp";
      v21 = 1024;
      v22 = 1467;
      v23 = 2080;
      v24 = "setupCompiler";
      v25 = 2080;
      v26 = v11;
      v27 = 2080;
      v28 = v12;
      v13 = MEMORY[0x29EDCA988];
      v14 = "AGX: AGX: %s:%d:%s: *** FATAL: driver shader binary file not found in %s for extension %s!!!\n\n";
      v15 = 48;
LABEL_89:
      _os_log_impl(&dword_29CA13000, v13, OS_LOG_TYPE_INFO, v14, &buffer, v15);
    }
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup
{
  *&retstr->var0 = vdupq_n_s64(0x400uLL);
  retstr->var2 = 1024;
  return self;
}

- (void)deserializeCompileTimeStats:(id)stats addToDictionary:(id)dictionary
{
  v12 = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(stats, &buffer_ptr, &v12);
  if (v5)
  {
    v6 = v5;
    v7 = buffer_ptr;
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*buffer_ptr];
    [dictionary setObject:v8 forKey:*MEMORY[0x29EDBB390]];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v7[1]];
    [dictionary setObject:v9 forKey:*MEMORY[0x29EDBB388]];
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v7[2]];
    [dictionary setObject:v10 forKey:*MEMORY[0x29EDBB3C8]];
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v7[3]];
    [dictionary setObject:v11 forKey:*MEMORY[0x29EDBB378]];
    dispatch_release(v6);
  }
}

- (id)newLibraryWithData:(id)data error:(id *)error
{
  atomic_fetch_or(&self->_telemetry, 0x10000000000uLL);
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v5 newLibraryWithData:data error:error];
}

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  atomic_fetch_or(&self->_telemetry, 0x20000000000uLL);
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyDevice;
  [(_MTLDevice *)&v5 newLibraryWithSource:source options:options completionHandler:handler];
}

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
{
  atomic_fetch_or(&self->_telemetry, 0x20000000000uLL);
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v6 newLibraryWithSource:source options:options error:error];
}

- (id)newLibraryWithFile:(id)file error:(id *)error
{
  atomic_fetch_or(&self->_telemetry, 0x20000000000uLL);
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v5 newLibraryWithFile:file error:error];
}

- (id)newDefaultLibrary
{
  atomic_fetch_or(&self->_telemetry, 0x10000000000uLL);
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v3 newDefaultLibrary];
}

- (id)newTextureLayoutWithDescriptor:(id)descriptor isHeapOrBufferBacked:(BOOL)backed
{
  backedCopy = backed;
  v7 = [AGXTextureLayout alloc];

  return [(AGXTextureLayout *)v7 initWithDevice:self descriptor:descriptor isHeapOrBufferBacked:backedCopy];
}

- (id)newArchiveWithURL:(id)l error:(id *)error
{
  v6 = [[AGXG18PFamilyArchive_mtlnext alloc] initWithDevice:self error:error];
  if (![(AGXG18PFamilyArchive_mtlnext *)v6 loadFromURL:l error:error])
  {

    return 0;
  }

  return v6;
}

- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [AGXG18PFamilyCompiler alloc];

  return [(AGXG18PFamilyCompiler *)v6 initWithDevice:self descriptor:descriptor];
}

- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = [AGXG18PFamilyBinaryArchive alloc];

  return [(_MTLBinaryArchive *)v7 initWithDevice:self descriptor:descriptor error:error];
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  if (![(_MTLDevice *)self validateDynamicLibraryURL:l error:error])
  {
    return 0;
  }

  v9 = [AGXG18PFamilyDynamicLibrary alloc];

  return [(AGXG18PFamilyDynamicLibrary *)v9 initWithURL:l device:self options:options error:error];
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  if (![_MTLDevice validateDynamicLibraryURL:"validateDynamicLibraryURL:error:" error:?])
  {
    return 0;
  }

  v7 = [AGXG18PFamilyDynamicLibrary alloc];

  return [(AGXG18PFamilyDynamicLibrary *)v7 initWithURL:l device:self error:error];
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  if (![(_MTLDevice *)self validateDynamicLibrary:library state:0 error:?])
  {
    return 0;
  }

  v9 = *(self->_impl + 896);

  return AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createDynamicLibrary(v9, library, descriptor, self, 0, error, 0, 0);
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  if (![(_MTLDevice *)self validateDynamicLibrary:library state:0 error:error])
  {
    return 0;
  }

  v7 = *(self->_impl + 896);

  return AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createDynamicLibrary(v7, library, 0, self, 0, error, 0, 0);
}

- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  if (![_MTLDevice validateDynamicLibraryDescriptor:"validateDynamicLibraryDescriptor:error:" error:?])
  {
    return 0;
  }

  if ([descriptor library])
  {
    v7 = *(self->_impl + 896);
    library = [descriptor library];
    options = [descriptor options];

    return AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createDynamicLibrary(v7, library, 0, self, options, error, 0, 0);
  }

  else
  {
    v11 = [AGXG18PFamilyDynamicLibrary alloc];
    v12 = [descriptor url];
    options2 = [descriptor options];

    return [(AGXG18PFamilyDynamicLibrary *)v11 initWithURL:v12 device:self options:options2 error:error];
  }
}

- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor destinationBinaryArchive:(id)archive error:(id *)error
{
  if ([function functionType] == 6 && !-[AGXG18PFamilyDevice requiresRaytracingEmulation](self, "requiresRaytracingEmulation"))
  {
    v13 = *(self->_impl + 896);
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29addIntersectionFnSetToArchiveEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
    v18 = &__block_descriptor_48_e21_v24__0Q8__NSString_16l;
    v19 = v13;
    errorCopy = error;
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryLinkedIntersectionProgramVariants<true>(v13, descriptor, function, self, archive, 0, 0, &v15);
    if (error)
    {
      v14 = *error;
    }
  }

  else
  {
    v11 = *(self->_impl + 896);
    if (error)
    {
      *error = 0;
    }

    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27addVisibleFunctionToArchiveEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke;
    v18 = &unk_29F3411D0;
    errorCopy = v11;
    errorCopy2 = error;
    v19 = v22;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileVisibleFunction(v11, descriptor, function, self, archive, 0, 0, &v15);
    if (error)
    {
      v12 = *error;
    }

    _Block_object_dispose(v22, 8);
  }
}

- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor completionHandler:(id)handler
{
  if ([function functionType] == 6 && !-[AGXG18PFamilyDevice requiresRaytracingEmulation](self, "requiresRaytracingEmulation"))
  {
    v10 = *(self->_impl + 896);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3052000000;
    v21[3] = __Block_byref_object_copy__1933;
    v21[4] = __Block_byref_object_dispose__1934;
    v21[5] = 0;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE23createIntersectionFnSetEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke;
    v14 = &unk_29F341990;
    selfCopy = v21;
    functionCopy2 = v10;
    functionCopy = handler;
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryLinkedIntersectionProgramVariants<true>(v10, descriptor, function, self, 0, handler != 0, 0, &v11);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v9 = *(self->_impl + 896);
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE31createDynamicLibraryForFunctionEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke;
    v14 = &unk_29F341A30;
    functionCopy = function;
    selfCopy = self;
    functionCopy2 = function;
    handlerCopy2 = handler;
    v19 = v9;
    v20 = 0;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileVisibleFunction(v9, descriptor, function, self, 0, handler != 0, 0, &v11);
  }
}

- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor error:(id *)error
{
  if ([function functionType] == 6 && !-[AGXG18PFamilyDevice requiresRaytracingEmulation](self, "requiresRaytracingEmulation"))
  {
    v11 = *(self->_impl + 896);

    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionFnSet(v11, descriptor, function, self, 0, error);
  }

  else
  {
    v9 = *(self->_impl + 896);
    if (error)
    {
      *error = 0;
    }

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE31createDynamicLibraryForFunctionEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke;
    v12[3] = &unk_29F341A30;
    v12[4] = function;
    v12[5] = self;
    v12[6] = function;
    v12[7] = 0;
    v12[8] = v9;
    v12[9] = error;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileVisibleFunction(v9, descriptor, function, self, 0, 0, 0, v12);
    if (error)
    {
      v10 = *error;
    }
  }
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v7 = *(self->_impl + 897);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __90__AGXG18PFamilyDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v8[3] = &unk_29F3410C8;
  v8[4] = self;
  v8[5] = handler;
  AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileRenderPipeline_impl(v7, descriptor, self, 0, options, 0, 0, 0, 0, v8);
}

uint64_t __90__AGXG18PFamilyDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  TileRenderPipeline_impl = AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileRenderPipeline_impl(*(self->_impl + 897), descriptor, self, 0, options, reflection, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:TileRenderPipeline_impl];
  return TileRenderPipeline_impl;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = *(self->_impl + 897);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __82__AGXG18PFamilyDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v7[3] = &unk_29F3410C8;
  v7[4] = self;
  v7[5] = handler;
  AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileRenderPipeline_impl(v6, descriptor, self, 0, 0, 0, 0, 0, 0, v7);
}

uint64_t __82__AGXG18PFamilyDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error
{
  TileRenderPipeline_impl = AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileRenderPipeline_impl(*(self->_impl + 897), descriptor, self, 0, 0, 0, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:TileRenderPipeline_impl];
  return TileRenderPipeline_impl;
}

- (void)alertCommandBufferActivityComplete
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 4309);
  os_unfair_lock_opaque = impl[4308]._os_unfair_lock_opaque;
  impl[4308]._os_unfair_lock_opaque = os_unfair_lock_opaque - 1;
  if ((os_unfair_lock_opaque & 0x80000000) != 0)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  if (os_unfair_lock_opaque == 1)
  {
    *&impl[4148]._os_unfair_lock_opaque = std::chrono::system_clock::now();
  }

  os_unfair_lock_unlock(impl + 4309);
}

- (void)alertCommandBufferActivityStart
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 4309);
  os_unfair_lock_opaque = impl[4308]._os_unfair_lock_opaque;
  impl[4308]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
  if (os_unfair_lock_opaque == 0x7FFFFFFF)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  LOBYTE(impl[4150]._os_unfair_lock_opaque) = 0;

  os_unfair_lock_unlock(impl + 4309);
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v7 = *(self->_impl + 896);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __87__AGXG18PFamilyDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v8[3] = &unk_29F3410F0;
  v8[4] = self;
  v8[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(v7, descriptor, self, 0, options, 0, 0, 0, 0, v8);
}

uint64_t __87__AGXG18PFamilyDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeComputePipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  ComputePipeline_impl = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(*(self->_impl + 896), descriptor, self, 0, options, reflection, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeComputePipelineState:ComputePipeline_impl];
  return ComputePipeline_impl;
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = *(self->_impl + 896);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __79__AGXG18PFamilyDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v7[3] = &unk_29F3410F0;
  v7[4] = self;
  v7[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(v6, descriptor, self, 0, 0, 0, 0, 0, 0, v7);
}

uint64_t __79__AGXG18PFamilyDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeComputePipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  ComputePipeline_impl = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(*(self->_impl + 896), descriptor, self, 0, 0, 0, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeComputePipelineState:ComputePipeline_impl];
  return ComputePipeline_impl;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  v9 = *(self->_impl + 896);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __86__AGXG18PFamilyDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_29F3410C8;
  v10[4] = self;
  v10[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLRenderPipelineDescriptor>(v9, descriptor, self, 0, options, 0, 0, 0, 0, v10);
}

uint64_t __86__AGXG18PFamilyDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  RenderPipeline = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLRenderPipelineDescriptor>(*(self->_impl + 896), descriptor, self, 0, options, reflection, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:RenderPipeline];
  return RenderPipeline;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  v7 = *(self->_impl + 896);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __78__AGXG18PFamilyDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_29F3410C8;
  v8[4] = self;
  v8[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLRenderPipelineDescriptor>(v7, descriptor, self, 0, 0, 0, 0, 0, 0, v8);
}

uint64_t __78__AGXG18PFamilyDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  RenderPipeline = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLRenderPipelineDescriptor>(*(self->_impl + 896), descriptor, self, 0, 0, 0, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:RenderPipeline];
  return RenderPipeline;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  v9 = *(self->_impl + 896);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __90__AGXG18PFamilyDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_29F3410C8;
  v10[4] = self;
  v10[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLMeshRenderPipelineDescriptor>(v9, descriptor, self, 0, options, 0, 0, 0, 0, v10);
}

uint64_t __90__AGXG18PFamilyDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  v7 = *(self->_impl + 896);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __82__AGXG18PFamilyDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_29F3410C8;
  v8[4] = self;
  v8[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLMeshRenderPipelineDescriptor>(v7, descriptor, self, 0, 0, 0, 0, 0, 0, v8);
}

uint64_t __82__AGXG18PFamilyDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _storeRenderPipelineState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  RenderPipeline = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLMeshRenderPipelineDescriptor>(*(self->_impl + 896), descriptor, self, 0, options, reflection, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:RenderPipeline];
  return RenderPipeline;
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error
{
  if ([descriptor maxVertexAmplificationCount] >= 2)
  {
    atomic_fetch_or(&self->_telemetry.usage[1], 0x200000000uLL);
  }

  RenderPipeline = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLMeshRenderPipelineDescriptor>(*(self->_impl + 896), descriptor, self, 0, 0, 0, error, 0, 0, 0);
  [(AGXG18PFamilyDevice *)self _storeRenderPipelineState:RenderPipeline];
  return RenderPipeline;
}

- (void)_storeComputePipelineState:(id)state
{
  if (*(self->_impl + 16945) == 1 && [state label] && objc_msgSend(objc_msgSend(state, "label"), "length"))
  {
    os_unfair_lock_lock(&self->_pipelineStatesLock);
    if (([(NSPointerArray *)self->_pipelineStates count]& 0x1FFFFFFFFFFF8000) == 0)
    {
      [(NSPointerArray *)self->_pipelineStates addPointer:state];
    }

    os_unfair_lock_unlock(&self->_pipelineStatesLock);
  }
}

- (void)_storeRenderPipelineState:(id)state
{
  if (*(self->_impl + 16945) == 1 && [state label] && objc_msgSend(objc_msgSend(state, "label"), "length"))
  {
    os_unfair_lock_lock(&self->_pipelineStatesLock);
    if (([(NSPointerArray *)self->_pipelineStates count]& 0x1FFFFFFFFFFF8000) == 0)
    {
      [(NSPointerArray *)self->_pipelineStates addPointer:state];
    }

    os_unfair_lock_unlock(&self->_pipelineStatesLock);
  }
}

- (id)newSamplerStateWithDescriptor:(id)descriptor
{
  p_telemetry = &self->_telemetry;
  if (self->_telemetry.isEnabled)
  {
    if ([descriptor lodAverage])
    {
      v6 = 4096;
    }

    else
    {
      v6 = 1;
    }

    [descriptor lodMinClamp];
    if (v7 == 0.0)
    {
      [descriptor lodMaxClamp];
      v8 = 13;
      if (v9 == 3.4028e38)
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 13;
    }

    v10 = (1 << v8) | v6;
    if ([descriptor maxAnisotropy] == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 256;
    }

    normalizedCoordinates = [descriptor normalizedCoordinates];
    v13 = 1024;
    if (normalizedCoordinates)
    {
      v13 = 512;
    }

    v14 = v10 | v11 | v13;
    reductionMode = [descriptor reductionMode];
    v16 = 2048;
    if (!reductionMode)
    {
      v16 = 1;
    }

    v17 = v14 | v16;
    [descriptor lodBias];
    v18 = 0x4000;
    if (v19 == 0.0)
    {
      v18 = 1;
    }

    v20 = v17 | v18;
    sAddressMode = [descriptor sAddressMode];
    if (sAddressMode > 4)
    {
      LOBYTE(v22) = 0;
    }

    else
    {
      v22 = qword_29D2F4200[sAddressMode];
    }

    v23 = v20 | (1 << v22);
    tAddressMode = [descriptor tAddressMode];
    if (tAddressMode > 4)
    {
      LOBYTE(v25) = 0;
    }

    else
    {
      v25 = qword_29D2F4200[tAddressMode];
    }

    v26 = v23 | (1 << v25);
    rAddressMode = [descriptor rAddressMode];
    if (rAddressMode > 4)
    {
      LOBYTE(v28) = 0;
    }

    else
    {
      v28 = qword_29D2F4200[rAddressMode];
    }

    atomic_fetch_or(p_telemetry, v26 | (1 << v28));
    atomic_fetch_or(&p_telemetry->usage[1], 0);
  }

  impl = self->_impl;
  __p[0] = 0;
  __p[1] = 0;
  v66 = 0;
  v30 = 32 * ([descriptor mipFilter] != 0);
  v31 = v30 | (([descriptor mipFilter] == 2) << 6);
  v32 = v31 | (([descriptor minFilter] == 1) << 7);
  v33 = v32 | (([descriptor magFilter] == 1) << 8);
  v57[0] = v33;
  compareFunction = [descriptor compareFunction];
  v35 = 0;
  if (compareFunction <= 7)
  {
    v35 = word_29D2F27F0[compareFunction];
  }

  v57[0] = v33 | v35;
  v36 = ([descriptor maxAnisotropy] + 0.5) & 0x1F;
  v37 = v36 & 0xFFFFFF1F | (32 * ([descriptor sAddressMode] & 7));
  v38 = v37 & 0xFFFFF8FF | (([descriptor tAddressMode] & 7) << 8);
  v39 = v38 & 0xFFFFC7FF | (([descriptor rAddressMode] & 7) << 11);
  v58 = v39;
  if ([descriptor normalizedCoordinates])
  {
    v40 = 0x4000;
  }

  else
  {
    v40 = 0;
  }

  v41 = v39 | v40;
  v58 = v41;
  if ([descriptor lodAverage])
  {
    v42 = 0x8000;
  }

  else
  {
    v42 = 0;
  }

  v43 = (v41 | v42) & 0xFFFCFFFF | (([descriptor minFilter] & 3) << 16);
  v44 = v43 & 0xFFF3FFFF | (([descriptor magFilter] & 3) << 18);
  v45 = v44 & 0xF9FFFFFF | (([descriptor reductionMode] & 3) << 25);
  v58 = v45;
  if ([descriptor supportArgumentBuffers])
  {
    v46 = 0x100000;
  }

  else
  {
    v46 = 0;
  }

  v47 = v45 & 0xFFEFFFFF | v46;
  v58 = v47;
  if ([descriptor forceSeamsOnCubemapFiltering])
  {
    v48 = 0x1000000;
  }

  else
  {
    v48 = 0;
  }

  v49 = v47 & 0xFEFFFFFF | v48;
  borderColor = [descriptor borderColor];
  v58 = v49 & 0xFF9FFFFF | ((borderColor & 3) << 21);
  if ((~borderColor & 3) != 0)
  {
    pixelFormat = 0;
    v63 = 0;
    v62 = 0;
  }

  else
  {
    LODWORD(v62) = [descriptor customBorderColorValue];
    HIDWORD(v62) = [descriptor customBorderColorValue];
    LODWORD(v63) = [descriptor customBorderColorValue];
    HIDWORD(v63) = [descriptor customBorderColorValue];
    pixelFormat = [descriptor pixelFormat];
  }

  [descriptor lodMinClamp];
  v59 = v51;
  [descriptor lodMaxClamp];
  v60 = v52;
  [descriptor lodBias];
  v61 = v53;
  label = [descriptor label];
  if (label)
  {
    MEMORY[0x29ED51E00](__p, [label UTF8String]);
  }

  result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(impl, v57, self, descriptor);
  if (SHIBYTE(v66) < 0)
  {
    v56 = result;
    operator delete(__p[0]);
    return v56;
  }

  return result;
}

- (id)getConsistentPerfStateMappingTable
{
  v8[3] = *MEMORY[0x29EDCA608];
  [(IOGPUMetalDevice *)self deviceRef];
  inputStruct = 3;
  outputStructCnt = 8;
  Connect = IOGPUDeviceGetConnect();
  if (IOConnectCallStructMethod(Connect, 0x109u, &inputStruct, 8uLL, v4, &outputStructCnt))
  {
    return 0;
  }

  v7[0] = @"min_pstate";
  v8[0] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v4[1]];
  v7[1] = @"mid_pstate";
  v8[1] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v4[2]];
  v7[2] = @"max_pstate";
  v8[2] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v4[3]];
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)getConsistentPerfStateInfoAndReset:(BOOL)reset
{
  v10[3] = *MEMORY[0x29EDCA608];
  [(IOGPUMetalDevice *)self deviceRef];
  inputStruct = 2;
  BYTE1(inputStruct) = reset;
  outputStructCnt = 8;
  Connect = IOGPUDeviceGetConnect();
  if (IOConnectCallStructMethod(Connect, 0x109u, &inputStruct, 8uLL, v6, &outputStructCnt))
  {
    return 0;
  }

  v9[0] = @"is_enabled";
  v10[0] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v6[2]];
  v9[1] = @"was_consistent";
  v10[1] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v6[3]];
  v9[2] = @"level";
  v10[2] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v6[4]];
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
}

- (BOOL)disableConsistentPerfState
{
  impl = self->_impl;
  [(IOGPUMetalDevice *)self deviceRef];
  os_unfair_lock_lock(impl + 4165);
  if (LOBYTE(impl[4164]._os_unfair_lock_opaque) == 1)
  {
    v5 = 8;
    outputStruct = 0;
    Connect = IOGPUDeviceGetConnect();
    IOConnectCallStructMethod(Connect, 0x109u, &outputStruct, 8uLL, &outputStruct, &v5);
    LOBYTE(impl[4164]._os_unfair_lock_opaque) = 0;
  }

  os_unfair_lock_unlock(impl + 4165);
  return 1;
}

- (BOOL)enableConsistentPerfState:(int)state
{
  stateCopy = state;
  impl = self->_impl;
  [(IOGPUMetalDevice *)self deviceRef];
  inputStructCnt = 8;
  Connect = IOGPUDeviceGetConnect();
  os_unfair_lock_lock(impl + 4165);
  if ((impl[4164]._os_unfair_lock_opaque & 1) == 0)
  {
    outputStruct = 256;
    if (IOConnectCallStructMethod(Connect, 0x109u, &outputStruct, 8uLL, &outputStruct, &inputStructCnt))
    {
LABEL_6:
      os_unfair_lock_unlock(impl + 4165);
      return 0;
    }

    LOBYTE(impl[4164]._os_unfair_lock_opaque) = 1;
  }

  os_unfair_lock_unlock(impl + 4165);
  v6 = 1;
  LOBYTE(outputStruct) = 1;
  HIBYTE(outputStruct) = stateCopy;
  if (IOConnectCallStructMethod(Connect, 0x109u, &outputStruct, inputStructCnt, &outputStruct, &inputStructCnt))
  {
    os_unfair_lock_lock(impl + 4165);
    if (LOBYTE(impl[4164]._os_unfair_lock_opaque) == 1)
    {
      outputStructCnt = 8;
      inputStruct = 0;
      v7 = IOGPUDeviceGetConnect();
      IOConnectCallStructMethod(v7, 0x109u, &inputStruct, 8uLL, &inputStruct, &outputStructCnt);
      LOBYTE(impl[4164]._os_unfair_lock_opaque) = 0;
    }

    goto LABEL_6;
  }

  return v6;
}

- (int64_t)currentPerformanceState
{
  [(IOGPUMetalDevice *)self deviceRef];
  inputStruct = 2;
  outputStructCnt = 8;
  Connect = IOGPUDeviceGetConnect();
  v3 = IOConnectCallStructMethod(Connect, 0x109u, &inputStruct, 8uLL, outputStruct, &outputStructCnt);
  if (v7 >= 3u)
  {
    v4 = 255;
  }

  else
  {
    v4 = v7;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)removePerformanceStateAssertion:(id)assertion
{
  v14 = *MEMORY[0x29EDCA608];
  p_performance_state_assertion = &self->performance_state_assertion;
  os_unfair_lock_lock(&self->performance_state_assertion.lock.lock);
  outputStructCnt = 8;
  Connect = IOGPUDeviceGetConnect();
  LOWORD(outputStruct) = 1025;
  v5 = IOConnectCallStructMethod(Connect, 0x10Du, &outputStruct, 8uLL, &outputStruct, &outputStructCnt);
  if (v5)
  {
    v6 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "AGX: Could not release perf state in kernel. Error: 0x%x\n\n", v5);
    fprintf(*v6, "AGX: %s:%d:%s: *** Error releasing performance state assertion!\n\n", "agxa_device_objc.mm", 1937, "[AGXG18PFamilyDevice removePerformanceStateAssertion:]");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      outputStruct = 136315650;
      v9 = "agxa_device_objc.mm";
      v10 = 1024;
      v11 = 1937;
      v12 = 2080;
      v13 = "[AGXG18PFamilyDevice removePerformanceStateAssertion:]";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Error releasing performance state assertion!\n\n", &outputStruct, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      outputStruct = 136315650;
      v9 = "agxa_device_objc.mm";
      v10 = 1024;
      v11 = 1937;
      v12 = 2080;
      v13 = "[AGXG18PFamilyDevice removePerformanceStateAssertion:]";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Error releasing performance state assertion!\n\n", &outputStruct, 0x1Cu);
    }
  }

  else
  {
    p_performance_state_assertion->existingAssertion = 0;
  }

  os_unfair_lock_unlock(&p_performance_state_assertion->lock.lock);
}

- (id)newPerformanceStateAssertion:(int64_t)assertion error:(id *)error
{
  v30[1] = *MEMORY[0x29EDCA608];
  if (assertion < 3)
  {
    p_performance_state_assertion = &self->performance_state_assertion;
    os_unfair_lock_lock(&self->performance_state_assertion.lock.lock);
    existingAssertion = p_performance_state_assertion->existingAssertion;
    if (p_performance_state_assertion->existingAssertion)
    {
      if (existingAssertion->_requestedLevel == assertion)
      {
        v9 = existingAssertion;
      }

      else
      {
        v21 = *MEMORY[0x29EDB9ED8];
        assertion = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Requested MTLDevicePerformanceState (%ld) is incompatible with the performance state currently set on the system.", assertion];
        v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&assertion forKeys:&v21 count:1];
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"MTLPerformanceStateAssertionDomain" code:2 userInfo:v16];
        fwrite("AGX: PerformanceState: Incompatible PerformanceStateAssertion already exists\n\n", 0x4EuLL, 1uLL, *MEMORY[0x29EDCA610]);
        v9 = 0;
      }

      goto LABEL_16;
    }

    outputStructCnt = 8;
    Connect = IOGPUDeviceGetConnect();
    outputStruct[0] = 1;
    outputStruct[1] = assertion;
    v12 = IOConnectCallStructMethod(Connect, 0x10Du, outputStruct, 8uLL, outputStruct, &outputStructCnt);
    if (!v12)
    {
      v9 = [[AGXG18PFamilyPerformanceStateAssertion alloc] initWithDevice:self level:assertion];
      p_performance_state_assertion->existingAssertion = v9;
LABEL_16:
      os_unfair_lock_unlock(&p_performance_state_assertion->lock.lock);
      return v9;
    }

    v13 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "AGX: PerformanceState: Could not acquire perf state from kernel. Error: 0x%x\n", v12);
    if (v12 == -536870207)
    {
      v27 = *MEMORY[0x29EDB9ED8];
      v28 = @"This process does not have permission to request performance state changes";
      v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      fwrite("AGX: PerformanceState: No entitlement to acquire performance states\n\n", 0x45uLL, 1uLL, *v13);
    }

    else
    {
      if (v12 == -536870203)
      {
        v25 = *MEMORY[0x29EDB9ED8];
        v26 = @"This process is attempting to acquire a Performance State Assertion in an incompatible state.";
        v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        fwrite("AGX: PerformanceState: Incompatible performance state requested\n\n", 0x41uLL, 1uLL, *v13);
        v15 = 2;
LABEL_15:
        v17 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"MTLPerformanceStateAssertionDomain" code:v15 userInfo:v14];
        v9 = 0;
        *error = v17;
        goto LABEL_16;
      }

      v23 = *MEMORY[0x29EDB9ED8];
      v24 = @"Failed to acquire performance state.";
      v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      fprintf(*v13, "AGX: PerformanceState: Failed to acquire performance state with code 0x%x\n\n", v12);
    }

    v15 = 3;
    goto LABEL_15;
  }

  v29 = *MEMORY[0x29EDB9ED8];
  v30[0] = @"The provided performanceState is invalid";
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  *error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"MTLPerformanceStateAssertionDomain" code:2 userInfo:v10];
  fprintf(*MEMORY[0x29EDCA610], "AGX: PerformanceState: Provided performance state %d is unknown or invalid\n\n", 4);
  return 0;
}

- (void)unmapShaderSampleBuffer
{
  v2 = MEMORY[0x2A1C7C4A8](self);
  v16 = *MEMORY[0x29EDCA608];
  v3 = v2[106];
  [v2 deviceRef];
  if (*(v3 + 16624) == 1)
  {
    *(v3 + 16624) = 0;
  }

  else
  {
    v4 = *(v3 + 16632);
    if (v4)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      v6 = *(v3 + 16640);
      [v5 sampleMarker];
      [v5 stopSampling];
      if ([v6 ringBufferNum] == 1)
      {
        v8 = 0;
        v9 = 0;
        v7 = 0;
        if ([v6 ringBufferInfoAtIndex:0 base:&v9 size:&v8 + 4 dataOffset:&v8 dataSize:&v7])
        {
          LODWORD(v8) = (v7 + 8) % HIDWORD(v8);
          [v6 resetRawDataPostProcessor];
          operator new();
        }
      }

      else
      {
        fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Should not be here as SPI is not supported in current chip!\n", "agxa_device_template.hpp", 3649, "unmapShaderSampleBuffer");
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          __src = 136315650;
          v11 = "agxa_device_template.hpp";
          v12 = 1024;
          v13 = 3649;
          v14 = 2080;
          v15 = "unmapShaderSampleBuffer";
          _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Should not be here as SPI is not supported in current chip!\n", &__src, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
          __src = 136315650;
          v11 = "agxa_device_template.hpp";
          v12 = 1024;
          v13 = 3649;
          v14 = 2080;
          v15 = "unmapShaderSampleBuffer";
          _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Should not be here as SPI is not supported in current chip!\n", &__src, 0x1Cu);
        }
      }

      *(v3 + 16616) = 0;

      *(v3 + 16632) = 0;
      *(v3 + 16640) = 0;
      GRCReleaseAllCounterSourceGroup();
    }
  }
}

- (BOOL)mapShaderSampleBufferWithBuffer:(id *)buffer capacity:(unint64_t)capacity size:(unint64_t)size
{
  sizeCopy = size;
  v23[2] = *MEMORY[0x29EDCA608];
  impl = self->_impl;
  [(IOGPUMetalDevice *)self deviceRef:buffer];
  if (buffer || sizeCopy)
  {
    impl[16624] = 0;
    v9 = GRCCopyAllCounterSourceGroup();
    if (![v9 count])
    {
      goto LABEL_22;
    }

    if (![objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "sourceList"), "count"}])
    {
      goto LABEL_22;
    }

    v10 = [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "sourceList"), "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "sourceList"), "count") != 1}];
    if ([objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "sourceList"), "count"}] == 1 && !objc_msgSend(objc_msgSend(v10, "name"), "hasPrefix:", @"Firmware"))
    {
      goto LABEL_22;
    }

    if ([objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "sourceList"), "count"}] != 1 && (objc_msgSend(objc_msgSend(v10, "name"), "hasPrefix:", @"RDE") & 1) == 0 || !v10 || objc_msgSend(v10, "ringBufferNum") != 1)
    {
      goto LABEL_22;
    }

    v11 = MEMORY[0x29EDB8EB0];
    v22[0] = @"DisableOverlap";
    v22[1] = @"DisableMCH";
    v23[0] = MEMORY[0x29EDB8EB0];
    v12 = [objc_msgSend(objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "features"), "objectForKeyedSubscript:", @"SupportOption_DisableMCH", "BOOLValue"}];
    v13 = MEMORY[0x29EDB8EA8];
    if (v12)
    {
      v13 = v11;
    }

    if (v23[1] = v13, [objc_msgSend(v9 objectAtIndexedSubscript:{0), "setOptions:", objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", v23, v22, 2)}], v14 = objc_msgSend(MEMORY[0x29EDB8DE8], "arrayWithCapacity:", 4), v21[0] = objc_msgSend(MEMORY[0x29EDC11C8], "selectWithName:options:", @"KickBoundary", 0), v21[1] = objc_msgSend(MEMORY[0x29EDC11C8], "selectWithName:options:", @"TimerFixed", &unk_2A240CDC8), v17 = objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v21, 2), objc_msgSend(v14, "addObject:", objc_msgSend(MEMORY[0x29EDC11C0], "selectWithName:options:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", "GRC_TIMESTAMP"), 0)), objc_msgSend(v14, "addObject:", objc_msgSend(MEMORY[0x29EDC11C0], "selectWithName:options:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", "GRC_GPU_CYCLES"), 0)), objc_msgSend(v14, "addObject:", objc_msgSend(MEMORY[0x29EDC11C0], "selectWithName:options:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", "GRC_SAMPLE_TYPE"), 0)), objc_msgSend(v14, "addObject:", objc_msgSend(MEMORY[0x29EDC11C0], "selectWithName:options:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", "GRC_ENCODER_ID"), 0)), v18 = 0, (objc_msgSend(v10, "requestTriggers:firstErrorIndex:", v17, &v18)) && (objc_msgSend(v10, "requestCounters:firstErrorIndex:", v14, &v18) & 1) != 0 && ((v15 = objc_msgSend(objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "sourceList"), "count"), v19[0] = @"ShaderProfiler", v19[1] = @"BufferSizeInKB", v20[0] = MEMORY[0x29EDB8EB0], v15 != 1) ? (v16 = 6) : (v16 = 4), (v20[1] = objc_msgSend(MEMORY[0x29EDBA070], "numberWithUnsignedLongLong:", ((((v16 * sizeCopy) >> 2) + 2 * *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0]) >> 10), objc_msgSend(v10, "setOptions:", objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 2)), (objc_msgSend(v10, "setEnabled:", 1)) && (objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "startSampling")))
    {
      *(impl + 2077) = buffer;
      *(impl + 4162) = sizeCopy;
      *(impl + 4157) = 0;
      *(impl + 2079) = v9;
      result = 1;
      *(impl + 2080) = v10;
    }

    else
    {
LABEL_22:

      GRCReleaseAllCounterSourceGroup();
      return 0;
    }
  }

  else
  {
    result = 1;
    impl[16624] = 1;
  }

  return result;
}

- (id)newHeapWithDescriptor:(id)descriptor
{
  p_telemetry = &self->_telemetry;
  v6 = &self->_telemetry.usage[1];
  atomic_fetch_or(&self->_telemetry.usage[1], 0x200uLL);
  if ([descriptor hazardTrackingMode] == 2)
  {
    atomic_fetch_or(v6, 0x400uLL);
  }

  if ([descriptor type] == 1)
  {
    atomic_fetch_or(&p_telemetry->usage[1], 0x800uLL);
  }

  type = [descriptor type];
  v8 = off_29F340790;
  if (type != 2)
  {
    v8 = off_29F340770;
  }

  v9 = objc_alloc(*v8);

  return [v9 initWithDevice:self descriptor:descriptor];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options
{
  v5 = 256;
  result.var1 = v5;
  result.var0 = length;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor
{
  if ([descriptor validateWithDevice:self])
  {
    descriptorPrivate = [descriptor descriptorPrivate];
    v6 = 0;
    v7 = *(descriptorPrivate + 96);
    if (v7 == 2)
    {
      descriptorCopy3 = descriptor;
      LODWORD(v8) = 0;
      v6 = 2;
    }

    else
    {
      if (v7 == 1)
      {
        v6 = 9;
      }

      v8 = *(descriptorPrivate + 152);
      if (v8 == 3 || v8 == 2 || v8 == 1)
      {
        descriptorCopy3 = descriptor;
      }

      else
      {
        descriptorCopy3 = descriptor;
        LODWORD(v8) = 0;
      }
    }

    v10 = v6 & 0xFB;
    if (!*(descriptorPrivate + 128))
    {
      v10 = 2;
    }

    v46 = *(descriptorPrivate + 8);
    v11 = v46 - 1;
    if ((v46 - 1) > 0x289)
    {
      v12 = &texFormatUnsupported;
    }

    else
    {
      v12 = *(&off_29F342380 + v11);
    }

    v13 = v10 | ((*(v12 + 60) & 0xC) != 0);
    v14 = v10 & 0xEB | ((*(v12 + 60) & 0xC) != 0);
    v15 = *(descriptorPrivate + 176);
    if (v15 == 2)
    {
      v16 = v13 | 0x10;
      if (!(v10 & 2 | v8))
      {
        v14 = v16;
      }
    }

    v17 = (v8 << 8) | (v15 << 32);
    impl = self->_impl;
    v44 = *descriptorPrivate;
    v45 = *(descriptorPrivate + 104);
    v18 = *(descriptorPrivate + 168) - 1;
    if (v18 > 9)
    {
      v42 = 0;
    }

    else
    {
      v42 = dword_29D2F7A6C[v18];
    }

    v19 = v17 & 0xFFFFFFFFFFFFFF00 | v14;
    v41 = *(descriptorPrivate + 208);
    if ((*(descriptorPrivate + 72) - 1) < 4)
    {
      v20 = *(descriptorPrivate + 72);
    }

    else
    {
      v20 = 0;
    }

    v40 = v20;
    v21 = *(descriptorPrivate + 84);
    v22 = *(descriptorPrivate + 16);
    v23 = *(descriptorPrivate + 24);
    v24 = *(descriptorPrivate + 32);
    v25 = *(descriptorPrivate + 40);
    v26 = *(descriptorPrivate + 48);
    v27 = *(descriptorPrivate + 56);
    v28 = *(descriptorPrivate + 112) & 0xFLL;
    resourceIndex = [descriptorCopy3 resourceIndex];
    if (v11 > 0x289)
    {
      v30 = &texFormatUnsupported;
    }

    else
    {
      v30 = *(&off_29F342380 + v11);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v47, impl, 0, 2, v44, v30, v46, v45, resourceIndex, v41, v19, v42, v40, v21, v22, v23, v24, v25, v26, v27, 0, 0, 0, v28, 0, 0, 0, 0, 0, v25, 0, 0, 1, v39, 0);
    v47[0] = off_2A23FA3D8;
    BaseAlignment = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(v47);
    v32 = v47[46];
    v47[0] = &unk_2A23FA3B0;
    if (v61)
    {
      free(v61);
      v61 = 0;
    }

    v33 = v60;
    v60 = 0;
    if (v33)
    {
      std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v33);
    }

    if (v56 && (v59 & 1) == 0)
    {
      v34 = v58 + 336;
      os_unfair_lock_lock(v58 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v58[322], v56, v56 + v57 - 1);
      os_unfair_lock_unlock(v34);
    }

    if (v52 && (v55 & 1) == 0)
    {
      v35 = v54 + 336;
      os_unfair_lock_lock(v54 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v54[322], v52, v52 + v53 - 1);
      os_unfair_lock_unlock(v35);
    }

    if (v48 && (v51 & 1) == 0)
    {
      v36 = v50 + 336;
      os_unfair_lock_lock(v50 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v50[322], v48, v48 + v49 - 1);
      os_unfair_lock_unlock(v36);
    }
  }

  else
  {
    v32 = 0;
    BaseAlignment = 0;
  }

  v37 = v32;
  v38 = BaseAlignment;
  result.var1 = v38;
  result.var0 = v37;
  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v11 = IOSurfaceCopyValue(iosurface, *MEMORY[0x29EDBB148]);
  if (v11)
  {
    v12 = v11;
    if ([v11 objectForKeyedSubscript:@"kAGXCompressionMode"])
    {
      v13 = [objc_msgSend(v12 objectForKeyedSubscript:{@"kAGXCompressionMode", "unsignedIntegerValue"}];

      v14 = [AGXG18PFamilyTexture alloc];

      return [(AGXTexture *)v14 initWithSharedTextureHandle:iosurface device:self desc:descriptor compressionMode:v13];
    }
  }

  v16 = [AGXG18PFamilyTexture alloc];

  return [(AGXTexture *)v16 initWithDevice:self desc:descriptor iosurface:iosurface plane:plane slice:slice];
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v9 = IOSurfaceCopyValue(iosurface, *MEMORY[0x29EDBB148]);
  if (v9)
  {
    v10 = v9;
    if ([v9 objectForKeyedSubscript:@"kAGXCompressionMode"])
    {
      v11 = [objc_msgSend(v10 objectForKeyedSubscript:{@"kAGXCompressionMode", "unsignedIntegerValue"}];

      v12 = [AGXG18PFamilyTexture alloc];

      return [(AGXTexture *)v12 initWithSharedTextureHandle:iosurface device:self desc:descriptor compressionMode:v11];
    }
  }

  v14 = [AGXG18PFamilyTexture alloc];

  return [(AGXTexture *)v14 initWithDevice:self desc:descriptor iosurface:iosurface plane:plane slice:0];
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  if ([descriptor placementSparsePageSize])
  {
    if ([descriptor placementSparsePageSize] == 103)
    {
      v5 = 0x40000;
    }

    else if ([descriptor placementSparsePageSize] == 102)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0x4000;
    }

    v9 = [AGXG18PFamilyTexture alloc];

    return [(AGXTexture *)v9 initWithDevice:self desc:descriptor sparsePageSize:v5];
  }

  else
  {
    v6 = [AGXG18PFamilyTexture alloc];
    v7 = *(self->_impl + 16989);

    return [(AGXTexture *)v6 initWithDevice:self desc:descriptor isSuballocDisabled:v7];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  if ((count - 1) > 0x289)
  {
    v7 = &texFormatUnsupported;
  }

  else
  {
    v7 = *(&off_29F342380 + (count - 1));
  }

  v8 = 0x4000;
  if (type == 102)
  {
    v8 = 0x10000;
  }

  v9 = &dword_29D2FEEF0[2 * *(v7 + 14)];
  v11 = *v9;
  v10 = v9[1];
  v12 = a7 * *(v7 + 88);
  if (type == 103)
  {
    v8 = 0x40000;
  }

  v13 = v8 / v12;
  v14 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 + 1) >> 1;
  retstr->var0 = (v11 << v16);
  retstr->var1 = (v10 << (v15 - v16));
  retstr->var2 = 1;
  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size
{
  if (self)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)self tileSizeWithSparsePageSize:a7 textureType:format pixelFormat:count sampleCount:size];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  if (self)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)self tileSizeWithSparsePageSize:101 textureType:format pixelFormat:count sampleCount:a6];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return self;
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  atomic_fetch_or(&self->_telemetry.usage[1], 0x800000uLL);
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyDevice;
  return [(IOGPUMetalDevice *)&v5 newIOCommandQueueWithDescriptor:descriptor error:error];
}

- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v4 = [AGXG18PFamilyIndirectRenderCommandEncoder alloc];

  return [(AGXG18PFamilyIndirectRenderCommandEncoder *)v4 initWithBuffer:buffer];
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v9 = [AGXG18PFamilyIndirectCommandBuffer alloc];
  v10 = *(self->_impl + 16989);

  return [(AGXG18PFamilyIndirectCommandBuffer *)v9 initWithDevice:self descriptor:descriptor count:count options:options isSuballocDisabled:v10];
}

- (id)newBufferWithIOSurface:(__IOSurface *)surface
{
  v5 = [AGXG18PFamilyBuffer alloc];

  return [(AGXBuffer *)v5 initWithDevice:self iosurface:surface pinnedGPUAddress:0];
}

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v11 = [AGXG18PFamilyTexture alloc];

  return [(AGXTexture *)v11 initWithDevice:self bytes:copy length:length desc:descriptor deallocator:deallocator];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size
{
  p_telemetry = &self->_telemetry;
  v6 = 0x8000000000000000;
  if ((options & 0x100) == 0)
  {
    v6 = 1;
  }

  atomic_fetch_or(p_telemetry, v6);
  if (!(options >> 4))
  {
    v7 = 184;
    goto LABEL_7;
  }

  if (options >> 4 == 2)
  {
    v7 = 192;
LABEL_7:
    atomic_fetch_add((p_telemetry + v7), 1uLL);
  }

  atomic_fetch_add(&self->_telemetry.genericCounts.count[6], 1uLL);
  return [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithDevice:self length:length alignment:1 options:options pointerTag:0 pinnedGPUAddress:0 placementSparsePageSize:size];
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  v5 = [descriptor length];
  resourceOptions = [descriptor resourceOptions];
  v7 = (16 * ([descriptor storageMode] & 0xF)) | resourceOptions;
  alignment = [descriptor alignment];
  pointerTag = [descriptor pointerTag];
  if ([descriptor addressRanges])
  {
    addressRanges = [descriptor addressRanges];
    result = -[AGXBuffer initWithDevice:addressRanges:addressRangeCount:length:alignment:options:pinnedGPUAddress:]([AGXG18PFamilyBuffer alloc], "initWithDevice:addressRanges:addressRangeCount:length:alignment:options:pinnedGPUAddress:", self, [addressRanges ranges], objc_msgSend(addressRanges, "count"), v5, alignment, v7, objc_msgSend(descriptor, "pinnedGPUAddress"));
    goto LABEL_3;
  }

  if (![descriptor iosurface])
  {
    if ([descriptor noCopy])
    {
      result = -[AGXBuffer initWithDevice:bytes:length:alignment:pointerTag:options:deallocator:pinnedGPUAddress:]([AGXG18PFamilyBuffer alloc], "initWithDevice:bytes:length:alignment:pointerTag:options:deallocator:pinnedGPUAddress:", self, [descriptor contents], v5, alignment, pointerTag, v7, objc_msgSend(descriptor, "deallocator"), objc_msgSend(descriptor, "pinnedGPUAddress"));
    }

    else
    {
      v24[0] = [descriptor pinnedGPUAddress];
      v24[1] = [descriptor parentGPUAddress];
      v24[2] = [descriptor parentGPUSize];
      v18 = [AGXG18PFamilyBuffer alloc];
      v19 = *(self->_impl + 16989);
      pinnedGPUAddress = [descriptor pinnedGPUAddress];
      v21 = v24;
      if (!pinnedGPUAddress)
      {
        v21 = 0;
      }

      result = [(AGXBuffer *)v18 initWithDevice:self length:v5 alignment:alignment pointerTag:pointerTag options:v7 isSuballocDisabled:v19 pinnedGPULocation:v21];
      if (result)
      {
        v22 = result;
        contents = [descriptor contents];
        result = v22;
        if (contents)
        {
          memcpy([v22 contents], objc_msgSend(descriptor, "contents"), v5);
          result = v22;
        }
      }
    }

LABEL_3:
    if (!result)
    {
      return result;
    }

    p_telemetry = &self->_telemetry;
    v13 = 0x8000000000000000;
    if ((resourceOptions & 0x100) == 0)
    {
      v13 = 1;
    }

    atomic_fetch_or(p_telemetry, v13);
    if (v7 >> 4)
    {
      if (v7 >> 4 != 2)
      {
LABEL_15:
        atomic_fetch_add(&self->_telemetry.genericCounts.count[6], 1uLL);
        return result;
      }

      v14 = 192;
    }

    else
    {
      v14 = 184;
    }

    atomic_fetch_add((p_telemetry + v14), 1uLL);
    goto LABEL_15;
  }

  v15 = [AGXG18PFamilyBuffer alloc];
  iosurface = [descriptor iosurface];
  pinnedGPUAddress2 = [descriptor pinnedGPUAddress];

  return [(AGXBuffer *)v15 initWithDevice:self iosurface:iosurface pinnedGPUAddress:pinnedGPUAddress2];
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
{
  p_telemetry = &self->_telemetry;
  v12 = 0x8000000000000000;
  if ((options & 0x100) == 0)
  {
    v12 = 1;
  }

  atomic_fetch_or(p_telemetry, v12);
  if (options >> 4)
  {
    if (options >> 4 != 2)
    {
      goto LABEL_8;
    }

    v13 = 192;
  }

  else
  {
    v13 = 184;
  }

  atomic_fetch_add((p_telemetry + v13), 1uLL);
LABEL_8:
  atomic_fetch_add(&self->_telemetry.genericCounts.count[5], 1uLL);
  v14 = [AGXG18PFamilyBuffer alloc];

  return [(AGXBuffer *)v14 initWithDevice:self bytes:copy length:length options:options deallocator:deallocator pinnedGPUAddress:0];
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  optionsCopy = options;
  result = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithDevice:self length:length options:options isSuballocDisabled:*(self->_impl + 16989) pinnedGPULocation:0];
  if (result)
  {
    v10 = result;
    memcpy([result contents], bytes, length);
    p_telemetry = &self->_telemetry;
    v12 = 0x8000000000000000;
    if ((optionsCopy & 0x100) == 0)
    {
      v12 = 1;
    }

    atomic_fetch_or(p_telemetry, v12);
    if (optionsCopy >> 4)
    {
      result = v10;
      if (optionsCopy >> 4 != 2)
      {
LABEL_9:
        atomic_fetch_add(&self->_telemetry.genericCounts.count[6], 1uLL);
        return result;
      }

      v13 = 192;
    }

    else
    {
      v13 = 184;
      result = v10;
    }

    atomic_fetch_add((p_telemetry + v13), 1uLL);
    goto LABEL_9;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  p_telemetry = &self->_telemetry;
  v8 = 0x8000000000000000;
  if ((options & 0x100) == 0)
  {
    v8 = 1;
  }

  atomic_fetch_or(p_telemetry, v8);
  if (options >> 4)
  {
    if (options >> 4 != 2)
    {
      goto LABEL_8;
    }

    v9 = 192;
  }

  else
  {
    v9 = 184;
  }

  atomic_fetch_add((p_telemetry + v9), 1uLL);
LABEL_8:
  atomic_fetch_add(&self->_telemetry.genericCounts.count[6], 1uLL);
  v10 = [AGXG18PFamilyBuffer alloc];
  v11 = *(self->_impl + 16989);

  return [(AGXBuffer *)v10 initWithDevice:self length:length alignment:1 options:options isSuballocDisabled:v11 pinnedGPULocation:0];
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  if (*(self->_impl + 16997) == 1)
  {
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CommandQueueLifetime", "CommandQueue is allocated!", v8, 2u);
    }
  }

  v5 = [[AGXG18PFamilyCommandQueue alloc] initWithDevice:self descriptor:descriptor];
  [(AGXG18PFamilyDevice *)self setupDeferred];
  return v5;
}

- (id)newCommandQueue
{
  if (*(self->_impl + 16997) == 1)
  {
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CommandQueueLifetime", "CommandQueue is allocated!", v6, 2u);
    }
  }

  v3 = [(_MTLCommandQueue *)[AGXG18PFamilyCommandQueue alloc] initWithDevice:self];
  [(AGXG18PFamilyDevice *)self setupDeferred];
  return v3;
}

- (void)setupDeferred
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __36__AGXG18PFamilyDevice_setupDeferred__block_invoke;
  block[3] = &unk_29F3438F8;
  block[4] = self;
  if ([AGXG18PFamilyDevice setupDeferred]::once != -1)
  {
    dispatch_once(&[AGXG18PFamilyDevice setupDeferred]::once, block);
  }
}

void __36__AGXG18PFamilyDevice_setupDeferred__block_invoke(uint64_t a1)
{
  v118 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = v1[106];
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupHWResourcePools(v1, v112);
  [v1 setHwResourcePool:v112 count:44];
  os_unfair_lock_lock((v2 + 8584));
  if ((atomic_load_explicit((v2 + 8412), memory_order_acquire) & 1) != 0 && !*(v2 + 8524))
  {
    AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::setupDeferred((v2 + 8416), 1);
  }

  if (*(v2 + 8524) <= 0xFu)
  {
    AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::grow((v2 + 7240), 0x10u, 1);
  }

  os_unfair_lock_unlock((v2 + 8584));
  os_unfair_lock_lock((v2 + 9384));
  if (*(v2 + 9324) < 0x10u)
  {
    AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::grow(v2 + 8608, 0x10u, 1);
  }

  os_unfair_lock_unlock((v2 + 9384));
  os_unfair_lock_lock((v2 + 10184));
  if (*(v2 + 10124) < 0x10u)
  {
    AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::grow(v2 + 9408, 0x10u, 1);
  }

  os_unfair_lock_unlock((v2 + 10184));
  os_unfair_lock_lock((v2 + 10984));
  if (*(v2 + 10924) < 0x10u)
  {
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::grow(v2 + 10208, 0x10u, 1);
  }

  os_unfair_lock_unlock((v2 + 10984));
  os_unfair_lock_lock((v2 + 11784));
  if (*(v2 + 11724) < 0x10u)
  {
    AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::grow(v2 + 11008, 0x10u, 1);
  }

  os_unfair_lock_unlock((v2 + 11784));
  os_unfair_lock_lock((v2 + 12560));
  if (*(v2 + 12500) < 0x20u)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v2 + 11808, 0x20u, 1);
  }

  os_unfair_lock_unlock((v2 + 12560));
  os_unfair_lock_lock((v2 + 13336));
  if (*(v2 + 13276) < 0x20u)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v2 + 12584, 0x20u, 1);
  }

  os_unfair_lock_unlock((v2 + 13336));
  os_unfair_lock_lock((v2 + 14112));
  if (*(v2 + 14052) < 0x20u)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v2 + 13360, 0x20u, 1);
  }

  os_unfair_lock_unlock((v2 + 14112));
  os_unfair_lock_lock((v2 + 14888));
  if (*(v2 + 14828) < 0x20u)
  {
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::grow(v2 + 14136, 0x20u, 1);
  }

  v75 = v2 + 8412;
  os_unfair_lock_unlock((v2 + 14888));
  os_unfair_lock_lock((v2 + 15664));
  if (*(v2 + 15604) < 0x20u)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::grow(v2 + 14912, 0x20u, 1);
  }

  os_unfair_lock_unlock((v2 + 15664));
  os_unfair_lock_lock((v2 + 12560));
  os_unfair_lock_assert_owner((v2 + 12560));
  v3 = MEMORY[0x29EDC5638];
  **(*(v2 + 24 * *(v2 + 12488) + 11824) + *MEMORY[0x29EDC5638] + 24) = 27984640;
  os_unfair_lock_unlock((v2 + 12560));
  os_unfair_lock_lock((v2 + 13336));
  os_unfair_lock_assert_owner((v2 + 13336));
  **(*(v2 + 24 * *(v2 + 13264) + 12600) + *v3 + 24) = 27984896;
  os_unfair_lock_unlock((v2 + 13336));
  os_unfair_lock_lock((v2 + 14112));
  os_unfair_lock_assert_owner((v2 + 14112));
  **(*(v2 + 24 * *(v2 + 14040) + 13376) + *v3 + 24) = 0;
  os_unfair_lock_unlock((v2 + 14112));
  os_unfair_lock_lock((v2 + 15664));
  os_unfair_lock_assert_owner((v2 + 15664));
  **(*(v2 + 24 * *(v2 + 15592) + 14928) + *v3 + 24) = 0;
  os_unfair_lock_unlock((v2 + 15664));
  v4 = v1[106];
  v99 = &unk_2A23F5848;
  LODWORD(v100) = 28;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v5 = *(v4 + 7160);
  handler = MEMORY[0x29EDCA5F8];
  v90 = 3321888768;
  v91 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileDriverShadersEP19AGXG18PFamilyDevice_block_invoke;
  v92 = &__block_descriptor_80_e8_40c77_ZTS10ProgramKeyIL15_AGCStreamToken28ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v77 = v4;
  v93 = v4;
  v94 = &unk_2A23F5848;
  v95 = 28;
  v97 = 0;
  v98 = 0;
  __p = 0;
  v6 = *(v5 + 8);
  v7 = objc_opt_new();
  [v7 setSync:1];
  [v7 setPipelineCache:v6];
  [v7 setBinaryArchives:0];
  v78 = MEMORY[0x29EDCA5F8];
  v79 = 3221225472;
  v80 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v81 = &unk_29F342280;
  p_handler = &handler;
  v8 = *(v5 + 24);
  if (v8 && *(v8 + 120) == 1)
  {
    v9 = [objc_msgSend(v7 "binaryArchives")];
    v10 = 0x200000000000;
    if (!v9)
    {
      v10 = 1;
    }

    atomic_fetch_or(v8, v10);
    v11 = *(v5 + 24);
    v12 = [v7 destinationBinaryArchive];
    v13 = 0x400000000000;
    if (!v12)
    {
      v13 = 1;
    }

    atomic_fetch_or(v11, v13);
  }

  if ([v7 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v7 setUseAIRNTInterfaces:0];
    }
  }

  v108 = 0;
  *v109 = 0;
  v99[2](&v99, v109, &v108);
  v14 = dispatch_data_create(*v109, v108, 0, 0);
  [v7 setDriverKeyData:v14];
  if ([v7 airScript])
  {
    v85 = 0;
    v86 = 0;
    object = dispatch_data_create_map([v7 airScript], &v85, &v86);
    v15 = v85;
    v16 = *v85;
    CC_SHA256_Init(&c);
    (*v99)(&v99, &c);
    data = 0;
    *len = 0;
    if (AGX::GetSerializedVertexFormat((v15 + v16), &data, len, v17, v18))
    {
      v19 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v19);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v114;
    [v7 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v7;
  *c.wbuf = &v78;
  if ([v7 function])
  {
    v20 = mach_absolute_time();
    v21 = *v5;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v114 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v114 + 1) = &unk_29F342320;
    v116 = v20;
    p_c = &c;
    [v21 compileFunctionRequest:v7 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v7 frameworkData] || objc_msgSend(v7, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v114 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v114 + 1) = &unk_29F3422F8;
    p_c = &c;
    v22 = [objc_msgSend(v7 "binaryArchives")];
    v23 = *v5;
    v24 = [v7 driverKeyData];
    if (v22)
    {
      [v23 compileRequest:v24 binaryArchives:objc_msgSend(v7 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v7 completionHandler:{"pipelineCache"), objc_msgSend(v7, "sync"), md}];
    }

    else
    {
      [v23 compileRequest:v24 pipelineCache:objc_msgSend(v7 sync:"pipelineCache") completionHandler:{objc_msgSend(v7, "sync"), md}];
    }
  }

  dispatch_release(v14);

  v94 = &unk_2A23F5848;
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  v99 = &unk_2A23F5848;
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  *md = 0;
  *&md[8] = md;
  *&v114 = 0x2020000000;
  BYTE8(v114) = 0;
  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE49createTGOptimizationDriverShaderAndBufferIfNeededEP19AGXG18PFamilyDevice_block_invoke;
  *&c.hash[4] = &unk_29F341018;
  *c.wbuf = md;
  *&c.wbuf[2] = v77;
  *&c.hash[6] = v1;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTGOptimizationDriverShaderAndBufferIfNeeded(AGXG18PFamilyDevice *)::tg_opt_shader_pred != -1)
  {
    dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTGOptimizationDriverShaderAndBufferIfNeeded(AGXG18PFamilyDevice *)::tg_opt_shader_pred, &c);
  }

  if ((*(*&md[8] + 24) & 1) != 0 || (v25 = *(v77 + 17104)) == 0 || !*(v25 + 16))
  {
    MTLReleaseAssertionFailure();
    __break(1u);
  }

  _Block_object_dispose(md, 8);
  v83 = v77;
  object = &unk_2A23F5888;
  LODWORD(v85) = 94;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v26 = *(v77 + 7160);
  v78 = MEMORY[0x29EDCA5F8];
  v79 = 3221225472;
  v80 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileDriverShadersEP19AGXG18PFamilyDevice_block_invoke_166;
  v81 = &unk_29F341040;
  p_handler = v1;
  v27 = *(v26 + 8);
  v28 = objc_opt_new();
  [v28 setSync:1];
  [v28 setPipelineCache:v27];
  [v28 setBinaryArchives:0];
  v99 = MEMORY[0x29EDCA5F8];
  v100 = 3221225472;
  v101 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v102 = &unk_29F342280;
  v103 = &v78;
  v29 = *(v26 + 24);
  if (v29 && *(v29 + 120) == 1)
  {
    v30 = [objc_msgSend(v28 "binaryArchives")];
    v31 = 0x200000000000;
    if (!v30)
    {
      v31 = 1;
    }

    atomic_fetch_or(v29, v31);
    v32 = *(v26 + 24);
    v33 = [v28 destinationBinaryArchive];
    v34 = 0x400000000000;
    if (!v33)
    {
      v34 = 1;
    }

    atomic_fetch_or(v32, v34);
  }

  if ([v28 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v28 setUseAIRNTInterfaces:0];
    }
  }

  v107 = 0;
  v108 = 0;
  (object[2].isa)(&object, &v108, &v107);
  v35 = dispatch_data_create(v108, v107, 0, 0);
  [v28 setDriverKeyData:v35];
  if ([v28 airScript])
  {
    v36 = [v28 airScript];
    data = 0;
    v105 = 0;
    v106 = 0;
    data = dispatch_data_create_map(v36, &v105, &v106);
    v37 = v105;
    v38 = *v105;
    CC_SHA256_Init(&c);
    (object->isa)(&object, &c);
    *v109 = 0;
    *len = 0;
    if (AGX::GetSerializedVertexFormat((v37 + v38), len, v109, v39, v40))
    {
      v41 = *len;
      CC_SHA256_Update(&c, *len, v109[0]);
      free(v41);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(data);
    *c.count = *md;
    *&c.hash[2] = v114;
    [v28 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v28;
  *c.wbuf = &v99;
  if ([v28 function])
  {
    v42 = mach_absolute_time();
    v43 = *v26;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v114 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v114 + 1) = &unk_29F342320;
    v116 = v42;
    p_c = &c;
    [v43 compileFunctionRequest:v28 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v28 frameworkData] || objc_msgSend(v28, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v114 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v114 + 1) = &unk_29F3422F8;
    p_c = &c;
    v44 = [objc_msgSend(v28 "binaryArchives")];
    v45 = *v26;
    v46 = [v28 driverKeyData];
    if (v44)
    {
      [v45 compileRequest:v46 binaryArchives:objc_msgSend(v28 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v28 completionHandler:{"pipelineCache"), objc_msgSend(v28, "sync"), md}];
    }

    else
    {
      [v45 compileRequest:v46 pipelineCache:objc_msgSend(v28 sync:"pipelineCache") completionHandler:{objc_msgSend(v28, "sync"), md}];
    }
  }

  dispatch_release(v35);

  object = &unk_2A23F5888;
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  v47 = *(v77 + 6208);
  if (v47 == 7 || v47 == 2)
  {
    os_unfair_lock_lock((v77 + 16928));
    if (!*(v77 + 6216))
    {
      std::chrono::steady_clock::now();
      v48 = 0;
      v49 = malloc_type_calloc(0x1001uLL, 0xEuLL, 0x100004077774924uLL);
      do
      {
        memset(&c, 0, 48);
        *&c.hash[5] = 0x30000007ALL;
        LOWORD(c.hash[7]) = v48;
        c.wbuf[0] = 1;
        LOBYTE(c.wbuf[1]) = 1;
        v50 = AGXIotoInstruction_PIXWAIT_0::emit(&c, v49);
        *v50 = 0xAA5002000040027;
        v49 = v50 + 8;
        ++v48;
      }

      while (v48 != 1024);
      for (i = 0; i != 1024; ++i)
      {
        memset(&c, 0, 48);
        *&c.hash[5] = 0x30000007ALL;
        LOWORD(c.hash[7]) = i;
        LOBYTE(c.wbuf[1]) = 1;
        v52 = AGXIotoInstruction_PIXWAIT_0::emit(&c, v49);
        *v52 = 0xAA5002000040027;
        v49 = v52 + 8;
      }

      for (j = 0; j != 1024; ++j)
      {
        memset(&c, 0, 32);
        *&c.hash[5] = 0x100000079;
        c.hash[7] = j;
        v54 = AGXIotoInstruction_PIXREL_0::emit(&c, v49);
        *v54 = 0xAA5002000040027;
        v49 = v54 + 8;
      }

      for (k = 0; k != 1024; ++k)
      {
        memset(&c, 0, 32);
        *&c.hash[5] = 0x100000079;
        c.hash[7] = k;
        v56 = AGXIotoInstruction_PIXREL_0::emit(&c, v49);
        *v56 = 0xAA5002000040027;
        v49 = v56 + 8;
      }

      c.hash[7] = 1;
      memset(&c, 0, 32);
      *&c.hash[5] = 0x300000020;
      AGXIotoInstruction_CNDRET_0::emit(&c, v49);
      std::chrono::steady_clock::now();
      operator new();
    }

    os_unfair_lock_unlock((v77 + 16928));
  }

  v57 = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initUntrackedInternalBufferWithDevice:*(v2 + 6312) length:128 options:32];
  *(v2 + 16472) = v57;
  v58 = MEMORY[0x29EDC5638];
  *&v59 = vdupq_n_s64(0xB6D0019uLL).u64[0];
  *(&v59 + 1) = (*&v57[*MEMORY[0x29EDC5638] + 8] >> 4) & 0xFFFFFFFFFFCLL;
  *(v2 + 16480) = v59;
  *(v2 + 16496) = 0u;
  *(v2 + 16512) = xmmword_29D2F1690;
  *(v2 + 16528) = xmmword_29D2F16A0;
  v60 = *(v2 + 16496);
  *c.count = *(v2 + 16480);
  *&c.hash[2] = v60;
  v61 = *(v2 + 16528);
  *&c.hash[6] = *(v2 + 16512);
  *&c.wbuf[2] = v61;
  os_unfair_lock_lock((v2 + 8584));
  if (atomic_load_explicit(v76, memory_order_acquire))
  {
    v62 = *(v2 + 8504);
    v63 = *v62;
    v64 = *(v62 + 8);
    v65 = *(v62 + 16);
  }

  else
  {
    os_unfair_lock_assert_owner((v2 + 8584));
    v66 = (v2 + 40 * *(v2 + 8408));
    v67 = *v58;
    v63 = *(v66[907] + v67 + 24);
    v64 = *(v66[908] + v67 + 24);
    v65 = *(v66[909] + v67 + 24);
  }

  *v63 = *c.count;
  v63[1] = *&c.hash[2];
  *v64 = *&c.hash[6];
  v64[1] = *&c.wbuf[2];
  *v65 = 0;
  os_unfair_lock_unlock((v2 + 8584));
  __src[33] = 0;
  __src[32] = 0;
  os_unfair_lock_lock((v2 + 11784));
  os_unfair_lock_assert_owner((v2 + 11784));
  v68 = *(*(v2 + 24 * *(v2 + 11712) + 11024) + *v58 + 24);
  memcpy(v68, __src, 0x111uLL);
  *(v68 + 273) = 0;
  *(v68 + 274) = c.count[0];
  *(v68 + 278) = c.count[1];
  os_unfair_lock_unlock((v2 + 11784));
  v69 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *(v2 + 17240) = dispatch_queue_create("com.apple.AGXMetal.MemoryPoolDecay", v69);
  *(v2 + 16592) = std::chrono::system_clock::now();
  v70 = MEMORY[0x29EDCA5D0];
  v71 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(v2 + 17240));
  *(v2 + 17248) = v71;
  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke;
  *&c.hash[4] = &__block_descriptor_40_e5_v8__0l;
  *&c.hash[6] = v2;
  dispatch_source_set_event_handler(v71, &c);
  dispatch_source_set_timer(*(v2 + 17248), 0, 0xB2D05E00uLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_activate(*(v2 + 17248));
  v72 = dispatch_source_create(MEMORY[0x29EDCA5A8], 0, 6uLL, *(v2 + 17240));
  *(v2 + 17256) = v72;
  handler = MEMORY[0x29EDCA5F8];
  v90 = 3221225472;
  v91 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_2;
  v92 = &__block_descriptor_40_e5_v8__0l;
  v93 = v2;
  dispatch_source_set_event_handler(v72, &handler);
  dispatch_activate(*(v2 + 17256));
  v73 = dispatch_source_create(v70, 0, 0, *(v2 + 17240));
  *(v2 + 17272) = v73;
  *md = MEMORY[0x29EDCA5F8];
  *&md[8] = 3221225472;
  *&v114 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_3;
  *(&v114 + 1) = &__block_descriptor_40_e5_v8__0l;
  p_c = v2;
  dispatch_source_set_event_handler(v73, md);
  dispatch_source_set_timer(*(v2 + 17272), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_activate(*(v2 + 17272));
  v74 = dispatch_source_create(v70, 0, 0, *(v2 + 17240));
  *(v2 + 17280) = v74;
  v78 = MEMORY[0x29EDCA5F8];
  v79 = 3221225472;
  v80 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_4;
  v81 = &__block_descriptor_40_e5_v8__0l;
  p_handler = v2;
  dispatch_source_set_event_handler(v74, &v78);
  dispatch_source_set_timer(*(v2 + 17280), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_activate(*(v2 + 17280));
}

- (id)newDepthStencilStateWithDescriptor:(id)descriptor
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 4166);
  v86 = 0;
  memset(__p, 0, sizeof(__p));
  v80 = impl;
  frontFaceStencil = [descriptor frontFaceStencil];
  backFaceStencil = [descriptor backFaceStencil];
  LODWORD(__p[0]) = [frontFaceStencil stencilCompareFunction] & 7;
  LODWORD(__p[0]) = __p[0] & 0xFFFFFFC7 | (8 * ([frontFaceStencil stencilFailureOperation] & 7));
  LODWORD(__p[0]) = __p[0] & 0xFFFFFE3F | (([frontFaceStencil depthFailureOperation] & 7) << 6);
  LODWORD(__p[0]) = __p[0] & 0xFFFFF1FF | (([frontFaceStencil depthStencilPassOperation] & 7) << 9);
  LODWORD(__p[0]) = __p[0] & 0xFFFF1FFF | (([backFaceStencil stencilCompareFunction] & 7) << 13);
  LODWORD(__p[0]) = __p[0] & 0xFFF8FFFF | (([backFaceStencil stencilFailureOperation] & 7) << 16);
  LODWORD(__p[0]) = __p[0] & 0xFFC7FFFF | (([backFaceStencil depthFailureOperation] & 7) << 19);
  LODWORD(__p[0]) = __p[0] & 0xFE3FFFFF | (([backFaceStencil depthStencilPassOperation] & 7) << 22);
  LODWORD(__p[0]) = __p[0] & 0xE3FFFFFF | (([descriptor depthCompareFunction] & 7) << 26);
  if ([descriptor isDepthWriteEnabled])
  {
    v8 = 0x20000000;
  }

  else
  {
    v8 = 0;
  }

  LODWORD(__p[0]) = __p[0] & 0xDFFFFFFF | v8;
  BYTE4(__p[0]) = [frontFaceStencil readMask];
  BYTE5(__p[0]) = [frontFaceStencil writeMask];
  BYTE6(__p[0]) = [backFaceStencil readMask];
  HIBYTE(__p[0]) = [backFaceStencil writeMask];
  label = [descriptor label];
  if (label)
  {
    MEMORY[0x29ED51E00](&__p[1], [label UTF8String]);
  }

  else
  {
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    memset(&__p[1], 0, 24);
  }

  v10 = (__p[0] & 0x1FF0000) == 0;
  v11 = LOWORD(__p[0]) >> 13;
  if (!HIBYTE(__p[0]))
  {
    v10 = 1;
  }

  selfCopy = self;
  if (v11 == 7 && v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  else
  {
    if (HIBYTE(__p[0]))
    {
      v16 = (__p[0] & 0x1FF0000) == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v15 = v17 ^ 1;
    if (v16)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    v12 = 0x2000000;
    v13 = v15;
  }

  v18 = ((LODWORD(__p[0]) >> 26) & 7) != 0 && ((LODWORD(__p[0]) >> 26) & 7) != 7;
  if (BYTE5(__p[0]))
  {
    v19 = (__p[0] & 0xFF8) != 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = __p[0] & 7;
  if (BYTE4(__p[0]))
  {
    v21 = (__p[0] & 7) != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 == 7;
  v23 = v20 != 7 || v19;
  if (v22)
  {
    v21 = 0;
  }

  if (BYTE6(__p[0]))
  {
    v24 = v11 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24 || v11 == 7;
  v26 = v23 & v21;
  v27 = __p[0] & 0x20000000;
  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = 4;
  }

  if (v15)
  {
    v29 = v14;
  }

  else
  {
    v29 = v28;
  }

  v30 = v23 & v19 | v13;
  if (v30)
  {
    v31 = 8;
  }

  else
  {
    v31 = 0;
  }

  if (v30 | v26)
  {
    v32 = 4;
  }

  else
  {
    v32 = v29;
  }

  if (v23)
  {
    v33 = 4096;
  }

  else
  {
    v33 = 0;
  }

  LODWORD(__p[0]) = v33 | __p[0] & 0xFDFFEFFF | v12;
  LOWORD(v86) = v18 | (v27 >> 29) | (v27 >> 28) | v31 | v32;
  v34 = impl + 16680;
  v35 = *(impl + 2085);
  if (v35)
  {
    v36 = HIBYTE(__p[3]);
    v37 = SHIBYTE(__p[3]) >= 0 ? HIBYTE(__p[3]) : __p[2];
    v38 = SHIBYTE(__p[3]) >= 0 ? &__p[1] : __p[1];
    v39 = impl + 16680;
    do
    {
      v40 = *(v35 + 4);
      if (v40 < __p[0])
      {
        v35 += 8;
      }

      else if (__p[0] >= v40)
      {
        v41 = v35[63];
        if (v41 >= 0)
        {
          v42 = v35[63];
        }

        else
        {
          v42 = *(v35 + 6);
        }

        if (v41 >= 0)
        {
          v43 = v35 + 40;
        }

        else
        {
          v43 = *(v35 + 5);
        }

        if (v37 >= v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = v37;
        }

        v45 = memcmp(v43, v38, v44);
        v46 = v42 < v37;
        if (v45)
        {
          v46 = v45 < 0;
        }

        v47 = !v46;
        if (v46)
        {
          v48 = 8;
        }

        else
        {
          v48 = 0;
        }

        if (v47)
        {
          v39 = v35;
        }

        v35 += v48;
      }

      else
      {
        v39 = v35;
      }

      v35 = *v35;
    }

    while (v35);
    if (v39 != v34)
    {
      v49 = *(v39 + 4);
      if (__p[0] >= v49)
      {
        if (v49 < __p[0])
        {
          goto LABEL_145;
        }

        v72 = v39[63];
        if (v72 >= 0)
        {
          v73 = v39[63];
        }

        else
        {
          v73 = *(v39 + 6);
        }

        if (v72 >= 0)
        {
          v74 = v39 + 40;
        }

        else
        {
          v74 = *(v39 + 5);
        }

        if (v73 >= v37)
        {
          v75 = v37;
        }

        else
        {
          v75 = v73;
        }

        v76 = memcmp(v38, v74, v75);
        v77 = v37 < v73;
        if (v76)
        {
          v77 = v76 < 0;
        }

        if (!v77)
        {
LABEL_145:
          v50 = *(v39 + 9);
          v78 = v80;
          if (v36 < 0)
          {
            goto LABEL_130;
          }

          goto LABEL_131;
        }
      }
    }
  }

  v50 = [(_MTLDepthStencilState *)[AGXG18PFamilyDepthStencilState alloc] initWithDevice:selfCopy depthStencilDescriptor:descriptor];
  v50->_impl.desc.var0.dword = __p[0];
  std::string::operator=(&v50->_impl.desc.label, &__p[1]);
  v50->_impl.desc.var1 = v86;
  v51 = 786432;
  if ((__p[0] & 0x2001000) == 0)
  {
    v51 = 0;
  }

  v50->_impl.var0 = v51 | ((((LODWORD(__p[0]) >> 8) & 0x200000 | (LODWORD(__p[0]) >> 2) & 0x7000000) ^ 0x200000) << 32);
  if ((__p[0] & 0x1000) != 0)
  {
    v54 = vandq_s8(vshlq_u32(vdupq_n_s32(__p[0]), xmmword_29D2F16C0), xmmword_29D2F16D0);
    v55 = vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
    v52 = v55.i32[0] | BYTE5(__p[0]) | v55.i32[1] | (BYTE4(__p[0]) << 8);
    if ((__p[0] & 0x2000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_98:
    v53 = 0xE00000000000000;
    goto LABEL_99;
  }

  v52 = 234881024;
  if ((__p[0] & 0x2000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_96:
  v53 = (__p[0] & 0x380000 | (LODWORD(__p[0]) >> 6) & 0x70000 | (bswap32(HIWORD(__p[0])) >> 16) | ((HIWORD(LODWORD(__p[0])) & 7) << 22) & 0xF1FFFFFF | (LOWORD(__p[0]) >> 13 << 25)) << 32;
LABEL_99:
  v50[1].super.super.isa = (v53 | v52);
  v81 = __p[0];
  if (SHIBYTE(__p[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, __p[1], __p[2]);
  }

  else
  {
    v82 = *&__p[1];
  }

  v83 = v86;
  v84 = v50;
  v56 = *v34;
  if (!*v34)
  {
LABEL_128:
    operator new();
  }

  v57 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v82.__r_.__value_.__l.__size_;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v82;
  }

  else
  {
    v59 = v82.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    while (1)
    {
      v60 = v56;
      v61 = v56[4];
      if (v81 >= v61)
      {
        break;
      }

LABEL_109:
      v56 = *v60;
      if (!*v60)
      {
        goto LABEL_128;
      }
    }

    if (v61 >= v81)
    {
      break;
    }

LABEL_127:
    v56 = v60[1];
    if (!v56)
    {
      goto LABEL_128;
    }
  }

  v62 = *(v60 + 63);
  if (v62 >= 0)
  {
    v63 = *(v60 + 63);
  }

  else
  {
    v63 = v60[6];
  }

  if (v62 >= 0)
  {
    v64 = (v60 + 5);
  }

  else
  {
    v64 = v60[5];
  }

  if (v63 >= size)
  {
    v65 = size;
  }

  else
  {
    v65 = v63;
  }

  v66 = memcmp(v59, v64, v65);
  v67 = size < v63;
  if (v66)
  {
    v67 = v66 < 0;
  }

  if (v67)
  {
    goto LABEL_109;
  }

  v68 = memcmp(v64, v59, v65);
  v69 = v63 < size;
  if (v68)
  {
    v69 = v68 < 0;
  }

  if (v69)
  {
    goto LABEL_127;
  }

  v78 = v80;
  if (v57 < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if ((HIBYTE(__p[3]) & 0x80) != 0)
  {
LABEL_130:
    operator delete(__p[1]);
  }

LABEL_131:
  os_unfair_lock_unlock(v78 + 4166);
  v70 = v50;
  return v50;
}

- (BOOL)isVendorSliceCompatibleWithDeploymentTarget:(unsigned int)target platform:(unsigned int)platform sdkVersion:(unsigned int)version compilerPluginVersion:(unsigned int)pluginVersion
{
  v6 = &unk_2A179E000;
  {
    selfCopy = self;
    platformCopy = platform;
    pluginVersionCopy = pluginVersion;
    targetCopy = target;
    v6 = &unk_2A179E000;
    target = targetCopy;
    platform = platformCopy;
    pluginVersion = pluginVersionCopy;
    v22 = v21;
    self = selfCopy;
    if (v22)
    {
      [AGXG18PFamilyDevice isVendorSliceCompatibleWithDeploymentTarget:platform:sdkVersion:compilerPluginVersion:]::forceBinaryArchiveIncompatible = 0;
      v6 = &unk_2A179E000;
      target = targetCopy;
      platform = platformCopy;
      pluginVersion = pluginVersionCopy;
      self = selfCopy;
    }
  }

  if (v6[1744])
  {
    return 0;
  }

  LODWORD(v7) = target | (BYTE2(target) << 8) | (target >> 4) & 0xFF0;
  if (platform == 1)
  {
    v8 = target | (BYTE2(target) << 8) | (target >> 4) & 0xFF0;
  }

  else
  {
    v8 = 0;
  }

  if ((platform & 0xFFFFFFFE) == 2)
  {
    v9 = v7 << 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v8;
  if (platform == 4)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v11 = v10 | (v7 << 32);
  v12 = v10 == 0;
  v13 = 0xFFFFLL;
  if (v12)
  {
    v13 = 0;
  }

  v12 = v9 == 0;
  v14 = 4294901760;
  if (v12)
  {
    v14 = 0;
  }

  v12 = v7 == 0;
  v15 = 0xFFFF00000000;
  if (v12)
  {
    v15 = 0;
  }

  v16 = v14 | v15 | v13;
  v17 = v16 & 0xC0013001000;
  v18 = v16 & v11;
  return (!v17 || v18 >= v17) && *(self->_impl + 4260) == pluginVersion;
}

- (id)getMostCompatibleArchitecture:(id)architecture
{
  v21 = *MEMORY[0x29EDCA608];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [architecture countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    cpuSubtype2 = 0;
    cpuType = 0;
    v8 = *v17;
    v9 = 0xFFFFFFFFLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(architecture);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 cpuType] == 16777235)
        {
          cpuSubtype = [v11 cpuSubtype];
          if (cpuSubtype <= 321)
          {
            if (cpuSubtype <= 113)
            {
              if (cpuSubtype <= 80)
              {
                if (cpuSubtype == 34)
                {
                  v13 = 5;
                  goto LABEL_65;
                }

                if (cpuSubtype == 65)
                {
                  goto LABEL_50;
                }

                if (cpuSubtype != 67)
                {
                  continue;
                }
              }

              else
              {
                if (cpuSubtype <= 82)
                {
                  if (cpuSubtype != 81)
                  {
LABEL_62:
                    v13 = 6;
                    goto LABEL_65;
                  }

LABEL_50:
                  v13 = 4;
LABEL_65:
                  if (v13 <= [(AGXG18PFamilyDevice *)self featureProfile]&& (v9 == 0xFFFFFFFF || v13 > v9))
                  {
                    cpuType = [v11 cpuType];
                    cpuSubtype2 = [v11 cpuSubtype];
                    v9 = v13;
                  }

                  continue;
                }

                if (cpuSubtype != 83)
                {
                  if (cpuSubtype != 97)
                  {
                    continue;
                  }

                  goto LABEL_50;
                }
              }

LABEL_57:
              v13 = 10;
              goto LABEL_65;
            }

            if (cpuSubtype <= 242)
            {
              if (cpuSubtype == 114)
              {
                goto LABEL_62;
              }

              if (cpuSubtype == 210)
              {
                v13 = 7;
                goto LABEL_65;
              }

              if (cpuSubtype != 227)
              {
                continue;
              }

              goto LABEL_57;
            }

            if (cpuSubtype <= 274)
            {
              if (cpuSubtype == 243)
              {
                goto LABEL_57;
              }

              if (cpuSubtype != 259)
              {
                continue;
              }

LABEL_53:
              v13 = 11;
              goto LABEL_65;
            }

            if (cpuSubtype == 275)
            {
              goto LABEL_57;
            }

            if (cpuSubtype != 290)
            {
              continue;
            }

            goto LABEL_61;
          }

          if (cpuSubtype > 433)
          {
            if (cpuSubtype <= 529)
            {
              if (cpuSubtype != 434)
              {
                if (cpuSubtype == 435)
                {
                  goto LABEL_57;
                }

                if (cpuSubtype != 498)
                {
                  continue;
                }
              }
            }

            else
            {
              if (cpuSubtype <= 593)
              {
                if (cpuSubtype != 530 && cpuSubtype != 562)
                {
                  continue;
                }

                goto LABEL_61;
              }

              if (cpuSubtype == 594)
              {
LABEL_61:
                v13 = 8;
                goto LABEL_65;
              }

              if (cpuSubtype != 610)
              {
                continue;
              }
            }
          }

          else
          {
            if (cpuSubtype <= 369)
            {
              if (cpuSubtype == 322)
              {
                goto LABEL_61;
              }

              if (cpuSubtype == 323)
              {
                goto LABEL_53;
              }

              if (cpuSubtype != 339)
              {
                continue;
              }

LABEL_39:
              v13 = 12;
              goto LABEL_65;
            }

            if (cpuSubtype > 401)
            {
              if (cpuSubtype != 402)
              {
                if (cpuSubtype != 403)
                {
                  continue;
                }

                goto LABEL_53;
              }
            }

            else if (cpuSubtype != 370)
            {
              if (cpuSubtype != 371)
              {
                continue;
              }

              goto LABEL_39;
            }
          }

          v13 = 9;
          goto LABEL_65;
        }
      }

      v6 = [architecture countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v6)
      {
        return [objc_alloc(MEMORY[0x29EDBB510]) initWithCPUType:cpuType cpuSubtype:cpuSubtype2];
      }
    }
  }

  cpuSubtype2 = 0;
  cpuType = 0;
  return [objc_alloc(MEMORY[0x29EDBB510]) initWithCPUType:cpuType cpuSubtype:cpuSubtype2];
}

- (MTLArchitecture)architecture
{
  v2 = [objc_alloc(MEMORY[0x29EDBB510]) initWithCPUType:16777235 cpuSubtype:*(self->_impl + 4258) revision:{-[AGXG18PFamilyDevice gpuRevisionName](self, "gpuRevisionName")}];

  return v2;
}

- (MTLTargetDeviceArchitecture)targetDeviceArchitecture
{
  v3 = objc_opt_new();
  [v3 setCpuType:16777235];
  impl = self->_impl;
  [v3 setSubType:impl[4258]];
  [v3 setDriverVersion:impl[4260]];
  [v3 setVersion:*(self->_impl + 4264)];

  return v3;
}

- (BOOL)supportsMemoryOrderAtomics
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyDevice;
  return [(_MTLDevice *)&v3 supportsMemoryOrderAtomics];
}

- (id)gpuRevisionName
{
  impl = self->_impl;
  if (impl)
  {
    return [MEMORY[0x29EDBA0F8] stringWithUTF8String:kAGXGPURevName[impl[1761]]];
  }

  else
  {
    return 0;
  }
}

- (unsigned)gpuCoreCount
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  if (impl[445].i8[6] != 1)
  {
    return impl[441].u32[0];
  }

  v3 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(impl[(*&impl[438] == 0) + 438])))));
  return vadd_s32(vdup_lane_s32(v3, 1), v3).u32[0];
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Device(impl);
    MEMORY[0x29ED520D0](v4, 0x10F0C404B55F897);
  }

  cdmSubstreamProcessor = self->cdmSubstreamProcessor;
  if (cdmSubstreamProcessor)
  {
    (*(*cdmSubstreamProcessor + 8))(cdmSubstreamProcessor, a2);
  }

  [(AGXG18PFamilyDevice *)self _deregisterForSignpostEnablement];

  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDevice;
  [(IOGPUMetalDevice *)&v6 dealloc];
}

- (void)shrinkHeaps
{
  impl = self->_impl;
  if (impl)
  {
    v3 = impl[793];
    block = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = impl + 791;
    dispatch_sync(v3, &block);
    v4 = impl[814];
    block = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = impl + 812;
    dispatch_sync(v4, &block);
    v5 = impl[835];
    block = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = impl + 833;
    dispatch_sync(v5, &block);
    v6 = impl[856];
    block = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = impl + 854;
    dispatch_sync(v6, &block);
  }
}

- (void)_purgeDevice
{
  impl = self->_impl;
  if (impl)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::purgeDevice(impl, 1.0);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyDevice;
  [(IOGPUMetalDevice *)&v4 _purgeDevice];
}

- (void)_decrementCommandQueueCount
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyDevice;
  [(_MTLDevice *)&v3 _decrementCommandQueueCount];
  atomic_fetch_add(&self->_telemetry.commandQsInFlight, 0xFFFFu);
}

- (void)_incrementCommandQueueCount
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyDevice;
  [(_MTLDevice *)&v3 _incrementCommandQueueCount];
  atomic_fetch_add(&self->_telemetry.commandQsInFlight, 1u);
}

- (void)_deregisterForSignpostEnablement
{
  {
    signpostEnablementCallback = self->_signpostEnablementCallback;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZN3AGX35agxaSignpostDeregisterForEnablementEU13block_pointerFvbE_block_invoke;
    v5[3] = &unk_29F344230;
    v5[4] = signpostEnablementCallback;
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: signpost enablement notifications queue is uninitialized", v5, 2u);
  }

  v4 = self->_signpostEnablementCallback;

  _Block_release(v4);
}

- (void)_registerForSignpostEnablement
{
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AGXG18PFamilyDevice__registerForSignpostEnablement__block_invoke;
  aBlock[3] = &unk_29F341068;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  self->_signpostEnablementCallback = v3;
  AGX::agxaSignpostRegisterForEnablement(v3);
}

uint64_t __53__AGXG18PFamilyDevice__registerForSignpostEnablement__block_invoke(uint64_t result, int a2)
{
  v95 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = result;
    os_unfair_lock_lock((*(result + 32) + 2040));
    [*(*(v2 + 32) + 2032) compact];
    v3 = [*(*(v2 + 32) + 2032) allObjects];
    v47 = v2;
    os_unfair_lock_unlock((*(v2 + 32) + 2040));
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:&v62 objects:v94 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v63;
      v53 = *v63;
      do
      {
        v7 = 0;
        v59 = v5;
        do
        {
          if (*v63 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v62 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 label])
            {
              {
                {
                  v16 = [objc_msgSend(v14 "label")];
                  v17 = v14[16];
                  v18 = (v17 + 2888);
                  if (*(v17 + 2911) < 0)
                  {
                    v18 = *v18;
                  }

                  v8 = *(v17 + 2800);
                  v9 = *(v17 + 1416);
                  *buf = 136446978;
                  v67 = v16;
                  v68 = 1026;
                  v69 = v8;
                  v70 = 2050;
                  *v71 = v9;
                  *&v71[8] = 2082;
                  v72 = v18;
                  v10 = v15;
                  v11 = "ComputePipelineLabel";
                  v12 = "Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s";
                  v13 = 38;
                  goto LABEL_7;
                }
              }
            }

            goto LABEL_8;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v14 label])
          {
            goto LABEL_8;
          }

          v19 = v14 + 30;
          v20 = v14[31];
          if (v20)
          {
            v21 = *(v20 + 2800);
            v22 = *(v20 + 1416);
            v23 = (v20 + 2888);
            if (*(v20 + 2911) < 0)
            {
              v23 = *v23;
            }

            v24 = *v19;
            if (!*v19)
            {
LABEL_36:
              v26 = 0xFFFFFFFFLL;
              v27 = "";
              v25 = -1;
              v28 = v14[32];
              if (!v28)
              {
                goto LABEL_37;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v22 = 0xFFFFFFFFLL;
            v23 = "";
            v21 = -1;
            v24 = *v19;
            if (!*v19)
            {
              goto LABEL_36;
            }
          }

          v25 = *(v24 + 2800);
          v26 = *(v24 + 1416);
          v27 = (v24 + 2888);
          if (*(v24 + 2911) < 0)
          {
            v27 = *v27;
          }

          v28 = v14[32];
          if (!v28)
          {
LABEL_37:
            v30 = 0xFFFFFFFFLL;
            v31 = "";
            v29 = -1;
            v32 = v14[34];
            if (!v32)
            {
              goto LABEL_38;
            }

            goto LABEL_30;
          }

LABEL_27:
          v29 = *(v28 + 2800);
          v30 = *(v28 + 1416);
          v31 = (v28 + 2888);
          if (*(v28 + 2911) < 0)
          {
            v31 = *v31;
          }

          v32 = v14[34];
          if (!v32)
          {
LABEL_38:
            v34 = 0xFFFFFFFFLL;
            v35 = "";
            v33 = -1;
            v36 = v14[33];
            if (!v36)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }

LABEL_30:
          v33 = *(v32 + 2800);
          v34 = *(v32 + 1416);
          v35 = (v32 + 2888);
          if (*(v32 + 2911) < 0)
          {
            v35 = *v35;
          }

          v36 = v14[33];
          if (!v36)
          {
LABEL_39:
            v37 = -1;
            v38 = 0xFFFFFFFFLL;
            v39 = "";
            goto LABEL_40;
          }

LABEL_33:
          v37 = *(v36 + 2800);
          v38 = *(v36 + 1416);
          v39 = (v36 + 2888);
          if (*(v36 + 2911) < 0)
          {
            v39 = *v39;
          }

LABEL_40:
          {
            v51 = v23;
            v52 = v35;
            v40 = v22;
            v54 = v21;
            v41 = v27;
            v57 = v26;
            v58 = v30;
            v42 = v31;
            v56 = v33;
            v55 = v38;
            v44 = v41;
            v6 = v53;
            v45 = v40;
            v5 = v59;
            if (v43)
            {
              v48 = v45;
              v49 = v44;
              v46 = [objc_msgSend(v14 "label")];
              *buf = 136450050;
              v67 = v46;
              v68 = 1026;
              v69 = v54;
              v70 = 1026;
              *v71 = v25;
              *&v71[4] = 1026;
              *&v71[6] = v29;
              LOWORD(v72) = 1026;
              *(&v72 + 2) = v56;
              HIWORD(v72) = 1026;
              v73 = v37;
              v74 = 2050;
              v75 = v48;
              v5 = v59;
              v76 = 2050;
              v77 = v57;
              v78 = 2050;
              v79 = v58;
              v80 = 2050;
              v81 = v34;
              v82 = 2050;
              v83 = v55;
              v84 = 2082;
              v10 = v50;
              v85 = v51;
              v86 = 2082;
              v87 = v49;
              v88 = 2082;
              v89 = v42;
              v90 = 2082;
              v6 = v53;
              v91 = v52;
              v92 = 2082;
              v93 = v39;
              v11 = "RenderPipelineLabel";
              v12 = "Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  VertexID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  FragmentID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  TileID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  MeshID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  ObjectID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t\t  VertexUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  FragmentUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  TileUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  MeshUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  ObjectUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t\t  VertexRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  FragmentRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  TileRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  MeshRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t\t  ObjectRequestHash=%{public,signpost.description:attribute}s ";
              v13 = 142;
LABEL_7:
              _os_signpost_emit_with_name_impl(&dword_29CA13000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, v12, buf, v13);
            }
          }

LABEL_8:
          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v62 objects:v94 count:16];
      }

      while (v5);
    }

    v61.receiver = *(v47 + 32);
    v61.super_class = AGXG18PFamilyDevice;
    return [objc_msgSendSuper2(&v61 memoryInfo)];
  }

  return result;
}

- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v7 = [AGXG18PFamilyTextureViewPool alloc];

  return [(AGXG18PFamilyTextureViewPool *)v7 initWithDevice:self descriptor:descriptor error:error];
}

- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [AGXG18PFamilyArgumentTable_mtlnext alloc];

  return [(AGXG18PFamilyArgumentTable_mtlnext *)v6 initWithDescriptor:descriptor device:self];
}

- (id)newCommandBuffer
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v3 = [AGXG18PFamilyCommandBuffer_mtlnext alloc];

  return [(AGXG18PFamilyCommandBuffer_mtlnext *)v3 initWithDevice:self];
}

- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  [(AGXG18PFamilyDevice *)self setupDeferred:descriptor];
  v6 = [AGXG18PFamilyCommandQueue_mtlnext alloc];

  return [(AGXG18PFamilyCommandQueue_mtlnext *)v6 initWithDevice:self descriptor:descriptor];
}

- (id)newMTL4CommandQueue
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v3 = [AGXG18PFamilyCommandQueue_mtlnext alloc];

  return [(AGXG18PFamilyCommandQueue_mtlnext *)v3 initWithDevice:self];
}

- (id)newDevicePoolAliasedCommandAllocator
{
  v3 = [AGXG18PFamilyCommandAllocator_mtlnext alloc];

  return [(AGXG18PFamilyCommandAllocator_mtlnext *)v3 initWithDeviceAndAliasToDevicePools:self];
}

- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error
{
  [(AGXG18PFamilyDevice *)self setupDeferred:descriptor];
  v6 = [AGXG18PFamilyCommandAllocator_mtlnext alloc];

  return [(AGXG18PFamilyCommandAllocator_mtlnext *)v6 initWithDevice:self descriptor:descriptor];
}

- (id)newCommandAllocator
{
  [(AGXG18PFamilyDevice *)self setupDeferred];
  v3 = [AGXG18PFamilyCommandAllocator_mtlnext alloc];

  return [(AGXG18PFamilyCommandAllocator_mtlnext *)v3 initWithDevice:self];
}

- (AGXG18PFamilyDevice)initWithAcceleratorPort:(unsigned int)port simultaneousInstances:(unsigned int)instances
{
  v7 = *MEMORY[0x29EDCA608];
  gatherDeviceOptions(AGX::HAL300::Device *,NSString **,NSString **)::deviceOptions = 0;
  if (gatherDeviceOptions(AGX::HAL300::Device *,NSString **,NSString **)::once != -1)
  {
    selfCopy = self;
    dispatch_once(&gatherDeviceOptions(AGX::HAL300::Device *,NSString **,NSString **)::once, &__block_literal_global_1823);
    self = selfCopy;
  }

  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDevice;
  if ([IOGPUMetalDevice initWithAcceleratorPort:sel_initWithAcceleratorPort_options_ options:?])
  {
    operator new();
  }

  return 0;
}

- (id)newProfileWithExecutionSize:(unint64_t)size
{
  deviceRef = [(IOGPUMetalDevice *)self deviceRef];
  v5 = [AGXG18PFamilyDeadlineProfile alloc];

  return [(AGXG18PFamilyDeadlineProfile *)v5 initWithDevice:deviceRef executionSize:size];
}

- (unint64_t)bufferRobustnessSupport
{
  if ([(AGXG18PFamilyDevice *)self supportsBufferBoundsChecking])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)newLateEvalEvent
{
  {
  }

  v3 = [AGXG18PFamilyLateEvalEvent alloc];

  return [(_IOGPUMetalMTLLateEvalEvent *)v3 initWithDevice:self];
}

@end