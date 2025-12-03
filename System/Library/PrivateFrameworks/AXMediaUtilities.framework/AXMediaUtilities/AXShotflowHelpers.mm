@interface AXShotflowHelpers
+ (id)resizeImage:(id)image byX:(float)x andY:(float)y;
+ (id)resizeImage:(id)image to:(CGSize)to;
+ (id)resizeImage:(id)image toWidth:(unint64_t)width andHeight:(unint64_t)height;
+ (id)setCIContext;
+ (id)setCIContext:(id)context;
+ (shared_ptr<CGImage>)getCGImageFromCIImage:(id)image;
+ (vImage_Buffer)createVImageBuffer:(id)buffer;
@end

@implementation AXShotflowHelpers

+ (vImage_Buffer)createVImageBuffer:(id)buffer
{
  v28[2] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  pixelBufferOut = [bufferCopy pixelBuffer];
  if (!pixelBufferOut)
  {
    v4 = *MEMORY[0x1E695E4D0];
    v5 = *MEMORY[0x1E6966028];
    v27[0] = *MEMORY[0x1E6966030];
    v27[1] = v5;
    v28[0] = v4;
    v28[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [bufferCopy extent];
    v8 = v7;
    [bufferCopy extent];
    v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v8, v9, 0x42475241u, v6, &pixelBufferOut);
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = v10;
      _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_INFO, "Pixel create: %d", buf, 8u);
    }

    context = [MEMORY[0x1E695F620] context];
    [context render:bufferCopy toCVPixelBuffer:pixelBufferOut];
  }

  v13 = [CVPixelBufferGetAttributes() objectForKey:*MEMORY[0x1E6966120]];
  MEMORY[0x1B2700DC0](1111970369, 0, 0, [bufferCopy colorSpace], 0);
  v14 = [v13 objectForKey:@"BitsPerComponent"];
  intValue = [v14 intValue];

  v16 = [v13 objectForKey:@"CGBitmapInfo"];
  LODWORD(v14) = [v16 intValue];

  v17 = [v13 objectForKey:@"BitsPerBlock"];
  intValue2 = [v17 intValue];

  *&v26[4] = 0;
  *buf = intValue;
  v22 = intValue2;
  colorSpace = [bufferCopy colorSpace];
  v24 = v14;
  *v26 = 0;
  v25 = 0;
  operator new();
}

+ (id)setCIContext
{
  v2 = objc_alloc_init(MEMORY[0x1E695F620]);

  return v2;
}

+ (id)setCIContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    v5 = contextCopy;
  }

  else
  {
    if (+[AXShotflowHelpers setCIContext:]::ctx)
    {
      goto LABEL_5;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695F620]);
  }

  v6 = +[AXShotflowHelpers setCIContext:]::ctx;
  +[AXShotflowHelpers setCIContext:]::ctx = v5;

LABEL_5:
  v7 = +[AXShotflowHelpers setCIContext:]::ctx;
  v8 = +[AXShotflowHelpers setCIContext:]::ctx;

  return v7;
}

+ (shared_ptr<CGImage>)getCGImageFromCIImage:(id)image
{
  v5 = v3;
  imageCopy = image;
  setCIContext = [self setCIContext];
  [imageCopy extent];
  std::shared_ptr<CGImage>::shared_ptr[abi:ne200100]<CGImage,void (*)(CGImage*),0>(v5, [setCIContext createCGImage:imageCopy fromRect:?]);
}

+ (id)resizeImage:(id)image byX:(float)x andY:(float)y
{
  imageCopy = image;
  CGAffineTransformMakeScale(&v10, x, y);
  v8 = [imageCopy imageByApplyingTransform:&v10];

  return v8;
}

+ (id)resizeImage:(id)image to:(CGSize)to
{
  height = to.height;
  width = to.width;
  imageCopy = image;
  [imageCopy extent];
  v9 = v8;
  *&v8 = v10;
  *&v10 = height;
  v11 = width;
  *&v12 = v11 / fmaxf(v9, 1.0);
  *&v13 = *&v10 / fmaxf(*&v8, 1.0);
  v14 = [self resizeImage:imageCopy byX:v12 andY:v13];

  return v14;
}

+ (id)resizeImage:(id)image toWidth:(unint64_t)width andHeight:(unint64_t)height
{
  v5 = [self resizeImage:image to:{width, height}];

  return v5;
}

+ (void)createVImageBuffer:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not creat pixel buffer: %d", v2, 8u);
}

@end