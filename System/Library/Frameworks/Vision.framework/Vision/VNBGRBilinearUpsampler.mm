@interface VNBGRBilinearUpsampler
- (BOOL)applyEspressoMask:(id *)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer;
- (BOOL)applyPixelBufferMask:(__CVBuffer *)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer;
- (BOOL)applyTextureMask:(id)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer;
- (BOOL)handlePostProcessingRequest:(id *)request;
- (VNBGRBilinearUpsampler)init;
- (VNBGRBilinearUpsampler)initWithMetalDevice:(id)device;
- (id)computePipelineStateFor:(id)for;
- (id)createTextureOfSize:(CGSize)size withFormat:(unint64_t)format;
- (id)libraryReturnError:(id *)error;
- (id)textureFromPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format;
- (void)dealloc;
@end

@implementation VNBGRBilinearUpsampler

- (id)textureFromPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format
{
  image = 0;
  metalTextureCache = self->_metalTextureCache;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVMetalTextureCacheCreateTextureFromImage(0, metalTextureCache, buffer, 0, format, Width, Height, 0, &image))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1AC556740](exception, "Failed to create input image texture.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = CVMetalTextureGetTexture(image);
  CFRelease(image);

  return v9;
}

- (id)createTextureOfSize:(CGSize)size withFormat:(unint64_t)format
{
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:format width:size.width height:size.height mipmapped:0];
  [v5 setUsage:3];
  v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];

  return v6;
}

- (BOOL)applyEspressoMask:(id *)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer
{
  v9 = [(MTLDevice *)self->_device newBufferWithBytes:mask->var0 length:4 * mask->var13 * mask->var8 options:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:mask->var4 height:mask->var5 mipmapped:0];
  [v10 setUsage:3];
  v11 = [v9 newTextureWithDescriptor:v10 offset:0 bytesPerRow:4 * mask->var10];
  LOBYTE(buffer) = [(VNBGRBilinearUpsampler *)self applyTextureMask:v11 toImage:image highResMaskBuffer:buffer];

  return buffer;
}

- (BOOL)applyPixelBufferMask:(__CVBuffer *)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer
{
  if (CVPixelBufferGetPixelFormatType(mask) != 1278226534)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1AC556740](exception, "Invalid pixel buffer format.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = [(VNBGRBilinearUpsampler *)self textureFromPixelBuffer:mask format:55];
  v10 = [(VNBGRBilinearUpsampler *)self applyTextureMask:v9 toImage:image highResMaskBuffer:buffer];

  return v10;
}

- (BOOL)applyTextureMask:(id)mask toImage:(__CVBuffer *)image highResMaskBuffer:(__CVBuffer *)buffer
{
  maskCopy = mask;
  v7 = [(VNBGRBilinearUpsampler *)self textureFromPixelBuffer:buffer format:55];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  blurFilter = self->_blurFilter;
  if (!blurFilter || ([(MPSImageGaussianBlur *)blurFilter sigma], self->_featheringSigma != v10))
  {
    v11 = objc_alloc(MEMORY[0x1E69745C0]);
    featheringSigma = self->_featheringSigma;
    *&featheringSigma = featheringSigma;
    v13 = [v11 initWithDevice:self->_device sigma:featheringSigma];
    v14 = self->_blurFilter;
    self->_blurFilter = v13;
  }

  [(MPSImageGaussianBlur *)self->_blurFilter encodeToCommandBuffer:commandBuffer inPlaceTexture:&maskCopy fallbackCopyAllocator:0];
  [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:commandBuffer sourceTexture:maskCopy destinationTexture:v7];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return 1;
}

- (BOOL)handlePostProcessingRequest:(id *)request
{
  if (request->var2)
  {
    return [(VNBGRBilinearUpsampler *)self applyPixelBufferMask:request->var2 toImage:request->var0 highResMaskBuffer:request->var3];
  }

  else
  {
    return [(VNBGRBilinearUpsampler *)self applyEspressoMask:request->var1 toImage:request->var0 highResMaskBuffer:request->var3];
  }
}

- (id)computePipelineStateFor:(id)for
{
  device = self->_device;
  v4 = [(MTLLibrary *)self->_library newFunctionWithName:for];
  v5 = [(MTLDevice *)device newComputePipelineStateWithFunction:v4 error:0];

  return v5;
}

- (void)dealloc
{
  metalTextureCache = self->_metalTextureCache;
  if (metalTextureCache)
  {
    CFRelease(metalTextureCache);
  }

  v4.receiver = self;
  v4.super_class = VNBGRBilinearUpsampler;
  [(VNBGRBilinearUpsampler *)&v4 dealloc];
}

- (VNBGRBilinearUpsampler)init
{
  v3 = MTLCreateSystemDefaultDevice();
  v4 = [(VNBGRBilinearUpsampler *)self initWithMetalDevice:v3];

  return v4;
}

- (VNBGRBilinearUpsampler)initWithMetalDevice:(id)device
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = VNBGRBilinearUpsampler;
  v6 = [(VNBGRBilinearUpsampler *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    newCommandQueue = [(MTLDevice *)v7->_device newCommandQueue];
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = newCommandQueue;

    v10 = [(VNBGRBilinearUpsampler *)v7 libraryReturnError:0];
    library = v7->_library;
    v7->_library = v10;

    if (!CVMetalTextureCacheCreate(0, 0, v7->_device, 0, &v7->_metalTextureCache))
    {
      v13 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:v7->_device];
      bilinearScale = v7->_bilinearScale;
      v7->_bilinearScale = v13;

      v7->_featheringSigma = 0.75;
      v12 = v7;
      goto LABEL_6;
    }

    NSLog(&cfstr_FailedToCreate_17.isa);
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)libraryReturnError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  library = self->_library;
  if (!library)
  {
    device = self->_device;
    v7 = VNFrameworkBundle();
    v8 = [(MTLDevice *)device newDefaultLibraryWithBundle:v7 error:error];
    v9 = self->_library;
    self->_library = v8;

    library = self->_library;
  }

  v10 = library;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

@end