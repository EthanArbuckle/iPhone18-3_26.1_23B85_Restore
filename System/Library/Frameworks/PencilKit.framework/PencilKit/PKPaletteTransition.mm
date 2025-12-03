@interface PKPaletteTransition
- (BOOL)_canMoveToNextTransitionStage;
- (BOOL)isTransitionInProgress;
- (PKPaletteTransition)initWithInitialVisualState:(int64_t)state;
- (PKPaletteTransitionDelegate)delegate;
- (double)expandedToCollapsedRatio;
- (int64_t)_currentStage;
- (void)_handleExpandedToCollapsedAnimatablePropertyPresentationValueChanged;
- (void)_handleRotationAnimatablePropertyPresentationValueChanged;
- (void)_moveToNextTransitionStageIfReady;
- (void)_setIntermediateVisualState:(int64_t)state;
- (void)_setPointingDirection:(int64_t)direction;
- (void)paletteDidBeginResizingAnimation;
- (void)paletteDidBeginRotationAnimation;
- (void)transitionToVisualState:(int64_t)state;
@end

@implementation PKPaletteTransition

- (PKPaletteTransition)initWithInitialVisualState:(int64_t)state
{
  v41[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PKPaletteTransition;
  v4 = [(PKPaletteTransition *)&v35 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetVisualState = state;
    v4->_intermediateVisualState = state;
    v4->_initialVisualState = state;
    objc_initWeak(&location, v4);
    v6 = 2 * (state == 6);
    remainingTransitionStages = v5->__remainingTransitionStages;
    v8 = MEMORY[0x1E695E0F0];
    if (state == 7)
    {
      v6 = 1;
    }

    v5->_pointingDirection = v6;
    v5->__remainingTransitionStages = v8;

    v9 = objc_alloc_init(MEMORY[0x1E69DD268]);
    rotationAngleAnimatableProperty = v5->_rotationAngleAnimatableProperty;
    v5->_rotationAngleAnimatableProperty = v9;

    pointingDirection = [(PKPaletteTransition *)v5 pointingDirection];
    rotationAngleAnimatableProperty = [(PKPaletteTransition *)v5 rotationAngleAnimatableProperty];
    v13 = rotationAngleAnimatableProperty;
    v14 = 1.57079633;
    if (pointingDirection != 2)
    {
      v14 = 0.0;
    }

    if (pointingDirection == 1)
    {
      v14 = -1.57079633;
    }

    [rotationAngleAnimatableProperty setValue:v14];

    v15 = MEMORY[0x1E69DD250];
    rotationAngleAnimatableProperty2 = [(PKPaletteTransition *)v5 rotationAngleAnimatableProperty];
    v41[0] = rotationAngleAnimatableProperty2;
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
    if ((state - 1) <= 6)
    {
      v20 = dbl_1C801DDB0[state - 1];
    }

    expandedToCollapsedAnimatableProperty = [(PKPaletteTransition *)v5 expandedToCollapsedAnimatableProperty];
    [expandedToCollapsedAnimatableProperty setValue:v20];

    v22 = MEMORY[0x1E69DD250];
    expandedToCollapsedAnimatableProperty2 = [(PKPaletteTransition *)v5 expandedToCollapsedAnimatableProperty];
    v40 = expandedToCollapsedAnimatableProperty2;
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
      v26 = PKPaletteVisualStateDescription(state);
      pointingDirection2 = [(PKPaletteTransition *)v5 pointingDirection];
      if (pointingDirection2 > 2)
      {
        v28 = 0;
      }

      else
      {
        v28 = off_1E82DA188[pointingDirection2];
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

- (void)_setIntermediateVisualState:(int64_t)state
{
  if (self->_intermediateVisualState != state)
  {
    self->_intermediateVisualState = state;
    delegate = [(PKPaletteTransition *)self delegate];
    [delegate transitionIntermediateVisualStateDidChange:self];
  }
}

- (void)_setPointingDirection:(int64_t)direction
{
  if (self->_pointingDirection != direction)
  {
    self->_pointingDirection = direction;
    delegate = [(PKPaletteTransition *)self delegate];
    [delegate transitionPointingDirectionDidChange:self];
  }
}

- (int64_t)_currentStage
{
  _remainingTransitionStages = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [_remainingTransitionStages count];

  if (!v4)
  {
    return 0;
  }

  _remainingTransitionStages2 = [(PKPaletteTransition *)self _remainingTransitionStages];
  firstObject = [_remainingTransitionStages2 firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (BOOL)isTransitionInProgress
{
  _remainingTransitionStages = [(PKPaletteTransition *)self _remainingTransitionStages];
  v3 = [_remainingTransitionStages count] != 0;

  return v3;
}

- (double)expandedToCollapsedRatio
{
  expandedToCollapsedAnimatableProperty = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
  [expandedToCollapsedAnimatableProperty presentationValue];
  v4 = v3;

  return v4;
}

- (void)transitionToVisualState:(int64_t)state
{
  v26[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteTransition *)self targetVisualState]== state)
  {
    return;
  }

  intermediateVisualState = [(PKPaletteTransition *)self intermediateVisualState];
  pointingDirection = [(PKPaletteTransition *)self pointingDirection];
  array = [MEMORY[0x1E695DF70] array];
  v8 = array;
  if (intermediateVisualState <= 4)
  {
    if (intermediateVisualState == 2)
    {
      if (state > 5)
      {
        if ((state - 6) < 2)
        {
          v9 = &unk_1F47C1B98;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if ((state - 4) < 2)
      {
        if (pointingDirection)
        {
          [array addObjectsFromArray:&unk_1F47C1B68];
        }

        v9 = &unk_1F47C1B80;
        goto LABEL_58;
      }

      if (state == 2)
      {
        if (pointingDirection)
        {
          v9 = &unk_1F47C1B38;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if (state != 3)
      {
        goto LABEL_59;
      }

      if (pointingDirection)
      {
        [array addObjectsFromArray:&unk_1F47C1B50];
      }

      v10 = &unk_1F47C1460;
    }

    else
    {
      if (intermediateVisualState != 3)
      {
        if (intermediateVisualState == 4)
        {
          if ((state - 2) < 2)
          {
            v9 = &unk_1F47C1C28;
            goto LABEL_58;
          }

          if ((state - 6) < 2)
          {
            v9 = &unk_1F47C1C58;
LABEL_58:
            [v8 addObjectsFromArray:v9];
            goto LABEL_59;
          }

          if (state == 5)
          {
            v9 = &unk_1F47C1C40;
            goto LABEL_58;
          }
        }

        goto LABEL_59;
      }

      if (state > 5)
      {
        if ((state - 6) < 2)
        {
          v9 = &unk_1F47C1C10;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if ((state - 4) < 2)
      {
        if (pointingDirection)
        {
          [array addObjectsFromArray:&unk_1F47C1BE0];
        }

        v9 = &unk_1F47C1BF8;
        goto LABEL_58;
      }

      if (state != 2)
      {
        if (state != 3 || !pointingDirection)
        {
          goto LABEL_59;
        }

        v9 = &unk_1F47C1BC8;
        goto LABEL_58;
      }

      if (pointingDirection)
      {
        [array addObjectsFromArray:&unk_1F47C1BB0];
      }

      v10 = &unk_1F47C1490;
    }

    [v8 addObject:v10];
    goto LABEL_59;
  }

  switch(intermediateVisualState)
  {
    case 5:
      if ((state - 2) < 2)
      {
        v9 = &unk_1F47C1C70;
        goto LABEL_58;
      }

      if ((state - 6) < 2)
      {
        v9 = &unk_1F47C1CA0;
        goto LABEL_58;
      }

      if (state == 4)
      {
        v9 = &unk_1F47C1C88;
        goto LABEL_58;
      }

      break;
    case 6:
      if ((state - 2) < 2)
      {
        v9 = &unk_1F47C1CB8;
        goto LABEL_58;
      }

      if ((state - 4) < 2)
      {
        v9 = &unk_1F47C1CD0;
        goto LABEL_58;
      }

      if (state == 7)
      {
        v9 = &unk_1F47C1CE8;
        goto LABEL_58;
      }

      break;
    case 7:
      if ((state - 2) < 2)
      {
        v9 = &unk_1F47C1D00;
        goto LABEL_58;
      }

      if ((state - 4) < 2)
      {
        v9 = &unk_1F47C1D18;
        goto LABEL_58;
      }

      if (state == 6)
      {
        v9 = &unk_1F47C1D30;
        goto LABEL_58;
      }

      break;
  }

LABEL_59:
  _currentStage = [(PKPaletteTransition *)self _currentStage];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:_currentStage];
  v26[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v14 = [v13 arrayByAddingObjectsFromArray:v8];

  v15 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PKPaletteVisualStateDescription(intermediateVisualState);
    pointingDirection2 = [(PKPaletteTransition *)self pointingDirection];
    if (pointingDirection2 > 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_1E82DA188[pointingDirection2];
    }

    v19 = PKPaletteVisualStateDescription(state);
    v20 = 138412802;
    v21 = v16;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Begin transition from visual state %@+%@ to new target %@.", &v20, 0x20u);
  }

  [(PKPaletteTransition *)self set_remainingTransitionStages:v14];
  [(PKPaletteTransition *)self _setTargetVisualState:state];
  [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
}

- (BOOL)_canMoveToNextTransitionStage
{
  _remainingTransitionStages = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [_remainingTransitionStages count];

  if (!v4)
  {
    return 0;
  }

  _currentStage = [(PKPaletteTransition *)self _currentStage];
  if (v4 < 2)
  {
    integerValue = 0;
  }

  else
  {
    _remainingTransitionStages2 = [(PKPaletteTransition *)self _remainingTransitionStages];
    v7 = [_remainingTransitionStages2 objectAtIndexedSubscript:1];
    integerValue = [v7 integerValue];
  }

  result = 0;
  if (_currentStage > 2)
  {
    if ((_currentStage - 3) >= 2)
    {
      if (_currentStage != 5)
      {
        return result;
      }

      if ((integerValue & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        rotationAngleAnimatableProperty = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
        [rotationAngleAnimatableProperty value];
        v20 = v19;
        rotationAngleAnimatableProperty2 = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
        [rotationAngleAnimatableProperty2 presentationValue];
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

  if (!_currentStage)
  {
    return 1;
  }

  if (_currentStage != 1)
  {
    if (_currentStage != 2)
    {
      return result;
    }

    if (!integerValue)
    {
      expandedToCollapsedAnimatableProperty = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [expandedToCollapsedAnimatableProperty value];
      v12 = v11;
      expandedToCollapsedAnimatableProperty2 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [expandedToCollapsedAnimatableProperty2 presentationValue];
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

  if (integerValue <= 5)
  {
    if (((1 << integerValue) & 0x39) != 0)
    {
      expandedToCollapsedAnimatableProperty3 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [expandedToCollapsedAnimatableProperty3 value];
      v26 = v25;
      expandedToCollapsedAnimatableProperty4 = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
      [expandedToCollapsedAnimatableProperty4 presentationValue];
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

  _remainingTransitionStages = [(PKPaletteTransition *)self _remainingTransitionStages];
  v4 = [_remainingTransitionStages count];

  _remainingTransitionStages2 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v6 = [_remainingTransitionStages2 objectAtIndexedSubscript:0];
  integerValue = [v6 integerValue];

  if (v4 < 2)
  {
    [(PKPaletteTransition *)self intermediateVisualState];
    goto LABEL_9;
  }

  _remainingTransitionStages3 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v9 = [_remainingTransitionStages3 objectAtIndexedSubscript:1];
  integerValue2 = [v9 integerValue];

  intermediateVisualState = [(PKPaletteTransition *)self intermediateVisualState];
  v12 = 0;
  if (integerValue2 <= 2)
  {
    if (integerValue2)
    {
      if (integerValue2 == 1)
      {
        v27 = intermediateVisualState;
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
      if (integerValue2 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_9:
    targetVisualState = [(PKPaletteTransition *)self targetVisualState];
    v13 = targetVisualState;
    integerValue2 = 0;
LABEL_17:
    v15 = 2 * (targetVisualState == 6);
    v16 = targetVisualState == 7;
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

  if ((integerValue2 - 3) < 2)
  {
LABEL_11:
    targetVisualState = [(PKPaletteTransition *)self targetVisualState];
    v13 = targetVisualState;
    goto LABEL_17;
  }

  v13 = 0;
  if (integerValue2 == 5)
  {
    if ([(PKPaletteTransition *)self targetVisualState]== 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    targetVisualState = [(PKPaletteTransition *)self targetVisualState];
    goto LABEL_17;
  }

LABEL_21:
  v17 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v28 = PKPaletteVisualStateDescription([(PKPaletteTransition *)self targetVisualState]);
    v29 = PKPaletteTransitionStageDescription(integerValue);
    v30 = PKPaletteTransitionStageDescription(integerValue2);
    v31 = PKPaletteVisualStateDescription([(PKPaletteTransition *)self intermediateVisualState]);
    v32 = PKPaletteVisualStateDescription(v13);
    pointingDirection = [(PKPaletteTransition *)self pointingDirection];
    if (pointingDirection > 2)
    {
      v34 = 0;
    }

    else
    {
      v34 = off_1E82DA188[pointingDirection];
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
  _remainingTransitionStages4 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v20 = [_remainingTransitionStages4 subarrayWithRange:{1, v4 - 1}];
  [(PKPaletteTransition *)self set_remainingTransitionStages:v20];

  [(PKPaletteTransition *)self _setIntermediateVisualState:v13];
  [(PKPaletteTransition *)self _setPointingDirection:v12];
  _remainingTransitionStages5 = [(PKPaletteTransition *)self _remainingTransitionStages];
  v22 = [_remainingTransitionStages5 count];

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
    _remainingTransitionStages6 = [(PKPaletteTransition *)self _remainingTransitionStages];
    v26 = [_remainingTransitionStages6 count];

    if (v26)
    {
      [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
    }
  }
}

- (void)paletteDidBeginRotationAnimation
{
  pointingDirection = [(PKPaletteTransition *)self pointingDirection];
  v4 = 1.57079633;
  if (pointingDirection != 2)
  {
    v4 = 0.0;
  }

  if (pointingDirection == 1)
  {
    v5 = -1.57079633;
  }

  else
  {
    v5 = v4;
  }

  rotationAngleAnimatableProperty = [(PKPaletteTransition *)self rotationAngleAnimatableProperty];
  [rotationAngleAnimatableProperty setValue:v5];
}

- (void)paletteDidBeginResizingAnimation
{
  _currentStage = [(PKPaletteTransition *)self _currentStage];
  if ((_currentStage - 3) < 2)
  {

    [(PKPaletteTransition *)self _moveToNextTransitionStageIfReady];
  }

  else if ((_currentStage - 1) <= 1)
  {
    v4 = [(PKPaletteTransition *)self intermediateVisualState]- 1;
    v5 = 1.0;
    if (v4 <= 6)
    {
      v5 = dbl_1C801DDB0[v4];
    }

    expandedToCollapsedAnimatableProperty = [(PKPaletteTransition *)self expandedToCollapsedAnimatableProperty];
    [expandedToCollapsedAnimatableProperty setValue:v5];
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

  delegate = [(PKPaletteTransition *)self delegate];
  [delegate transitionExpandedToCollapsedRatioDidChange:self];
}

- (PKPaletteTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end