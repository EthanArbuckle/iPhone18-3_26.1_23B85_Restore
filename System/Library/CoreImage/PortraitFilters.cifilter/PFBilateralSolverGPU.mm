@interface PFBilateralSolverGPU
- (PFBilateralSolverGPU)initWithWidth:(int)width height:(int)height maxVertices:(unint64_t)vertices commandBuffer:(id)buffer;
- (int)_doBistochastizeWithCommandBuffer:(id)buffer t_tex:(id)t_tex c_tex:(id)c_tex lambda:(float)lambda nIterations:(int)iterations;
- (int)_doPCGWithCommandBuffer:(id)buffer nIterations:(int)iterations;
- (int)_doSliceTrilinearWithCommandBuffer:(id)buffer ref_tex:(id)ref_tex o_tex:(id)o_tex;
- (int)_doSliceWithCommandBuffer:(id)buffer o_tex:(id)o_tex;
- (int)doSolveWithBilateralGridhash:(id)gridhash reference:(id)reference disparity:(id)disparity confidence:(id)confidence output:(id)output lambda:(float)lambda maxIterations:(int)iterations offsets:(id *)self0;
- (void)_prepareResources:(id)resources;
- (void)_setupBuffer;
- (void)_setupMetal;
- (void)_setupPipelineCache;
- (void)_setupPipelinesAsync:(id)async;
@end

@implementation PFBilateralSolverGPU

- (void)_setupPipelineCache
{
  if (self->_metalDevice)
  {
    if (qword_8CED8 != -1)
    {
      sub_4B364();
    }

    v3 = [NSNumber numberWithUnsignedLong:[(MTLDevice *)self->_metalDevice registryID]];
    v4 = qword_8CED0;
    objc_sync_enter(v4);
    v5 = [qword_8CED0 objectForKeyedSubscript:v3];
    objc_sync_exit(v4);

    if (v5)
    {
      if ([v5 count] != &dword_8 + 1)
      {
        sub_4B378();
      }

      v6 = 0;
      computePipelines = self->_computePipelines;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = computePipelines[v6];
        computePipelines[v6] = v8;

        ++v6;
      }

      while (v6 != 9);
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_2ED08;
      v10[3] = &unk_75708;
      v10[4] = self;
      v11 = v3;
      [(PFBilateralSolverGPU *)self _setupPipelinesAsync:v10];
    }
  }
}

- (PFBilateralSolverGPU)initWithWidth:(int)width height:(int)height maxVertices:(unint64_t)vertices commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v15.receiver = self;
  v15.super_class = PFBilateralSolverGPU;
  v12 = [(PFBilateralSolverGPU *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_useTrilinearInterpolation = 1;
    v12->_width = width;
    v12->_height = height;
    v12->_maxVertices = vertices;
    objc_storeStrong(&v12->_commandBuffer, buffer);
    [(PFBilateralSolverGPU *)v13 _setupMetal];
    [(PFBilateralSolverGPU *)v13 _setupPipelineCache];
    [(PFBilateralSolverGPU *)v13 _setupBuffer];
  }

  return v13;
}

- (int)doSolveWithBilateralGridhash:(id)gridhash reference:(id)reference disparity:(id)disparity confidence:(id)confidence output:(id)output lambda:(float)lambda maxIterations:(int)iterations offsets:(id *)self0
{
  v10 = *&iterations;
  gridhashCopy = gridhash;
  referenceCopy = reference;
  disparityCopy = disparity;
  confidenceCopy = confidence;
  outputCopy = output;
  self->_params.lambda = lambda;
  self->_params.N = [gridhashCopy countVertices];
  self->_params.dims = [gridhashCopy countDims];
  self->_params.sigma_s = [gridhashCopy sigma_s];
  self->_params.sigma_r_luma = [gridhashCopy sigma_r_luma];
  *self->_anon_ac = *offsets;
  v22 = referenceCopy;
  v23 = disparityCopy;
  v24 = confidenceCopy;
  v25 = outputCopy;
  v26 = self->_commandBuffer;
  if ([gridhashCopy countVertices] < 1)
  {
    v28 = 1;
  }

  else
  {
    [(PFBilateralSolverGPU *)self _prepareResources:gridhashCopy];
    *&v27 = lambda;
    [(PFBilateralSolverGPU *)self _doBistochastizeWithCommandBuffer:v26 t_tex:v23 c_tex:v24 lambda:10 nIterations:v27];
    [(PFBilateralSolverGPU *)self _doPCGWithCommandBuffer:v26 nIterations:v10];
    if (self->_useTrilinearInterpolation)
    {
      [(PFBilateralSolverGPU *)self _doSliceTrilinearWithCommandBuffer:v26 ref_tex:v22 o_tex:v25];
    }

    else
    {
      [(PFBilateralSolverGPU *)self _doSliceWithCommandBuffer:v26 o_tex:v25];
    }

    v28 = 0;
  }

  return v28;
}

- (void)_setupMetal
{
  self->_metalDevice = [(MTLCommandBuffer *)self->_commandBuffer device];

  _objc_release_x1();
}

- (void)_setupPipelinesAsync:(id)async
{
  asyncCopy = async;
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [MTLDevice newDefaultLibraryWithBundle:"newDefaultLibraryWithBundle:error:" error:?];
  v6 = dispatch_group_create();
  computePipelinesGroup = self->_computePipelinesGroup;
  self->_computePipelinesGroup = v6;

  v8 = 0;
  v9 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  do
  {
    v10 = [[NSString alloc] initWithUTF8String:off_75728[v8]];
    v11 = [v5 newFunctionWithName:v10];

    dispatch_group_enter(self->_computePipelinesGroup);
    metalDevice = self->_metalDevice;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2F248;
    v15[3] = &unk_75778;
    v18 = v8;
    v15[4] = self;
    v17 = v19;
    v13 = asyncCopy;
    v16 = v13;
    [(MTLDevice *)metalDevice newComputePipelineStateWithFunction:v11 completionHandler:v15];

    ++v8;
    v9 = v11;
  }

  while (v8 != 9);

  _Block_object_dispose(v19, 8);
}

- (void)_setupBuffer
{
  v28 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:53 width:self->_width height:self->_height mipmapped:0];
  v3 = 1;
  [v28 setUsage:1];
  v4 = [(MTLDevice *)self->_metalDevice newTextureWithDescriptor:v28];
  gridHashMatrix = self->_gridHashMatrix;
  self->_gridHashMatrix = v4;

  v6 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
  A_buf = self->_A_buf;
  self->_A_buf = v6;

  v8 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
  b_buf = self->_b_buf;
  self->_b_buf = v8;

  v10 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
  s_buf = self->_s_buf;
  self->_s_buf = v10;

  v12 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
  q_buf = self->_q_buf;
  self->_q_buf = v12;

  v14 = 0;
  Dn_buf = self->_Dn_buf;
  x_buf = self->_x_buf;
  r_buf = self->_r_buf;
  d_buf = self->_d_buf;
  do
  {
    v19 = v3;
    v20 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
    v21 = Dn_buf[v14];
    Dn_buf[v14] = v20;

    v22 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
    v23 = x_buf[v14];
    x_buf[v14] = v22;

    v24 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
    v25 = r_buf[v14];
    r_buf[v14] = v24;

    v26 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 * self->_maxVertices options:0];
    v27 = d_buf[v14];
    d_buf[v14] = v26;

    v3 = 0;
    v14 = 1;
  }

  while ((v19 & 1) != 0);
}

- (void)_prepareResources:(id)resources
{
  resourcesCopy = resources;
  countVertices = [resourcesCopy countVertices];
  width = self->_width;
  height = self->_height;
  self->_threadGroupInfo.dispatchThreadgroups.width = (countVertices + 127) >> 7;
  *&self->_threadGroupInfo.dispatchThreadgroups.height = vdupq_n_s64(1uLL);
  *&self->_threadGroupInfo.threadsPerThreadgroup.width = xmmword_55090;
  self->_threadGroupInfo.threadsPerThreadgroup.depth = 1;
  hash_table = [resourcesCopy hash_table];
  v8 = hash_table[6 * countVertices - 1];
  blur_table = [resourcesCopy blur_table];
  coord_indices = [resourcesCopy coord_indices];
  coord_table = [resourcesCopy coord_table];
  hash_matrix = [resourcesCopy hash_matrix];
  interp_indices = [resourcesCopy interp_indices];
  interp_table = [resourcesCopy interp_table];
  interp_pad = [resourcesCopy interp_pad];

  v11 = 4 * countVertices;
  v12 = *&interp_indices[v11];
  v13 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:hash_table length:24 * countVertices options:0];
  gridHashBuffer = self->_gridHashBuffer;
  self->_gridHashBuffer = v13;

  v15 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:blur_table length:4 * v8 options:0];
  gridBlurBuffer = self->_gridBlurBuffer;
  self->_gridBlurBuffer = v15;

  v17 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:coord_indices length:v11 + 4 options:0];
  gridCoordIndicesBuffer = self->_gridCoordIndicesBuffer;
  self->_gridCoordIndicesBuffer = v17;

  v19 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:coord_table length:4 * height * width options:0];
  gridCoordTableBuffer = self->_gridCoordTableBuffer;
  self->_gridCoordTableBuffer = v19;

  memset(v35, 0, 24);
  gridHashMatrix = self->_gridHashMatrix;
  v35[3] = width;
  v35[4] = height;
  v35[5] = 1;
  [(MTLTexture *)gridHashMatrix replaceRegion:v35 mipmapLevel:0 withBytes:hash_matrix bytesPerRow:4 * width];
  v22 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:interp_indices length:v11 + 4 options:0];
  gridInterpIndicesBuffer = self->_gridInterpIndicesBuffer;
  self->_gridInterpIndicesBuffer = v22;

  v24 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:interp_table length:4 * v12 options:0];
  gridInterpTableBuffer = self->_gridInterpTableBuffer;
  self->_gridInterpTableBuffer = v24;

  v26 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:interp_pad length:v12 options:0];
  gridInterpPadBuffer = self->_gridInterpPadBuffer;
  self->_gridInterpPadBuffer = v26;

  computePipelinesGroup = self->_computePipelinesGroup;
  if (computePipelinesGroup)
  {
    dispatch_group_wait(computePipelinesGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (int)_doBistochastizeWithCommandBuffer:(id)buffer t_tex:(id)t_tex c_tex:(id)c_tex lambda:(float)lambda nIterations:(int)iterations
{
  bufferCopy = buffer;
  t_texCopy = t_tex;
  c_texCopy = c_tex;
  *&self->_idxDnBufIn = 0;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[0]];
  [computeCommandEncoder setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  Dn_buf = self->_Dn_buf;
  [computeCommandEncoder setBuffer:self->_Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
  [computeCommandEncoder setBytes:&self->_params length:20 atIndex:3];
  v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
  [computeCommandEncoder endEncoding];

  if (iterations >= 2)
  {
    v16 = iterations - 1;
    do
    {
      computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
      [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[1]];
      [computeCommandEncoder2 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
      [computeCommandEncoder2 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
      [computeCommandEncoder2 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
      [computeCommandEncoder2 setBuffer:Dn_buf[self->_idxDnBufIn ^ 1] offset:0 atIndex:3];
      [computeCommandEncoder2 setBytes:&self->_params length:20 atIndex:4];
      v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [computeCommandEncoder2 dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
      [computeCommandEncoder2 endEncoding];
      self->_idxDnBufIn ^= 1u;

      --v16;
    }

    while (v16);
  }

  computeCommandEncoder3 = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder3 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  [computeCommandEncoder3 setBuffer:self->_gridCoordIndicesBuffer offset:0 atIndex:2];
  [computeCommandEncoder3 setBuffer:self->_gridCoordTableBuffer offset:0 atIndex:3];
  [computeCommandEncoder3 setTexture:t_texCopy atIndex:0];
  [computeCommandEncoder3 setTexture:c_texCopy atIndex:1];
  [computeCommandEncoder3 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:4];
  [computeCommandEncoder3 setBuffer:self->_A_buf offset:0 atIndex:5];
  [computeCommandEncoder3 setBuffer:self->_b_buf offset:0 atIndex:6];
  [computeCommandEncoder3 setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:7];
  [computeCommandEncoder3 setBytes:&self->_params length:20 atIndex:8];
  [computeCommandEncoder3 setBytes:self->_anon_ac length:16 atIndex:9];
  v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [computeCommandEncoder3 dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
  [computeCommandEncoder3 endEncoding];

  return 0;
}

- (int)_doPCGWithCommandBuffer:(id)buffer nIterations:(int)iterations
{
  bufferCopy = buffer;
  v7 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0];
  v21 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0];
  v8 = [(MTLDevice *)self->_metalDevice newBufferWithLength:1 options:0];
  v22 = bufferCopy;
  v9 = bufferCopy;
  v10 = v8;
  computeCommandEncoder = [v9 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[3]];
  [computeCommandEncoder setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_A_buf offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:self->_b_buf offset:0 atIndex:4];
  [computeCommandEncoder setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:5];
  [computeCommandEncoder setBuffer:self->_r_buf[self->_idxSwapBufIn] offset:0 atIndex:6];
  d_buf = self->_d_buf;
  [computeCommandEncoder setBuffer:self->_d_buf[self->_idxSwapBufIn] offset:0 atIndex:7];
  [computeCommandEncoder setBuffer:v7 offset:0 atIndex:8];
  [computeCommandEncoder setBuffer:v10 offset:0 atIndex:9];
  [computeCommandEncoder setBytes:&self->_params length:20 atIndex:10];
  v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [computeCommandEncoder dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
  [computeCommandEncoder endEncoding];

  if (iterations < 1)
  {
    dn_buf = v7;
  }

  else
  {
    Dn_buf = self->_Dn_buf;
    r_buf = self->_r_buf;
    x_buf = self->_x_buf;
    do
    {
      dn_buf = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0, Dn_buf];
      computeCommandEncoder2 = [v22 computeCommandEncoder];
      [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[4]];
      [computeCommandEncoder2 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
      [computeCommandEncoder2 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
      [computeCommandEncoder2 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
      [computeCommandEncoder2 setBuffer:self->_A_buf offset:0 atIndex:3];
      [computeCommandEncoder2 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:4];
      [computeCommandEncoder2 setBuffer:self->_q_buf offset:0 atIndex:5];
      [computeCommandEncoder2 setBuffer:v21 offset:0 atIndex:6];
      [computeCommandEncoder2 setBuffer:v10 offset:0 atIndex:7];
      [computeCommandEncoder2 setBytes:&self->_params length:20 atIndex:8];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [computeCommandEncoder2 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [computeCommandEncoder2 endEncoding];

      computeCommandEncoder3 = [v22 computeCommandEncoder];
      [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[5]];
      [computeCommandEncoder3 setBuffer:self->_A_buf offset:0 atIndex:0];
      [computeCommandEncoder3 setBuffer:x_buf[self->_idxSwapBufIn] offset:0 atIndex:1];
      [computeCommandEncoder3 setBuffer:r_buf[self->_idxSwapBufIn] offset:0 atIndex:2];
      [computeCommandEncoder3 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:3];
      [computeCommandEncoder3 setBuffer:self->_q_buf offset:0 atIndex:4];
      [computeCommandEncoder3 setBuffer:x_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:5];
      [computeCommandEncoder3 setBuffer:r_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:6];
      [computeCommandEncoder3 setBuffer:self->_s_buf offset:0 atIndex:7];
      [computeCommandEncoder3 setBuffer:dn_buf offset:0 atIndex:8];
      [computeCommandEncoder3 setBuffer:v7 offset:0 atIndex:9];
      [computeCommandEncoder3 setBuffer:v21 offset:0 atIndex:10];
      [computeCommandEncoder3 setBuffer:v10 offset:0 atIndex:11];
      [computeCommandEncoder3 setBytes:&self->_params length:20 atIndex:12];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [computeCommandEncoder3 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [computeCommandEncoder3 endEncoding];

      computeCommandEncoder4 = [v22 computeCommandEncoder];
      [computeCommandEncoder4 setComputePipelineState:self->_computePipelines[6]];
      [computeCommandEncoder4 setBuffer:self->_s_buf offset:0 atIndex:0];
      [computeCommandEncoder4 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:1];
      [computeCommandEncoder4 setBuffer:d_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:2];
      [computeCommandEncoder4 setBuffer:v7 offset:0 atIndex:3];
      [computeCommandEncoder4 setBuffer:dn_buf offset:0 atIndex:4];
      [computeCommandEncoder4 setBuffer:v10 offset:0 atIndex:5];
      [computeCommandEncoder4 setBytes:&self->_params length:20 atIndex:6];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [computeCommandEncoder4 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [computeCommandEncoder4 endEncoding];

      self->_idxSwapBufIn ^= 1u;
      v7 = dn_buf;
      --iterations;
    }

    while (iterations);
  }

  return 0;
}

- (int)_doSliceWithCommandBuffer:(id)buffer o_tex:(id)o_tex
{
  width = self->_width;
  height = self->_height;
  v8 = self->_computePipelines[7];
  o_texCopy = o_tex;
  bufferCopy = buffer;
  LODWORD(v8) = [(MTLComputePipelineState *)v8 threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_computePipelines[7] maxTotalThreadsPerThreadgroup]/ v8;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[7]];
  [computeCommandEncoder setTexture:self->_gridHashMatrix atIndex:0];
  [computeCommandEncoder setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:0];
  [computeCommandEncoder setTexture:o_texCopy atIndex:1];

  v15[0] = (width + v8 - 1) / v8;
  v15[1] = (height + v11 - 1) / v11;
  v15[2] = 1;
  v14[0] = v8;
  v14[1] = v11;
  v14[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_doSliceTrilinearWithCommandBuffer:(id)buffer ref_tex:(id)ref_tex o_tex:(id)o_tex
{
  width = self->_width;
  height = self->_height;
  v10 = self->_computePipelines[8];
  o_texCopy = o_tex;
  ref_texCopy = ref_tex;
  bufferCopy = buffer;
  LODWORD(buffer) = [(MTLComputePipelineState *)v10 threadExecutionWidth];
  LODWORD(v10) = [(MTLComputePipelineState *)self->_computePipelines[8] maxTotalThreadsPerThreadgroup]/ buffer;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[8]];
  [computeCommandEncoder setTexture:self->_gridHashMatrix atIndex:0];
  [computeCommandEncoder setBuffer:self->_gridInterpIndicesBuffer offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_gridInterpTableBuffer offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_gridInterpPadBuffer offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:3];
  [computeCommandEncoder setTexture:ref_texCopy atIndex:1];

  [computeCommandEncoder setTexture:o_texCopy atIndex:2];
  [computeCommandEncoder setBytes:&self->_params length:20 atIndex:4];
  [computeCommandEncoder setBytes:self->_anon_ac length:16 atIndex:5];
  v17[0] = (buffer + width / 2 - 1) / buffer;
  v17[1] = (v10 + height / 2 - 1) / v10;
  v17[2] = 1;
  v16[0] = buffer;
  v16[1] = v10;
  v16[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
  [computeCommandEncoder endEncoding];

  return 0;
}

@end