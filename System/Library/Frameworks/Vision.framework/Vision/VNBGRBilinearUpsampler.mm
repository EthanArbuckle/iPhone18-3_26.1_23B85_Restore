@interface VNBGRBilinearUpsampler
- (BOOL)applyEspressoMask:(id *)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5;
- (BOOL)applyPixelBufferMask:(__CVBuffer *)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5;
- (BOOL)applyTextureMask:(id)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5;
- (BOOL)handlePostProcessingRequest:(id *)a3;
- (VNBGRBilinearUpsampler)init;
- (VNBGRBilinearUpsampler)initWithMetalDevice:(id)a3;
- (id)computePipelineStateFor:(id)a3;
- (id)createTextureOfSize:(CGSize)a3 withFormat:(unint64_t)a4;
- (id)libraryReturnError:(id *)a3;
- (id)textureFromPixelBuffer:(__CVBuffer *)a3 format:(unint64_t)a4;
- (void)dealloc;
@end

@implementation VNBGRBilinearUpsampler

- (id)textureFromPixelBuffer:(__CVBuffer *)a3 format:(unint64_t)a4
{
  image = 0;
  metalTextureCache = self->_metalTextureCache;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CVMetalTextureCacheCreateTextureFromImage(0, metalTextureCache, a3, 0, a4, Width, Height, 0, &image))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1AC556740](exception, "Failed to create input image texture.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = CVMetalTextureGetTexture(image);
  CFRelease(image);

  return v9;
}

- (id)createTextureOfSize:(CGSize)a3 withFormat:(unint64_t)a4
{
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a3.width height:a3.height mipmapped:0];
  [v5 setUsage:3];
  v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];

  return v6;
}

- (BOOL)applyEspressoMask:(id *)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5
{
  v9 = [(MTLDevice *)self->_device newBufferWithBytes:a3->var0 length:4 * a3->var13 * a3->var8 options:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:a3->var4 height:a3->var5 mipmapped:0];
  [v10 setUsage:3];
  v11 = [v9 newTextureWithDescriptor:v10 offset:0 bytesPerRow:4 * a3->var10];
  LOBYTE(a5) = [(VNBGRBilinearUpsampler *)self applyTextureMask:v11 toImage:a4 highResMaskBuffer:a5];

  return a5;
}

- (BOOL)applyPixelBufferMask:(__CVBuffer *)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5
{
  if (CVPixelBufferGetPixelFormatType(a3) != 1278226534)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1AC556740](exception, "Invalid pixel buffer format.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = [(VNBGRBilinearUpsampler *)self textureFromPixelBuffer:a3 format:55];
  v10 = [(VNBGRBilinearUpsampler *)self applyTextureMask:v9 toImage:a4 highResMaskBuffer:a5];

  return v10;
}

- (BOOL)applyTextureMask:(id)a3 toImage:(__CVBuffer *)a4 highResMaskBuffer:(__CVBuffer *)a5
{
  v16 = a3;
  v7 = [(VNBGRBilinearUpsampler *)self textureFromPixelBuffer:a5 format:55];
  v8 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
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

  [(MPSImageGaussianBlur *)self->_blurFilter encodeToCommandBuffer:v8 inPlaceTexture:&v16 fallbackCopyAllocator:0];
  [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v8 sourceTexture:v16 destinationTexture:v7];
  [v8 commit];
  [v8 waitUntilCompleted];

  return 1;
}

- (BOOL)handlePostProcessingRequest:(id *)a3
{
  if (a3->var2)
  {
    return [(VNBGRBilinearUpsampler *)self applyPixelBufferMask:a3->var2 toImage:a3->var0 highResMaskBuffer:a3->var3];
  }

  else
  {
    return [(VNBGRBilinearUpsampler *)self applyEspressoMask:a3->var1 toImage:a3->var0 highResMaskBuffer:a3->var3];
  }
}

- (id)computePipelineStateFor:(id)a3
{
  device = self->_device;
  v4 = [(MTLLibrary *)self->_library newFunctionWithName:a3];
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

- (VNBGRBilinearUpsampler)initWithMetalDevice:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = VNBGRBilinearUpsampler;
  v6 = [(VNBGRBilinearUpsampler *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [(MTLDevice *)v7->_device newCommandQueue];
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v8;

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

- (id)libraryReturnError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  library = self->_library;
  if (!library)
  {
    device = self->_device;
    v7 = VNFrameworkBundle();
    v8 = [(MTLDevice *)device newDefaultLibraryWithBundle:v7 error:a3];
    v9 = self->_library;
    self->_library = v8;

    library = self->_library;
  }

  v10 = library;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

@end