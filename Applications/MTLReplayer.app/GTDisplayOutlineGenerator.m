@interface GTDisplayOutlineGenerator
- (GTDisplayOutlineGenerator)initWithDevice:(id)a3;
- (void)encodeToCommandBuffer:(id)a3 renderMask:(id)a4 destination:(id)a5;
@end

@implementation GTDisplayOutlineGenerator

- (void)encodeToCommandBuffer:(id)a3 renderMask:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v9 pixelFormat], objc_msgSend(v9, "width"), objc_msgSend(v9, "height"), 0);
  [v11 setStorageMode:0];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v16 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v17 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v13 = ([v8 width] + 15) >> 4;
  v14 = ([v8 height] + 15) >> 4;
  v26 = 1;
  v25 = &_mh_execute_header;
  v15 = [v10 computeCommandEncoder];

  [v15 setComputePipelineState:self->_blurPSO];
  [v15 setBuffer:self->_bigBlurCoeffs offset:0 atIndex:2];
  v24 = [(MTLBuffer *)self->_bigBlurCoeffs length]>> 2;
  [v15 setBytes:&v24 length:4 atIndex:3];
  [v15 setTexture:v9 atIndex:0];
  [v15 setTexture:v12 atIndex:1];
  [v15 setBytes:&v26 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = v18;
  v20 = 1;
  [v15 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v15 setTexture:v12 atIndex:0];
  [v15 setTexture:v16 atIndex:1];
  [v15 setBytes:&v25 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [v15 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v15 setBuffer:self->_smallBlurCoeffs offset:0 atIndex:2];
  v24 = [(MTLBuffer *)self->_smallBlurCoeffs length]>> 2;
  [v15 setBytes:&v24 length:4 atIndex:3];
  [v15 setTexture:v9 atIndex:0];
  [v15 setTexture:v12 atIndex:1];
  [v15 setBytes:&v26 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [v15 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v15 setTexture:v12 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setBytes:&v25 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [v15 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v15 setComputePipelineState:self->_compositePSO];
  [v15 setTexture:v16 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v9 atIndex:2];

  [v15 setTexture:v8 atIndex:3];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [v15 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v15 endEncoding];
}

- (GTDisplayOutlineGenerator)initWithDevice:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = GTDisplayOutlineGenerator;
  v6 = [(GTDisplayOutlineGenerator *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [v5 newDefaultLibrary];
    v9 = [v8 newFunctionWithName:@"blur1D"];
    v23 = 0;
    v10 = [v5 newComputePipelineStateWithFunction:v9 error:&v23];
    v11 = v23;
    blurPSO = v7->_blurPSO;
    v7->_blurPSO = v10;

    v13 = [v8 newFunctionWithName:@"composite"];
    v22 = v11;
    v14 = [v5 newComputePipelineStateWithFunction:v13 error:&v22];
    v15 = v22;

    compositePSO = v7->_compositePSO;
    v7->_compositePSO = v14;

    v17 = sub_10000362C(v7->_device, 20.0);
    bigBlurCoeffs = v7->_bigBlurCoeffs;
    v7->_bigBlurCoeffs = v17;

    v19 = sub_10000362C(v7->_device, 6.0);
    smallBlurCoeffs = v7->_smallBlurCoeffs;
    v7->_smallBlurCoeffs = v19;
  }

  return v7;
}

@end