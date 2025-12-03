@interface PKImageRenderer
+ (CGImage)createImageByUnpremultiplyingAlphaInImage:(CGImage *)image;
+ (CGImage)createJPEGCopyFrom:(CGImage *)from compressionQuality:(double)quality;
+ (void)_fuzzTestUnzippedData:(id)data;
- (BOOL)invertColors;
- (CGSize)size;
- (PKImageRenderer)initWithSize:(CGSize)size scale:(double)scale renderQueue:(id)queue sixChannelBlending:(BOOL)blending transparentBlending:(BOOL)transparentBlending extendedDynamicRange:(BOOL)range;
- (id)initSyncWithSize:(CGSize)size scale:(double)scale extendedDynamicRange:(BOOL)range;
- (int64_t)blendingModeForSixChannelBlending:(BOOL)blending withTransparentBlending:(BOOL)transparentBlending;
- (void)_renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion;
- (void)buildStrokeRenderCacheForDrawing:(id)drawing;
- (void)cancel;
- (void)dealloc;
- (void)renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
- (void)renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion;
- (void)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
- (void)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion;
- (void)renderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
- (void)renderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion;
- (void)resume;
- (void)setupWithSize:(CGSize)size scale:(double)scale renderQueue:(id)queue sixChannelBlending:(BOOL)blending synchronous:(BOOL)synchronous transparentBlending:(BOOL)transparentBlending extendedDynamicRange:(BOOL)range;
- (void)sixChannelCGRenderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
- (void)sixChannelCGRenderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion;
- (void)sixChannelCGRenderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
- (void)sixChannelPDFRenderDrawing:(id)drawing context:(CGContext *)context clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion;
@end

@implementation PKImageRenderer

- (PKImageRenderer)initWithSize:(CGSize)size scale:(double)scale renderQueue:(id)queue sixChannelBlending:(BOOL)blending transparentBlending:(BOOL)transparentBlending extendedDynamicRange:(BOOL)range
{
  rangeCopy = range;
  transparentBlendingCopy = transparentBlending;
  blendingCopy = blending;
  height = size.height;
  width = size.width;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = PKImageRenderer;
  v16 = [(PKImageRenderer *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(PKImageRenderer *)v16 setupWithSize:queueCopy scale:blendingCopy renderQueue:0 sixChannelBlending:transparentBlendingCopy synchronous:rangeCopy transparentBlending:width extendedDynamicRange:height, scale];
  }

  return v17;
}

- (id)initSyncWithSize:(CGSize)size scale:(double)scale extendedDynamicRange:(BOOL)range
{
  rangeCopy = range;
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = PKImageRenderer;
  v9 = [(PKImageRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(PKImageRenderer *)v9 setupWithSize:0 scale:0 renderQueue:1 sixChannelBlending:0 synchronous:rangeCopy transparentBlending:width extendedDynamicRange:height, scale];
  }

  return v10;
}

- (void)dealloc
{
  synchronous = [(PKImageRenderer *)self synchronous];
  rendererController = self->_rendererController;
  if (synchronous)
  {
    if (rendererController)
    {
      rendererController->_isTorndown = 1;
    }
  }

  else
  {
    [(PKMetalRendererController *)rendererController teardown];
  }

  v5.receiver = self;
  v5.super_class = PKImageRenderer;
  [(PKImageRenderer *)&v5 dealloc];
}

- (void)setupWithSize:(CGSize)size scale:(double)scale renderQueue:(id)queue sixChannelBlending:(BOOL)blending synchronous:(BOOL)synchronous transparentBlending:(BOOL)transparentBlending extendedDynamicRange:(BOOL)range
{
  transparentBlendingCopy = transparentBlending;
  synchronousCopy = synchronous;
  blendingCopy = blending;
  scaleCopy = scale;
  height = size.height;
  width = size.width;
  self->_size = size;
  self->_extendedDynamicRange = range;
  v16 = fmax(round(size.width * scale), 1.0);
  v17 = fmax(round(size.height * scale), 1.0);
  [PKMetalUtility clampedPixelSize:queue, v16, v17];
  v20 = v18;
  v21 = v19;
  if (v16 != v18 || v17 != v19)
  {
    scaleCopy = v18 / v16 * scaleCopy;
  }

  self->_scale = scaleCopy;
  self->_synchronous = synchronousCopy;
  if (+[PKMetalUtility isMetalAvailable])
  {
    v23 = [(PKImageRenderer *)self blendingModeForSixChannelBlending:blendingCopy withTransparentBlending:transparentBlendingCopy];
    v28 = objc_alloc_init(PKMetalConfig);
    height = [[PKMetalRendererController alloc] initWithPixelSize:v23 actualSize:self->_extendedDynamicRange pixelFormat:v28 sixChannelBlendingMode:v20 wantsExtendedDynamicRangeContent:v21 metalConfig:width, height];
    rendererController = self->_rendererController;
    self->_rendererController = height;

    v26 = self->_rendererController;
    if (synchronousCopy)
    {
      v27 = v28;
      if (v26)
      {
        v26->_synchronous = 1;
        atomic_load(&v26->_cancelAllRendering);
      }
    }

    else
    {
      [(PKMetalRendererController *)v26 setup];
      v27 = v28;
    }
  }
}

- (int64_t)blendingModeForSixChannelBlending:(BOOL)blending withTransparentBlending:(BOOL)transparentBlending
{
  v4 = 4;
  if (!blending || transparentBlending)
  {
    v4 = 0;
  }

  if (blending && transparentBlending)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

- (void)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  strokes = [drawing strokes];
  v14 = [strokes copy];
  [(PKImageRenderer *)self renderStrokes:v14 clippedToStrokeSpaceRect:completionCopy scale:x completion:y, width, height, scale];
}

- (void)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  strokes = [drawing strokes];
  v17 = [strokes copy];
  v18 = *&transform->c;
  v19[0] = *&transform->a;
  v19[1] = v18;
  v19[2] = *&transform->tx;
  [(PKImageRenderer *)self renderStrokes:v17 clippedToStrokeSpaceRect:v19 scale:completionCopy strokeTransform:x completion:y, width, height, scale];
}

- (void)renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  v16 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v16;
  v20[2] = *&transform->tx;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PKImageRenderer_renderCGStrokes_clippedToStrokeSpaceRect_scale_strokeTransform_completion___block_invoke;
  v18[3] = &unk_1E82D9DD0;
  v19 = completionCopy;
  v17 = completionCopy;
  [(PKImageRenderer *)self _renderCGStrokes:strokes clippedToStrokeSpaceRect:v20 scale:v18 strokeTransform:x completion:y, width, height, scale];
}

uint64_t __93__PKImageRenderer_renderCGStrokes_clippedToStrokeSpaceRect_scale_strokeTransform_completion___block_invoke(uint64_t a1, CGImageRef image)
{
  CGImageRetain(image);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  v18[0] = *MEMORY[0x1E695EFD0];
  v18[1] = v14;
  v18[2] = *(MEMORY[0x1E695EFD0] + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKImageRenderer_renderCGStrokes_clippedToStrokeSpaceRect_scale_completion___block_invoke;
  v16[3] = &unk_1E82D9DD0;
  v17 = completionCopy;
  v15 = completionCopy;
  [(PKImageRenderer *)self _renderCGStrokes:strokes clippedToStrokeSpaceRect:v18 scale:v16 strokeTransform:x completion:y, width, height, scale];
}

uint64_t __77__PKImageRenderer_renderCGStrokes_clippedToStrokeSpaceRect_scale_completion___block_invoke(uint64_t a1, CGImageRef image)
{
  CGImageRetain(image);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_renderCGStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokesCopy = strokes;
  completionCopy = completion;
  v17 = completionCopy;
  if (self->_rendererController)
  {
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&v57.a = *MEMORY[0x1E695EFD0];
    *&v57.c = v18;
    *&v57.tx = *(MEMORY[0x1E695EFD0] + 32);
    v19 = x;
    *&v18 = y;
    v20 = width;
    v21 = height;
    if (CGRectIsNull(*(&v18 - 8)))
    {
      t1 = v57;
      CGAffineTransformMakeScale(&t2, scale, scale);
      CGAffineTransformConcat(&v57, &t1, &t2);
      v51 = height;
      v52 = width;
    }

    else
    {
      [(PKImageRenderer *)self size];
      v23 = v22;
      [(PKImageRenderer *)self size];
      scaleCopy = v23 / width;
      v26 = v25 / height;
      if (v23 / width >= v26)
      {
        scaleCopy = v26;
      }

      if (scaleCopy > scale)
      {
        scaleCopy = scale;
      }

      scale = self->_scale;
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeScale(&t1, scaleCopy * scale, scaleCopy * scale);
      t2 = t1;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v59 = CGRectApplyAffineTransform(v58, &t2);
      v60 = CGRectIntegral(v59);
      v50 = v60.origin.x;
      v28 = v60.origin.y;
      v29 = v60.size.width;
      v30 = v60.size.height;
      [(PKImageRenderer *)self size];
      v32 = v31;
      [(PKImageRenderer *)self scale];
      v34 = v32 * v33;
      if (v29 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v29;
      }

      [(PKImageRenderer *)self size];
      v37 = v36;
      [(PKImageRenderer *)self scale];
      v39 = v37 * v38;
      if (v30 < v39)
      {
        v39 = v30;
      }

      v51 = v39;
      v52 = v35;
      t2 = v57;
      v54 = t1;
      CGAffineTransformConcat(&v57, &t2, &v54);
      v54 = v57;
      CGAffineTransformMakeTranslation(&v53, -v50, -v28);
      CGAffineTransformConcat(&t2, &v54, &v53);
      v57 = t2;
      v54 = t2;
      CGAffineTransformMakeScale(&v53, 1.0 / self->_scale, 1.0 / self->_scale);
      CGAffineTransformConcat(&t2, &v54, &v53);
      v57 = t2;
    }

    [(PKMetalRendererController *)self->_rendererController setContentZoomScale:?];
    t2 = v57;
    CGAffineTransformMakeScale(&v54, self->_scale, self->_scale);
    CGAffineTransformConcat(&t1, &t2, &v54);
    v57 = t1;
    v40 = *MEMORY[0x1E695F050];
    v41 = *(MEMORY[0x1E695F050] + 8);
    v42 = *(MEMORY[0x1E695F050] + 16);
    v43 = *(MEMORY[0x1E695F050] + 24);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    if (CGRectIsNull(v61))
    {
      v51 = v43;
      v52 = v42;
    }

    else
    {
      v40 = *MEMORY[0x1E695EFF8];
      v41 = *(MEMORY[0x1E695EFF8] + 8);
      height = [PKStroke _strokesByCullingStrokes:strokesCopy toRectangle:x, y, width, height];

      strokesCopy = height;
    }

    if ([(PKImageRenderer *)self synchronous])
    {
      rendererController = [(PKImageRenderer *)self rendererController];
      t2 = v57;
      v46 = *&transform->c;
      *&v54.a = *&transform->a;
      *&v54.c = v46;
      *&v54.tx = *&transform->tx;
      CGAffineTransformConcat(&t1, &t2, &v54);
      v47 = [(PKMetalRendererController *)rendererController renderStrokesSync:strokesCopy clippedToStrokeSpaceRect:&t1 strokeTransform:x imageClipRect:y, width, height, v40, v41, v52, v51];

      (v17)[2](v17, v47, 0);
      CGImageRelease(v47);
    }

    else
    {
      rendererController2 = [(PKImageRenderer *)self rendererController];
      t2 = v57;
      v49 = *&transform->c;
      *&v54.a = *&transform->a;
      *&v54.c = v49;
      *&v54.tx = *&transform->tx;
      CGAffineTransformConcat(&t1, &t2, &v54);
      [(PKMetalRendererController *)rendererController2 renderStrokes:strokesCopy clippedToStrokeSpaceRect:&t1 strokeTransform:v17 imageClipRect:x completion:y, width, height, v40, v41, v52, v51];
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)renderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v6;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKImageRenderer *)self renderStrokes:strokes clippedToStrokeSpaceRect:v7 scale:completion strokeTransform:rect.origin.x completion:rect.origin.y, rect.size.width, rect.size.height, scale];
}

- (void)renderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKImageRenderer_renderStrokes_clippedToStrokeSpaceRect_scale_strokeTransform_completion___block_invoke;
  aBlock[3] = &unk_1E82D9DF8;
  aBlock[4] = self;
  v22 = completionCopy;
  v16 = completionCopy;
  strokesCopy = strokes;
  v18 = _Block_copy(aBlock);
  v19 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v19;
  v20[2] = *&transform->tx;
  [(PKImageRenderer *)self renderCGStrokes:strokesCopy clippedToStrokeSpaceRect:v20 scale:v18 strokeTransform:x completion:y, width, height, scale];
}

void __91__PKImageRenderer_renderStrokes_clippedToStrokeSpaceRect_scale_strokeTransform_completion___block_invoke(uint64_t a1, CGImage *a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = MEMORY[0x1E69DCAB8];
    [*(a1 + 32) scale];
    v5 = [v4 imageWithCGImage:a2 scale:0 orientation:?];
    (*(v2 + 16))(v2, v5);

    CGImageRelease(a2);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(a1 + 40);

    v6(v7);
  }
}

- (void)sixChannelCGRenderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  strokes = [drawing strokes];
  v15 = [strokes copy];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  v17[0] = *MEMORY[0x1E695EFD0];
  v17[1] = v16;
  v17[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKImageRenderer *)self _renderCGStrokes:v15 clippedToStrokeSpaceRect:v17 scale:completionCopy strokeTransform:x completion:y, width, height, scale];
}

- (void)sixChannelCGRenderStrokes:(id)strokes clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v6;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKImageRenderer *)self _renderCGStrokes:strokes clippedToStrokeSpaceRect:v7 scale:completion strokeTransform:rect.origin.x completion:rect.origin.y, rect.size.width, rect.size.height, scale];
}

- (void)sixChannelCGRenderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale strokeTransform:(CGAffineTransform *)transform completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  strokes = [drawing strokes];
  v17 = [strokes copy];
  v18 = *&transform->c;
  v19[0] = *&transform->a;
  v19[1] = v18;
  v19[2] = *&transform->tx;
  [(PKImageRenderer *)self _renderCGStrokes:v17 clippedToStrokeSpaceRect:v19 scale:completionCopy strokeTransform:x completion:y, width, height, scale];
}

+ (CGImage)createImageByUnpremultiplyingAlphaInImage:(CGImage *)image
{
  v4 = [MEMORY[0x1E695F658] imageWithCGImage:?];
  imageByUnpremultiplyingAlpha = [v4 imageByUnpremultiplyingAlpha];

  [imageByUnpremultiplyingAlpha extent];
  v6 = [imageByUnpremultiplyingAlpha imageBySettingAlphaOneInExtent:?];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  ColorSpace = CGImageGetColorSpace(image);
  if (ColorSpace)
  {
    [dictionary setObject:ColorSpace forKeyedSubscript:*MEMORY[0x1E695F838]];
    [dictionary setObject:ColorSpace forKeyedSubscript:*MEMORY[0x1E695F868]];
  }

  v9 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:dictionary];
  [v6 extent];
  v10 = [v9 createCGImage:v6 fromRect:?];

  return v10;
}

+ (CGImage)createJPEGCopyFrom:(CGImage *)from compressionQuality:(double)quality
{
  ImageAtIndex = from;
  keys[1] = *MEMORY[0x1E69E9840];
  qualityCopy = quality;
  if (!from)
  {
    return ImageAtIndex;
  }

  UTType = CGImageGetUTType(from);
  if (UTType && CFEqual(UTType, @"public.jpeg"))
  {
    return 0;
  }

  if (CGImageHasAlpha())
  {
    MaskFromAlpha = CGImageCreateMaskFromAlpha();
    v9 = [self createImageByUnpremultiplyingAlphaInImage:{ImageAtIndex, *&qualityCopy}];
    ImageAtIndex = v9;
  }

  else
  {
    Mask = CGImageGetMask();
    MaskFromAlpha = Mask;
    if (Mask)
    {
      CGImageRetain(Mask);
    }

    v9 = 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v12 = CGImageDestinationCreateWithData(Mutable, @"public.jpeg", 1uLL, 0);
  if (!v12)
  {
    CGImageRelease(MaskFromAlpha);
    CFRelease(Mutable);
    if (v9)
    {
      CGImageRelease(v9);
    }

    return 0;
  }

  v13 = v12;
  v14 = 0;
  if (quality >= 0.0 && quality <= 1.0)
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &qualityCopy);
    if (v16)
    {
      v17 = v16;
      v18 = *MEMORY[0x1E696D338];
      values = v16;
      keys[0] = v18;
      v14 = CFDictionaryCreate(v15, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v17);
    }

    else
    {
      v14 = 0;
    }
  }

  CGImageDestinationAddImage(v13, ImageAtIndex, v14);
  CGImageDestinationFinalize(v13);
  CFRelease(v13);
  if (v14)
  {
    CFRelease(v14);
  }

  v19 = CGImageSourceCreateWithData(Mutable, 0);
  CFRelease(Mutable);
  if (v19)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);
    CFRelease(v19);
    v20 = MaskFromAlpha != 0;
    if (ImageAtIndex && MaskFromAlpha)
    {
      v21 = CGImageCreateWithMask(ImageAtIndex, MaskFromAlpha);
      CGImageRelease(ImageAtIndex);
      v20 = 1;
      ImageAtIndex = v21;
    }
  }

  else
  {
    ImageAtIndex = 0;
    v20 = MaskFromAlpha != 0;
  }

  if (v9)
  {
    CGImageRelease(v9);
  }

  if (v20)
  {
    CGImageRelease(MaskFromAlpha);
  }

  return ImageAtIndex;
}

- (void)sixChannelPDFRenderDrawing:(id)drawing context:(CGContext *)context clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  drawingCopy = drawing;
  completionCopy = completion;
  v15 = completionCopy;
  if (self->_rendererController)
  {
    v41 = completionCopy;
    v42 = drawingCopy;
    strokes = [drawingCopy strokes];
    array = [MEMORY[0x1E695DF70] array];
    v18 = [strokes count];
    v19 = 0;
    while (v19 < v18)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [strokes objectAtIndexedSubscript:v19];
      [v21 renderBounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = __96__PKImageRenderer_sixChannelPDFRenderDrawing_context_clippedToStrokeSpaceRect_scale_completion___block_invoke(v21);
      [array addObject:v21];
      if (++v19 < v18)
      {
        while (1)
        {
          v31 = [strokes objectAtIndexedSubscript:v19];
          if (v30 != __96__PKImageRenderer_sixChannelPDFRenderDrawing_context_clippedToStrokeSpaceRect_scale_completion___block_invoke(v31))
          {
            break;
          }

          [array addObject:v31];
          [v31 renderBounds];
          v51.origin.x = v32;
          v51.origin.y = v33;
          v51.size.width = v34;
          v51.size.height = v35;
          v47.origin.x = v23;
          v47.origin.y = v25;
          v47.size.width = v27;
          v47.size.height = v29;
          v48 = CGRectUnion(v47, v51);
          v23 = v48.origin.x;
          v25 = v48.origin.y;
          v27 = v48.size.width;
          v29 = v48.size.height;

          if (v18 == ++v19)
          {
            v19 = v18;
            goto LABEL_9;
          }
        }
      }

LABEL_9:
      v49.origin.x = v23;
      v49.origin.y = v25;
      v49.size.width = v27;
      v49.size.height = v29;
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v50 = CGRectIntersection(v49, v52);
      v36 = v50.origin.x;
      v37 = v50.origin.y;
      v38 = v50.size.width;
      v39 = v50.size.height;
      if (!CGRectIsEmpty(v50))
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __96__PKImageRenderer_sixChannelPDFRenderDrawing_context_clippedToStrokeSpaceRect_scale_completion___block_invoke_2;
        v45[3] = &__block_descriptor_105_e18_v16__0__CGImage__8l;
        *&v45[4] = v36;
        *&v45[5] = v37;
        *&v45[6] = v38;
        *&v45[7] = v39;
        *&v45[8] = x;
        *&v45[9] = y;
        *&v45[10] = width;
        *&v45[11] = height;
        v45[12] = context;
        v46 = v30;
        [(PKImageRenderer *)self renderCGStrokes:array clippedToStrokeSpaceRect:v45 scale:x completion:y, width, height, scale];
      }

      [array removeAllObjects];

      objc_autoreleasePoolPop(v20);
    }

    rendererController = [(PKImageRenderer *)self rendererController];
    [(PKMetalRendererController *)rendererController callBlockOnRenderQueue:v41];

    v15 = v41;
    drawingCopy = v42;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

uint64_t __96__PKImageRenderer_sixChannelPDFRenderDrawing_context_clippedToStrokeSpaceRect_scale_completion___block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 ink];
  v3 = [v2 behavior];
  v4 = [v3 renderingDescriptor];
  v5 = [v4 blendMode];

  if (v5 == 1)
  {
    v6 = [v1 ink];
    [v6 _sixChannelAddColor];
    v16 = v7;

    __asm { FMOV            V1.2S, #0.25 }

    v13 = vmvn_s8(vcgt_f32(*&vextq_s8(v16, v16, 4uLL), _D1));
    v14 = (*v16.i32 <= 0.25) | v13.i8[0] | v13.i8[4];
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __96__PKImageRenderer_sixChannelPDFRenderDrawing_context_clippedToStrokeSpaceRect_scale_completion___block_invoke_2(uint64_t a1, CGImage *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = [PKImageRenderer createJPEGCopyFrom:a2 compressionQuality:0.9];
    if (v4)
    {
      v5 = v4;
      CGImageRelease(v2);
      v2 = v5;
    }

    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    DKDNormalizedSubrectInRect(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
    DKDRectFromNormalizedSubrect(0.0, 0.0, Width, Height, v8, v9, v10, v11);
    x = v29.origin.x;
    y = v29.origin.y;
    v14 = v29.size.width;
    v15 = v29.size.height;
    if (!CGRectIsEmpty(v29))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = v14;
      v30.size.height = v15;
      v16 = CGImageCreateWithImageInRect(v2, v30);
      if (v16)
      {
        v17 = v16;
        CGContextSetBlendMode(*(a1 + 96), *(a1 + 104));
        v18 = *(a1 + 96);
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v22 = *(a1 + 56);
        v23 = *(a1 + 72);
        rect = *(a1 + 64);
        v24 = *(a1 + 80);
        v25 = *(a1 + 88);
        v31.origin.x = v19;
        v31.origin.y = v20;
        v31.size.width = v21;
        v31.size.height = v22;
        MidY = CGRectGetMidY(v31);
        v32.origin.x = rect;
        v32.origin.y = v23;
        v32.size.width = v24;
        v32.size.height = v25;
        v33.origin.y = v20 + (MidY - CGRectGetMidY(v32)) * -2.0;
        v33.origin.x = v19;
        v33.size.width = v21;
        v33.size.height = v22;
        CGContextDrawImage(v18, v33, v17);
        CGImageRelease(v17);
      }
    }

    CGImageRelease(v2);
  }
}

- (void)cancel
{
  rendererController = [(PKImageRenderer *)self rendererController];
  [(PKMetalRendererController *)rendererController cancelLongRunningRenders];
}

- (void)resume
{
  rendererController = [(PKImageRenderer *)self rendererController];
  [(PKMetalRendererController *)rendererController resumeLongRunningRendersAfterAllWorkIsDone];
}

+ (void)_fuzzTestUnzippedData:(id)data
{
  dataCopy = data;
  v4 = [(PKVersionedDocument *)[PKDrawingVersionedDocument alloc] initWithUnzippedData:dataCopy];
  v5 = [[PKImageRenderer alloc] initWithSize:240.0 scale:320.0, 1.0];
  v6 = dispatch_semaphore_create(0);
  drawing = [(PKDrawingVersionedDocument *)v4 drawing];
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PKImageRenderer__fuzzTestUnzippedData___block_invoke;
  v13[3] = &unk_1E82D9E40;
  v12 = v6;
  v14 = v12;
  [(PKImageRenderer *)v5 renderDrawing:drawing clippedToStrokeSpaceRect:v13 scale:v8 completion:v9, v10, v11, 0.3125];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)buildStrokeRenderCacheForDrawing:(id)drawing
{
  drawingCopy = drawing;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rendererController = self->_rendererController;
    strokes = [drawingCopy strokes];
    [(PKMetalRendererController *)rendererController buildRenderCacheForStrokes:strokes];
  }
}

- (BOOL)invertColors
{
  rendererController = self->_rendererController;
  if (rendererController)
  {
    LOBYTE(rendererController) = rendererController->_invertColors;
  }

  return rendererController & 1;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end