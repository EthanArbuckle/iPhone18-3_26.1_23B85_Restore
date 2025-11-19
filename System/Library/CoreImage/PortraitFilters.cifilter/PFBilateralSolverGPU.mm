@interface PFBilateralSolverGPU
- (PFBilateralSolverGPU)initWithWidth:(int)a3 height:(int)a4 maxVertices:(unint64_t)a5 commandBuffer:(id)a6;
- (int)_doBistochastizeWithCommandBuffer:(id)a3 t_tex:(id)a4 c_tex:(id)a5 lambda:(float)a6 nIterations:(int)a7;
- (int)_doPCGWithCommandBuffer:(id)a3 nIterations:(int)a4;
- (int)_doSliceTrilinearWithCommandBuffer:(id)a3 ref_tex:(id)a4 o_tex:(id)a5;
- (int)_doSliceWithCommandBuffer:(id)a3 o_tex:(id)a4;
- (int)doSolveWithBilateralGridhash:(id)a3 reference:(id)a4 disparity:(id)a5 confidence:(id)a6 output:(id)a7 lambda:(float)a8 maxIterations:(int)a9 offsets:(id *)a10;
- (void)_prepareResources:(id)a3;
- (void)_setupBuffer;
- (void)_setupMetal;
- (void)_setupPipelineCache;
- (void)_setupPipelinesAsync:(id)a3;
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

- (PFBilateralSolverGPU)initWithWidth:(int)a3 height:(int)a4 maxVertices:(unint64_t)a5 commandBuffer:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PFBilateralSolverGPU;
  v12 = [(PFBilateralSolverGPU *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_useTrilinearInterpolation = 1;
    v12->_width = a3;
    v12->_height = a4;
    v12->_maxVertices = a5;
    objc_storeStrong(&v12->_commandBuffer, a6);
    [(PFBilateralSolverGPU *)v13 _setupMetal];
    [(PFBilateralSolverGPU *)v13 _setupPipelineCache];
    [(PFBilateralSolverGPU *)v13 _setupBuffer];
  }

  return v13;
}

- (int)doSolveWithBilateralGridhash:(id)a3 reference:(id)a4 disparity:(id)a5 confidence:(id)a6 output:(id)a7 lambda:(float)a8 maxIterations:(int)a9 offsets:(id *)a10
{
  v10 = *&a9;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  self->_params.lambda = a8;
  self->_params.N = [v17 countVertices];
  self->_params.dims = [v17 countDims];
  self->_params.sigma_s = [v17 sigma_s];
  self->_params.sigma_r_luma = [v17 sigma_r_luma];
  *self->_anon_ac = *a10;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = self->_commandBuffer;
  if ([v17 countVertices] < 1)
  {
    v28 = 1;
  }

  else
  {
    [(PFBilateralSolverGPU *)self _prepareResources:v17];
    *&v27 = a8;
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

- (void)_setupPipelinesAsync:(id)a3
{
  v4 = a3;
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
    v13 = v4;
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

- (void)_prepareResources:(id)a3
{
  v4 = a3;
  v5 = [v4 countVertices];
  width = self->_width;
  height = self->_height;
  self->_threadGroupInfo.dispatchThreadgroups.width = (v5 + 127) >> 7;
  *&self->_threadGroupInfo.dispatchThreadgroups.height = vdupq_n_s64(1uLL);
  *&self->_threadGroupInfo.threadsPerThreadgroup.width = xmmword_55090;
  self->_threadGroupInfo.threadsPerThreadgroup.depth = 1;
  v7 = [v4 hash_table];
  v8 = v7[6 * v5 - 1];
  v9 = [v4 blur_table];
  v29 = [v4 coord_indices];
  v30 = [v4 coord_table];
  v31 = [v4 hash_matrix];
  v10 = [v4 interp_indices];
  v33 = [v4 interp_table];
  v34 = [v4 interp_pad];

  v11 = 4 * v5;
  v12 = *&v10[v11];
  v13 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v7 length:24 * v5 options:0];
  gridHashBuffer = self->_gridHashBuffer;
  self->_gridHashBuffer = v13;

  v15 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v9 length:4 * v8 options:0];
  gridBlurBuffer = self->_gridBlurBuffer;
  self->_gridBlurBuffer = v15;

  v17 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v29 length:v11 + 4 options:0];
  gridCoordIndicesBuffer = self->_gridCoordIndicesBuffer;
  self->_gridCoordIndicesBuffer = v17;

  v19 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v30 length:4 * height * width options:0];
  gridCoordTableBuffer = self->_gridCoordTableBuffer;
  self->_gridCoordTableBuffer = v19;

  memset(v35, 0, 24);
  gridHashMatrix = self->_gridHashMatrix;
  v35[3] = width;
  v35[4] = height;
  v35[5] = 1;
  [(MTLTexture *)gridHashMatrix replaceRegion:v35 mipmapLevel:0 withBytes:v31 bytesPerRow:4 * width];
  v22 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v10 length:v11 + 4 options:0];
  gridInterpIndicesBuffer = self->_gridInterpIndicesBuffer;
  self->_gridInterpIndicesBuffer = v22;

  v24 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v33 length:4 * v12 options:0];
  gridInterpTableBuffer = self->_gridInterpTableBuffer;
  self->_gridInterpTableBuffer = v24;

  v26 = [(MTLDevice *)self->_metalDevice newBufferWithBytes:v34 length:v12 options:0];
  gridInterpPadBuffer = self->_gridInterpPadBuffer;
  self->_gridInterpPadBuffer = v26;

  computePipelinesGroup = self->_computePipelinesGroup;
  if (computePipelinesGroup)
  {
    dispatch_group_wait(computePipelinesGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (int)_doBistochastizeWithCommandBuffer:(id)a3 t_tex:(id)a4 c_tex:(id)a5 lambda:(float)a6 nIterations:(int)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  *&self->_idxDnBufIn = 0;
  v14 = [v11 computeCommandEncoder];
  [v14 setComputePipelineState:self->_computePipelines[0]];
  [v14 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [v14 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  Dn_buf = self->_Dn_buf;
  [v14 setBuffer:self->_Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
  [v14 setBytes:&self->_params length:20 atIndex:3];
  v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [v14 dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
  [v14 endEncoding];

  if (a7 >= 2)
  {
    v16 = a7 - 1;
    do
    {
      v17 = [v11 computeCommandEncoder];
      [v17 setComputePipelineState:self->_computePipelines[1]];
      [v17 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
      [v17 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
      [v17 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
      [v17 setBuffer:Dn_buf[self->_idxDnBufIn ^ 1] offset:0 atIndex:3];
      [v17 setBytes:&self->_params length:20 atIndex:4];
      v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [v17 dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
      [v17 endEncoding];
      self->_idxDnBufIn ^= 1u;

      --v16;
    }

    while (v16);
  }

  v18 = [v11 computeCommandEncoder];
  [v18 setComputePipelineState:self->_computePipelines[2]];
  [v18 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [v18 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  [v18 setBuffer:self->_gridCoordIndicesBuffer offset:0 atIndex:2];
  [v18 setBuffer:self->_gridCoordTableBuffer offset:0 atIndex:3];
  [v18 setTexture:v12 atIndex:0];
  [v18 setTexture:v13 atIndex:1];
  [v18 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:4];
  [v18 setBuffer:self->_A_buf offset:0 atIndex:5];
  [v18 setBuffer:self->_b_buf offset:0 atIndex:6];
  [v18 setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:7];
  [v18 setBytes:&self->_params length:20 atIndex:8];
  [v18 setBytes:self->_anon_ac length:16 atIndex:9];
  v21 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [v18 dispatchThreadgroups:&v21 threadsPerThreadgroup:&threadsPerThreadgroup];
  [v18 endEncoding];

  return 0;
}

- (int)_doPCGWithCommandBuffer:(id)a3 nIterations:(int)a4
{
  v6 = a3;
  v7 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0];
  v21 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0];
  v8 = [(MTLDevice *)self->_metalDevice newBufferWithLength:1 options:0];
  v22 = v6;
  v9 = v6;
  v10 = v8;
  v11 = [v9 computeCommandEncoder];
  [v11 setComputePipelineState:self->_computePipelines[3]];
  [v11 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
  [v11 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
  [v11 setBuffer:self->_Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
  [v11 setBuffer:self->_A_buf offset:0 atIndex:3];
  [v11 setBuffer:self->_b_buf offset:0 atIndex:4];
  [v11 setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:5];
  [v11 setBuffer:self->_r_buf[self->_idxSwapBufIn] offset:0 atIndex:6];
  d_buf = self->_d_buf;
  [v11 setBuffer:self->_d_buf[self->_idxSwapBufIn] offset:0 atIndex:7];
  [v11 setBuffer:v7 offset:0 atIndex:8];
  [v11 setBuffer:v10 offset:0 atIndex:9];
  [v11 setBytes:&self->_params length:20 atIndex:10];
  v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  [v11 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
  [v11 endEncoding];

  if (a4 < 1)
  {
    v13 = v7;
  }

  else
  {
    Dn_buf = self->_Dn_buf;
    r_buf = self->_r_buf;
    x_buf = self->_x_buf;
    do
    {
      v13 = [(MTLDevice *)self->_metalDevice newBufferWithLength:4 options:0, Dn_buf];
      v14 = [v22 computeCommandEncoder];
      [v14 setComputePipelineState:self->_computePipelines[4]];
      [v14 setBuffer:self->_gridHashBuffer offset:0 atIndex:0];
      [v14 setBuffer:self->_gridBlurBuffer offset:0 atIndex:1];
      [v14 setBuffer:Dn_buf[self->_idxDnBufIn] offset:0 atIndex:2];
      [v14 setBuffer:self->_A_buf offset:0 atIndex:3];
      [v14 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:4];
      [v14 setBuffer:self->_q_buf offset:0 atIndex:5];
      [v14 setBuffer:v21 offset:0 atIndex:6];
      [v14 setBuffer:v10 offset:0 atIndex:7];
      [v14 setBytes:&self->_params length:20 atIndex:8];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [v14 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [v14 endEncoding];

      v15 = [v22 computeCommandEncoder];
      [v15 setComputePipelineState:self->_computePipelines[5]];
      [v15 setBuffer:self->_A_buf offset:0 atIndex:0];
      [v15 setBuffer:x_buf[self->_idxSwapBufIn] offset:0 atIndex:1];
      [v15 setBuffer:r_buf[self->_idxSwapBufIn] offset:0 atIndex:2];
      [v15 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:3];
      [v15 setBuffer:self->_q_buf offset:0 atIndex:4];
      [v15 setBuffer:x_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:5];
      [v15 setBuffer:r_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:6];
      [v15 setBuffer:self->_s_buf offset:0 atIndex:7];
      [v15 setBuffer:v13 offset:0 atIndex:8];
      [v15 setBuffer:v7 offset:0 atIndex:9];
      [v15 setBuffer:v21 offset:0 atIndex:10];
      [v15 setBuffer:v10 offset:0 atIndex:11];
      [v15 setBytes:&self->_params length:20 atIndex:12];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [v15 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [v15 endEncoding];

      v16 = [v22 computeCommandEncoder];
      [v16 setComputePipelineState:self->_computePipelines[6]];
      [v16 setBuffer:self->_s_buf offset:0 atIndex:0];
      [v16 setBuffer:d_buf[self->_idxSwapBufIn] offset:0 atIndex:1];
      [v16 setBuffer:d_buf[self->_idxSwapBufIn ^ 1] offset:0 atIndex:2];
      [v16 setBuffer:v7 offset:0 atIndex:3];
      [v16 setBuffer:v13 offset:0 atIndex:4];
      [v16 setBuffer:v10 offset:0 atIndex:5];
      [v16 setBytes:&self->_params length:20 atIndex:6];
      v24 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      [v16 dispatchThreadgroups:&v24 threadsPerThreadgroup:&threadsPerThreadgroup];
      [v16 endEncoding];

      self->_idxSwapBufIn ^= 1u;
      v7 = v13;
      --a4;
    }

    while (a4);
  }

  return 0;
}

- (int)_doSliceWithCommandBuffer:(id)a3 o_tex:(id)a4
{
  width = self->_width;
  height = self->_height;
  v8 = self->_computePipelines[7];
  v9 = a4;
  v10 = a3;
  LODWORD(v8) = [(MTLComputePipelineState *)v8 threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_computePipelines[7] maxTotalThreadsPerThreadgroup]/ v8;
  v12 = [v10 computeCommandEncoder];

  [v12 setComputePipelineState:self->_computePipelines[7]];
  [v12 setTexture:self->_gridHashMatrix atIndex:0];
  [v12 setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:0];
  [v12 setTexture:v9 atIndex:1];

  v15[0] = (width + v8 - 1) / v8;
  v15[1] = (height + v11 - 1) / v11;
  v15[2] = 1;
  v14[0] = v8;
  v14[1] = v11;
  v14[2] = 1;
  [v12 dispatchThreadgroups:v15 threadsPerThreadgroup:v14];
  [v12 endEncoding];

  return 0;
}

- (int)_doSliceTrilinearWithCommandBuffer:(id)a3 ref_tex:(id)a4 o_tex:(id)a5
{
  width = self->_width;
  height = self->_height;
  v10 = self->_computePipelines[8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  LODWORD(a3) = [(MTLComputePipelineState *)v10 threadExecutionWidth];
  LODWORD(v10) = [(MTLComputePipelineState *)self->_computePipelines[8] maxTotalThreadsPerThreadgroup]/ a3;
  v14 = [v13 computeCommandEncoder];

  [v14 setComputePipelineState:self->_computePipelines[8]];
  [v14 setTexture:self->_gridHashMatrix atIndex:0];
  [v14 setBuffer:self->_gridInterpIndicesBuffer offset:0 atIndex:0];
  [v14 setBuffer:self->_gridInterpTableBuffer offset:0 atIndex:1];
  [v14 setBuffer:self->_gridInterpPadBuffer offset:0 atIndex:2];
  [v14 setBuffer:self->_x_buf[self->_idxSwapBufIn] offset:0 atIndex:3];
  [v14 setTexture:v12 atIndex:1];

  [v14 setTexture:v11 atIndex:2];
  [v14 setBytes:&self->_params length:20 atIndex:4];
  [v14 setBytes:self->_anon_ac length:16 atIndex:5];
  v17[0] = (a3 + width / 2 - 1) / a3;
  v17[1] = (v10 + height / 2 - 1) / v10;
  v17[2] = 1;
  v16[0] = a3;
  v16[1] = v10;
  v16[2] = 1;
  [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
  [v14 endEncoding];

  return 0;
}

@end