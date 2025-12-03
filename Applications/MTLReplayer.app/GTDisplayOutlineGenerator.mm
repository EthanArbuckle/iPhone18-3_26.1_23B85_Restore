@interface GTDisplayOutlineGenerator
- (GTDisplayOutlineGenerator)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer renderMask:(id)mask destination:(id)destination;
@end

@implementation GTDisplayOutlineGenerator

- (void)encodeToCommandBuffer:(id)buffer renderMask:(id)mask destination:(id)destination
{
  destinationCopy = destination;
  maskCopy = mask;
  bufferCopy = buffer;
  v11 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [maskCopy pixelFormat], objc_msgSend(maskCopy, "width"), objc_msgSend(maskCopy, "height"), 0);
  [v11 setStorageMode:0];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v16 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v17 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  v13 = ([destinationCopy width] + 15) >> 4;
  v14 = ([destinationCopy height] + 15) >> 4;
  v26 = 1;
  v25 = &_mh_execute_header;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_blurPSO];
  [computeCommandEncoder setBuffer:self->_bigBlurCoeffs offset:0 atIndex:2];
  v24 = [(MTLBuffer *)self->_bigBlurCoeffs length]>> 2;
  [computeCommandEncoder setBytes:&v24 length:4 atIndex:3];
  [computeCommandEncoder setTexture:maskCopy atIndex:0];
  [computeCommandEncoder setTexture:v12 atIndex:1];
  [computeCommandEncoder setBytes:&v26 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = v18;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder setTexture:v12 atIndex:0];
  [computeCommandEncoder setTexture:v16 atIndex:1];
  [computeCommandEncoder setBytes:&v25 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder setBuffer:self->_smallBlurCoeffs offset:0 atIndex:2];
  v24 = [(MTLBuffer *)self->_smallBlurCoeffs length]>> 2;
  [computeCommandEncoder setBytes:&v24 length:4 atIndex:3];
  [computeCommandEncoder setTexture:maskCopy atIndex:0];
  [computeCommandEncoder setTexture:v12 atIndex:1];
  [computeCommandEncoder setBytes:&v26 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder setTexture:v12 atIndex:0];
  [computeCommandEncoder setTexture:v17 atIndex:1];
  [computeCommandEncoder setBytes:&v25 length:8 atIndex:4];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder setComputePipelineState:self->_compositePSO];
  [computeCommandEncoder setTexture:v16 atIndex:0];
  [computeCommandEncoder setTexture:v17 atIndex:1];
  [computeCommandEncoder setTexture:maskCopy atIndex:2];

  [computeCommandEncoder setTexture:destinationCopy atIndex:3];
  v21 = v13;
  v22 = v14;
  v23 = 1;
  v19 = v18;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
}

- (GTDisplayOutlineGenerator)initWithDevice:(id)device
{
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = GTDisplayOutlineGenerator;
  v6 = [(GTDisplayOutlineGenerator *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    newDefaultLibrary = [deviceCopy newDefaultLibrary];
    v9 = [newDefaultLibrary newFunctionWithName:@"blur1D"];
    v23 = 0;
    v10 = [deviceCopy newComputePipelineStateWithFunction:v9 error:&v23];
    v11 = v23;
    blurPSO = v7->_blurPSO;
    v7->_blurPSO = v10;

    v13 = [newDefaultLibrary newFunctionWithName:@"composite"];
    v22 = v11;
    v14 = [deviceCopy newComputePipelineStateWithFunction:v13 error:&v22];
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