@interface FigSubtitleCALayer
+ (id)defaultActionForKey:(id)a3;
- (BOOL)isOverscanSubtitleSupportEnabled;
- (FigSubtitleCALayer)init;
- (FigSubtitleCALayer)initWithLayer:(id)a3;
- (NSString)captionRenderingStrategy;
- (id)actionForKey:(id)a3;
- (uint64_t)init;
- (void)_addBoundsAnimation:(id)a3 forKey:(id)a4;
- (void)_addPositionAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimations:(id)a3 forKey:(id)a4;
- (void)clear;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)handleNeedsLayoutNotification;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)removeAnimationsForKey:(id)a3;
- (void)setCaptionRendererOutputOptions:(id)a3 forKeyPath:(id)a4;
- (void)setCaptionRenderingStrategy:(id)a3;
- (void)setCaptionsAvoidanceMargins:(FigGeometryMargins *)a3;
- (void)setOverscanSubtitleSupportEnabled:(BOOL)a3;
- (void)setPlayer:(OpaqueFigPlayer *)a3;
- (void)setSubtitleGravityNonObscuring:(unsigned __int8)a3;
- (void)setVideoRelativeToViewport:(CGRect)a3;
- (void)setVideosize:(CGSize)a3;
- (void)setViewport:(CGRect)a3;
- (void)updateNonForcedSubtitleDisplayEnabled:(unsigned __int8)a3;
@end

@implementation FigSubtitleCALayer

- (id)actionForKey:(id)a3
{
  if (([@"hidden" isEqualToString:?] & 1) == 0 && !objc_msgSend(@"contents", "isEqualToString:", a3))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigSubtitleCALayer;
  return [(FigBaseCALayer *)&v6 actionForKey:a3];
}

+ (id)defaultActionForKey:(id)a3
{
  if (([@"hidden" isEqualToString:?] & 1) == 0 && !objc_msgSend(@"contents", "isEqualToString:", a3))
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___FigSubtitleCALayer;
  return objc_msgSendSuper2(&v6, sel_defaultActionForKey_, a3);
}

- (FigSubtitleCALayer)init
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = FigSubtitleCALayer;
  v2 = [(FigSubtitleBackdropCALayer *)&v16 init];
  if (!v2)
  {
    return v2;
  }

  v3 = malloc_type_calloc(1uLL, 0x140uLL, 0x10E00406081BCC0uLL);
  *(v2 + 15) = v3;
  if (!v3)
  {
LABEL_11:

    return 0;
  }

  v3[1] = v2;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 16);
  *(v3 + 1) = *MEMORY[0x1E695F058];
  *(v3 + 2) = v5;
  *(*(v2 + 15) + 48) = *MEMORY[0x1E695F060];
  v6 = *(v2 + 15);
  *(v6 + 88) = v5;
  *(v6 + 72) = v4;
  v7 = *(v2 + 15);
  v8 = MEMORY[0x1E6962818];
  v9 = *(MEMORY[0x1E6962818] + 32);
  *(v7 + 152) = *(MEMORY[0x1E6962818] + 48);
  *(v7 + 136) = v9;
  v10 = *v8;
  *(v7 + 120) = v8[1];
  *(v7 + 104) = v10;
  *(*(v2 + 15) + 168) = 0;
  v11 = FigSubtitleRendererUseCoreTextRendererByDefault();
  v12 = *(v2 + 15);
  if (v11)
  {
    *(v12 + 184) = 1;
  }

  else
  {
    *(v12 + 184) = 0;
    if (setupFCR(v12))
    {
      [FigSubtitleCALayer init];
      goto LABEL_11;
    }

    if (*(*(v2 + 15) + 184) != 1)
    {
      goto LABEL_8;
    }
  }

  [v2 setDelegate:v2];
  if (setupCoreTextRenderer(*(v2 + 15)))
  {
    [FigSubtitleCALayer init];
    goto LABEL_11;
  }

LABEL_8:
  [v2 setEdgeAntialiasingMask:0];
  __sprintf_chk(label, 0, 0x100uLL, "com.apple.coremedia.FigSubtitleCALayer.messagequeue<%p>", v2);
  v13 = dispatch_queue_create(label, 0);
  v14 = *(v2 + 15);
  *(v14 + 176) = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  if (*(v14 + 184) == 1)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (!FigNotificationCenterAddWeakListener())
    {
      [v2 setHidden:1];
      *(*(v2 + 15) + 171) = 1;
      return v2;
    }

    goto LABEL_11;
  }

  return v2;
}

- (FigSubtitleCALayer)initWithLayer:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  v8.receiver = self;
  v8.super_class = FigSubtitleCALayer;
  v5 = [(FigSubtitleCALayer *)&v8 initWithLayer:a3];
  if (v5)
  {
    v6 = malloc_type_calloc(1uLL, 0x140uLL, 0x10E00406081BCC0uLL);
    v5->layerInternal = v6;
    if (v6)
    {
      v6->var1 = v5;
      v6->var9 = 1;
      v6->var7 = 0;
      return v5;
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  layerInternal = self->layerInternal;
  if (layerInternal)
  {
    var12 = layerInternal->var12;
    if (!var12)
    {
      releaseFCR(layerInternal);
      layerInternal = self->layerInternal;
      var12 = layerInternal->var12;
    }

    if (var12 == 1)
    {
      releaseCoreTextRenderer(layerInternal);
      layerInternal = self->layerInternal;
    }

    if (layerInternal->var11)
    {
      dispatch_release(layerInternal->var11);
      layerInternal = self->layerInternal;
      layerInternal->var11 = 0;
    }

    if (!layerInternal->var0 || (CFRelease(layerInternal->var0), (layerInternal = self->layerInternal) != 0))
    {
      self->layerInternal = 0;
      free(layerInternal);
    }
  }

  v5.receiver = self;
  v5.super_class = FigSubtitleCALayer;
  [(FigSubtitleBackdropCALayer *)&v5 dealloc];
}

- (void)clear
{
  layerInternal = self->layerInternal;
  var12 = layerInternal->var12;
  if (!var12)
  {
    FigCaptionRendererSessionClear(layerInternal->var14);
    layerInternal = self->layerInternal;
    var12 = layerInternal->var12;
  }

  if (var12 == 1)
  {
    v8 = 0;
    v9 = 0;
    v6 = layerInternal;
    v7 = 1;
    var11 = layerInternal->var11;
    if (var11)
    {
      dispatch_sync_f(var11, &v6, updateSubtitleDo);
      layerInternal = self->layerInternal;
    }

    [layerInternal->var1 setNeedsDisplay];
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  layerInternal = self->layerInternal;
  if (layerInternal->var12 == 1)
  {
    var11 = layerInternal->var11;
    if (var11)
    {
      v7[6] = v3;
      v7[7] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__FigSubtitleCALayer_layoutSublayersOfLayer___block_invoke;
      v7[3] = &unk_1E7483A30;
      v7[4] = self;
      v7[5] = a3;
      dispatch_sync(var11, v7);
    }
  }
}

uint64_t __45__FigSubtitleCALayer_layoutSublayersOfLayer___block_invoke(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(*(a1 + 32) + 120) + 240));
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 120);
  if (Count)
  {
    __asm { FMOV            V2.2D, #0.5 }

    [v3 setPosition:{vaddq_f64(v4[1], vmulq_f64(v4[2], _Q2))}];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 120);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];

    return [v10 setBounds:{v12, v13, v14, v15}];
  }

  else
  {
    __asm { FMOV            V2.2D, #0.5 }

    [v3 setPosition:{vaddq_f64(v4[18], vmulq_f64(v4[19], _Q2))}];
    [*(a1 + 40) setBounds:{*(*(*(a1 + 32) + 120) + 288), *(*(*(a1 + 32) + 120) + 296), *(*(*(a1 + 32) + 120) + 304), *(*(*(a1 + 32) + 120) + 312)}];
    v18 = *(a1 + 40);
    WindowRoundedCornerRadius = FigSubtitleRendererGetWindowRoundedCornerRadius(*(*(*(a1 + 32) + 120) + 208));

    return [v18 setCornerRadius:WindowRoundedCornerRadius];
  }
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  layerInternal = self->layerInternal;
  if (layerInternal->var12 == 1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    var11 = layerInternal->var11;
    if (var11)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__FigSubtitleCALayer_drawLayer_inContext___block_invoke;
      block[3] = &unk_1E7483BE0;
      block[4] = self;
      block[5] = &v22;
      dispatch_sync(var11, block);
      if (v23[5])
      {
        CGContextSaveGState(a4);
        v9 = MEMORY[0x1E695EFD0];
        v20 = *(MEMORY[0x1E695EFD0] + 8);
        if ([a3 contentsAreFlipped])
        {
          [a3 frame];
          v11 = v10;
          v20 = 0uLL;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          *&transform.d = xmmword_196E77200;
          transform.ty = v10;
          CGContextConcatCTM(a4, &transform);
          v12 = 0.0;
          v13 = -1.0;
          v14 = 1.0;
        }

        else
        {
          v14 = *v9;
          v13 = v9[3];
          v12 = v9[4];
          v11 = v9[5];
        }

        var15 = self->layerInternal->var15;
        v16 = v23[5];
        *&transform.a = a4;
        transform.b = v14;
        *&transform.c = v20;
        transform.tx = v13;
        transform.ty = v12;
        v19 = v11;
        FigSubtitleRendererDrawSubtitleText(var15, v16, &transform);
        v17 = v23[5];
        if (v17)
        {
          CFRelease(v17);
        }

        CGContextRestoreGState(a4);
      }

      else
      {
        [a3 bounds];
        CGContextClearRect(a4, v28);
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

void *__42__FigSubtitleCALayer_drawLayer_inContext___block_invoke(void *result)
{
  v1 = result;
  v2 = *(result[4] + 120);
  if (*(v2 + 224) || *(v2 + 168))
  {
    result = *(v2 + 216);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v1[5] + 8) + 40) = result;
  }

  return result;
}

- (void)_addBoundsAnimation:(id)a3 forKey:(id)a4
{
  if ([a3 isAdditive])
  {
    v7 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v8 = __49__FigSubtitleCALayer__addBoundsAnimation_forKey___block_invoke;
  }

  else
  {
    v7 = &v12;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v8 = __49__FigSubtitleCALayer__addBoundsAnimation_forKey___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &unk_1E74869A0;
  v7[4] = self;
  v9 = _animationByTransformingValues(a3, v7);
  if ([a3 isAdditive])
  {
    v10 = @"bounds.size";
  }

  else
  {
    v10 = @"bounds";
  }

  [v9 setKeyPath:{v10, v12, v13}];
  [v9 setDelegate:0];
  layerInternal = self->layerInternal;
  if (layerInternal->var12)
  {
    [(FigSubtitleBackdropCALayer *)self addAnimation:v9 forKey:a4];
  }

  else
  {
    FigCaptionRendererSessionAddAnimation(layerInternal->var14, v9, a4);
  }
}

uint64_t __49__FigSubtitleCALayer__addBoundsAnimation_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = v3;
  [a2 sizeValue];
  v6 = *(*(a1 + 32) + 120);
  if (*(v6 + 184))
  {
    getLayoutForAnimation(v6, &v10, 0.0, 0.0, v4 + *(v6 + 32), v5 + *(v6 + 40));
  }

  else
  {
    FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(*(v6 + 200), &v10);
    v7 = *(*(a1 + 32) + 120);
    v8 = v11;
    *(v7 + 256) = v10;
    *(v7 + 272) = v8;
  }

  return [MEMORY[0x1E696B098] valueWithSize:{vsubq_f64(v11, *(*(*(a1 + 32) + 120) + 272))}];
}

uint64_t __49__FigSubtitleCALayer__addBoundsAnimation_forKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = v3;
  [a2 rectValue];
  v8 = *(*(a1 + 32) + 120);
  if (*(v8 + 184))
  {
    getLayoutForAnimation(v8, &v10, v4, v5, v6, v7);
  }

  else
  {
    FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(*(v8 + 200), &v10);
  }

  return [MEMORY[0x1E696B098] valueWithRect:{0.0, 0.0, v11}];
}

- (void)_addPositionAnimation:(id)a3 forKey:(id)a4
{
  if ([a3 isAdditive])
  {
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v8 = __51__FigSubtitleCALayer__addPositionAnimation_forKey___block_invoke;
  }

  else
  {
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = __51__FigSubtitleCALayer__addPositionAnimation_forKey___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &unk_1E74869A0;
  v7[4] = self;
  v9 = _animationByTransformingValues(a3, v7);
  [v9 setKeyPath:@"position"];
  [v9 setDelegate:0];
  layerInternal = self->layerInternal;
  if (layerInternal->var12)
  {
    [(FigSubtitleBackdropCALayer *)self addAnimation:v9 forKey:a4];
  }

  else
  {
    FigCaptionRendererSessionAddAnimation(layerInternal->var14, v9, a4);
  }
}

uint64_t __51__FigSubtitleCALayer__addPositionAnimation_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v15 = *MEMORY[0x1E695F058];
  v16 = v3;
  [a2 sizeValue];
  v6 = *(*(a1 + 32) + 120);
  if (*(v6 + 184))
  {
    getLayoutForAnimation(v6, &v15, 0.0, 0.0, v4 + *(v6 + 32), v5 + *(v6 + 40));
  }

  else
  {
    FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(*(v6 + 200), &v15);
    v7 = *(*(a1 + 32) + 120);
    v8 = v16;
    v7[16] = v15;
    v7[17] = v8;
  }

  __asm { FMOV            V4.2D, #0.5 }

  return [MEMORY[0x1E696B098] valueWithPoint:{vsubq_f64(vmlaq_f64(v15, _Q4, v16), vmlaq_f64(*(*(*(a1 + 32) + 120) + 256), _Q4, *(*(*(a1 + 32) + 120) + 272)))}];
}

uint64_t __51__FigSubtitleCALayer__addPositionAnimation_forKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v15 = *MEMORY[0x1E695F058];
  v16 = v3;
  [a2 rectValue];
  v8 = *(*(a1 + 32) + 120);
  if (*(v8 + 184))
  {
    getLayoutForAnimation(v8, &v15, v4, v5, v6, v7);
  }

  else
  {
    FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(*(v8 + 200), &v15);
  }

  __asm { FMOV            V2.2D, #0.5 }

  return [MEMORY[0x1E696B098] valueWithPoint:{vmlaq_f64(v15, _Q2, v16)}];
}

- (void)handleNeedsLayoutNotification
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  var11 = self->layerInternal->var11;
  if (var11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__FigSubtitleCALayer_handleNeedsLayoutNotification__block_invoke;
    block[3] = &unk_1E7483AF8;
    block[4] = self;
    block[5] = &v6;
    dispatch_sync(var11, block);
    if (v7[3] >= 0.0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __51__FigSubtitleCALayer_handleNeedsLayoutNotification__block_invoke_2;
      v4[3] = &unk_1E7483BE0;
      v4[4] = self;
      v4[5] = &v6;
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }

  updateSubtitleDisplay(self->layerInternal, 1);
  _Block_object_dispose(&v6, 8);
}

uint64_t __51__FigSubtitleCALayer_handleNeedsLayoutNotification__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) updateWindowOpacity:*(*(*(a1 + 40) + 8) + 24)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)setCaptionRenderingStrategy:(id)a3
{
  v4 = [a3 copy];
  if (v4)
  {
    v5 = v4;
    if ([v4 isEqualToString:@"CoreTextSubtitleRenderer"])
    {
      layerInternal = self->layerInternal;
      var13 = layerInternal->var13;
      v8 = &kFigPlayerCaptionRenderingStrategy_CoreTextSubtitleRenderer;
    }

    else
    {
      if (![v5 isEqualToString:@"CaptionDisplayService"])
      {
        return;
      }

      layerInternal = self->layerInternal;
      var13 = layerInternal->var13;
      v8 = &kFigPlayerCaptionRenderingStrategy_CaptionDisplayService;
    }

    v10 = *v8;
    layerInternal->var13 = *v8;
    if (v10)
    {
      CFRetain(v10);
    }

    if (var13)
    {

      CFRelease(var13);
    }
  }

  else
  {
    v9 = self->layerInternal->var13;
    if (v9)
    {
      CFRelease(v9);
      self->layerInternal->var13 = 0;
    }
  }
}

- (NSString)captionRenderingStrategy
{
  result = &self->layerInternal->var13->isa;
  if (result)
  {
    if (FigCFEqual())
    {
      return @"CoreTextSubtitleRenderer";
    }

    else if (FigCFEqual())
    {
      return @"CaptionDisplayService";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setPlayer:(OpaqueFigPlayer *)a3
{
  layerInternal = self->layerInternal;
  cf = 0;
  if (!layerInternal->var9)
  {
    if (a3)
    {
      if (FigCFEqual())
      {
        if (layerInternal->var12 == 1)
        {
          releaseCoreTextRenderer(layerInternal);
          setupFCR(layerInternal);
          layerInternal->var12 = 0;
        }
      }

      else if (FigCFEqual() && !layerInternal->var12)
      {
        releaseFCR(layerInternal);
        setupCoreTextRenderer(layerInternal);
        layerInternal->var12 = 1;
      }
    }

    var12 = layerInternal->var12;
    if (!var12)
    {
      FigCaptionRendererSessionSetPlayer(layerInternal->var14, a3);
      var12 = layerInternal->var12;
    }

    if (var12 == 1)
    {
      if (layerInternal->var0)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        var0 = layerInternal->var0;
      }

      else
      {
        var0 = 0;
      }

      layerInternal->var0 = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (var0)
      {
        CFRelease(var0);
      }

      if (layerInternal->var0)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        FigBaseObject = FigPlayerGetFigBaseObject(layerInternal->var0);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(FigBaseObject, @"LastSentSubtitleSample", *MEMORY[0x1E695E480], &cf);
          if (cf)
          {
            digestSubtitleSample(1, layerInternal, cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }
    }
  }
}

- (void)setViewport:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  layerInternal = self->layerInternal;
  if (!layerInternal->var12)
  {
    [(FigSubtitleBackdropCALayer *)self setBounds:0.0, 0.0, a3.size.width, a3.size.height];
    [(FigBaseCALayer *)self setPosition:width * 0.5, height * 0.5];
    layerInternal = self->layerInternal;
  }

  if (width >= 0.0 && height >= 0.0)
  {
    layerInternal->var2.origin.x = x;
    layerInternal->var2.origin.y = y;
    layerInternal->var2.size.width = width;
    layerInternal->var2.size.height = height;
    var12 = layerInternal->var12;
    if (!var12)
    {
      FigCaptionRendererSessionSetLayoutContext_Viewport(layerInternal->var14);
      var12 = layerInternal->var12;
    }

    if (var12 == 1)
    {
      Count = CFArrayGetCount(layerInternal->var19);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(layerInternal->var19, i);
          [ValueAtIndex setViewport:{FCRGetVideoPresentationBounds(layerInternal->var3.width, layerInternal->var3.height, x, y, width, height)}];
        }
      }
    }
  }

  v14 = self->layerInternal;
  if (v14->var12 == 1)
  {

    updateSubtitleDisplay(v14, 0);
  }
}

- (void)setVideosize:(CGSize)a3
{
  layerInternal = self->layerInternal;
  if (a3.width >= 0.0)
  {
    height = a3.height;
    if (a3.height >= 0.0)
    {
      width = a3.width;
      v6 = self->layerInternal;
      if (!layerInternal->var12)
      {
        FigCaptionRendererSessionSetLayoutContext_VideoSize(layerInternal->var14, a3.width, a3.height);
        v6 = self->layerInternal;
      }

      layerInternal->var3.width = width;
      layerInternal->var3.height = height;
      layerInternal = v6;
    }
  }

  if (layerInternal->var12 == 1)
  {

    updateSubtitleDisplay(layerInternal, 0);
  }
}

- (void)setSubtitleGravityNonObscuring:(unsigned __int8)a3
{
  layerInternal = self->layerInternal;
  var12 = layerInternal->var12;
  v7 = layerInternal;
  if (!var12)
  {
    FigCaptionRendererSessionSetLayoutContext_Gravity(layerInternal->var14, a3);
    v7 = self->layerInternal;
    var12 = v7->var12;
  }

  layerInternal->var4 = a3;
  if (var12 == 1)
  {

    updateSubtitleDisplay(v7, 0);
  }
}

- (void)updateNonForcedSubtitleDisplayEnabled:(unsigned __int8)a3
{
  layerInternal = self->layerInternal;
  v5[0] = layerInternal;
  v5[1] = a3;
  if (layerInternal->var11)
  {
    dispatch_sync_f(layerInternal->var11, v5, updateNonForcedSubtitleDisplayEnabledDo);
    layerInternal = self->layerInternal;
  }

  if (layerInternal->var12 == 1)
  {
    updateSubtitleDisplay(layerInternal, 1);
  }
}

- (void)setVideoRelativeToViewport:(CGRect)a3
{
  layerInternal = self->layerInternal;
  if (a3.size.width >= 0.0)
  {
    height = a3.size.height;
    if (a3.size.height >= 0.0)
    {
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      v8 = self->layerInternal;
      if (!layerInternal->var12)
      {
        FigCaptionRendererSessionSetLayoutContext_VideoRelativeToViewport(layerInternal->var14);
        v8 = self->layerInternal;
      }

      layerInternal->var5.origin.x = x;
      layerInternal->var5.origin.y = y;
      layerInternal->var5.size.width = width;
      layerInternal->var5.size.height = height;
      layerInternal = v8;
    }
  }

  if (layerInternal->var12 == 1)
  {

    updateSubtitleDisplay(layerInternal, 0);
  }
}

- (void)setCaptionsAvoidanceMargins:(FigGeometryMargins *)a3
{
  layerInternal = self->layerInternal;
  v9 = *a3;
  if (!layerInternal->var12)
  {
    var14 = layerInternal->var14;
    right = a3->right;
    v10[0] = a3->left;
    v10[1] = right;
    bottom = a3->bottom;
    v10[2] = a3->top;
    v10[3] = bottom;
    FigCaptionRendererSessionSetLayoutContext_CaptionsAvoidanceMargins(var14, v10);
  }

  layerInternal->var6 = v9;
  v8 = self->layerInternal;
  if (v8->var12 == 1)
  {
    updateSubtitleDisplay(v8, 0);
  }
}

- (void)setCaptionRendererOutputOptions:(id)a3 forKeyPath:(id)a4
{
  if (a4)
  {
    FigCaptionRendererSessionSetOptions(self->layerInternal->var14, a4);
  }
}

- (BOOL)isOverscanSubtitleSupportEnabled
{
  layerInternal = self->layerInternal;
  var12 = layerInternal->var12;
  if (var12 == 1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    var11 = layerInternal->var11;
    if (var11)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__FigSubtitleCALayer_isOverscanSubtitleSupportEnabled__block_invoke;
      v7[3] = &unk_1E7483AF8;
      v7[4] = self;
      v7[5] = &v8;
      dispatch_sync(var11, v7);
      v4 = *(v9 + 24);
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  else if (var12)
  {
    v4 = 0;
  }

  else
  {
    LOBYTE(v8) = 0;
    v4 = FigCaptionRendererSessionGetLayoutContext_Overscan(layerInternal->var14, &v8) != 0;
  }

  return v4 & 1;
}

- (void)setOverscanSubtitleSupportEnabled:(BOOL)a3
{
  layerInternal = self->layerInternal;
  if (!layerInternal->var12)
  {
    FigCaptionRendererSessionSetLayoutContext_Overscan(layerInternal->var14, a3);
  }

  [(FigSubtitleCALayer *)self bounds];
  var11 = self->layerInternal->var11;
  if (var11)
  {
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__FigSubtitleCALayer_setOverscanSubtitleSupportEnabled___block_invoke;
    v15[3] = &unk_1E7483B70;
    v15[4] = self;
    v16 = a3;
    dispatch_sync(var11, v15);
    [(FigSubtitleBackdropCALayer *)self setBounds:v11, v12, v13, v14];
  }
}

- (void)addAnimations:(id)a3 forKey:(id)a4
{
  if (!self->layerInternal->var12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FigSubtitleCALayer _addBoundsAnimation:forKey:](self, "_addBoundsAnimation:forKey:", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Bounds_%@", a4]);
      -[FigSubtitleCALayer _addPositionAnimation:forKey:](self, "_addPositionAnimation:forKey:", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Position_%@", a4]);
    }
  }

  if (self->layerInternal->var12 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FigSubtitleCALayer _addBoundsAnimation:forKey:](self, "_addBoundsAnimation:forKey:", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Bounds_%@", a4]);
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Position_%@", a4];

      [(FigSubtitleCALayer *)self _addPositionAnimation:a3 forKey:v7];
    }
  }
}

- (void)removeAnimationsForKey:(id)a3
{
  var12 = self->layerInternal->var12;
  if (!var12)
  {
    v9.receiver = self;
    v9.super_class = FigSubtitleCALayer;
    -[FigSubtitleCALayer removeAnimationForKey:](&v9, sel_removeAnimationForKey_, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Bounds_%@", a3]);
    v8.receiver = self;
    v8.super_class = FigSubtitleCALayer;
    -[FigSubtitleCALayer removeAnimationForKey:](&v8, sel_removeAnimationForKey_, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Position_%@", a3]);
    var12 = self->layerInternal->var12;
  }

  if (var12 == 1)
  {
    v7.receiver = self;
    v7.super_class = FigSubtitleCALayer;
    -[FigSubtitleCALayer removeAnimationForKey:](&v7, sel_removeAnimationForKey_, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Bounds_%@", a3]);
    v6.receiver = self;
    v6.super_class = FigSubtitleCALayer;
    -[FigSubtitleCALayer removeAnimationForKey:](&v6, sel_removeAnimationForKey_, [MEMORY[0x1E696AEC0] stringWithFormat:@"FigSubtitleCALayer_Position_%@", a3]);
  }
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

@end