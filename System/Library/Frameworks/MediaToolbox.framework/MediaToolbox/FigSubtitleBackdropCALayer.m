@interface FigSubtitleBackdropCALayer
- (BOOL)shouldEnableBackdropLayer;
- (FigSubtitleBackdropCALayer)init;
- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)_addPositionAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setContents:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsLayout;
- (void)updateBackdropLayer;
- (void)updateHDRContentState:(BOOL)a3;
- (void)updateWindowOpacity:(double)a3;
@end

@implementation FigSubtitleBackdropCALayer

- (FigSubtitleBackdropCALayer)init
{
  v8 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = FigSubtitleBackdropCALayer;
  v2 = [(FigBaseCALayer *)&v6 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x108004000F36631uLL);
    v2->bdLayerInternal = v3;
    v3->var0 = v2;
    *&v3->var2 = 0;
    v3->var4 = 0.0;
    __sprintf_chk(label, 0, 0x100uLL, "com.apple.coremedia.FigSubtitleBackdropCALayer.messagequeue<%p>", v2);
    v4 = dispatch_queue_create(label, 0);
    v2->bdLayerInternal->var1 = v4;
    if (!v4)
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  bdLayerInternal = self->bdLayerInternal;
  if (bdLayerInternal)
  {

    v4 = self->bdLayerInternal;
    if (v4[1])
    {
      dispatch_release(v4[1]);
      v4 = self->bdLayerInternal;
      v4[1] = 0;
    }

    self->bdLayerInternal = 0;
    free(v4);
  }

  v5.receiver = self;
  v5.super_class = FigSubtitleBackdropCALayer;
  [(FigBaseCALayer *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FigSubtitleBackdropCALayer_setDelegate___block_invoke;
  block[3] = &unk_1E7483A30;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(var1, block);
  v6.receiver = self;
  v6.super_class = FigSubtitleBackdropCALayer;
  [(FigSubtitleBackdropCALayer *)&v6 setDelegate:a3];
}

- (void)setCornerRadius:(double)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FigSubtitleBackdropCALayer_setCornerRadius___block_invoke;
  block[3] = &unk_1E7483A58;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v14;
  block[7] = &v8;
  dispatch_sync(var1, block);
  if (*(v21 + 24) == 1)
  {
    [v15[5] setCornerRadius:a3];
    [v9[5] setCornerRadius:a3];
  }

  v6.receiver = self;
  v6.super_class = FigSubtitleBackdropCALayer;
  [(FigSubtitleBackdropCALayer *)&v6 setCornerRadius:a3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

id __46__FigSubtitleBackdropCALayer_setCornerRadius___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 112) + 16);
  *(*(a1[6] + 8) + 40) = *(*(a1[4] + 112) + 40);
  result = *(*(a1[4] + 112) + 32);
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FigSubtitleBackdropCALayer_setBounds___block_invoke;
  block[3] = &unk_1E7483A58;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v19;
  block[7] = &v13;
  dispatch_sync(var1, block);
  if (*(v26 + 24) == 1)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v9 = v20[5];
    if (v9)
    {
      [v9 setBounds:{x, y, width, height}];
      [v20[5] setPosition:{x + width * 0.5, y + height * 0.5}];
    }

    v10 = v14[5];
    if (v10)
    {
      [v10 setHidden:0];
      [v14[5] setBounds:{x, y, width, height}];
      [v14[5] setPosition:{x + width * 0.5, y + height * 0.5}];
    }

    [MEMORY[0x1E6979518] commit];
  }

  v11.receiver = self;
  v11.super_class = FigSubtitleBackdropCALayer;
  [(FigBaseCALayer *)&v11 setBounds:x, y, width, height];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

id __40__FigSubtitleBackdropCALayer_setBounds___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 112) + 16);
  *(*(a1[6] + 8) + 40) = *(*(a1[4] + 112) + 40);
  result = *(*(a1[4] + 112) + 32);
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

- (void)setContents:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FigSubtitleBackdropCALayer_setContents___block_invoke;
  block[3] = &unk_1E7483A80;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(var1, block);
  if (*(v15 + 24) == 1)
  {
    [v9[5] setContents:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = FigSubtitleBackdropCALayer;
    [(FigSubtitleBackdropCALayer *)&v6 setContents:a3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
}

void *__42__FigSubtitleBackdropCALayer_setContents___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 112) + 16);
  if (*(*(result[5] + 8) + 24) == 1)
  {
    v1 = result;
    result = *(*(result[4] + 112) + 40);
    *(*(v1[6] + 8) + 40) = result;
  }

  return result;
}

- (void)setNeedsDisplay
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FigSubtitleBackdropCALayer_setNeedsDisplay__block_invoke;
  block[3] = &unk_1E7483A80;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v6;
  dispatch_sync(var1, block);
  if (*(v13 + 24) == 1)
  {
    [v7[5] setNeedsDisplay];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = FigSubtitleBackdropCALayer;
    [(FigBaseCALayer *)&v4 setNeedsDisplay];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v12, 8);
}

void *__45__FigSubtitleBackdropCALayer_setNeedsDisplay__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 112) + 16);
  if (*(*(result[5] + 8) + 24) == 1)
  {
    v1 = result;
    result = *(*(result[4] + 112) + 40);
    *(*(v1[6] + 8) + 40) = result;
  }

  return result;
}

- (void)setNeedsLayout
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__FigSubtitleBackdropCALayer_setNeedsLayout__block_invoke;
  block[3] = &unk_1E7483A58;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  block[7] = &v6;
  dispatch_sync(var1, block);
  if (*(v19 + 24) == 1)
  {
    [v13[5] setNeedsLayout];
    [v7[5] setNeedsLayout];
  }

  v4.receiver = self;
  v4.super_class = FigSubtitleBackdropCALayer;
  [(FigSubtitleBackdropCALayer *)&v4 setNeedsLayout];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

id __44__FigSubtitleBackdropCALayer_setNeedsLayout__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 112) + 16);
  *(*(a1[6] + 8) + 40) = *(*(a1[4] + 112) + 40);
  result = *(*(a1[4] + 112) + 32);
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

- (BOOL)shouldEnableBackdropLayer
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  var1 = self->bdLayerInternal->var1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FigSubtitleBackdropCALayer_shouldEnableBackdropLayer__block_invoke;
  block[3] = &unk_1E7483A80;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v6;
  dispatch_sync(var1, block);
  v3 = 0;
  if (v11[3] > 0.0)
  {
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3 & 1;
}

double __55__FigSubtitleBackdropCALayer_shouldEnableBackdropLayer__block_invoke(void *a1)
{
  result = *(*(a1[4] + 112) + 24);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 112) + 17);
  return result;
}

- (void)updateBackdropLayer
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = __Block_byref_object_copy__2;
  v15[4] = __Block_byref_object_dispose__2;
  v15[5] = 0;
  v3 = [(FigSubtitleBackdropCALayer *)self shouldEnableBackdropLayer];
  var1 = self->bdLayerInternal->var1;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke;
    block[3] = &unk_1E7483A80;
    block[4] = self;
    block[5] = &v28;
    block[6] = v15;
    dispatch_sync(var1, block);
    if ((v29[3] & 1) == 0 && +[FigCaptionBackdropLayer isSupported])
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      v5 = objc_alloc_init(FigSubtitleBackdropCALayerContentLayer);
      v23[5] = v5;
      v6 = objc_alloc_init(FigCaptionBackdropLayer);
      v17[5] = v6;
      [MEMORY[0x1E6979518] commit];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_2;
      v13[3] = &unk_1E7483AA8;
      v13[4] = self;
      v13[5] = &v22;
      v13[6] = v15;
      v13[7] = &v16;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
      v7 = self->bdLayerInternal->var1;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_3;
      v12[3] = &unk_1E7483AD0;
      v12[4] = self;
      v12[5] = &v22;
      v12[6] = &v16;
      dispatch_sync(v7, v12);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_4;
    v11[3] = &unk_1E7483AF8;
    v11[4] = self;
    v11[5] = &v28;
    dispatch_sync(var1, v11);
    if (*(v29 + 24) == 1)
    {
      v8 = self->bdLayerInternal->var1;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_5;
      v10[3] = &unk_1E7483AD0;
      v10[4] = self;
      v10[5] = &v22;
      v10[6] = &v16;
      dispatch_sync(v8, v10);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_6;
      v9[3] = &unk_1E7483B20;
      v9[4] = &v16;
      v9[5] = &v22;
      dispatch_async(MEMORY[0x1E69E96A0], v9);
    }
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void *__49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 112) + 16);
  *(*(result[6] + 8) + 40) = *(*(result[4] + 112) + 48);
  return result;
}

uint64_t __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) setContents:0];
  [*(*(*(a1 + 40) + 8) + 40) setDelegate:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) addSublayer:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) insertSublayer:*(*(*(a1 + 56) + 8) + 40) below:*(*(*(a1 + 40) + 8) + 40)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

void *__49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_3(void *result)
{
  *(*(result[4] + 112) + 40) = *(*(result[5] + 8) + 40);
  *(*(result[4] + 112) + 32) = *(*(result[6] + 8) + 40);
  *(*(result[4] + 112) + 16) = 1;
  return result;
}

id __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_5(void *a1)
{
  *(*(a1[4] + 112) + 16) = 0;
  *(*(a1[5] + 8) + 40) = *(*(a1[4] + 112) + 40);
  *(*(a1[4] + 112) + 40) = 0;
  result = *(*(a1[4] + 112) + 32);
  *(*(a1[6] + 8) + 40) = result;
  *(*(a1[4] + 112) + 32) = 0;
  return result;
}

uint64_t __49__FigSubtitleBackdropCALayer_updateBackdropLayer__block_invoke_6(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(*(*(a1 + 32) + 8) + 40) setContents:0];
  [*(*(*(a1 + 32) + 8) + 40) removeFromSuperlayer];

  [*(*(*(a1 + 40) + 8) + 40) setContents:0];
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperlayer];

  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)updateWindowOpacity:(double)a3
{
  var1 = self->bdLayerInternal->var1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FigSubtitleBackdropCALayer_updateWindowOpacity___block_invoke;
  v5[3] = &unk_1E7483B48;
  v5[4] = self;
  *&v5[5] = a3;
  dispatch_sync(var1, v5);
  [(FigSubtitleBackdropCALayer *)self updateBackdropLayer];
}

double __50__FigSubtitleBackdropCALayer_updateWindowOpacity___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 112) + 24) = result;
  return result;
}

- (void)updateHDRContentState:(BOOL)a3
{
  var1 = self->bdLayerInternal->var1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__FigSubtitleBackdropCALayer_updateHDRContentState___block_invoke;
  v5[3] = &unk_1E7483B70;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(var1, v5);
  [(FigSubtitleBackdropCALayer *)self updateBackdropLayer];
}

- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5
{
  v8 = _animationByTransformingValues(a4, &__block_literal_global_23);
  if ([a4 isAdditive])
  {
    v9 = @"bounds.size";
  }

  else
  {
    v9 = @"bounds";
  }

  [v8 setKeyPath:v9];
  [v8 setDelegate:0];

  [a3 addAnimation:v8 forKey:a5];
}

- (void)_addPositionAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5
{
  if ([a4 isAdditive])
  {
    v8 = &__block_literal_global_31;
  }

  else
  {
    v8 = &__block_literal_global_34;
  }

  v9 = _animationByTransformingValues(a4, v8);
  [v9 setKeyPath:@"position"];
  [v9 setDelegate:0];

  [a3 addAnimation:v9 forKey:a5];
}

uint64_t __81__FigSubtitleBackdropCALayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeValue];
  v2 = MEMORY[0x1E696B098];
  v4 = v3 * 0.5;
  v6 = v5 * 0.5;

  return [v2 valueWithPoint:{v4, v6}];
}

uint64_t __81__FigSubtitleBackdropCALayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 rectValue];
  v2 = MEMORY[0x1E696B098];
  v5 = v3 + v4 * 0.5;
  v8 = v6 + v7 * 0.5;

  return [v2 valueWithPoint:{v5, v8}];
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (self->bdLayerInternal->var2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([@"bounds.size" isEqualToString:{objc_msgSend(a3, "keyPath")}] & 1) != 0 || objc_msgSend(@"bounds", "isEqualToString:", objc_msgSend(a3, "keyPath"))))
    {
      [(FigSubtitleBackdropCALayer *)self _addBoundsAnimationToLayer:self->bdLayerInternal->var6 usingAnimation:a3 forKey:a4];
      [(FigSubtitleBackdropCALayer *)self _addBoundsAnimationToLayer:self->bdLayerInternal->var5 usingAnimation:a3 forKey:a4];
      [(FigSubtitleBackdropCALayer *)self _addPositionAnimationToLayer:self->bdLayerInternal->var6 usingAnimation:a3 forKey:a4];
      [(FigSubtitleBackdropCALayer *)self _addPositionAnimationToLayer:self->bdLayerInternal->var5 usingAnimation:a3 forKey:a4];
    }
  }

  v7.receiver = self;
  v7.super_class = FigSubtitleBackdropCALayer;
  [(FigSubtitleBackdropCALayer *)&v7 addAnimation:a3 forKey:a4];
}

@end