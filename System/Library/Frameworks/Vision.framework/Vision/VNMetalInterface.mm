@interface VNMetalInterface
- (VNMetalInterface)init;
- (id)textureWithPixelData:(vImage_Buffer *)data format:(unint64_t)format;
- (id)textureWithWidth:(unint64_t)width height:(unint64_t)height format:(unint64_t)format usage:(unint64_t)usage;
- (void)performAdaptiveBinarizationImage:(vImage_Buffer *)image output:(vImage_Buffer *)output sumTable:(vImage_Buffer *)table sumSqTable:(vImage_Buffer *)sqTable;
- (void)performVotingImage:(id)image outputTex:(id)tex subBuffer:(char *)buffer;
@end

@implementation VNMetalInterface

- (void)performAdaptiveBinarizationImage:(vImage_Buffer *)image output:(vImage_Buffer *)output sumTable:(vImage_Buffer *)table sumSqTable:(vImage_Buffer *)sqTable
{
  commandBuffer = [(MTLCommandQueue *)self->mtlCommandQueue commandBuffer];
  v12 = [(MTLLibrary *)self->mtlLibrary newFunctionWithName:@"generateAdaptiveBinarization"];
  mtlDevice = self->mtlDevice;
  v42 = 0;
  v35 = v12;
  v14 = [MTLDevice newComputePipelineStateWithFunction:"newComputePipelineStateWithFunction:error:" error:?];
  v33 = v42;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v16 = *&image->width;
  v36 = *&image->data;
  v37 = v16;
  v17 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:13];
  outputCopy = output;
  v18 = [(VNMetalInterface *)self textureWithWidth:output->width height:output->height format:13 usage:2];
  v19 = *&table->width;
  v36 = *&table->data;
  v37 = v19;
  v20 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:53];
  v21 = *&sqTable->width;
  v36 = *&sqTable->data;
  v37 = v21;
  v22 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:55];
  [computeCommandEncoder setTexture:v18 atIndex:0];
  v32 = v17;
  [computeCommandEncoder setTexture:v17 atIndex:1];
  [computeCommandEncoder setTexture:v20 atIndex:2];
  [computeCommandEncoder setTexture:v22 atIndex:3];
  v23 = [v18 width] >> 3;
  v24 = [v18 height] >> 2;
  [computeCommandEncoder setComputePipelineState:v14];
  *&v36 = v23;
  *(&v36 + 1) = v24;
  *&v37 = 1;
  v40 = xmmword_1A6038CA0;
  v41 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v36 threadsPerThreadgroup:&v40];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  error = [commandBuffer error];

  if (error)
  {
    error2 = [commandBuffer error];
    v27 = [error2 description];
    printf("  Metal command buffer error : %s\n", [v27 UTF8String]);
  }

  width = [v18 width];
  height = [v18 height];
  data = outputCopy->data;
  rowBytes = outputCopy->rowBytes;
  v36 = 0uLL;
  *&v37 = 0;
  *(&v37 + 1) = width;
  v38 = height;
  v39 = 1;
  [v18 getBytes:data bytesPerRow:rowBytes fromRegion:&v36 mipmapLevel:0];
}

- (void)performVotingImage:(id)image outputTex:(id)tex subBuffer:(char *)buffer
{
  imageCopy = image;
  texCopy = tex;
  commandBuffer = [(MTLCommandQueue *)self->mtlCommandQueue commandBuffer];
  v41 = 0;
  v33 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:&v41 length:4 options:0];
  width = [texCopy width];
  height = [texCopy height];
  v12 = [(MTLLibrary *)self->mtlLibrary newFunctionWithName:@"updateVotingImage"];
  mtlDevice = self->mtlDevice;
  v40 = 0;
  v14 = [(MTLDevice *)mtlDevice newComputePipelineStateWithFunction:v12 error:&v40];
  v15 = v40;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 description];
    printf("  Metal computePipelineState error : %s\n", [v17 UTF8String]);
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v19 = computeCommandEncoder;
  if (imageCopy)
  {
    [computeCommandEncoder setTexture:imageCopy atIndex:1];
  }

  v31 = height >> 2;
  v32 = width >> 3;
  if (texCopy)
  {
    v20 = -[VNMetalInterface textureWithWidth:height:format:usage:](self, "textureWithWidth:height:format:usage:", [texCopy width], objc_msgSend(texCopy, "height"), objc_msgSend(texCopy, "pixelFormat"), 3);
    [v19 setTexture:v20 atIndex:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:buffer length:128 options:0];
  [v19 setBuffer:v21 offset:0 atIndex:0];
  [v19 setBuffer:v33 offset:0 atIndex:1];
  [v19 setComputePipelineState:v14];
  v37 = v32;
  v38 = v31;
  v39 = 1;
  v35 = xmmword_1A6038CA0;
  v36 = 1;
  [v19 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
  [v19 endEncoding];

  computeCommandEncoder2 = [commandBuffer computeCommandEncoder];
  v23 = [(MTLLibrary *)self->mtlLibrary newFunctionWithName:@"invertVotingImage"];
  v24 = self->mtlDevice;
  v34 = v16;
  v25 = [(MTLDevice *)v24 newComputePipelineStateWithFunction:v23 error:&v34];
  v26 = v34;

  if (v20)
  {
    [computeCommandEncoder2 setTexture:v20 atIndex:1];
  }

  if (texCopy)
  {
    [computeCommandEncoder2 setTexture:texCopy atIndex:0];
  }

  [computeCommandEncoder2 setBuffer:v33 offset:0 atIndex:0];
  [computeCommandEncoder2 setComputePipelineState:v25];
  v37 = v32;
  v38 = v31;
  v39 = 1;
  v35 = xmmword_1A6038CA0;
  v36 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
  [computeCommandEncoder2 endEncoding];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  error = [commandBuffer error];

  if (error)
  {
    error2 = [commandBuffer error];
    v29 = [error2 description];
    printf("  Metal command buffer error : %s\n", [v29 UTF8String]);
  }
}

- (id)textureWithWidth:(unint64_t)width height:(unint64_t)height format:(unint64_t)format usage:(unint64_t)usage
{
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  [v8 setUsage:usage];
  v9 = [(MTLDevice *)self->mtlDevice newTextureWithDescriptor:v8];

  return v9;
}

- (id)textureWithPixelData:(vImage_Buffer *)data format:(unint64_t)format
{
  v6 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:data->data length:data->height * data->rowBytes options:0];
  v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:data->width height:data->height mipmapped:0];
  v8 = [v6 newTextureWithDescriptor:v7 offset:0 bytesPerRow:data->rowBytes];

  return v8;
}

- (VNMetalInterface)init
{
  v15.receiver = self;
  v15.super_class = VNMetalInterface;
  v2 = [(VNMetalInterface *)&v15 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    mtlDevice = v2->mtlDevice;
    v2->mtlDevice = v3;

    newCommandQueue = [(MTLDevice *)v2->mtlDevice newCommandQueue];
    mtlCommandQueue = v2->mtlCommandQueue;
    v2->mtlCommandQueue = newCommandQueue;

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundlePath = [v7 bundlePath];
    v9 = [bundlePath stringByAppendingPathComponent:@"default.metallib"];

    if (v9)
    {
      v10 = [(MTLDevice *)v2->mtlDevice newLibraryWithFile:v9 error:0];
      mtlLibrary = v2->mtlLibrary;
      v2->mtlLibrary = v10;
    }

    if (!v2->mtlLibrary)
    {
      newDefaultLibrary = [(MTLDevice *)v2->mtlDevice newDefaultLibrary];
      v13 = v2->mtlLibrary;
      v2->mtlLibrary = newDefaultLibrary;
    }
  }

  return v2;
}

@end