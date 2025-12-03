@interface Renderer
- (Renderer)initWithDevice:(id)device scene:(id)scene size:(CGSize)size;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newArgumentEncoderForResources:(id)resources;
- (id)newComputePipelineStateWithFunction:(id)function linkedFunctions:(id)functions;
- (id)specializedFunctionWithName:(id)name;
- (void)createAccelerationStructures;
- (void)createBuffers;
- (void)createPipelines;
- (void)drawableSizeWillChange:(CGSize)change;
- (void)loadMetal;
- (void)render;
- (void)updateUniforms;
@end

@implementation Renderer

- (Renderer)initWithDevice:(id)device scene:(id)scene size:(CGSize)size
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = Renderer;
  v12 = [(Renderer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    v14 = dispatch_semaphore_create(3);
    sem = v13->_sem;
    v13->_sem = v14;

    objc_storeStrong(&v13->_scene, scene);
    [(Renderer *)v13 loadMetal];
    [(Renderer *)v13 createBuffers];
    [(Renderer *)v13 createAccelerationStructures];
    [(Renderer *)v13 createPipelines];
    [(Renderer *)v13 drawableSizeWillChange:width, height];
  }

  return v13;
}

- (void)loadMetal
{
  newDefaultLibrary = [(MTLDevice *)self->_device newDefaultLibrary];
  library = self->_library;
  self->_library = newDefaultLibrary;

  newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
  queue = self->_queue;
  self->_queue = newCommandQueue;

  _objc_release_x1();
}

- (id)newComputePipelineStateWithFunction:(id)function linkedFunctions:(id)functions
{
  functionCopy = function;
  functionsCopy = functions;
  if (functionsCopy)
  {
    v8 = objc_alloc_init(MTLLinkedFunctions);
    [v8 setFunctions:functionsCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(MTLComputePipelineDescriptor);
  [v9 setComputeFunction:functionCopy];
  [v9 setLinkedFunctions:v8];
  [v9 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  device = self->_device;
  v13 = 0;
  v11 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v9 options:0 reflection:0 error:&v13];

  return v11;
}

- (id)specializedFunctionWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MTLFunctionConstantValues);
  resourcesStride = self->_resourcesStride;
  [v5 setConstantValue:&resourcesStride type:33 atIndex:0];
  [v5 setConstantValue:&self->_useIntersectionFunctions type:53 atIndex:1];
  [v5 setConstantValue:&self->_usePerPrimitiveData type:53 atIndex:2];
  library = self->_library;
  v9 = 0;
  v7 = [(MTLLibrary *)library newFunctionWithName:nameCopy constantValues:v5 error:&v9];

  return v7;
}

- (void)createPipelines
{
  *&self->_useIntersectionFunctions = 256;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  geometries = [(Scene *)self->_scene geometries];
  v4 = [geometries countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v4)
  {
    v5 = *v54;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(geometries);
        }

        intersectionFunctionName = [*(*(&v53 + 1) + 8 * i) intersectionFunctionName];
        v8 = intersectionFunctionName == 0;

        if (!v8)
        {
          self->_useIntersectionFunctions = 1;
          goto LABEL_11;
        }
      }

      v4 = [geometries countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = +[NSMutableDictionary dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  geometries2 = [(Scene *)self->_scene geometries];
  v11 = [geometries2 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v11)
  {
    v12 = *v50;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(geometries2);
        }

        v14 = *(*(&v49 + 1) + 8 * j);
        intersectionFunctionName2 = [v14 intersectionFunctionName];
        if (intersectionFunctionName2)
        {
          intersectionFunctionName3 = [v14 intersectionFunctionName];
          v17 = [v9 objectForKey:intersectionFunctionName3];
          v18 = v17 == 0;

          if (v18)
          {
            intersectionFunctionName4 = [v14 intersectionFunctionName];
            v20 = [(Renderer *)self specializedFunctionWithName:intersectionFunctionName4];

            intersectionFunctionName5 = [v14 intersectionFunctionName];
            [v9 setObject:v20 forKeyedSubscript:intersectionFunctionName5];
          }
        }
      }

      v11 = [geometries2 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v11);
  }

  v22 = [(Renderer *)self specializedFunctionWithName:@"raytracingKernel"];
  allValues = [v9 allValues];
  v24 = [(Renderer *)self newComputePipelineStateWithFunction:v22 linkedFunctions:allValues];
  raytracingPipeline = self->_raytracingPipeline;
  self->_raytracingPipeline = v24;

  if (self->_useIntersectionFunctions)
  {
    v26 = objc_alloc_init(MTLIntersectionFunctionTableDescriptor);
    geometries3 = [(Scene *)self->_scene geometries];
    [v26 setFunctionCount:{objc_msgSend(geometries3, "count")}];

    v28 = [(MTLComputePipelineState *)self->_raytracingPipeline newIntersectionFunctionTableWithDescriptor:v26];
    intersectionFunctionTable = self->_intersectionFunctionTable;
    self->_intersectionFunctionTable = v28;

    if (!self->_usePerPrimitiveData)
    {
      [(MTLIntersectionFunctionTable *)self->_intersectionFunctionTable setBuffer:self->_resourceBuffer offset:0 atIndex:0];
    }

    for (k = 0; ; ++k)
    {
      geometries4 = [(Scene *)self->_scene geometries];
      v32 = k < [geometries4 count];

      if (!v32)
      {
        break;
      }

      geometries5 = [(Scene *)self->_scene geometries];
      v34 = [geometries5 objectAtIndexedSubscript:k];

      intersectionFunctionName6 = [v34 intersectionFunctionName];
      LOBYTE(geometries5) = intersectionFunctionName6 == 0;

      if ((geometries5 & 1) == 0)
      {
        intersectionFunctionName7 = [v34 intersectionFunctionName];
        v37 = [v9 objectForKeyedSubscript:intersectionFunctionName7];

        v38 = [(MTLComputePipelineState *)self->_raytracingPipeline functionHandleWithFunction:v37];
        [(MTLIntersectionFunctionTable *)self->_intersectionFunctionTable setFunction:v38 atIndex:k];
      }
    }
  }

  v39 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v40 = [(MTLLibrary *)self->_library newFunctionWithName:@"copyVertex"];
  [v39 setVertexFunction:v40];

  v41 = [(MTLLibrary *)self->_library newFunctionWithName:@"copyFragment"];
  [v39 setFragmentFunction:v41];

  colorAttachments = [v39 colorAttachments];
  v43 = [colorAttachments objectAtIndexedSubscript:0];
  [v43 setPixelFormat:115];

  device = self->_device;
  v48 = 0;
  v45 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v39 error:&v48];
  v46 = v48;
  copyPipeline = self->_copyPipeline;
  self->_copyPipeline = v45;
}

- (id)newArgumentEncoderForResources:(id)resources
{
  resourcesCopy = resources;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = resourcesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = +[MTLArgumentDescriptor argumentDescriptor];
        [v10 setIndex:{objc_msgSend(v4, "count")}];
        [v10 setAccess:0];
        if ([v9 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
        {
          [v10 setDataType:60];
        }

        else if ([v9 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
        {
          v11 = v9;
          [v10 setDataType:58];
          [v10 setTextureType:{objc_msgSend(v11, "textureType")}];
        }

        [v4 addObject:v10];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [(MTLDevice *)self->_device newArgumentEncoderWithArguments:v4];
  return v12;
}

- (void)createBuffers
{
  ManagedBufferStorageMode = getManagedBufferStorageMode();
  v4 = [(MTLDevice *)self->_device newBufferWithLength:768 options:ManagedBufferStorageMode];
  uniformBuffer = self->_uniformBuffer;
  self->_uniformBuffer = v4;

  [(Scene *)self->_scene uploadToBuffers];
  self->_resourcesStride = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  geometries = [(Scene *)self->_scene geometries];
  v7 = [geometries countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(geometries);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        resources = [v10 resources];
        v12 = self->_resourcesStride < 8 * [resources count];

        if (v12)
        {
          resources2 = [v10 resources];
          self->_resourcesStride = 8 * [resources2 count];
        }
      }

      v7 = [geometries countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  device = self->_device;
  resourcesStride = self->_resourcesStride;
  geometries2 = [(Scene *)self->_scene geometries];
  v17 = -[MTLDevice newBufferWithLength:options:](device, "newBufferWithLength:options:", [geometries2 count] * resourcesStride, ManagedBufferStorageMode);
  resourceBuffer = self->_resourceBuffer;
  self->_resourceBuffer = v17;

  v19 = 0;
LABEL_11:
  geometries3 = [(Scene *)self->_scene geometries];
  v21 = v19 < [geometries3 count];

  if (v21)
  {
    geometries4 = [(Scene *)self->_scene geometries];
    v23 = [geometries4 objectAtIndexedSubscript:v19];

    resources3 = [v23 resources];
    v25 = 0;
    v26 = [(MTLBuffer *)self->_resourceBuffer contents]+ self->_resourcesStride * v19;
    while (1)
    {
      if (v25 >= [resources3 count])
      {

        ++v19;
        goto LABEL_11;
      }

      v27 = [resources3 objectAtIndexedSubscript:v25];
      if ([v27 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
      {
        gpuAddress = [v27 gpuAddress];
      }

      else
      {
        if (![v27 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
        {
          goto LABEL_19;
        }

        gpuAddress = [v27 gpuResourceID];
      }

      *&v26[8 * v25] = gpuAddress;
LABEL_19:

      ++v25;
    }
  }
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  device = self->_device;
  if (device)
  {
    [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptorCopy];
    device = self->_device;
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MTLDevice *)device newAccelerationStructureWithSize:v6];
  v8 = [(MTLDevice *)self->_device newBufferWithLength:v17 options:32];
  commandBuffer = [(MTLCommandQueue *)self->_queue commandBuffer];
  accelerationStructureCommandEncoder = [commandBuffer accelerationStructureCommandEncoder];
  v11 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [accelerationStructureCommandEncoder buildAccelerationStructure:v7 descriptor:descriptorCopy scratchBuffer:v8 scratchBufferOffset:0];
  [accelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:v7 toBuffer:v11 offset:0];
  [accelerationStructureCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  v12 = -[MTLDevice newAccelerationStructureWithSize:](self->_device, "newAccelerationStructureWithSize:", *[v11 contents]);
  commandBuffer2 = [(MTLCommandQueue *)self->_queue commandBuffer];

  accelerationStructureCommandEncoder2 = [commandBuffer2 accelerationStructureCommandEncoder];

  [accelerationStructureCommandEncoder2 copyAndCompactAccelerationStructure:v7 toAccelerationStructure:v12];
  [accelerationStructureCommandEncoder2 endEncoding];
  [commandBuffer2 commit];

  return v12;
}

- (void)createAccelerationStructures
{
  ManagedBufferStorageMode = getManagedBufferStorageMode();
  v4 = objc_alloc_init(NSMutableArray);
  primitiveAccelerationStructures = self->_primitiveAccelerationStructures;
  self->_primitiveAccelerationStructures = v4;

  for (i = 0; ; ++i)
  {
    geometries = [(Scene *)self->_scene geometries];
    v8 = i < [geometries count];

    if (!v8)
    {
      break;
    }

    geometries2 = [(Scene *)self->_scene geometries];
    v10 = [geometries2 objectAtIndexedSubscript:i];

    geometryDescriptor = [v10 geometryDescriptor];
    [geometryDescriptor setIntersectionFunctionTableOffset:i];
    v12 = +[MTLPrimitiveAccelerationStructureDescriptor descriptor];
    v47 = geometryDescriptor;
    v13 = [NSArray arrayWithObjects:&v47 count:1];
    [v12 setGeometryDescriptors:v13];

    v14 = [(Renderer *)self newAccelerationStructureWithDescriptor:v12];
    [(NSMutableArray *)self->_primitiveAccelerationStructures addObject:v14];
  }

  device = self->_device;
  instances = [(Scene *)self->_scene instances];
  v17 = -[MTLDevice newBufferWithLength:options:](device, "newBufferWithLength:options:", [instances count] << 6, ManagedBufferStorageMode);
  instanceBuffer = self->_instanceBuffer;
  self->_instanceBuffer = v17;

  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  v20 = 0;
  for (j = contents; ; j += 64)
  {
    v22 = [(Scene *)self->_scene instances:v43];
    v23 = v20 < [v22 count];

    if (!v23)
    {
      break;
    }

    instances2 = [(Scene *)self->_scene instances];
    v25 = [instances2 objectAtIndexedSubscript:v20];

    geometries3 = [(Scene *)self->_scene geometries];
    geometry = [v25 geometry];
    v28 = [geometries3 indexOfObject:geometry];

    v29 = &contents[64 * v20];
    *(v29 + 15) = v28;
    geometry2 = [v25 geometry];
    intersectionFunctionName = [geometry2 intersectionFunctionName];
    *(v29 + 12) = 4 * (intersectionFunctionName == 0);

    *(v29 + 14) = 0;
    v32 = 0;
    *(v29 + 13) = [v25 mask];
    v33 = j;
    do
    {
      for (k = 0; k != 3; ++k)
      {
        [v25 transform];
        v43 = v35;
        v44 = v36;
        v45 = v37;
        v46 = v38;
        *&v33[4 * k] = *((&v43 + v32) & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
      }

      ++v32;
      v33 += 12;
    }

    while (v32 != 4);

    ++v20;
  }

  v39 = +[MTLInstanceAccelerationStructureDescriptor descriptor];
  [v39 setInstancedAccelerationStructures:self->_primitiveAccelerationStructures];
  instances3 = [(Scene *)self->_scene instances];
  [v39 setInstanceCount:{objc_msgSend(instances3, "count")}];

  [v39 setInstanceDescriptorBuffer:self->_instanceBuffer];
  v41 = [(Renderer *)self newAccelerationStructureWithDescriptor:v39];
  instanceAccelerationStructure = self->_instanceAccelerationStructure;
  self->_instanceAccelerationStructure = v41;
}

- (void)drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  self->_size = change;
  v6 = objc_alloc_init(MTLTextureDescriptor);
  [v6 setPixelFormat:125];
  [v6 setTextureType:2];
  [v6 setWidth:width];
  v7 = height;
  [v6 setHeight:height];
  [v6 setStorageMode:2];
  [v6 setUsage:3];
  v8 = 0;
  accumulationTargets = self->_accumulationTargets;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];
    v13 = accumulationTargets[v8];
    accumulationTargets[v8] = v12;

    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  [v6 setPixelFormat:53];
  [v6 setUsage:1];
  [v6 setStorageMode:0];
  v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];
  randomTexture = self->_randomTexture;
  self->_randomTexture = v14;

  v16 = malloc_type_malloc((height * (width * 4.0)), 0x100004052888210uLL);
  v17 = v16;
  v18 = width * height;
  if (v18 > 0.0)
  {
    v19 = 1;
    v20 = v16;
    do
    {
      v21 = rand();
      if (v21 <= 0)
      {
        v22 = -(-v21 & 0xFFFFF);
      }

      else
      {
        v22 = v21 & 0xFFFFF;
      }

      *v20++ = v22;
      v23 = v19++;
    }

    while (v18 > v23);
  }

  v24 = self->_randomTexture;
  memset(v25, 0, 24);
  v25[3] = width;
  v25[4] = v7;
  v25[5] = 1;
  [(MTLTexture *)v24 replaceRegion:v25 mipmapLevel:0 withBytes:v17 bytesPerRow:(width * 4.0)];
  free(v17);
  self->_frameIndex = 0;
}

- (void)updateUniforms
{
  self->_uniformBufferOffset = self->_uniformBufferIndex << 8;
  v3 = ([(MTLBuffer *)self->_uniformBuffer contents]+ self->_uniformBufferOffset);
  [(Scene *)self->_scene cameraPosition];
  v24 = v4;
  [(Scene *)self->_scene cameraTarget];
  v26 = v5;
  [(Scene *)self->_scene cameraUp];
  v6 = vsubq_f32(v26, v24);
  v7 = vmulq_f32(v6, v6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  v9 = vrsqrte_f32(v8);
  v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(v6, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v11)), v13, v12);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v25 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v18 = vmlaq_f32(vmulq_f32(v12, vnegq_f32(v25)), v11, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v19 = vmulq_f32(v18, v18);
  v7.f32[0] = v19.f32[1] + (v19.f32[2] + v19.f32[0]);
  v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  *v18.f32 = vrsqrte_f32(v7.u32[0]);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v18.f32, *v18.f32)));
  v27 = vmulq_n_f32(v20, vmul_f32(*v18.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  v3[1] = v24;
  v3[2] = v25;
  v3[3] = v27;
  v3[4] = v11;
  v20.f32[0] = self->_size.width;
  v7.f32[0] = self->_size.height;
  v21 = v20.f32[0] / v7.f32[0];
  v22 = tanf(0.3927);
  v3[2] = vmulq_n_f32(v25, v22 * v21);
  v3[3] = vmulq_n_f32(v27, v22);
  *v3->f32 = vmovn_s64(vcvtq_u64_f64(self->_size));
  frameIndex = self->_frameIndex;
  self->_frameIndex = frameIndex + 1;
  v3->i32[2] = frameIndex;
  v3->i32[3] = [(Scene *)self->_scene lightCount];
  self->_uniformBufferIndex = (self->_uniformBufferIndex + 1) % 3;
}

- (void)render
{
  p_sem = &self->_sem;
  dispatch_semaphore_wait(self->_sem, 0xFFFFFFFFFFFFFFFFLL);
  commandBuffer = [(OS_dispatch_semaphore *)*(p_sem - 13) commandBuffer];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_10000B340;
  v38[4] = sub_10000B350;
  v39 = *p_sem;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000B358;
  v37[3] = &unk_1000185C0;
  v37[4] = v38;
  [commandBuffer addCompletedHandler:v37];
  [(Renderer *)self updateUniforms];
  size = self->_size;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setBuffer:self->_uniformBuffer offset:self->_uniformBufferOffset atIndex:0];
  if (!self->_usePerPrimitiveData)
  {
    [computeCommandEncoder setBuffer:self->_resourceBuffer offset:0 atIndex:1];
  }

  [computeCommandEncoder setBuffer:self->_instanceBuffer offset:0 atIndex:2];
  lightBuffer = [(Scene *)self->_scene lightBuffer];
  [computeCommandEncoder setBuffer:lightBuffer offset:0 atIndex:3];

  [computeCommandEncoder setAccelerationStructure:self->_instanceAccelerationStructure atBufferIndex:4];
  [computeCommandEncoder setIntersectionFunctionTable:self->_intersectionFunctionTable atBufferIndex:5];
  [computeCommandEncoder setTexture:self->_randomTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_accumulationTargets[0] atIndex:1];
  [computeCommandEncoder setTexture:self->_accumulationTargets[1] atIndex:2];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  geometries = [(Scene *)self->_scene geometries];
  v7 = [geometries countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v7)
  {
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(geometries);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        resources = [v10 resources];
        v12 = [resources countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v12)
        {
          v13 = *v30;
          do
          {
            v14 = 0;
            do
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(resources);
              }

              [computeCommandEncoder useResource:*(*(&v29 + 1) + 8 * v14) usage:1];
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [resources countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v12);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [geometries countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_primitiveAccelerationStructures;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [computeCommandEncoder useResource:*(*(&v25 + 1) + 8 * v18) usage:1];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v40 count:16];
    }

    while (v16);
  }

  [computeCommandEncoder setComputePipelineState:self->_raytracingPipeline];
  v23 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(size), vdupq_n_s64(7uLL)), 3uLL);
  v24 = 1;
  v21 = vdupq_n_s64(8uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
  *self->_accumulationTargets = vextq_s8(*self->_accumulationTargets, *self->_accumulationTargets, 8uLL);
  [commandBuffer commit];

  _Block_object_dispose(v38, 8);
}

@end