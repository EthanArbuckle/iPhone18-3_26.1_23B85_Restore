@interface PKPaletteTransition
- (BOOL)_canMoveToNextTransitionStage;
- (BOOL)isTransitionInProgress;
- (PKPaletteTransition)initWithInitialVisualState:(int64_t)a3;
- (PKPaletteTransitionDelegate)delegate;
- (double)expandedToCollapsedRatio;
- (int64_t)_currentStage;
- (void)_handleExpandedToCollapsedAnimatablePropertyPresentationValueChanged;
- (void)_handleRotationAnimatablePropertyPresentationValueChanged;
- (void)_moveToNextTransitionStageIfReady;
- (void)_setIntermediateVisualState:(int64_t)a3;
- (void)_setPointingDirection:(int64_t)a3;
- (void)paletteDidBeginResizingAnimation;
- (void)paletteDidBeginRotationAnimation;
- (void)transitionToVisualState:(int64_t)a3;
@end

@implementation PKPaletteTransition

- (PKPaletteTransition)initWithInitialVisualState:(int64_t)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PKPaletteTransition;
  v4 = [(PKPaletteTransition *)&v35 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetVisualState = a3;
    v4->_intermediateVisualState = a3;
    v4->_initialVisualState = a3;
    objc_initWeak(&location, v4);
    v6 = 2 * (a3 == 6);
    remainingTransitionStages = v5->__remainingTransitionStages;
    v8 = MEMORY[0x1E695E0F0];
    if (a3 == 7)
    {
      v6 = 1;
    }

    v5->_pointingDirection = v6;
    v5->__remainingTransitionStages = v8;

    v9 = objc_alloc_init(MEMORY[0x1E69DD268]);
    rotationAngleAnimatableProperty = v5->_rotationAngleAnimatableProperty;
    v5->_rotationAngleAnimatableProperty = v9;

    v11 = [(PKPaletteTransition *)v5 pointingDirection];
    v12 = [(PKPaletteTransition *)v5 rotationAngleAnimatableProperty];
    v13 = v12;
    v14 = 1.57079633;
    if (v11 != 2)
    {
      v14 = 0.0;
    }

    if (v11 == 1)
    {
      v14 = -1.57079633;
    }

    [v12 setValue:v14];

    v15 = MEMORY[0x1E69DD250];
    v16 = [(PKPaletteTransition *)v5 rotationAngleAnimatableProperty];
    v41[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __50__PKPaletteTransition_initWithInitialVisualState___block_invoke;
    v32[3] = &unk_1E82D69B8;
    objc_copyWeak(&v33, &location);
    [v15 _createTransformerWithInputAnimatableProperties:v17 presentationValueChangedCallback:v32];

    v18 = objc_alloc_init(MEMORY[0x1E69DD268]);
    expandedToCollapsedAnimatableProperty = v5->_expandedToCollapsedAnimatableProperty;
    v5->_expandedToCollapsedAnimatableProperty = v18;

    v20 = 1.0;
    if ((a3 - 1) <= 6)
    {
      v20 = dbl_1C801DDB0[a3 - 1];
    }

    v21 = [(PKPaletteTransition *)v5 expandedToCollapsedAnimatableProperty];
    [v21 setValue:v20];

    v22 = MEMORY[0x1E69DD250];
    v23 = [(PKPaletteTransition *)v5 expandedToCollapsedAnimatableProperty];
    v40 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__PKPaletteTransition_initWithInitialVisualState___block_invoke_2;
    v30[3] = &unk_1E82D69B8;
    objc_copyWeak(&v31, &location);
    [v22 _createTransformerWithInputAnimatableProperties:v24 presentationValueChangedCallback:v30];

    v25 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PKPaletteVisualStateDescription(a3);
      v27 = [(PKPaletteTransition *)v5 pointingDirection];
      if (v27 > 2)
      {
        v28 = 0;
      }

      else
      {
        v28 = off_1E82DA188[v27];
      }

      *buf = 138412546;
      v37 = v26;
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Initializing palette transition with initial state %@+%@.", buf, 0x16u);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __50__PKPaletteTransition_initWithInitialVisualState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleRotationAnimatablePropertyPresentationValueChanged];
    WeakRetained = v2;
  }
}

void __50__PKPaletteTransition_initWithInitialVisualState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleExpandedToCollapsedAnimatablePropertyPresentationValueChanged];
    WeakRetained = v2;
  }
}

- (void)_setIntermediateVisualState:(int64_t)a3
{
  if (self->_intermediateVisualState != a3)
  {
    self->_intermediateVisualState = a3;
    v5 = [(PKPaletteTransition *)self delegate];
    [v5 transitionIntermediateVisualStateDidChange:self];
  }
}

- (void)_setPointingDirection:(int64_t)a3
{
  if (self->_pointingDirection != a3)
  {
    self->_pointingDirection = a3;
    v5 = [(PKPaletteTransition *)self delegate];
    [v5 transitionPointingDirectionDidChange:self];
  }
}

- (int64_t)_currentStage
{
  v3 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v6 = [v5 firstObject];
  v7 = [v6 integerValue];

  return v7;
}

- (BOOL)isTransitionInProgress
{
  v2 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v3 = [v2 count] != 0;

  return v3;
}

- (double)expandedToCollapsedRatio
{
  v2 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
  [v2 presentationValue];
  v4 = v3;

  return v4;
}

- (void)transitionToVisualState:(int64_t)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteTransition *)self targetVisualState]== a3)
  {
    return;
  }

  v5 = [(PKPaletteTransition *)self intermediateVisualState];
  v6 = [(PKPaletteTransition *)self pointingDirection];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v7;
  if (v5 <= 4)
  {
    if (v5 == 2)
    {
      if (a3 > 5)
      {
        if ((a3 - 6) < 2)
        {
          v9 = &unk_1F47C1B98;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if ((a3 - 4) < 2)
      {
        if (v6)
        {
          [v7 addObjectsFromArray:&unk_1F47C1B68];
        }

        v9 = &unk_1F47C1B80;
        goto LABEL_58;
      }

      if (a3 == 2)
      {
        if (v6)
        {
          v9 = &unk_1F47C1B38;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if (a3 != 3)
      {
        goto LABEL_59;
      }

      if (v6)
      {
        [v7 addObjectsFromArray:&unk_1F47C1B50];
      }

      v10 = &unk_1F47C1460;
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          if ((a3 - 2) < 2)
          {
            v9 = &unk_1F47C1C28;
            goto LABEL_58;
          }

          if ((a3 - 6) < 2)
          {
            v9 = &unk_1F47C1C58;
LABEL_58:
            [v8 addObjectsFromArray:v9];
            goto LABEL_59;
          }

          if (a3 == 5)
          {
            v9 = &unk_1F47C1C40;
            goto LABEL_58;
          }
        }

        goto LABEL_59;
      }

      if (a3 > 5)
      {
        if ((a3 - 6) < 2)
        {
          v9 = &unk_1F47C1C10;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if ((a3 - 4) < 2)
      {
        if (v6)
        {
          [v7 addObjectsFromArray:&unk_1F47C1BE0];
        }

        v9 = &unk_1F47C1BF8;
        goto LABEL_58;
      }

      if (a3 != 2)
      {
        if (a3 != 3 || !v6)
        {
          goto LABEL_59;
        }

        v9 = &unk_1F47C1BC8;
        goto LABEL_58;
      }

      if (v6)
      {
        [v7 addObjectsFromArray:&unk_1F47C1BB0];
      }

      v10 = &unk_1F47C1490;
    }

    [v8 addObject:v10];
    goto LABEL_59;
  }

  switch(v5)
  {
    case 5:
      if ((a3 - 2) < 2)
      {
        v9 = &unk_1F47C1C70;
        goto LABEL_58;
      }

      if ((a3 - 6) < 2)
      {
        v9 = &unk_1F47C1CA0;
        goto LABEL_58;
      }

      if (a3 == 4)
      {
        v9 = &unk_1F47C1C88;
        goto LABEL_58;
      }

      break;
    case 6:
      if ((a3 - 2) < 2)
      {
        v9 = &unk_1F47C1CB8;
        goto LABEL_58;
      }

      if ((a3 - 4) < 2)
      {
        v9 = &unk_1F47C1CD0;
        goto LABEL_58;
      }

      if (a3 == 7)
      {
        v9 = &unk_1F47C1CE8;
        goto LABEL_58;
      }

      break;
    case 7:
      if ((a3 - 2) < 2)
      {
        v9 = &unk_1F47C1D00;
        goto LABEL_58;
      }

      if ((a3 - 4) < 2)
      {
        v9 = &unk_1F47C1D18;
        goto LABEL_58;
      }

      if (a3 == 6)
      {
        v9 = &unk_1F47C1D30;
        goto LABEL_58;
      }

      break;
  }

LABEL_59:
  v11 = [(PKPaletteTransition *)self _currentStage];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v26[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v14 = [v13 arrayByAddingObjectsFromArray:v8];

  v15 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PKPaletteVisualStateDescription(v5);
    v17 = [(PKPaletteTransition *)self pointingDirection];
    if (v17 > 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_1E82DA188[v17];
    }

    v19 = PKPaletteVisualStateDescription(a3);
    v20 = 138412802;
    v21 = v16;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Begin transition from visual state %@+%@ to new target %@.", &v20, 0x20u);
  }

  [(PKPaletteTransition *)self set_remainingTransitionStages:v14];
  [(PKPaletteTransition *)self _setTargetVisualState:a3];
  [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
}

- (BOOL)_canMoveToNextTransitionStage
{
  v3 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PKPaletteTransition *)self _currentStage];
  if (v4 < 2)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(PKPaletteTransition *)self _remainingTransitionStages];
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [v7 integerValue];
  }

  result = 0;
  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      if (v5 != 5)
      {
        return result;
      }

      if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v18 = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
        [v18 value];
        v20 = v19;
        v21 = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
        [v21 presentationValue];
        v23 = v20 - v22;

        v16 = -v23;
        if (v23 >= 0.0)
        {
          v16 = v23;
        }

        v17 = 0.392699082;
        return v16 <= v17;
      }
    }

    return 1;
  }

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    if (!v8)
    {
      v10 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [v10 value];
      v12 = v11;
      v13 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [v13 presentationValue];
      v15 = v12 - v14;

      v16 = -v15;
      if (v15 >= 0.0)
      {
        v16 = v15;
      }

      v17 = 0.01;
      return v16 <= v17;
    }

    return 1;
  }

  if (v8 <= 5)
  {
    if (((1 << v8) & 0x39) != 0)
    {
      v24 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [v24 value];
      v26 = v25;
      v27 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [v27 presentationValue];
      v29 = v26 - v28;

      v16 = -v29;
      if (v29 >= 0.0)
      {
        v16 = v29;
      }

      v17 = 0.2;
      return v16 <= v17;
    }

    return 1;
  }

  return 0;
}

- (void)_moveToNextTransitionStageIfReady
{
  v50 = *MEMORY[0x1E69E9840];
  if (![(PKPaletteTransition *)self _canMoveToNextTransitionStage])
  {
    return;
  }

  v3 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [v3 count];

  v5 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 integerValue];

  if (v4 < 2)
  {
    [(PKPaletteTransition *)self intermediateVisualState];
    goto LABEL_9;
  }

  v8 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v9 = [v8 objectAtIndexedSubscript:1];
  v10 = [v9 integerValue];

  v11 = [(PKPaletteTransition *)self intermediateVisualState];
  v12 = 0;
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v27 = v11;
        if ([(PKPaletteTransition *)self targetVisualState]== 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = 3;
        }

        v15 = 2 * (v27 == 6);
        v16 = v27 == 7;
        goto LABEL_18;
      }

      v13 = 0;
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_9:
    v14 = [(PKPaletteTransition *)self targetVisualState];
    v13 = v14;
    v10 = 0;
LABEL_17:
    v15 = 2 * (v14 == 6);
    v16 = v14 == 7;
LABEL_18:
    if (v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = v15;
    }

    goto LABEL_21;
  }

  if ((v10 - 3) < 2)
  {
LABEL_11:
    v14 = [(PKPaletteTransition *)self targetVisualState];
    v13 = v14;
    goto LABEL_17;
  }

  v13 = 0;
  if (v10 == 5)
  {
    if ([(PKPaletteTransition *)self targetVisualState]== 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    v14 = [(PKPaletteTransition *)self targetVisualState];
    goto LABEL_17;
  }

LABEL_21:
  v17 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v28 = PKPaletteVisualStateDescription([(PKPaletteTransition *)self targetVisualState]);
    v29 = PKPaletteTransitionStageDescription(v7);
    v30 = PKPaletteTransitionStageDescription(v10);
    v31 = PKPaletteVisualStateDescription([(PKPaletteTransition *)self intermediateVisualState]);
    v32 = PKPaletteVisualStateDescription(v13);
    v33 = [(PKPaletteTransition *)self pointingDirection];
    if (v33 > 2)
    {
      v34 = 0;
    }

    else
    {
      v34 = off_1E82DA188[v33];
    }

    v35 = off_1E82DA188[v12];
    v36 = 138413826;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    v46 = 2112;
    v47 = v34;
    v48 = 2112;
    v49 = v35;
    _os_log_debug_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEBUG, "Transition towards state %@. Move to next stage %@ -> %@. Intermediate state: %@ -> %@. PointingDirection: %@ -> %@.", &v36, 0x48u);
  }

  v18 = [(PKPaletteTransition *)self intermediateVisualState]!= v13 || [(PKPaletteTransition *)self pointingDirection]!= v12;
  v19 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v20 = [v19 subarrayWithRange:{1, v4 - 1}];
  [(PKPaletteTransition *)self set_remainingTransitionStages:v20];

  [(PKPaletteTransition *)self _setIntermediateVisualState:v13];
  [(PKPaletteTransition *)self _setPointingDirection:v12];
  v21 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v22 = [v21 count];

  if (v22)
  {
    if (v18)
    {
      return;
    }

    goto LABEL_31;
  }

  v23 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = PKPaletteVisualStateDescription([(PKPaletteTransition *)self targetVisualState]);
    v36 = 138412290;
    v37 = v24;
    _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "Transition finished to state %@.", &v36, 0xCu);
  }

  if (!v18)
  {
LABEL_31:
    v25 = [(PKPaletteTransition *)self _remainingTransitionStages];
    v26 = [v25 count];

    if (v26)
    {
      [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
    }
  }
}

- (void)paletteDidBeginRotationAnimation
{
  v3 = [(PKPaletteTransition *)self pointingDirection];
  v4 = 1.57079633;
  if (v3 != 2)
  {
    v4 = 0.0;
  }

  if (v3 == 1)
  {
    v5 = -1.57079633;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
  [v6 setValue:v5];
}

- (void)paletteDidBeginResizingAnimation
{
  v3 = [(PKPaletteTransition *)self _currentStage];
  if ((v3 - 3) < 2)
  {

    [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
  }

  else if ((v3 - 1) <= 1)
  {
    v4 = [(PKPaletteTransition *)self intermediateVisualState]- 1;
    v5 = 1.0;
    if (v4 <= 6)
    {
      v5 = dbl_1C801DDB0[v4];
    }

    v6 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
    [v6 setValue:v5];
  }
}

- (void)_handleRotationAnimatablePropertyPresentationValueChanged
{
  if ([(PKPaletteTransition *)self _currentStage]== 5)
  {

    [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
  }
}

- (void)_handleExpandedToCollapsedAnimatablePropertyPresentationValueChanged
{
  if (([(PKPaletteTransition *)self _currentStage]- 1) <= 1)
  {
    [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
  }

  v3 = [(PKPaletteTransition *)self delegate];
  [v3 transitionExpandedToCollapsedRatioDidChange:self];
}

- (PKPaletteTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end