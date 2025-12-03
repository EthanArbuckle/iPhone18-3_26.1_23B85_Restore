@interface AVVideoCompositionRenderContext
+ (id)renderContextPropertiesFromFigCompositor:(OpaqueFigVideoCompositor *)compositor;
- (AVEdgeWidths)edgeWidths;
- (AVPixelAspectRatio)pixelAspectRatio;
- (AVVideoCompositionRenderContext)initWithFigVideoCompositor:(OpaqueFigVideoCompositor *)compositor clientRequiredPixelBufferAttributes:(id)attributes videoComposition:(id)composition pixelBufferPool:(__CVPixelBufferPool *)pool;
- (BOOL)hasEqualPropertiesToFigVideoCompositor:(OpaqueFigVideoCompositor *)compositor;
- (BOOL)isBufferYCbCr:(__CVBuffer *)cr;
- (CGAffineTransform)renderTransform;
- (CGSize)size;
- (CVPixelBufferRef)newPixelBuffer;
- (__CVPixelBufferPool)pixelBufferPool;
- (void)_willDeallocOrFinalize;
- (void)dealloc;
@end

@implementation AVVideoCompositionRenderContext

- (void)_willDeallocOrFinalize
{
  internal = self->_internal;
  if (internal)
  {
    CFRelease(internal);
  }
}

- (void)dealloc
{
  [(AVVideoCompositionRenderContext *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVVideoCompositionRenderContext;
  [(AVVideoCompositionRenderContext *)&v3 dealloc];
}

- (CGSize)size
{
  internal = self->_internal;
  width = internal->_size.width;
  height = internal->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)renderTransform
{
  b = self->b;
  v4 = *(*&b + 48);
  *&retstr->a = *(*&b + 32);
  *&retstr->c = v4;
  *&retstr->tx = *(*&b + 64);
  return self;
}

- (AVPixelAspectRatio)pixelAspectRatio
{
  internal = self->_internal;
  horizontalSpacing = internal->_pixelAspectRatio.horizontalSpacing;
  verticalSpacing = internal->_pixelAspectRatio.verticalSpacing;
  result.verticalSpacing = verticalSpacing;
  result.horizontalSpacing = horizontalSpacing;
  return result;
}

- (AVEdgeWidths)edgeWidths
{
  internal = self->_internal;
  left = internal->_edgeWidths.left;
  top = internal->_edgeWidths.top;
  right = internal->_edgeWidths.right;
  bottom = internal->_edgeWidths.bottom;
  result.bottom = bottom;
  result.right = right;
  result.top = top;
  result.left = left;
  return result;
}

- (CVPixelBufferRef)newPixelBuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pixelBufferPoolQ = self->_internal->_pixelBufferPoolQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVVideoCompositionRenderContext_newPixelBuffer__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(pixelBufferPoolQ, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __49__AVVideoCompositionRenderContext_newPixelBuffer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pixelBufferPool];
  if (v2 && !CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], v2, 0, (*(*(a1 + 40) + 8) + 24)))
  {
    v3 = *(a1 + 32);
    v4 = v3[1];
    v5 = v4[26];
    if (v5)
    {
      CVBufferSetAttachment(*(*(*(a1 + 40) + 8) + 24), *MEMORY[0x1E6965D70], v5, kCVAttachmentMode_ShouldPropagate);
      v3 = *(a1 + 32);
      v4 = v3[1];
    }

    v6 = v4[25];
    if (v6)
    {
      CVBufferSetAttachment(*(*(*(a1 + 40) + 8) + 24), *MEMORY[0x1E6965EF8], v6, kCVAttachmentMode_ShouldPropagate);
      v3 = *(a1 + 32);
      v4 = v3[1];
    }

    if (v4[20])
    {
      v7 = [v3 isBufferYCbCr:*(*(*(a1 + 40) + 8) + 24)];
      v3 = *(a1 + 32);
      if (v7)
      {
        CVBufferSetAttachment(*(*(*(a1 + 40) + 8) + 24), *MEMORY[0x1E6965F98], *(v3[1] + 160), kCVAttachmentMode_ShouldPropagate);
        v3 = *(a1 + 32);
      }
    }

    v8 = v3[1];
    v9 = *(v8 + 168);
    if (v9)
    {
      CVBufferSetAttachment(*(*(*(a1 + 40) + 8) + 24), *MEMORY[0x1E6965D88], v9, kCVAttachmentMode_ShouldPropagate);
      v8 = *(*(a1 + 32) + 8);
    }

    v10 = *(v8 + 176);
    if (v10)
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v12 = *MEMORY[0x1E6965F30];

      CVBufferSetAttachment(v11, v12, v10, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

+ (id)renderContextPropertiesFromFigCompositor:(OpaqueFigVideoCompositor *)compositor
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (renderContextPropertiesFromFigCompositor__keysOnce != -1)
  {
    +[AVVideoCompositionRenderContext(Internal) renderContextPropertiesFromFigCompositor:];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = renderContextPropertiesFromFigCompositor__keys;
  v5 = [renderContextPropertiesFromFigCompositor__keys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v14 = 0;
        FigBaseObject = FigVideoCompositorGetFigBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(FigBaseObject, v10, v8, &v14);
        }

        if (v14)
        {
          [dictionary setObject:v14 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return dictionary;
}

id __86__AVVideoCompositionRenderContext_Internal__renderContextPropertiesFromFigCompositor___block_invoke()
{
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973BF0], *MEMORY[0x1E6973C08], *MEMORY[0x1E6973C00], *MEMORY[0x1E6973BF8], *MEMORY[0x1E6973BE8], *MEMORY[0x1E6973BB8], *MEMORY[0x1E6973BC8], *MEMORY[0x1E6973BE0], *MEMORY[0x1E6973BD0], *MEMORY[0x1E6973BD8], 0}];
  renderContextPropertiesFromFigCompositor__keys = result;
  return result;
}

- (AVVideoCompositionRenderContext)initWithFigVideoCompositor:(OpaqueFigVideoCompositor *)compositor clientRequiredPixelBufferAttributes:(id)attributes videoComposition:(id)composition pixelBufferPool:(__CVPixelBufferPool *)pool
{
  v49.receiver = self;
  v49.super_class = AVVideoCompositionRenderContext;
  v10 = [(AVVideoCompositionRenderContext *)&v49 init];
  if (!v10)
  {
    return v10;
  }

  v11 = objc_alloc_init(AVVideoCompositionRenderContextInternal);
  v10->_internal = v11;
  CFRetain(v11);
  v10->_internal->_pixelBufferPool = pool;
  CVPixelBufferPoolRetain(v10->_internal->_pixelBufferPool);
  v10->_internal->_videoComposition = [composition copy];
  v10->_internal->_clientRequiredPixelBufferAttributes = [attributes copy];
  v10->_internal->_basisProperties = [AVVideoCompositionRenderContext renderContextPropertiesFromFigCompositor:compositor];
  v10->_internal->_bufferPoollInitMutex = FigSimpleMutexCreate();
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10->_internal->_pixelBufferPoolQ = dispatch_queue_create("com.apple.avvideocompositionrendercontext.pixelbufferpoolq", v12);
  internal = v10->_internal;
  if (!internal->_pixelBufferPoolQ)
  {
    goto LABEL_26;
  }

  v14 = [(NSDictionary *)internal->_basisProperties objectForKey:*MEMORY[0x1E6973BF0]];
  if (!v14)
  {
    goto LABEL_26;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v14, &v10->_internal->_size))
  {
    goto LABEL_26;
  }

  v10->_internal->_renderScale = 1.0;
  v15 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973C08]];
  if (!v15)
  {
    goto LABEL_26;
  }

  [v15 floatValue];
  v10->_internal->_renderScale = v16;
  v10->_internal->_pixelAspectRatioDict = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973C00]];
  v17 = v10->_internal;
  pixelAspectRatioDict = v17->_pixelAspectRatioDict;
  if (pixelAspectRatioDict)
  {
    v19 = [-[__CFDictionary objectForKey:](pixelAspectRatioDict objectForKey:{*MEMORY[0x1E6965EF0]), "integerValue"}];
    v20 = [-[__CFDictionary objectForKey:](v10->_internal->_pixelAspectRatioDict objectForKey:{*MEMORY[0x1E6965F00]), "integerValue"}];
    v17 = v10->_internal;
  }

  else
  {
    v20 = 1;
    v19 = 1;
  }

  v17->_pixelAspectRatio.horizontalSpacing = v19;
  v17->_pixelAspectRatio.verticalSpacing = v20;
  v21 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BF8]];
  v22 = v21;
  if (v21)
  {
    if ([v21 count] == 4)
    {
      [objc_msgSend(v22 objectAtIndex:{0), "floatValue"}];
      v24 = v23;
      [objc_msgSend(v22 objectAtIndex:{1), "floatValue"}];
      v26 = v25;
      [objc_msgSend(v22 objectAtIndex:{2), "floatValue"}];
      v28 = v27;
      [objc_msgSend(v22 objectAtIndex:{3), "floatValue"}];
      v29 = v10->_internal;
      v29[13] = v24;
      v29[14] = v26;
      v29[15] = v28;
      v29[16] = v30;
      goto LABEL_12;
    }

LABEL_26:

    return 0;
  }

LABEL_12:
  v31 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BE8]];
  if (v31)
  {
    v10->_internal->_highQualityRendering = [v31 BOOLValue];
  }

  memset(&v48, 0, sizeof(v48));
  v46 = 0;
  v47 = 0;
  v45 = 0;
  if (FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture())
  {
    goto LABEL_26;
  }

  v32 = v10->_internal;
  renderScale = v32->_renderScale;
  v43 = v48;
  CGAffineTransformScale(&v44, &v43, renderScale, renderScale);
  v34 = *&v44.tx;
  v35 = *&v44.c;
  *&v32->_renderTransform.a = *&v44.a;
  *&v32->_renderTransform.c = v35;
  *&v32->_renderTransform.tx = v34;
  v36 = v46;
  v10->_internal->_cleanApertureDict = v47;
  v10->_internal->_destinationPixelBufferDimensions.width = v36;
  v10->_internal->_destinationPixelBufferDimensions.height = v45;
  v37 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BC8]];
  if (v37)
  {
    v10->_internal->_destinationDesiredPixelBufferAttributes = v37;
  }

  v38 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BE0]];
  if (v38)
  {
    v10->_internal->_destinationDesiredPixelBufferYCbCrMatrix = v38;
  }

  v39 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BD0]];
  if (v39)
  {
    v10->_internal->_destinationDesiredPixelBufferColorPrimaries = v39;
  }

  v40 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BD8]];
  if (v40)
  {
    v10->_internal->_destinationDesiredPixelBufferTransferFunction = v40;
  }

  v41 = [(NSDictionary *)v10->_internal->_basisProperties objectForKey:*MEMORY[0x1E6973BB8]];
  if (v41)
  {
    v10->_internal->_blendingTransferFunction = v41;
  }

  return v10;
}

- (BOOL)hasEqualPropertiesToFigVideoCompositor:(OpaqueFigVideoCompositor *)compositor
{
  v4 = [AVVideoCompositionRenderContext renderContextPropertiesFromFigCompositor:compositor];
  if (v4)
  {
    v5 = v4;
    basisProperties = self->_internal->_basisProperties;

    LOBYTE(v4) = [(NSDictionary *)basisProperties isEqual:v5];
  }

  return v4;
}

- (__CVPixelBufferPool)pixelBufferPool
{
  FigSimpleMutexLock();
  internal = self->_internal;
  if (internal->_pixelBufferPool)
  {
    goto LABEL_26;
  }

  v4 = [(NSString *)internal->_destinationDesiredPixelBufferTransferFunction isEqualToString:@"ITU_R_2100_HLG"];
  v5 = MEMORY[0x1E695E480];
  if (v4 || [(NSString *)self->_internal->_destinationDesiredPixelBufferTransferFunction isEqualToString:@"SMPTE_ST_2084_PQ"]|| [(NSString *)self->_internal->_destinationDesiredPixelBufferTransferFunction isEqualToString:@"Linear"])
  {
    clientRequiredPixelBufferAttributes = self->_internal->_clientRequiredPixelBufferAttributes;
    if (clientRequiredPixelBufferAttributes)
    {
      Value = CFDictionaryGetValue(clientRequiredPixelBufferAttributes, *MEMORY[0x1E6966130]);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFArrayGetTypeID() && CFArrayGetCount(v8) >= 1)
        {
          v10 = *v5;
          MutableCopy = CFDictionaryCreateMutableCopy(*v5, 0, clientRequiredPixelBufferAttributes);
          if (MutableCopy)
          {
            v12 = MutableCopy;
            Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v14 = Mutable;
              if (CFArrayGetCount(v8) >= 1)
              {
                v15 = 0;
                do
                {
                  FigCFArrayGetInt32AtIndex();
                  if (GetBitDepthFromPixelFormatType(0) >= 10)
                  {
                    FigCFArrayAppendInt32();
                  }

                  ++v15;
                }

                while (v15 < CFArrayGetCount(v8));
              }

              if (CFArrayGetCount(v8) >= 1)
              {
                v16 = 0;
                do
                {
                  FigCFArrayGetInt32AtIndex();
                  if (GetBitDepthFromPixelFormatType(0) <= 9)
                  {
                    FigCFArrayAppendInt32();
                  }

                  ++v16;
                }

                while (v16 < CFArrayGetCount(v8));
              }

              FigCFDictionarySetValue();
              v17 = CFRetain(v12);
              CFRelease(v12);
              CFRelease(v14);
              goto LABEL_24;
            }

            CFRelease(v12);
          }

          goto LABEL_28;
        }
      }

      v18 = clientRequiredPixelBufferAttributes;
LABEL_23:
      v17 = CFRetain(v18);
      goto LABEL_24;
    }
  }

  else
  {
    v18 = self->_internal->_clientRequiredPixelBufferAttributes;
    if (v18)
    {
      goto LABEL_23;
    }
  }

LABEL_28:
  v17 = 0;
LABEL_24:
  VTBuildPixelBufferPools();
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return self->_internal->_pixelBufferPool;
}

- (BOOL)isBufferYCbCr:(__CVBuffer *)cr
{
  if (!cr)
  {
    return 0;
  }

  if (!self->_internal->pixelFormatFamily)
  {
    CVPixelBufferGetPixelFormatType(cr);
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662B8]) == *MEMORY[0x1E695E4D0])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    self->_internal->pixelFormatFamily = v5;
  }

  return self->_internal->pixelFormatFamily == 1;
}

@end