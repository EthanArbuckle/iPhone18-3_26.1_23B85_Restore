@interface AVMobileGlassAuxiliaryControlsView
- (AVMobileGlassAuxiliaryControlsView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassAuxiliaryControlsViewDelegate)delegate;
- (BOOL)_requiresOverflowControl;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeFittingControls:(id)controls;
- (UIEdgeInsets)controlInsets;
- (double)_insetsForContainerView;
- (double)_widthForControl:(double)control boundingHeight:(double)height prominentInsets:(double)insets;
- (id)_allControlsMatching:(uint64_t)matching;
- (id)_nonProminentControlsInPriorityOrder;
- (id)_overflowControl;
- (id)overflowMenuItemsForControlOverflowButton:(id)button;
- (uint64_t)_resolvedBackgroundStyle;
- (void)_controlsInPriorityOrder;
- (void)_prominentControlsInPriorityOrder;
- (void)_updateHasOverflowOnlyControl;
- (void)_updateOverflowControlContextMenu;
- (void)_updateTintColors;
- (void)auxiliaryControlDidChangeState:(id)state;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)overflowButtonDidHideContextMenu:(id)menu;
- (void)overflowButtonWillHideContextMenu:(id)menu animator:(id)animator;
- (void)overflowButtonWillShowContextMenu:(id)menu animator:(id)animator;
- (void)setAvkit_extendedDynamicRangeGain:(double)gain;
- (void)setControlSpacing:(double)spacing;
- (void)setControls:(id)controls;
- (void)setHasOverflowOnlyControl:(BOOL)control;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassAuxiliaryControlsView

- (UIEdgeInsets)controlInsets
{
  top = self->_controlInsets.top;
  left = self->_controlInsets.left;
  bottom = self->_controlInsets.bottom;
  right = self->_controlInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (AVMobileGlassAuxiliaryControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateOverflowControlContextMenu
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__AVMobileGlassAuxiliaryControlsView__updateOverflowControlContextMenu__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __71__AVMobileGlassAuxiliaryControlsView__updateOverflowControlContextMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[63] updateContextMenu];
    WeakRetained = v2;
  }
}

- (void)_updateHasOverflowOnlyControl
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_controls;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isIncluded] && (objc_msgSend(v7, "canOnlyAppearInOverflowMenu") & 1) != 0)
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(AVMobileGlassAuxiliaryControlsView *)self setHasOverflowOnlyControl:v4];
}

- (BOOL)_requiresOverflowControl
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_hasOverflowOnlyControl)
  {
    return 1;
  }

  [(AVMobileGlassAuxiliaryControlsView *)self bounds];
  v5 = v4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_controls;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 isIncluded] && (objc_msgSend(v13, "canOnlyAppearInOverflowMenu") & 1) == 0)
        {
          controlView = [v13 controlView];
          [controlView intrinsicContentSize];
          v16 = v15;

          v11 = v11 + v16;
          ++v9;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v11 = 0.0;
  }

  [(AVMobileGlassAuxiliaryControlsView *)self _insetsForContainerView];
  result = v9 >= 2 && (v19 = v11 + v17 + v18 + (v9 - 1) * self->_controlSpacing, v19 > v5) && vabdd_f64(v19, v5) >= 2.22044605e-16;
  return result;
}

- (double)_insetsForContainerView
{
  if (!self)
  {
    return 0.0;
  }

  isFullscreen = [self isFullscreen];
  v3 = self[73];
  if (isFullscreen)
  {
    [v3 controlsPlatterFullscreenEdgeInsets];
  }

  else
  {
    [v3 controlsPlatterInlineEdgeInsets];
  }

  return result;
}

- (id)_overflowControl
{
  overflowControl = self->_overflowControl;
  if (!overflowControl)
  {
    v4 = [AVControlOverflowButton overflowButtonBordered:0];
    [(AVControlOverflowButton *)v4 setPointerInteractionEnabled:1];
    [(AVControlOverflowButton *)v4 setAutoresizingMask:0];
    v5 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB968]];
    [(AVButton *)v4 setInlineFont:v5];

    [(AVControlOverflowButton *)v4 setDelegate:self];
    [(AVControlOverflowButton *)v4 setHidden:1];
    [(AVControlOverflowButton *)v4 setAccessibilityIdentifier:@"Overflow Menu"];
    v6 = self->_overflowControl;
    self->_overflowControl = v4;
    v7 = v4;

    v8 = self->_overflowControl;
    v9 = MEMORY[0x1E69DC888];
    traitCollection = [(AVMobileGlassAuxiliaryControlsView *)self traitCollection];
    v11 = [v9 avkit_tintColorForControlElementWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
    [(AVControlOverflowButton *)v8 setTintColor:v11];

    [(AVGlassBackedView *)self->_controlsContainerView addSubview:self->_overflowControl];
    overflowControl = self->_overflowControl;
  }

  return overflowControl;
}

- (void)setHasOverflowOnlyControl:(BOOL)control
{
  if (self->_hasOverflowOnlyControl != control)
  {
    self->_hasOverflowOnlyControl = control;
    [(AVMobileGlassAuxiliaryControlsView *)self setNeedsLayout];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  [(AVMobileGlassAuxiliaryControlsView *)self setNeedsLayout];
  superview = [(AVMobileGlassAuxiliaryControlsView *)self superview];
  [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
}

- (void)setAvkit_extendedDynamicRangeGain:(double)gain
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_extendedDynamicRangeGain != gain)
  {
    self->_extendedDynamicRangeGain = gain;
    if (([(AVControlOverflowButton *)self->_overflowControl isHidden]& 1) == 0)
    {
      [(UIView *)self->_overflowControl setAvkit_extendedDynamicRangeGain:self->_extendedDynamicRangeGain];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_controls;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          controlItemView = [v9 controlItemView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            controlItemView2 = [v9 controlItemView];
            [controlItemView2 setAvkit_extendedDynamicRangeGain:self->_extendedDynamicRangeGain];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateBackgroundMaterial
{
  v16 = *MEMORY[0x1E69E9840];
  _resolvedBackgroundStyle = [(AVMobileGlassAuxiliaryControlsView *)self _resolvedBackgroundStyle];
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_controlsContainerView setBackgroundMaterialStyle:_resolvedBackgroundStyle];
  [(AVGlassBackedView *)self->_controlsContainerView setBackgroundMaterialized:backgroundMaterialized];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _prominentControlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)self _prominentControlsInPriorityOrder];
  v6 = [_prominentControlsInPriorityOrder countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_prominentControlsInPriorityOrder);
        }

        controlView = [*(*(&v11 + 1) + 8 * v9) controlView];
        [controlView setBackgroundMaterialStyle:_resolvedBackgroundStyle];
        [controlView setBackgroundMaterialized:backgroundMaterialized];

        ++v9;
      }

      while (v7 != v9);
      v7 = [_prominentControlsInPriorityOrder countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(AVMobileGlassAuxiliaryControlsView *)self setNeedsLayout];
}

- (uint64_t)_resolvedBackgroundStyle
{
  if (result)
  {
    v1 = result;
    traitCollection = [result traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    isOverVideo = [v1 isOverVideo];
    if (userInterfaceStyle == 2 || isOverVideo)
    {

      return [v1 backgroundMaterialStyle];
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)_prominentControlsInPriorityOrder
{
  if (self)
  {
    selfCopy = self;
    v3 = self[66];
    if (!v3)
    {
      v4 = [(AVMobileGlassAuxiliaryControlsView *)self _allControlsMatching:?];
      v5 = selfCopy[66];
      selfCopy[66] = v4;

      v3 = selfCopy[66];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)_allControlsMatching:(uint64_t)matching
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(matching + 568), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _controlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)matching _controlsInPriorityOrder];
  v6 = [_controlsInPriorityOrder countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_controlsInPriorityOrder);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v3[2](v3, v10))
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [_controlsInPriorityOrder countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_controlsInPriorityOrder
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[65];
    if (!v2)
    {
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayPriority" ascending:0];
      v4 = selfCopy[71];
      v9[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      v6 = [v4 sortedArrayUsingDescriptors:v5];
      v7 = selfCopy[65];
      selfCopy[65] = v6;

      v2 = selfCopy[65];
    }

    self = v2;
  }

  return self;
}

- (void)didMoveToWindow
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVMobileGlassAuxiliaryControlsView;
  [(AVGlassBackedView *)&v5 didMoveToWindow];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVMobileGlassAuxiliaryControlsView *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_14059];

  [(AVMobileGlassAuxiliaryControlsView *)self _updateTintColors];
  [(AVMobileGlassAuxiliaryControlsView *)self updateBackgroundMaterial];
}

- (void)_updateTintColors
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *(self + 504);
    v3 = MEMORY[0x1E69DC888];
    traitCollection = [self traitCollection];
    v5 = [v3 avkit_tintColorForControlElementWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
    [v2 setTintColor:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(self + 568);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          controlItemView = [*(*(&v15 + 1) + 8 * v10) controlItemView];
          v12 = MEMORY[0x1E69DC888];
          traitCollection2 = [self traitCollection];
          v14 = [v12 avkit_tintColorForControlElementWithUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];
          [controlItemView setTintColor:v14];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

void __53__AVMobileGlassAuxiliaryControlsView_didMoveToWindow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v4 = [a2 traitCollection];
    v5 = [v4 userInterfaceStyle];
    v6 = [v7 userInterfaceStyle];

    if (v5 != v6)
    {
      [(AVMobileGlassAuxiliaryControlsView *)a2 _updateTintColors];
      [a2 updateBackgroundMaterial];
    }
  }
}

- (void)layoutSubviews
{
  v107 = *MEMORY[0x1E69E9840];
  v92.receiver = self;
  v92.super_class = AVMobileGlassAuxiliaryControlsView;
  [(AVView *)&v92 layoutSubviews];
  [(AVMobileGlassAuxiliaryControlsView *)self bounds];
  width = v108.size.width;
  height = v108.size.height;
  y = v108.origin.y;
  if (CGRectIsEmpty(v108))
  {
    [(AVGlassBackedView *)self->_controlsContainerView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    return;
  }

  if (!self)
  {
    return;
  }

  effectiveUserInterfaceLayoutDirection = [(AVMobileGlassAuxiliaryControlsView *)self effectiveUserInterfaceLayoutDirection];
  _requiresOverflowControl = [(AVMobileGlassAuxiliaryControlsView *)self _requiresOverflowControl];
  isFullscreen = [(AVMobileGlassAuxiliaryControlsView *)self isFullscreen];
  styleSheet = self->_styleSheet;
  if (isFullscreen)
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet controlsPlatterFullscreenEdgeInsets];
  }

  else
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet controlsPlatterInlineEdgeInsets];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineExternalSpacing];
  v18 = v17;
  if ([(AVMobileGlassAuxiliaryControlsView *)self isFullscreen])
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenExternalSpacing];
    v18 = v19;
  }

  _nonProminentControlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)self _nonProminentControlsInPriorityOrder];
  _prominentControlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)self _prominentControlsInPriorityOrder];
  v88 = _nonProminentControlsInPriorityOrder;
  v22 = [_nonProminentControlsInPriorityOrder count];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v23 = _prominentControlsInPriorityOrder;
  v24 = [v23 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v98;
    v27 = 0.0;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v98 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v97 + 1) + 8 * i);
        if ([v29 isIncluded])
        {
          v27 = v18 + v27 + [(AVMobileGlassAuxiliaryControlsView *)self _widthForControl:v29 boundingHeight:height prominentInsets:v13, v14, v15, v16];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0.0;
  }

  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  _nonProminentControlsInPriorityOrder2 = [(AVMobileGlassAuxiliaryControlsView *)self _nonProminentControlsInPriorityOrder];
  v31 = [_nonProminentControlsInPriorityOrder2 countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (!v31)
  {

    v37 = v27 - v18;
    if (_requiresOverflowControl)
    {
      v37 = v27;
    }

    goto LABEL_35;
  }

  v32 = v31;
  v90 = _requiresOverflowControl;
  v33 = 0;
  v34 = *v102;
  do
  {
    for (j = 0; j != v32; ++j)
    {
      if (*v102 != v34)
      {
        objc_enumerationMutation(_nonProminentControlsInPriorityOrder2);
      }

      v36 = *(*(&v101 + 1) + 8 * j);
      if ([v36 isIncluded])
      {
        v33 += ([v36 canOnlyAppearInOverflowMenu] & 1) == 0;
      }
    }

    v32 = [_nonProminentControlsInPriorityOrder2 countByEnumeratingWithState:&v101 objects:v106 count:16];
  }

  while (v32);

  v37 = v27 - v18;
  _requiresOverflowControl = v90;
  if (v90)
  {
    v37 = v27;
  }

  if (v33 <= 0)
  {
LABEL_35:
    v27 = v37;
  }

  v38 = width - v27;
  [(UIView *)self->_controlsContainerView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v27, y, v38, height];
  self->_controlInsets.top = v13;
  self->_controlInsets.left = v14;
  self->_controlInsets.bottom = v15;
  self->_controlInsets.right = v16;
  v84 = v38;
  v39 = v38 - v16;
  _overflowControl = [(AVMobileGlassAuxiliaryControlsView *)self _overflowControl];
  v83 = *MEMORY[0x1E695F058];
  [_overflowControl intrinsicContentSize];
  v82 = v41;
  if (_requiresOverflowControl && ((v42 = vabdd_f64(v41, v39), v41 >= v39) ? (v43 = v42 < 2.22044605e-16) : (v43 = 1), v43))
  {
    v44 = 0;
    v39 = v39 - v41;
    v91 = 1;
    v83 = v39;
    if (!_overflowControl)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v91 = 0;
    v44 = 1;
    if (!_overflowControl)
    {
      goto LABEL_49;
    }
  }

  if (v44 != [_overflowControl isHidden])
  {
    [_overflowControl setHidden:v44];
    extendedDynamicRangeGain = 0.0;
    if ((v44 & 1) == 0)
    {
      extendedDynamicRangeGain = self->_extendedDynamicRangeGain;
    }

    [_overflowControl setAvkit_extendedDynamicRangeGain:extendedDynamicRangeGain];
    v46 = 1;
    goto LABEL_50;
  }

LABEL_49:
  v46 = 0;
LABEL_50:
  v47 = v44 ^ 1;
  v48 = v39;
  if ((v44 & 1) == 0)
  {
    v48 = v39;
    if ([(AVMobileGlassAuxiliaryControlsView *)self isFullscreen])
    {
      v48 = fmax(v39 - v16, 0.0);
    }
  }

  v81 = v44;
  v49 = _requiresOverflowControl & v44;
  v50 = -1;
  v85 = _overflowControl;
  v89 = v47;
  if ((v49 & 1) == 0 && v22 >= 1)
  {
    v51 = 0;
    v52 = v47;
    do
    {
      v53 = [v88 objectAtIndex:v51];
      if ([v53 isIncluded])
      {
        v54 = [(AVMobileGlassAuxiliaryControlsView *)self _widthForControl:v53 boundingHeight:height prominentInsets:v13, v14, v15, v16];
        v55 = vabdd_f64(v54, v48);
        if (v54 >= v48 && v55 >= 2.22044605e-16)
        {

          break;
        }

        if (v54 >= 0.0 && ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v54 - 1) <= 0xFFFFFFFFFFFFELL)
        {
          controlSpacing = 0.0;
          if (v52)
          {
            controlSpacing = self->_controlSpacing;
          }

          v48 = fmax(v48 - (v54 + controlSpacing), 0.0);
          v52 = 1;
        }

        ++v91;
        v50 = v51;
      }

      ++v51;
    }

    while (v22 != v51);
  }

  v86 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v22 >= 1)
  {
    for (k = v22 + 1; k > 1; --k)
    {
      v61 = [v88 objectAtIndex:k - 2];
      controlView = [v61 controlView];
      if ([v61 isIncluded])
      {
        v63 = [(AVMobileGlassAuxiliaryControlsView *)self _widthForControl:v61 boundingHeight:height prominentInsets:v13, v14, v15, v16];
        v64 = v63;
        if ((k - 2) <= v50)
        {
          v39 = v39 - v63;
          if (v89)
          {
            v39 = v39 - self->_controlSpacing;
          }

          else if (v91 == 1)
          {
            v39 = (v84 - v63) * 0.5;
            self->_controlInsets.right = v39;
            self->_controlInsets.left = v39;
          }

          [controlView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v39, y, v63, height}];
          v89 = v64 > 0.0;
          if (([controlView isHidden] & 1) == 0)
          {
            goto LABEL_88;
          }

          v65 = 0;
          goto LABEL_87;
        }

        [v86 addObject:v61];
        v89 = v64 > 0.0;
      }

      if (([controlView isHidden] & 1) == 0)
      {
        v65 = 1;
LABEL_87:
        [controlView setHidden:v65];
        v46 = 1;
      }

LABEL_88:
    }
  }

  v66 = *(MEMORY[0x1E695F058] + 8);
  if (v91 == 1)
  {
    v67 = v81;
  }

  else
  {
    v67 = 1;
  }

  v68 = v83;
  if ((v67 & 1) == 0)
  {
    v68 = (v84 - v82) * 0.5;
    self->_controlInsets.right = v68;
    self->_controlInsets.left = v68;
  }

  [v85 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v68, v66, v82, height}];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v69 = v23;
  v70 = [v69 countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v102;
    v73 = 0.0;
    do
    {
      v74 = 0;
      do
      {
        if (*v102 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v75 = *(*(&v101 + 1) + 8 * v74);
        controlView2 = [v75 controlView];
        isIncluded = [v75 isIncluded];
        if (isIncluded)
        {
          v78 = [(AVMobileGlassAuxiliaryControlsView *)self _widthForControl:v75 boundingHeight:height prominentInsets:v13, v14, v15, v16];
          [controlView2 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v73, 0.0, v78, height}];
          v73 = v18 + v73 + v78;
          if (![controlView2 isHidden])
          {
            goto LABEL_102;
          }

LABEL_101:
          [controlView2 setHidden:isIncluded ^ 1u];
          v46 = 1;
          goto LABEL_102;
        }

        if (([controlView2 isHidden] & 1) == 0)
        {
          goto LABEL_101;
        }

LABEL_102:

        ++v74;
      }

      while (v71 != v74);
      v79 = [v69 countByEnumeratingWithState:&v101 objects:v106 count:16];
      v71 = v79;
    }

    while (v79);
  }

  if (v46)
  {
    [(AVMobileGlassAuxiliaryControlsView *)self _updateOverflowControlContextMenu];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AVMobileGlassAuxiliaryControlsView__layoutSubviewsContentsInRect___block_invoke;
  block[3] = &unk_1E7209A10;
  objc_copyWeak(&v95, &location);
  v94 = v86;
  v80 = v86;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v95);
  objc_destroyWeak(&location);
}

- (id)_nonProminentControlsInPriorityOrder
{
  v2 = *(self + 536);
  if (!v2)
  {
    v3 = [(AVMobileGlassAuxiliaryControlsView *)self _allControlsMatching:?];
    v4 = *(self + 536);
    *(self + 536) = v3;

    v2 = *(self + 536);
  }

  return v2;
}

- (double)_widthForControl:(double)control boundingHeight:(double)height prominentInsets:(double)insets
{
  if (!self)
  {
    return 0.0;
  }

  v10 = a2;
  controlItemView = [v10 controlItemView];
  [controlItemView intrinsicContentSize];
  v13 = v12;
  style = [v10 style];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = controlItemView;
    currentImage = [v15 currentImage];

    if (!currentImage)
    {
      titleLabel = [v15 titleLabel];
      [titleLabel bounds];
      v13 = v18;
    }
  }

  if (style == 1)
  {
    if (v13 >= control)
    {
      control = insets + a7 + v13;
    }
  }

  else
  {
    control = v13;
  }

  return control;
}

void __68__AVMobileGlassAuxiliaryControlsView__layoutSubviewsContentsInRect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 auxiliaryControlsView:WeakRetained didOverflowControls:*(a1 + 32)];
  }
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileGlassAuxiliaryControlsView *)self sizeFittingControls:self->_controls];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)overflowButtonDidHideContextMenu:(id)menu
{
  delegate = [(AVMobileGlassAuxiliaryControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate auxiliaryControlsViewDidEndShowingOverflowMenu:self];
  }
}

- (void)overflowButtonWillHideContextMenu:(id)menu animator:(id)animator
{
  animatorCopy = animator;
  delegate = [(AVMobileGlassAuxiliaryControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate auxiliaryControlsViewWillEndShowingOverflowMenu:self animator:animatorCopy];
  }
}

- (void)overflowButtonWillShowContextMenu:(id)menu animator:(id)animator
{
  animatorCopy = animator;
  delegate = [(AVMobileGlassAuxiliaryControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate auxiliaryControlsViewWillBeginShowingOverflowMenu:self animator:animatorCopy];
  }
}

- (id)overflowMenuItemsForControlOverflowButton:(id)button
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_controls, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _controlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)self _controlsInPriorityOrder];
  v5 = [_controlsInPriorityOrder countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(_controlsInPriorityOrder);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        delegate = [(AVMobileGlassAuxiliaryControlsView *)self delegate];
        if ([v9 isIncluded])
        {
          if (([v9 canOnlyAppearInOverflowMenu] & 1) == 0)
          {
            controlView = [v9 controlView];
            if ([controlView isHidden])
            {
              v12 = objc_opt_respondsToSelector();

              if ((v12 & 1) == 0)
              {
                goto LABEL_15;
              }

LABEL_12:
              delegate2 = [(AVMobileGlassAuxiliaryControlsView *)self delegate];
              controlView = [delegate2 auxiliaryControlsView:self menuElementForControl:v9];

              if (controlView)
              {
                [v15 addObject:controlView];
              }
            }

            goto LABEL_15;
          }

          if (objc_opt_respondsToSelector())
          {
            goto LABEL_12;
          }
        }

LABEL_15:
      }

      v6 = [_controlsInPriorityOrder countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (void)auxiliaryControlDidChangeState:(id)state
{
  [(AVMobileGlassAuxiliaryControlsView *)self _updateHasOverflowOnlyControl];
  [(AVMobileGlassAuxiliaryControlsView *)self setNeedsLayout];

  [(AVMobileGlassAuxiliaryControlsView *)self updateOverflowMenu];
}

- (CGSize)sizeFittingControls:(id)controls
{
  v55 = *MEMORY[0x1E69E9840];
  controlsCopy = controls;
  hasOverflowOnlyControl = self->_hasOverflowOnlyControl;
  v6 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
  [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
  v8 = v7;
  if ([(AVMobileGlassAuxiliaryControlsView *)self isFullscreen])
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
    v8 = v9;
  }

  isFullscreen = [(AVMobileGlassAuxiliaryControlsView *)self isFullscreen];
  styleSheet = self->_styleSheet;
  if (isFullscreen)
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet controlsPlatterFullscreenEdgeInsets];
  }

  else
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet controlsPlatterInlineEdgeInsets];
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if ([controlsCopy count])
  {
    v47 = hasOverflowOnlyControl;
    v48 = controlsCopy;
    v20 = [MEMORY[0x1E695DF70] arrayWithArray:controlsCopy];
    selfCopy = self;
    _controlsInPriorityOrder = [(AVMobileGlassAuxiliaryControlsView *)self _controlsInPriorityOrder];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v22 = [_controlsInPriorityOrder countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *v51;
      v29 = 0.0;
      v30 = 0.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(_controlsInPriorityOrder);
          }

          v32 = *(*(&v50 + 1) + 8 * i);
          if ([v32 isIncluded])
          {
            if (([v32 canOnlyAppearInOverflowMenu] & 1) == 0)
            {
              ++v25;
              if ([v20 containsObject:v32])
              {
                v33 = [(AVMobileGlassAuxiliaryControlsView *)selfCopy _widthForControl:v32 boundingHeight:v8 prominentInsets:v16, v17, v18, v19];
                style = [v32 style];
                if (style == 1)
                {
                  v30 = v30 + v33;
                }

                else
                {
                  v29 = v29 + v33;
                }

                if (style == 1)
                {
                  ++v26;
                }

                else
                {
                  ++v27;
                }

                ++v24;
              }
            }
          }
        }

        v23 = [_controlsInPriorityOrder countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v29 = 0.0;
      v30 = 0.0;
    }

    if (v24 < v25)
    {
      controlsCopy = v48;
      self = selfCopy;
      v6 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
    }

    else
    {
      controlsCopy = v48;
      self = selfCopy;
      v6 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
      if (!v47)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v30 = 0.0;
    v29 = 0.0;
    if (!hasOverflowOnlyControl)
    {
LABEL_36:
      if (v26 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v26;
      }

      v38 = v39 - 1;
      if (v39 == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

  _overflowControl = [(AVMobileGlassAuxiliaryControlsView *)self _overflowControl];
  [_overflowControl intrinsicContentSize];
  v37 = v36;

  v29 = v29 + v37;
  ++v27;
LABEL_33:
  if (v27 <= 0)
  {
    goto LABEL_36;
  }

  v29 = v17 + v19 + v29 + (v27 - 1) * self->_controlSpacing;
  v38 = v26;
  if (!v26)
  {
    goto LABEL_43;
  }

LABEL_40:
  [*(&self->super.super.super.super.super.isa + v6[58]) controlsPlatterInlineExternalSpacing];
  v41 = v40;
  if ([(AVMobileGlassAuxiliaryControlsView *)self isFullscreen])
  {
    [*(&self->super.super.super.super.super.isa + v6[58]) controlsPlatterFullscreenExternalSpacing];
    v41 = v42;
  }

  v30 = v30 + v38 * v41;
LABEL_43:
  v43 = v29 + v30;
  v44 = v29 + v30 > 0.0 && v43 < v8;
  if (v44 || !v26 && v27 == 1)
  {
    v43 = v8;
  }

  v45 = v43;
  v46 = v8;
  result.height = v46;
  result.width = v45;
  return result;
}

- (void)setControlSpacing:(double)spacing
{
  if (self->_controlSpacing != spacing)
  {
    self->_controlSpacing = spacing;
    [(AVMobileGlassAuxiliaryControlsView *)self setNeedsLayout];
  }
}

- (void)setControls:(id)controls
{
  v47 = *MEMORY[0x1E69E9840];
  controlsCopy = controls;
  controls = self->_controls;
  if (controls != controlsCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    controlsCopy2 = controls;
    v8 = [(NSArray *)controlsCopy2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(controlsCopy2);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          if (![(NSArray *)controlsCopy containsObject:v12])
          {
            [v12 setDelegate:0];
            if (([v12 canOnlyAppearInOverflowMenu] & 1) == 0)
            {
              controlView = [v12 controlView];
              [controlView removeFromSuperview];
            }
          }
        }

        v9 = [(NSArray *)controlsCopy2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }

    v14 = self->_controls;
    objc_storeStrong(&self->_controls, controls);
    controlsInPriorityOrder = self->_controlsInPriorityOrder;
    self->_controlsInPriorityOrder = 0;

    prominentControlsInPriorityOrder = self->_prominentControlsInPriorityOrder;
    self->_prominentControlsInPriorityOrder = 0;

    nonProminentControlsInPriorityOrder = self->_nonProminentControlsInPriorityOrder;
    self->_nonProminentControlsInPriorityOrder = 0;

    controlsWithViewsInPriorityOrder = self->_controlsWithViewsInPriorityOrder;
    self->_controlsWithViewsInPriorityOrder = 0;

    _resolvedBackgroundStyle = [(AVMobileGlassAuxiliaryControlsView *)self _resolvedBackgroundStyle];
    backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = controlsCopy;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          controlItemView = [v24 controlItemView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            controlItemView2 = [v24 controlItemView];
            [controlItemView2 setPointerInteractionEnabled:1];
            [controlItemView2 setAvkit_extendedDynamicRangeGain:self->_extendedDynamicRangeGain];
          }

          if (![(NSArray *)v14 containsObject:v24])
          {
            [v24 setDelegate:self];
            if ([v24 style] == 1)
            {
              controlView2 = [v24 controlView];
              [controlView2 setBackgroundMaterialStyle:_resolvedBackgroundStyle];
              [controlView2 setBackgroundMaterialized:backgroundMaterialized];
              [controlView2 setWantsCapsuleShape:1];
              selfCopy = self;
            }

            else
            {
              if ([v24 canOnlyAppearInOverflowMenu])
              {
                goto LABEL_25;
              }

              controlsContainerView = self->_controlsContainerView;
              controlView2 = [v24 controlView];
              selfCopy = controlsContainerView;
            }

            [(AVMobileGlassAuxiliaryControlsView *)selfCopy addSubview:controlView2];
          }

LABEL_25:
          controlItemView3 = [v24 controlItemView];
          v32 = MEMORY[0x1E69DC888];
          traitCollection = [(AVMobileGlassAuxiliaryControlsView *)self traitCollection];
          v34 = [v32 avkit_tintColorForControlElementWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
          [controlItemView3 setTintColor:v34];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v21);
    }

    [(AVMobileGlassAuxiliaryControlsView *)self _updateHasOverflowOnlyControl];
    [(AVMobileGlassAuxiliaryControlsView *)self updateOverflowMenu];
    [(AVMobileGlassAuxiliaryControlsView *)self invalidateIntrinsicContentSize];
    [(AVMobileGlassAuxiliaryControlsView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (AVMobileGlassAuxiliaryControlsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v16.receiver = self;
  v16.super_class = AVMobileGlassAuxiliaryControlsView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(AVGlassBackedView *)&v16 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styleSheet, sheet);
    controls = v11->_controls;
    v11->_controls = MEMORY[0x1E695E0F0];

    v13 = [[AVGlassBackedView alloc] initWithFrame:v6, v7, v8, v9];
    controlsContainerView = v11->_controlsContainerView;
    v11->_controlsContainerView = v13;

    [(AVGlassBackedView *)v11->_controlsContainerView setWantsCapsuleShape:1];
    [(AVView *)v11->_controlsContainerView setIgnoresTouches:1];
    [(AVMobileGlassAuxiliaryControlsView *)v11 addSubview:v11->_controlsContainerView];
    [(AVView *)v11 setIgnoresTouches:1];
  }

  return v11;
}

@end