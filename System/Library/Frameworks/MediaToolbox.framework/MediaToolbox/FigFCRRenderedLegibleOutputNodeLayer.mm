@interface FigFCRRenderedLegibleOutputNodeLayer
- (FigFCRRenderedLegibleOutputNodeLayer)init;
- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)_addPositionAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setContents:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setWindowOpacity:(double)a3;
@end

@implementation FigFCRRenderedLegibleOutputNodeLayer

- (FigFCRRenderedLegibleOutputNodeLayer)init
{
  v9.receiver = self;
  v9.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  v2 = [(FigBaseCALayer *)&v9 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040A33FF621uLL);
    v2->layerInternal = v3;
    v3->var0 = v2;
    v4 = objc_alloc_init(FigFCRRenderedLegibleOutputNodeContentLayer);
    v2->layerInternal->var3 = v4;
    [(FigBaseCALayer *)v2 addSublayer:v4];
    layerInternal = v2->layerInternal;
    layerInternal->var4 = 0;
    layerInternal->var2 = 0.0;
    if (+[FigCaptionBackdropLayer isSupported])
    {
      var4 = objc_alloc_init(FigCaptionBackdropLayer);
      v7 = v2->layerInternal;
      v7->var4 = var4;
      if (!var4)
      {
LABEL_5:
        v7->var5 = 0;
        return v2;
      }
    }

    else
    {
      v7 = v2->layerInternal;
      var4 = v7->var4;
      if (!var4)
      {
        goto LABEL_5;
      }
    }

    [(FigBaseCALayer *)v2 insertSublayer:var4 below:v7->var3];
    v7 = v2->layerInternal;
    goto LABEL_5;
  }

  return v2;
}

- (void)dealloc
{
  layerInternal = self->layerInternal;
  if (layerInternal)
  {
    var1 = layerInternal->var1;
    if (var1)
    {
      CFRelease(var1);
      self->layerInternal->var1 = 0;
      layerInternal = self->layerInternal;
    }

    v5 = self->layerInternal;
    if (v5)
    {
      self->layerInternal = 0;
      free(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  [(FigBaseCALayer *)&v6 dealloc];
}

- (void)setContents:(id)a3
{
  if (self->layerInternal->var5)
  {
    v5.receiver = self;
    v5.super_class = FigFCRRenderedLegibleOutputNodeLayer;
    [(FigFCRRenderedLegibleOutputNodeLayer *)&v5 setContents:a3];
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [self->layerInternal->var3 setContents:a3];
  [MEMORY[0x1E6979518] commit];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [self->layerInternal->var3 setBounds:{x, y, width, height}];
  layerInternal = self->layerInternal;
  var4 = layerInternal->var4;
  if (var4 && layerInternal->var2 > 0.0)
  {
    [var4 setBounds:{x, y, width, height}];
    [self->layerInternal->var4 setHidden:0];
  }

  [MEMORY[0x1E6979518] commit];
  v10.receiver = self;
  v10.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  [(FigBaseCALayer *)&v10 setBounds:x, y, width, height];
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  var3 = self->layerInternal->var3;
  [(FigFCRRenderedLegibleOutputNodeLayer *)self bounds];
  v8 = v7 * 0.5;
  [(FigFCRRenderedLegibleOutputNodeLayer *)self bounds];
  [var3 setPosition:{v8, v9 * 0.5}];
  layerInternal = self->layerInternal;
  var4 = layerInternal->var4;
  if (var4 && layerInternal->var2 > 0.0)
  {
    [(FigFCRRenderedLegibleOutputNodeLayer *)self bounds];
    v13 = v12 * 0.5;
    [(FigFCRRenderedLegibleOutputNodeLayer *)self bounds];
    [var4 setPosition:{v13, v14 * 0.5}];
    [self->layerInternal->var4 setHidden:0];
  }

  [MEMORY[0x1E6979518] commit];
  v15.receiver = self;
  v15.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  [(FigBaseCALayer *)&v15 setPosition:x, y];
}

- (void)setCornerRadius:(double)a3
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [self->layerInternal->var3 setCornerRadius:a3];
  var4 = self->layerInternal->var4;
  if (var4)
  {
    [var4 setCornerRadius:a3];
    [self->layerInternal->var4 setHidden:0];
  }

  [MEMORY[0x1E6979518] commit];
  v6.receiver = self;
  v6.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  [(FigFCRRenderedLegibleOutputNodeLayer *)&v6 setCornerRadius:a3];
}

- (void)setWindowOpacity:(double)a3
{
  self->layerInternal->var2 = a3;
  if (a3 <= 0.0)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    var4 = self->layerInternal->var4;
    if (var4)
    {
      [var4 setHidden:1];
    }

    v5 = MEMORY[0x1E6979518];

    [v5 commit];
  }
}

- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5
{
  v8 = _animationByTransformingValues(a4, &__block_literal_global_131);
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
    v9 = &__block_literal_global_25_0;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__FigFCRRenderedLegibleOutputNodeLayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke_2;
    v11[3] = &unk_1E74869A0;
    v11[4] = self;
    v9 = v11;
  }

  v10 = _animationByTransformingValues(a4, v9);
  [v10 setKeyPath:@"position"];
  [v10 setDelegate:0];
  [a3 addAnimation:v10 forKey:a5];
}

uint64_t __91__FigFCRRenderedLegibleOutputNodeLayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeValue];
  v2 = MEMORY[0x1E696B098];
  v4 = v3 * 0.5;
  v6 = v5 * 0.5;

  return [v2 valueWithPoint:{v4, v6}];
}

uint64_t __91__FigFCRRenderedLegibleOutputNodeLayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v1 = MEMORY[0x1E696B098];
  v4 = v2 + v3 * 0.5;
  v7 = v5 + v6 * 0.5;

  return [v1 valueWithPoint:{v4, v7}];
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([@"bounds.size" isEqualToString:{objc_msgSend(a3, "keyPath")}] & 1) != 0 || objc_msgSend(@"bounds", "isEqualToString:", objc_msgSend(a3, "keyPath")))
    {
      [(FigFCRRenderedLegibleOutputNodeLayer *)self _addBoundsAnimationToLayer:self->layerInternal->var3 usingAnimation:a3 forKey:a4];
      [(FigFCRRenderedLegibleOutputNodeLayer *)self _addBoundsAnimationToLayer:self->layerInternal->var4 usingAnimation:a3 forKey:a4];
    }

    else
    {
      [(FigFCRRenderedLegibleOutputNodeLayer *)self _addPositionAnimationToLayer:self->layerInternal->var3 usingAnimation:a3 forKey:a4];
      [(FigFCRRenderedLegibleOutputNodeLayer *)self _addPositionAnimationToLayer:self->layerInternal->var4 usingAnimation:a3 forKey:a4];
    }
  }

  v7.receiver = self;
  v7.super_class = FigFCRRenderedLegibleOutputNodeLayer;
  [(FigFCRRenderedLegibleOutputNodeLayer *)&v7 addAnimation:a3 forKey:a4];
}

@end