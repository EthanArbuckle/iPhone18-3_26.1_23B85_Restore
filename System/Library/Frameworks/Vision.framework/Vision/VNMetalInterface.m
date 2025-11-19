@interface VNMetalInterface
- (VNMetalInterface)init;
- (id)textureWithPixelData:(vImage_Buffer *)a3 format:(unint64_t)a4;
- (id)textureWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unint64_t)a5 usage:(unint64_t)a6;
- (void)performAdaptiveBinarizationImage:(vImage_Buffer *)a3 output:(vImage_Buffer *)a4 sumTable:(vImage_Buffer *)a5 sumSqTable:(vImage_Buffer *)a6;
- (void)performVotingImage:(id)a3 outputTex:(id)a4 subBuffer:(char *)a5;
@end

@implementation VNMetalInterface

- (void)performAdaptiveBinarizationImage:(vImage_Buffer *)a3 output:(vImage_Buffer *)a4 sumTable:(vImage_Buffer *)a5 sumSqTable:(vImage_Buffer *)a6
{
  v11 = [(MTLCommandQueue *)self->mtlCommandQueue commandBuffer];
  v12 = [(MTLLibrary *)self->mtlLibrary newFunctionWithName:@"generateAdaptiveBinarization"];
  mtlDevice = self->mtlDevice;
  v42 = 0;
  v35 = v12;
  v14 = [MTLDevice newComputePipelineStateWithFunction:"newComputePipelineStateWithFunction:error:" error:?];
  v33 = v42;
  v15 = [v11 computeCommandEncoder];
  v16 = *&a3->width;
  v36 = *&a3->data;
  v37 = v16;
  v17 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:13];
  v34 = a4;
  v18 = [(VNMetalInterface *)self textureWithWidth:a4->width height:a4->height format:13 usage:2];
  v19 = *&a5->width;
  v36 = *&a5->data;
  v37 = v19;
  v20 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:53];
  v21 = *&a6->width;
  v36 = *&a6->data;
  v37 = v21;
  v22 = [(VNMetalInterface *)self textureWithPixelData:&v36 format:55];
  [v15 setTexture:v18 atIndex:0];
  v32 = v17;
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v20 atIndex:2];
  [v15 setTexture:v22 atIndex:3];
  v23 = [v18 width] >> 3;
  v24 = [v18 height] >> 2;
  [v15 setComputePipelineState:v14];
  *&v36 = v23;
  *(&v36 + 1) = v24;
  *&v37 = 1;
  v40 = xmmword_1A6038CA0;
  v41 = 1;
  [v15 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v40];
  [v15 endEncoding];
  [v11 commit];
  [v11 waitUntilCompleted];
  v25 = [v11 error];

  if (v25)
  {
    v26 = [v11 error];
    v27 = [v26 description];
    printf("  Metal command buffer error : %s\n", [v27 UTF8String]);
  }

  v28 = [v18 width];
  v29 = [v18 height];
  data = v34->data;
  rowBytes = v34->rowBytes;
  v36 = 0uLL;
  *&v37 = 0;
  *(&v37 + 1) = v28;
  v38 = v29;
  v39 = 1;
  [v18 getBytes:data bytesPerRow:rowBytes fromRegion:&v36 mipmapLevel:0];
}

- (void)performVotingImage:(id)a3 outputTex:(id)a4 subBuffer:(char *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(MTLCommandQueue *)self->mtlCommandQueue commandBuffer];
  v41 = 0;
  v33 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:&v41 length:4 options:0];
  v10 = [v8 width];
  v11 = [v8 height];
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

  v18 = [v9 computeCommandEncoder];
  v19 = v18;
  if (v7)
  {
    [v18 setTexture:v7 atIndex:1];
  }

  v31 = v11 >> 2;
  v32 = v10 >> 3;
  if (v8)
  {
    v20 = -[VNMetalInterface textureWithWidth:height:format:usage:](self, "textureWithWidth:height:format:usage:", [v8 width], objc_msgSend(v8, "height"), objc_msgSend(v8, "pixelFormat"), 3);
    [v19 setTexture:v20 atIndex:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:a5 length:128 options:0];
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

  v22 = [v9 computeCommandEncoder];
  v23 = [(MTLLibrary *)self->mtlLibrary newFunctionWithName:@"invertVotingImage"];
  v24 = self->mtlDevice;
  v34 = v16;
  v25 = [(MTLDevice *)v24 newComputePipelineStateWithFunction:v23 error:&v34];
  v26 = v34;

  if (v20)
  {
    [v22 setTexture:v20 atIndex:1];
  }

  if (v8)
  {
    [v22 setTexture:v8 atIndex:0];
  }

  [v22 setBuffer:v33 offset:0 atIndex:0];
  [v22 setComputePipelineState:v25];
  v37 = v32;
  v38 = v31;
  v39 = 1;
  v35 = xmmword_1A6038CA0;
  v36 = 1;
  [v22 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
  [v22 endEncoding];

  [v9 commit];
  [v9 waitUntilCompleted];
  v27 = [v9 error];

  if (v27)
  {
    v28 = [v9 error];
    v29 = [v28 description];
    printf("  Metal command buffer error : %s\n", [v29 UTF8String]);
  }
}

- (id)textureWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unint64_t)a5 usage:(unint64_t)a6
{
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a5 width:a3 height:a4 mipmapped:0];
  [v8 setUsage:a6];
  v9 = [(MTLDevice *)self->mtlDevice newTextureWithDescriptor:v8];

  return v9;
}

- (id)textureWithPixelData:(vImage_Buffer *)a3 format:(unint64_t)a4
{
  v6 = [(MTLDevice *)self->mtlDevice newBufferWithBytes:a3->data length:a3->height * a3->rowBytes options:0];
  v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a3->width height:a3->height mipmapped:0];
  v8 = [v6 newTextureWithDescriptor:v7 offset:0 bytesPerRow:a3->rowBytes];

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

    v5 = [(MTLDevice *)v2->mtlDevice newCommandQueue];
    mtlCommandQueue = v2->mtlCommandQueue;
    v2->mtlCommandQueue = v5;

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 bundlePath];
    v9 = [v8 stringByAppendingPathComponent:@"default.metallib"];

    if (v9)
    {
      v10 = [(MTLDevice *)v2->mtlDevice newLibraryWithFile:v9 error:0];
      mtlLibrary = v2->mtlLibrary;
      v2->mtlLibrary = v10;
    }

    if (!v2->mtlLibrary)
    {
      v12 = [(MTLDevice *)v2->mtlDevice newDefaultLibrary];
      v13 = v2->mtlLibrary;
      v2->mtlLibrary = v12;
    }
  }

  return v2;
}

@end