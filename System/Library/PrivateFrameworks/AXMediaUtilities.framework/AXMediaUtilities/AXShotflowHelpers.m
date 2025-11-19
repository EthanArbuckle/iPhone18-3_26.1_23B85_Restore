@interface AXShotflowHelpers
+ (id)resizeImage:(id)a3 byX:(float)a4 andY:(float)a5;
+ (id)resizeImage:(id)a3 to:(CGSize)a4;
+ (id)resizeImage:(id)a3 toWidth:(unint64_t)a4 andHeight:(unint64_t)a5;
+ (id)setCIContext;
+ (id)setCIContext:(id)a3;
+ (shared_ptr<CGImage>)getCGImageFromCIImage:(id)a3;
+ (vImage_Buffer)createVImageBuffer:(id)a3;
@end

@implementation AXShotflowHelpers

+ (vImage_Buffer)createVImageBuffer:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  pixelBufferOut = [v3 pixelBuffer];
  if (!pixelBufferOut)
  {
    v4 = *MEMORY[0x1E695E4D0];
    v5 = *MEMORY[0x1E6966028];
    v27[0] = *MEMORY[0x1E6966030];
    v27[1] = v5;
    v28[0] = v4;
    v28[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 extent];
    v8 = v7;
    [v3 extent];
    v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v8, v9, 0x42475241u, v6, &pixelBufferOut);
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = v10;
      _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_INFO, "Pixel create: %d", buf, 8u);
    }

    v12 = [MEMORY[0x1E695F620] context];
    [v12 render:v3 toCVPixelBuffer:pixelBufferOut];
  }

  v13 = [CVPixelBufferGetAttributes() objectForKey:*MEMORY[0x1E6966120]];
  MEMORY[0x1B2700DC0](1111970369, 0, 0, [v3 colorSpace], 0);
  v14 = [v13 objectForKey:@"BitsPerComponent"];
  v15 = [v14 intValue];

  v16 = [v13 objectForKey:@"CGBitmapInfo"];
  LODWORD(v14) = [v16 intValue];

  v17 = [v13 objectForKey:@"BitsPerBlock"];
  v18 = [v17 intValue];

  *&v26[4] = 0;
  *buf = v15;
  v22 = v18;
  v23 = [v3 colorSpace];
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

+ (id)setCIContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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

+ (shared_ptr<CGImage>)getCGImageFromCIImage:(id)a3
{
  v5 = v3;
  v7 = a3;
  v6 = [a1 setCIContext];
  [v7 extent];
  std::shared_ptr<CGImage>::shared_ptr[abi:ne200100]<CGImage,void (*)(CGImage*),0>(v5, [v6 createCGImage:v7 fromRect:?]);
}

+ (id)resizeImage:(id)a3 byX:(float)a4 andY:(float)a5
{
  v7 = a3;
  CGAffineTransformMakeScale(&v10, a4, a5);
  v8 = [v7 imageByApplyingTransform:&v10];

  return v8;
}

+ (id)resizeImage:(id)a3 to:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [v7 extent];
  v9 = v8;
  *&v8 = v10;
  *&v10 = height;
  v11 = width;
  *&v12 = v11 / fmaxf(v9, 1.0);
  *&v13 = *&v10 / fmaxf(*&v8, 1.0);
  v14 = [a1 resizeImage:v7 byX:v12 andY:v13];

  return v14;
}

+ (id)resizeImage:(id)a3 toWidth:(unint64_t)a4 andHeight:(unint64_t)a5
{
  v5 = [a1 resizeImage:a3 to:{a4, a5}];

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