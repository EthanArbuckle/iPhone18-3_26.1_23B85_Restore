@interface PKSqueezePaletteViewResizeHandle
- (id)initWithStrokeStartPresentationValue:(double)value strokeEndPresentationValue:;
- (void)_performAnimated:(void *)animated animations:(void *)animations completion:;
- (void)resizeToStrokeStart:(void *)start strokeEnd:(void *)end animated:(double)animated resizeHandler:(double)handler completion:;
@end

@implementation PKSqueezePaletteViewResizeHandle

- (id)initWithStrokeStartPresentationValue:(double)value strokeEndPresentationValue:
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v17.receiver = self;
  v17.super_class = PKSqueezePaletteViewResizeHandle;
  v5 = objc_msgSendSuper2(&v17, sel_init);
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v7 = v5[1];
    v5[1] = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v9 = v5[2];
    v5[2] = v8;

    [v5[1] setValue:a2];
    [v5[2] setValue:value];
    objc_initWeak(&location, v5);
    v10 = MEMORY[0x1E69DD250];
    v11 = v5[2];
    v18[0] = v5[1];
    v18[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__PKSqueezePaletteViewResizeHandle_initWithStrokeStartPresentationValue_strokeEndPresentationValue___block_invoke;
    v14[3] = &unk_1E82D69B8;
    objc_copyWeak(&v15, &location);
    [v10 _createTransformerWithInputAnimatableProperties:v12 presentationValueChangedCallback:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __100__PKSqueezePaletteViewResizeHandle_initWithStrokeStartPresentationValue_strokeEndPresentationValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 3);
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))();
      v2 = v4;
    }
  }
}

- (void)resizeToStrokeStart:(void *)start strokeEnd:(void *)end animated:(double)animated resizeHandler:(double)handler completion:
{
  startCopy = start;
  endCopy = end;
  if (self)
  {
    v13 = [startCopy copy];
    v14 = self[3];
    self[3] = v13;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PKSqueezePaletteViewResizeHandle_resizeToStrokeStart_strokeEnd_animated_resizeHandler_completion___block_invoke;
    aBlock[3] = &unk_1E82D6F70;
    v24 = endCopy;
    v15 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__PKSqueezePaletteViewResizeHandle_resizeToStrokeStart_strokeEnd_animated_resizeHandler_completion___block_invoke_2;
    v19[3] = &unk_1E82DADC0;
    objc_copyWeak(v21, &location);
    v20 = v15;
    v21[1] = *&animated;
    v21[2] = *&handler;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __100__PKSqueezePaletteViewResizeHandle_resizeToStrokeStart_strokeEnd_animated_resizeHandler_completion___block_invoke_3;
    v17[3] = &unk_1E82D9FE0;
    v16 = v20;
    v18 = v16;
    [(PKSqueezePaletteViewResizeHandle *)self _performAnimated:a2 animations:v19 completion:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

uint64_t __100__PKSqueezePaletteViewResizeHandle_resizeToStrokeStart_strokeEnd_animated_resizeHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__PKSqueezePaletteViewResizeHandle_resizeToStrokeStart_strokeEnd_animated_resizeHandler_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setValue:*(a1 + 48)];
    [v3[2] setValue:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_performAnimated:(void *)animated animations:(void *)animations completion:
{
  animatedCopy = animated;
  animationsCopy = animations;
  if (self)
  {
    if (a2)
    {
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:animatedCopy tracking:animationsCopy initialDampingRatio:*&PKSqueezePaletteViewResizeDampingRatio initialResponse:*&PKSqueezePaletteViewResizeResponse dampingRatioSmoothing:0.0 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:animatedCopy];
    }
  }
}

@end