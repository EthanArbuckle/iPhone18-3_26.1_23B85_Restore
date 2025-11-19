@interface FigSubtitleWebVTTRegionCALayer
- (FigSubtitleWebVTTRegionCALayer)init;
- (__CFString)getContentID;
- (void)dealloc;
- (void)handleNeedsLayoutNotification;
- (void)layoutSublayers;
- (void)setContent:(__CFDictionary *)a3;
- (void)setNeedsDisplay;
- (void)setReLayout;
- (void)setRenderer:(OpaqueFigSubtitleRenderer *)a3;
- (void)setViewport:(CGRect)a3;
@end

@implementation FigSubtitleWebVTTRegionCALayer

- (FigSubtitleWebVTTRegionCALayer)init
{
  v9 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FigSubtitleWebVTTRegionCALayer;
  v2 = [(FigBaseCALayer *)&v7 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040DD8530F3uLL);
    v2->layerInternal = v3;
    if (!v3 || (*v3 = v2, v4 = *(MEMORY[0x1E695F058] + 16), *(v3 + 24) = *MEMORY[0x1E695F058], *(v3 + 40) = v4, v2->layerInternal->var2 = 0, v2->layerInternal->var4 = 0, v2->layerInternal->var6 = 1, [(FigSubtitleWebVTTRegionCALayer *)v2 setMasksToBounds:1], (v2->layerInternal->var5 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) == 0) || (__sprintf_chk(label, 0, 0x100uLL, "com.apple.coremedia.FigSubtitleWebVTTRegionCALayer.messagequeue<%p>", v2), v5 = dispatch_queue_create(label, 0), (v2->layerInternal->var1 = v5) == 0) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener()))
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
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      layerInternal = self->layerInternal;
      if (layerInternal->var2)
      {
        CFRelease(layerInternal->var2);
        layerInternal = self->layerInternal;
      }
    }

    if (layerInternal->var1)
    {
      dispatch_release(layerInternal->var1);
      layerInternal = self->layerInternal;
      layerInternal->var1 = 0;
    }

    if (layerInternal->var5)
    {
      CFRelease(layerInternal->var5);
      layerInternal = self->layerInternal;
    }

    if (!layerInternal->var4 || (CFRelease(layerInternal->var4), (layerInternal = self->layerInternal) != 0))
    {
      free(layerInternal);
    }
  }

  v4.receiver = self;
  v4.super_class = FigSubtitleWebVTTRegionCALayer;
  [(FigBaseCALayer *)&v4 dealloc];
}

- (__CFString)getContentID
{
  v4 = 0;
  context[0] = self->layerInternal;
  context[1] = &v4;
  result = *(context[0] + 8);
  if (result)
  {
    dispatch_sync_f(result, context, getContentIDDo);
    return v4;
  }

  return result;
}

- (void)setContent:(__CFDictionary *)a3
{
  layerInternal = self->layerInternal;
  v5[0] = layerInternal;
  v5[1] = a3;
  if (layerInternal->var1)
  {
    dispatch_sync_f(layerInternal->var1, v5, setContentDo_0);
    layerInternal = self->layerInternal;
  }

  updateRegionDisplay(&layerInternal->var0);
}

- (void)setRenderer:(OpaqueFigSubtitleRenderer *)a3
{
  v4[0] = self->layerInternal;
  v4[1] = a3;
  v3 = *(v4[0] + 8);
  if (v3)
  {
    dispatch_sync_f(v3, v4, setRendererDo);
  }
}

- (void)setViewport:(CGRect)a3
{
  layerInternal = self->layerInternal;
  context = layerInternal;
  v6 = a3;
  if (layerInternal->var1)
  {
    dispatch_sync_f(layerInternal->var1, &context, setViewportDo);
    layerInternal = self->layerInternal;
  }

  updateRegionDisplay(&layerInternal->var0);
}

- (void)setNeedsDisplay
{
  var1 = self->layerInternal->var1;
  if (var1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__FigSubtitleWebVTTRegionCALayer_setNeedsDisplay__block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_sync(var1, block);
  }

  v4.receiver = self;
  v4.super_class = FigSubtitleWebVTTRegionCALayer;
  [(FigBaseCALayer *)&v4 setNeedsDisplay];
}

CFIndex __49__FigSubtitleWebVTTRegionCALayer_setNeedsDisplay__block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(*(a1 + 32) + 112) + 64));
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 32) + 112) + 64), i);
      result = [ValueAtIndex isDirty];
      if (result)
      {
        result = [ValueAtIndex setNeedsDisplay];
      }
    }
  }

  return result;
}

- (void)setReLayout
{
  var1 = self->layerInternal->var1;
  if (var1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__FigSubtitleWebVTTRegionCALayer_setReLayout__block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_sync(var1, block);
  }
}

- (void)layoutSublayers
{
  layerInternal = self->layerInternal;
  var6 = layerInternal->var6;
  if (var6 != 2)
  {
    if (var6 == 1)
    {
      layerInternal->var6 = 2;
    }

    v5 = [(FigSubtitleWebVTTRegionCALayer *)self contentsAreFlipped];
    v18 = 0;
    v19 = &v18;
    v20 = 0x4010000000;
    v21 = "";
    v6 = *(MEMORY[0x1E695F058] + 16);
    v22 = *MEMORY[0x1E695F058];
    v23 = v6;
    var1 = self->layerInternal->var1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__FigSubtitleWebVTTRegionCALayer_layoutSublayers__block_invoke;
    block[3] = &unk_1E7483BB8;
    block[4] = self;
    block[5] = &v18;
    v17 = v5;
    dispatch_sync(var1, block);
    __asm { FMOV            V2.2D, #0.5 }

    [(FigBaseCALayer *)self setPosition:vaddq_f64(v19[2], vmulq_f64(v19[3], _Q2))];
    [(FigBaseCALayer *)self setBounds:v19[2].f64[0], v19[2].f64[1], v19[3].f64[0], v19[3].f64[1]];
    v13 = self->layerInternal->var1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__FigSubtitleWebVTTRegionCALayer_layoutSublayers__block_invoke_2;
    v15[3] = &unk_1E7483BE0;
    v15[4] = self;
    v15[5] = &v18;
    dispatch_sync(v13, v15);
    v14.receiver = self;
    v14.super_class = FigSubtitleWebVTTRegionCALayer;
    [(FigBaseCALayer *)&v14 layoutSublayers];
    _Block_object_dispose(&v18, 8);
  }
}

void __49__FigSubtitleWebVTTRegionCALayer_layoutSublayers__block_invoke(uint64_t a1)
{
  RegionBounds = FigSubtitleRendererGetRegionBounds(*(*(*(a1 + 32) + 112) + 56), *(*(*(a1 + 32) + 112) + 24), *(*(*(a1 + 32) + 112) + 32), *(*(*(a1 + 32) + 112) + 40));
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = RegionBounds;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
}

void __49__FigSubtitleWebVTTRegionCALayer_layoutSublayers__block_invoke_2(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(*(a1 + 32) + 112) + 64));
  v3 = [*(a1 + 32) contentsAreFlipped];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  if (v3)
  {
    v5 = v5 + *(v4 + 56);
  }

  RegionDefaultFontSize = FigSubtitleRendererGetRegionDefaultFontSize(*(*(*(a1 + 32) + 112) + 24), *(*(*(a1 + 32) + 112) + 32), *(*(*(a1 + 32) + 112) + 40), *(*(*(a1 + 32) + 112) + 48));
  if (Count >= 1)
  {
    v7 = RegionDefaultFontSize;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 32) + 112) + 64), --Count);
      [ValueAtIndex setViewport:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
      [ValueAtIndex setDefaultFontSize:v7];
      [ValueAtIndex getSuggestedBounds:1];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = *(a1 + 32);
      if (v8 || *(v16[14] + 72))
      {
        if ([v16 contentsAreFlipped])
        {
          v5 = v5 - v15;
        }
      }

      else
      {
        if (![v16 contentsAreFlipped])
        {
          v5 = v5 - v15;
        }

        *(*(*(a1 + 32) + 112) + 72) = 2;
      }

      [ValueAtIndex setCuePosition:{v13 * 0.5 + v11 + *(*(*(a1 + 40) + 8) + 32), v15 * 0.5 + v5}];
      [ValueAtIndex setNeedsLayout];
      if (![*(a1 + 32) contentsAreFlipped])
      {
        v5 = v15 + v5;
      }

      ++v8;
    }

    while (Count > 0);
  }
}

- (void)handleNeedsLayoutNotification
{
  layerInternal = self->layerInternal;
  var1 = layerInternal->var1;
  if (var1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__FigSubtitleWebVTTRegionCALayer_handleNeedsLayoutNotification__block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_sync(var1, block);
    layerInternal = self->layerInternal;
  }

  updateRegionDisplay(&layerInternal->var0);
}

@end