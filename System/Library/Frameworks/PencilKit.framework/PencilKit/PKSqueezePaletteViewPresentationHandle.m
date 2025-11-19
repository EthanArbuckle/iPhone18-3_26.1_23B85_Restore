@interface PKSqueezePaletteViewPresentationHandle
- (double)animationProgress;
- (id)initWithPaletteViewOpacityPresentationValue:(double)a3 paletteViewScalePresentationValue:;
- (void)animateToPaletteViewOpacity:(void *)a3 paletteViewScale:(void *)a4 animated:(double)a5 presentationValueHandler:(double)a6 completion:;
@end

@implementation PKSqueezePaletteViewPresentationHandle

- (id)initWithPaletteViewOpacityPresentationValue:(double)a3 paletteViewScalePresentationValue:
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v17.receiver = a1;
  v17.super_class = PKSqueezePaletteViewPresentationHandle;
  v5 = objc_msgSendSuper2(&v17, sel_init);
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v7 = v5[3];
    v5[3] = v6;

    [v5[3] setValue:a2];
    v8 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v9 = v5[4];
    v5[4] = v8;

    [v5[4] setValue:a3];
    v10 = v5[4];
    v18[0] = v5[3];
    v18[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    objc_initWeak(&location, v5);
    v12 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __120__PKSqueezePaletteViewPresentationHandle_initWithPaletteViewOpacityPresentationValue_paletteViewScalePresentationValue___block_invoke;
    v14[3] = &unk_1E82D69B8;
    objc_copyWeak(&v15, &location);
    [v12 _createTransformerWithInputAnimatableProperties:v11 presentationValueChangedCallback:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __120__PKSqueezePaletteViewPresentationHandle_initWithPaletteViewOpacityPresentationValue_paletteViewScalePresentationValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))();
      v2 = v4;
    }
  }
}

- (void)animateToPaletteViewOpacity:(void *)a3 paletteViewScale:(void *)a4 animated:(double)a5 presentationValueHandler:(double)a6 completion:
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = [v11 copy];
    v14 = *(a1 + 40);
    *(a1 + 40) = v13;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke;
    aBlock[3] = &unk_1E82D9FE0;
    v33 = v12;
    v15 = _Block_copy(aBlock);
    [*(a1 + 24) value];
    *(a1 + 8) = v16;
    [*(a1 + 32) value];
    *(a1 + 16) = v17;
    objc_initWeak(&location, a1);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke_2;
    v28[3] = &unk_1E82DADC0;
    objc_copyWeak(v30, &location);
    v18 = v15;
    v29 = v18;
    v30[1] = *&a5;
    v30[2] = *&a6;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke_3;
    v25 = &unk_1E82DC100;
    objc_copyWeak(&v27, &location);
    v19 = v18;
    v26 = v19;
    v20 = v28;
    v21 = &v22;
    if (a2)
    {
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v20 tracking:v21 initialDampingRatio:*&PKSqueezePaletteViewPresentationDampingRatio initialResponse:*&PKSqueezePaletteViewPresentationResponse dampingRatioSmoothing:0.0 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:{0.0, v22, v23, v24, v25, v26}];
    }

    else
    {
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:{v20, v22, v23, v24, v25, v26}];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }
}

uint64_t __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 48) = 1;
    [WeakRetained[3] setValue:*(a1 + 48)];
    [v3[4] setValue:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __132__PKSqueezePaletteViewPresentationHandle_animateToPaletteViewOpacity_paletteViewScale_animated_presentationValueHandler_completion___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[48] = a2 ^ 1;
  }

  v5 = WeakRetained;
  (*(*(a1 + 32) + 16))();
}

- (double)animationProgress
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) presentationValue];
  v3 = v2 - *(a1 + 8);
  [*(a1 + 24) value];
  v5 = v3 / (v4 - *(a1 + 8));
  [*(a1 + 32) presentationValue];
  v7 = v6 - *(a1 + 16);
  [*(a1 + 32) value];
  return (v5 + v7 / (v8 - *(a1 + 16))) * 0.5;
}

@end