@interface FigSubtitleWebVTTCueCALayer
- (CGRect)getSuggestedBounds:(unsigned __int8)a3;
- (FigSubtitleWebVTTCueCALayer)init;
- (__CFString)getContentID;
- (unsigned)isDirty;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)setContent:(__CFAttributedString *)a3;
- (void)setCuePosition:(CGPoint)a3;
- (void)setDefaultFontSize:(double)a3;
- (void)setRenderer:(OpaqueFigSubtitleRenderer *)a3;
- (void)setViewport:(CGRect)a3;
@end

@implementation FigSubtitleWebVTTCueCALayer

- (FigSubtitleWebVTTCueCALayer)init
{
  v9 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FigSubtitleWebVTTCueCALayer;
  v2 = [(FigSubtitleBackdropCALayer *)&v7 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00401FA4BE4CuLL);
    v2->layerInternal = v3;
    if (v3 && (*v3 = v2, v4 = *(MEMORY[0x1E695F058] + 16), *(v3 + 24) = *MEMORY[0x1E695F058], *(v3 + 40) = v4, v2->layerInternal->var2 = 0, v2->layerInternal->var4 = 0, v2->layerInternal->var5 = 0, __sprintf_chk(label, 0, 0x100uLL, "com.apple.coremedia.FigSubtitleWebVTTCueCALayer.messagequeue<%p>", v2), v5 = dispatch_queue_create(label, 0), (v2->layerInternal->var1 = v5) != 0))
    {
      [(FigSubtitleBackdropCALayer *)v2 setDelegate:v2];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  layerInternal = self->layerInternal;
  if (layerInternal)
  {
    if (layerInternal->var2)
    {
      CFRelease(layerInternal->var2);
      layerInternal = self->layerInternal;
    }

    if (layerInternal->var1)
    {
      dispatch_release(layerInternal->var1);
      layerInternal = self->layerInternal;
      layerInternal->var1 = 0;
    }

    if (!layerInternal->var4 || (CFRelease(layerInternal->var4), (layerInternal = self->layerInternal) != 0))
    {
      free(layerInternal);
    }
  }

  v4.receiver = self;
  v4.super_class = FigSubtitleWebVTTCueCALayer;
  [(FigSubtitleBackdropCALayer *)&v4 dealloc];
}

- (void)setCuePosition:(CGPoint)a3
{
  context = self->layerInternal;
  v5 = a3;
  var1 = context->var1;
  if (var1)
  {
    dispatch_sync_f(var1, &context, setCuePositionDo);
  }
}

- (CGRect)getSuggestedBounds:(unsigned __int8)a3
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = v3;
  context[0] = self->layerInternal;
  context[1] = a3;
  context[2] = &v10;
  v4 = *(context[0] + 8);
  if (v4)
  {
    dispatch_sync_f(v4, context, getSuggestedBoundsDo);
  }

  v6 = *(&v10 + 1);
  v5 = *&v10;
  v8 = *(&v11 + 1);
  v7 = *&v11;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (unsigned)isDirty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  var1 = self->layerInternal->var1;
  if (var1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__FigSubtitleWebVTTCueCALayer_isDirty__block_invoke;
    v5[3] = &unk_1E7483AF8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(var1, v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFString)getContentID
{
  context[0] = self->layerInternal;
  context[1] = &v4;
  result = *(context[0] + 8);
  if (result)
  {
    v4 = 0;
    dispatch_sync_f(result, context, getContentIDDo_0);
    return v4;
  }

  return result;
}

- (void)setContent:(__CFAttributedString *)a3
{
  v4[0] = self->layerInternal;
  v4[1] = a3;
  v3 = *(v4[0] + 8);
  if (v3)
  {
    dispatch_sync_f(v3, v4, setContentDo);
  }
}

- (void)setRenderer:(OpaqueFigSubtitleRenderer *)a3
{
  v4[0] = self->layerInternal;
  v4[1] = a3;
  v3 = *(v4[0] + 8);
  if (v3)
  {
    dispatch_sync_f(v3, v4, setRendererDo_0);
  }
}

- (void)setViewport:(CGRect)a3
{
  context = self->layerInternal;
  v5 = a3;
  var1 = context->var1;
  if (var1)
  {
    dispatch_sync_f(var1, &context, setViewportDo_0);
  }
}

- (void)setDefaultFontSize:(double)a3
{
  v4[0] = self->layerInternal;
  *&v4[1] = a3;
  v3 = *(v4[0] + 8);
  if (v3)
  {
    dispatch_sync_f(v3, v4, setDefaultFontSizeDo);
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  var1 = self->layerInternal->var1;
  if (var1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__FigSubtitleWebVTTCueCALayer_layoutSublayersOfLayer___block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_sync(var1, block);
  }

  [(FigSubtitleWebVTTCueCALayer *)self getSuggestedBounds:0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a3 bounds];
  v17 = v16;
  v19 = v18;
  v20 = v14;
  v21 = v15;
  if (v15 <= 0.0 || v14 <= 0.0 || fabs((v11 - v14) / v14) >= 0.02 || fabs((v13 - v15) / v15) >= 0.02)
  {
    v22 = self->layerInternal->var1;
    if (v22)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__FigSubtitleWebVTTCueCALayer_layoutSublayersOfLayer___block_invoke_2;
      v30[3] = &unk_1E7482608;
      v30[4] = self;
      dispatch_sync(v22, v30);
    }
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v23 = self->layerInternal->var1;
  if (v23)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__FigSubtitleWebVTTCueCALayer_layoutSublayersOfLayer___block_invoke_3;
    v29[3] = &unk_1E7483A30;
    v29[4] = a3;
    v29[5] = self;
    dispatch_sync(v23, v29);
  }

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v20;
  v32.size.height = v21;
  if (CGRectEqualToRect(v32, *MEMORY[0x1E695F058]))
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    [a3 setPosition:{v7 + v11 * 0.5, v9 + v13 * 0.5}];
  }

  else
  {
    [a3 position];
    v25 = v24;
    v27 = v26;
    v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
    [v28 setFromValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPoint:", v25, v27)}];
    [v28 setToValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPoint:", v7 + v11 * 0.5, v9 + v13 * 0.5)}];
    [v28 setDuration:0.433];
    [a3 setPosition:{v7 + v11 * 0.5, v9 + v13 * 0.5}];
    [a3 addAnimation:v28 forKey:@"animatePosition"];
  }

  [a3 setBounds:{v7, v9, v11, v13}];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __54__FigSubtitleWebVTTCueCALayer_layoutSublayersOfLayer___block_invoke(uint64_t a1)
{
  WindowOpacity = FigSubtitleRendererGetWindowOpacity(*(*(*(a1 + 32) + 120) + 16));
  v3 = *(a1 + 32);

  return [v3 updateWindowOpacity:WindowOpacity];
}

uint64_t __54__FigSubtitleWebVTTCueCALayer_layoutSublayersOfLayer___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WindowRoundedCornerRadius = FigSubtitleRendererGetWindowRoundedCornerRadius(*(*(*(a1 + 40) + 120) + 16));

  return [v1 setCornerRadius:WindowRoundedCornerRadius];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  var1 = self->layerInternal->var1;
  if (var1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__FigSubtitleWebVTTCueCALayer_drawLayer_inContext___block_invoke;
    block[3] = &unk_1E7483A80;
    block[4] = self;
    block[5] = &v24;
    block[6] = &v28;
    dispatch_sync(var1, block);
    if (*(v25 + 24))
    {
      v8 = v29[3];
      if (v8)
      {
        SubtitleSampleFromAttributedString = FigSubtitleRendererCreateSubtitleSampleFromAttributedString(v8);
        if (!SubtitleSampleFromAttributedString)
        {
          goto LABEL_15;
        }

        CGContextSaveGState(a4);
        v10 = MEMORY[0x1E695EFD0];
        v22 = *(MEMORY[0x1E695EFD0] + 8);
        if ([a3 contentsAreFlipped])
        {
          [a3 frame];
          v12 = v11;
          v22 = 0uLL;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          *&transform.d = xmmword_196E77200;
          transform.ty = v11;
          CGContextConcatCTM(a4, &transform);
          v13 = 0.0;
          v14 = -1.0;
          v15 = 1.0;
        }

        else
        {
          v15 = *v10;
          v14 = v10[3];
          v13 = v10[4];
          v12 = v10[5];
        }

        var2 = self->layerInternal->var2;
        *&transform.a = a4;
        transform.b = v15;
        *&transform.c = v22;
        transform.tx = v14;
        transform.ty = v13;
        v21 = v12;
        FigSubtitleRendererDrawSubtitleText(var2, SubtitleSampleFromAttributedString, &transform);
        CFRelease(SubtitleSampleFromAttributedString);
        CGContextRestoreGState(a4);
        v17 = v29[3];
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        [a3 bounds];
        CGContextClearRect(a4, v32);
      }

      v18 = self->layerInternal->var1;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__FigSubtitleWebVTTCueCALayer_drawLayer_inContext___block_invoke_2;
      v19[3] = &unk_1E7482608;
      v19[4] = self;
      dispatch_sync(v18, v19);
      [a3 superlayer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_14:
        [objc_msgSend(a3 "superlayer")];
        goto LABEL_15;
      }

      [a3 superlayer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [a3 superlayer];
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

CFTypeRef __51__FigSubtitleWebVTTCueCALayer_drawLayer_inContext___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 120) + 64);
  result = *(*(a1[4] + 120) + 56);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

@end