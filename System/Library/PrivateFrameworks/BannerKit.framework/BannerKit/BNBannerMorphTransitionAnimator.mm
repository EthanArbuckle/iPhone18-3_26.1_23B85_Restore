@interface BNBannerMorphTransitionAnimator
- (id)_contentViewForViewController:(id)a3;
- (id)_materialGroupNameBaseForView:(id)a3;
- (id)_materialGroupNameBaseForViewController:(id)a3;
- (id)_shadowViewForViewController:(id)a3;
- (id)initForStateChange:(BOOL)a3;
- (void)_addGaussianBlurToViewIfNeeded:(id)a3 inputRadius:(double)a4;
- (void)actionsForTransition:(id)a3;
@end

@implementation BNBannerMorphTransitionAnimator

- (id)initForStateChange:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BNBannerMorphTransitionAnimator;
  result = [(BNBannerAnimator *)&v5 init];
  if (result)
  {
    *(result + 32) = a3;
  }

  return result;
}

- (void)actionsForTransition:(id)a3
{
  v4 = *MEMORY[0x1E69DE768];
  v5 = a3;
  v6 = [v5 viewControllerForKey:v4];
  v7 = [v5 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v8 = [v6 view];
  v9 = [v7 view];
  [v5 initialFrameForViewController:v7];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v5 finalFrameForViewController:v7];
  v51 = v18;
  v52 = v19;
  v21 = v20;
  v23 = v22;

  v24 = [v8 layer];
  v25 = [v24 valueForKeyPath:@"transform.scale.x"];
  [v25 doubleValue];
  v27 = v26;

  v28 = [v8 layer];
  v29 = [v28 valueForKeyPath:@"transform.scale.y"];
  [v29 doubleValue];
  v31 = v30;

  if (self->_stateChange)
  {
    v32 = MEMORY[0x1E69DD250];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __56__BNBannerMorphTransitionAnimator_actionsForTransition___block_invoke;
    v69[3] = &unk_1E81E4E00;
    v70 = v8;
    v71 = v9;
    v72 = v27;
    v73 = v31;
    v74 = v11;
    v75 = v13;
    v76 = v15;
    v77 = v17;
    v33 = v9;
    [v32 performWithoutAnimation:v69];

    v34 = v70;
  }

  else
  {
    v35 = v17 / v31;
    v36 = v13;
    v37 = v35 / v23;
    v38 = v15 / v27;
    v39 = v11;
    v40 = v38 / v21;
    v41 = [(BNBannerMorphTransitionAnimator *)self _contentViewForViewController:v6];
    v42 = [(BNBannerMorphTransitionAnimator *)self _contentViewForViewController:v7];
    v43 = MEMORY[0x1E69DD250];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __56__BNBannerMorphTransitionAnimator_actionsForTransition___block_invoke_2;
    v54[3] = &unk_1E81E4E28;
    v55 = v9;
    v56 = self;
    v57 = v42;
    v58 = v41;
    v59 = v39;
    v60 = v36;
    v61 = v15;
    v62 = v17;
    v63 = v51;
    v64 = v52;
    v65 = v21;
    v66 = v23;
    v67 = v40;
    v68 = v37;
    v44 = v41;
    v34 = v42;
    v45 = v9;
    [v43 performWithoutAnimation:v54];
    [v45 setAlpha:1.0];
    [v8 setAlpha:0.0];
    v46 = [v34 layer];
    [v46 setValue:&unk_1F43BBDF0 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v47 = [v44 layer];
    [v47 setValue:&unk_1F43BBE00 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:0.0];
    v48 = v51 + v21 * 0.5;
    v49 = v52 + v23 * 0.5;
    v50 = *(MEMORY[0x1E695EFD0] + 16);
    *&v53.a = *MEMORY[0x1E695EFD0];
    *&v53.c = v50;
    *&v53.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v45 setTransform:&v53];
    [v45 setCenter:{v48, v49}];
    CGAffineTransformMakeScale(&v53, 1.0 / v40, 1.0 / v37);
    [v8 setTransform:&v53];
    [v8 setCenter:{v48, v49}];
  }
}

uint64_t __56__BNBannerMorphTransitionAnimator_actionsForTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(a1 + 40);
  CGAffineTransformMakeScale(&v4, *(a1 + 48), *(a1 + 56));
  [v2 setTransform:&v4];
  [*(a1 + 40) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  return [*(a1 + 40) layoutIfNeeded];
}

uint64_t __56__BNBannerMorphTransitionAnimator_actionsForTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) _addGaussianBlurToViewIfNeeded:*(a1 + 48) inputRadius:3.0];
  [*(a1 + 40) _addGaussianBlurToViewIfNeeded:*(a1 + 56) inputRadius:0.0];
  __asm { FMOV            V2.2D, #0.5 }

  v9 = vaddq_f64(*(a1 + 64), vmulq_f64(*(a1 + 80), _Q2));
  [*(a1 + 32) setFrame:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  v7 = *(a1 + 32);
  CGAffineTransformMakeScale(&v10, *(a1 + 128), *(a1 + 136));
  [v7 setTransform:&v10];
  [*(a1 + 32) setCenter:*&v9];
  return [*(a1 + 32) layoutIfNeeded];
}

- (id)_materialGroupNameBaseForView:(id)a3
{
  v3 = a3;
  v4 = [v3 subviews];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 materialGroupNameBase];
    goto LABEL_8;
  }

  if ([v4 count] == 1)
  {
    v6 = [v4 lastObject];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 materialGroupNameBase];

      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)_materialGroupNameBaseForViewController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 materialGroupNameBase];
  }

  else
  {
    v6 = [v4 view];

    v5 = [(BNBannerMorphTransitionAnimator *)self _materialGroupNameBaseForView:v6];
    v4 = v6;
  }

  return v5;
}

- (id)_shadowViewForViewController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 view];
  v4 = [v3 subviews];
  v5 = [v4 lastObject];
  v6 = [v5 subviews];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)_contentViewForViewController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a3 view];
  v4 = [v3 subviews];
  v5 = [v4 lastObject];
  v6 = [v5 subviews];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = v12;

            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_ERROR))
  {
    [BNBannerMorphTransitionAnimator _contentViewForViewController:v13];
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_addGaussianBlurToViewIfNeeded:(id)a3 inputRadius:(double)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 bn_addGaussianBlurIfNeededWithInputRadius:a4];
  if (a4 > 0.0)
  {
    blurProgressProperty = self->_blurProgressProperty;
    if (!blurProgressProperty)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DD268]);
      v9 = self->_blurProgressProperty;
      self->_blurProgressProperty = v8;

      blurProgressProperty = self->_blurProgressProperty;
    }

    objc_initWeak(&location, blurProgressProperty);
    v10 = MEMORY[0x1E69DD250];
    v16[0] = self->_blurProgressProperty;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__BNBannerMorphTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke;
    v12[3] = &unk_1E81E47B0;
    objc_copyWeak(&v14, &location);
    v13 = v6;
    [v10 _createTransformerWithInputAnimatableProperties:v11 presentationValueChangedCallback:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

uint64_t __78__BNBannerMorphTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained isInvalidated];
    [v6 presentationValue];
    WeakRetained = BSFloatLessThanOrEqualToFloat();
    v3 = v6;
    if (WeakRetained)
    {
      if ((v4 & 1) == 0)
      {
        [*(a1 + 32) bn_removeBlurFilter];
        WeakRetained = [v6 invalidate];
        v3 = v6;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

@end