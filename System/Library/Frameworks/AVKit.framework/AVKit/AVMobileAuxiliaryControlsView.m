@interface AVMobileAuxiliaryControlsView
- (AVMobileAuxiliaryControlsView)init;
- (AVMobileAuxiliaryControlsViewDelegate)delegate;
- (BOOL)_requiresOverflowControl;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeFittingControls:(id)a3;
- (id)_controlsWithViewsInPriorityOrder;
- (id)_overflowControl;
- (id)overflowMenuItemsForControlOverflowButton:(id)a3;
- (void)_updateHasOverflowOnlyControl;
- (void)_updateOverflowControlContextMenu;
- (void)_updatePriorityOrderControlsList;
- (void)_updateTintColorsForOverflowControlButton;
- (void)auxiliaryControlDidChangeState:(id)a3;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)layoutSubviews;
- (void)overflowButtonDidHideContextMenu:(id)a3;
- (void)overflowButtonWillShowContextMenu:(id)a3;
- (void)setAvkit_extendedDynamicRangeGain:(double)a3;
- (void)setControlSpacing:(double)a3;
- (void)setControls:(id)a3;
- (void)setHasOverflowOnlyControl:(BOOL)a3;
- (void)viewIsOverVideoDidChange:(id)a3;
@end

@implementation AVMobileAuxiliaryControlsView

- (AVMobileAuxiliaryControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateTintColorsForOverflowControlButton
{
  overflowControl = self->_overflowControl;
  v4 = MEMORY[0x1E69DC888];
  v5 = [(AVButton *)overflowControl isOverVideo];
  v7 = [(AVMobileAuxiliaryControlsView *)self traitCollection];
  v6 = [v4 avkit_tintColorForControlElementIsOverVideo:v5 withUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
  [(AVControlOverflowButton *)overflowControl setTintColor:v6];
}

- (void)_updatePriorityOrderControlsList
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayPriority" ascending:0];
  controls = self->_controls;
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(NSArray *)controls sortedArrayUsingDescriptors:v5];
  controlsInPriorityOrder = self->_controlsInPriorityOrder;
  self->_controlsInPriorityOrder = v6;
}

- (void)_updateOverflowControlContextMenu
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__AVMobileAuxiliaryControlsView__updateOverflowControlContextMenu__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __66__AVMobileAuxiliaryControlsView__updateOverflowControlContextMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[60] updateContextMenu];
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

  [(AVMobileAuxiliaryControlsView *)self setHasOverflowOnlyControl:v4];
}

- (BOOL)_requiresOverflowControl
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_hasOverflowOnlyControl)
  {
    return 1;
  }

  [(AVMobileAuxiliaryControlsView *)self bounds];
  v5 = v4;
  v7 = v6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_controls;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v10 = 0;
  if (v9)
  {
    v11 = *v22;
    v12 = 0.0;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 isIncluded] && (objc_msgSend(v14, "canOnlyAppearInOverflowMenu") & 1) == 0)
        {
          v15 = [v14 controlView];
          [v15 intrinsicContentSize];
          v17 = v16;
          v19 = v18;

          if (v19 > v7)
          {
            LOBYTE(v9) = 1;
            goto LABEL_17;
          }

          v12 = v12 + v17;
          ++v10;
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0.0;
  }

LABEL_17:

  if (v10 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v10;
  }

  if (v12 + (v20 - 1) * self->_controlSpacing > v5)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)_overflowControl
{
  overflowControl = self->_overflowControl;
  if (!overflowControl)
  {
    v4 = [AVControlOverflowButton overflowButtonBordered:1];
    [(AVControlOverflowButton *)v4 setPointerInteractionEnabled:1];
    [(AVControlOverflowButton *)v4 setAutoresizingMask:0];
    v5 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB968]];
    [(AVButton *)v4 setInlineFont:v5];

    v6 = MEMORY[0x1E69DC888];
    v7 = [(AVButton *)v4 isOverVideo];
    v8 = [(AVMobileAuxiliaryControlsView *)self traitCollection];
    v9 = [v6 avkit_tintColorForControlElementIsOverVideo:v7 withUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];
    [(AVControlOverflowButton *)v4 setTintColor:v9];

    [(AVControlOverflowButton *)v4 setDelegate:self];
    [(AVButton *)v4 setContentIntersectingDelegate:self];
    [(AVControlOverflowButton *)v4 setHidden:1];
    [(AVControlOverflowButton *)v4 setAccessibilityIdentifier:@"Overflow Menu"];
    v10 = self->_overflowControl;
    self->_overflowControl = v4;
    v11 = v4;

    [(AVMobileAuxiliaryControlsView *)self addSubview:self->_overflowControl];
    overflowControl = self->_overflowControl;
  }

  return overflowControl;
}

- (id)_controlsWithViewsInPriorityOrder
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_controls, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_controlsInPriorityOrder;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 canOnlyAppearInOverflowMenu] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setHasOverflowOnlyControl:(BOOL)a3
{
  if (self->_hasOverflowOnlyControl != a3)
  {
    self->_hasOverflowOnlyControl = a3;
    [(AVMobileAuxiliaryControlsView *)self setNeedsLayout];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  [(AVMobileAuxiliaryControlsView *)self setNeedsLayout];
  v4 = [(AVMobileAuxiliaryControlsView *)self superview];
  [v4 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
}

- (void)setAvkit_extendedDynamicRangeGain:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_extendedDynamicRangeGain != a3)
  {
    self->_extendedDynamicRangeGain = a3;
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
          v10 = [v9 controlView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v12 = [v9 controlView];
            [v12 setAvkit_extendedDynamicRangeGain:self->_extendedDynamicRangeGain];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)layoutSubviews
{
  [(AVMobileAuxiliaryControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(AVMobileAuxiliaryControlsView *)self _requiresOverflowControl];
  [(AVMobileAuxiliaryControlsView *)self intrinsicContentSize];
  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6 + v9 * -0.5;
  v11 = [(AVMobileAuxiliaryControlsView *)self effectiveUserInterfaceLayoutDirection];
  v12 = [(AVMobileAuxiliaryControlsView *)self _controlsWithViewsInPriorityOrder];
  if (v7)
  {
    v13 = [(AVMobileAuxiliaryControlsView *)self _overflowControl];
    [v13 intrinsicContentSize];
    v15 = v14;
    v17 = v16;
    *&v14 = v14;
    *&v16 = v4;
    v18 = vabds_f32(*&v14, *&v16);
    v19 = *&v14 < *&v16 || v18 < 0.00000011921;
    if (v19 && ((v20 = v17, v21 = v6, v22 = vabds_f32(v20, v21), v20 >= v21) ? (v23 = v22 < 0.00000011921) : (v23 = 1), v23))
    {
      v4 = v4 - v15;
      [(UIView *)self->_overflowControl avkit_setFrame:v11 inLayoutDirection:v4, v10 + v17 * -0.5];
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  overflowControl = self->_overflowControl;
  if (!overflowControl || v24 == [(AVControlOverflowButton *)overflowControl isHidden])
  {
    v27 = 0;
    if ((v24 & 1) == 0)
    {
LABEL_24:
      v28 = fmax(v4 - self->_controlSpacing, 0.0);
      goto LABEL_27;
    }
  }

  else
  {
    [(AVControlOverflowButton *)self->_overflowControl setHidden:v24];
    extendedDynamicRangeGain = 0.0;
    if ((v24 & 1) == 0)
    {
      extendedDynamicRangeGain = self->_extendedDynamicRangeGain;
    }

    [(UIView *)self->_overflowControl setAvkit_extendedDynamicRangeGain:extendedDynamicRangeGain];
    v27 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v28 = v4;
  if (v7)
  {
LABEL_43:
    v31 = -1;
    goto LABEL_45;
  }

LABEL_27:
  if (![v12 count])
  {
    goto LABEL_43;
  }

  v29 = 0;
  v30 = v6;
  v31 = -1;
  while (1)
  {
    v32 = [v12 objectAtIndex:v29];
    if ([v32 isIncluded])
    {
      break;
    }

LABEL_41:

    if (++v29 >= [v12 count])
    {
      goto LABEL_45;
    }
  }

  v33 = [v32 controlView];
  [v33 intrinsicContentSize];
  v36 = v34;
  v37 = v28;
  v38 = vabds_f32(v36, v37);
  if (v36 < v37 || v38 < 0.00000011921)
  {
    v40 = v35;
    v41 = vabds_f32(v40, v30);
    if (v40 < v30 || v41 < 0.00000011921)
    {
      v28 = fmax(v28 - (v34 + self->_controlSpacing), 0.0);

      v31 = v29;
      goto LABEL_41;
    }
  }

LABEL_45:
  v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = [v12 count];
  if (v44 - 1 >= 0)
  {
    v45 = v44;
    v46 = v24 ^ 1;
    while (1)
    {
      v47 = [v12 objectAtIndex:--v45];
      v48 = [v47 controlView];
      if (![v47 isIncluded])
      {
        break;
      }

      [v48 intrinsicContentSize];
      if (v45 <= v31)
      {
        v4 = v4 - v49;
        if (v46)
        {
          v4 = v4 - self->_controlSpacing;
        }

        [v48 avkit_setFrame:v11 inLayoutDirection:{v4, v10 + v50 * -0.5, v49}];
        if ([v48 isHidden])
        {
          v51 = 0;
LABEL_56:
          v46 = 1;
LABEL_57:
          [v48 setHidden:v51];
          goto LABEL_58;
        }
      }

      else
      {
        [v43 addObject:v47];
        if (![v48 isHidden])
        {
          v51 = 1;
          goto LABEL_56;
        }
      }

      v46 = 1;
      if ((v27 & 1) == 0)
      {
        v27 = 0;
        goto LABEL_59;
      }

LABEL_58:
      [(AVMobileAuxiliaryControlsView *)self _updateOverflowControlContextMenu];
      v27 = 1;
LABEL_59:

      if (v45 <= 0)
      {
        goto LABEL_63;
      }
    }

    v51 = 1;
    goto LABEL_57;
  }

LABEL_63:
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVMobileAuxiliaryControlsView_layoutSubviews__block_invoke;
  block[3] = &unk_1E7209A10;
  objc_copyWeak(&v56, &location);
  v52 = v43;
  v55 = v52;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v53.receiver = self;
  v53.super_class = AVMobileAuxiliaryControlsView;
  [(AVView *)&v53 layoutSubviews];

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
}

void __47__AVMobileAuxiliaryControlsView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 32) copy];
      [v3 auxiliaryControlsView:v5 didOverflowControls:v4];
    }

    WeakRetained = v5;
  }
}

- (CGSize)intrinsicContentSize
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_hasOverflowOnlyControl)
  {
    [(AVButton *)self->_overflowControl intrinsicContentSize];
    v4 = fmax(v3, 0.0);
    v6 = v5 + 0.0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0.0;
    v4 = 0.0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_controls;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 isIncluded] && (objc_msgSend(v13, "canOnlyAppearInOverflowMenu") & 1) == 0)
        {
          v14 = [v13 controlView];
          [v14 intrinsicContentSize];
          v16 = v15;
          v18 = v17;

          if (v4 < v18)
          {
            v4 = v18;
          }

          v6 = v6 + v16;
          ++v7;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = v6 + (v7 - 1) * self->_controlSpacing;
  v20 = v4;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)viewIsOverVideoDidChange:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v5 isOverVideo];
  v8 = [(AVMobileAuxiliaryControlsView *)self traitCollection];
  v7 = [v4 avkit_tintColorForControlElementIsOverVideo:v6 withUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];
  [v5 setTintColor:v7];
}

- (id)overflowMenuItemsForControlOverflowButton:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_controls, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_controlsInPriorityOrder;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isIncluded])
        {
          v11 = [v10 canOnlyAppearInOverflowMenu];
          if ((v11 & 1) == 0)
          {
            v3 = [v10 controlView];
            v12 = v3;
            if (![v3 isHidden])
            {
              goto LABEL_14;
            }
          }

          v13 = [(AVMobileAuxiliaryControlsView *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if ((v11 & 1) == 0)
          {
          }

          if (v14)
          {
            v15 = [(AVMobileAuxiliaryControlsView *)self delegate];
            v12 = [v15 auxiliaryControlsView:self menuElementForControl:v10];

            if (v12)
            {
              [v18 addObject:v12];
            }

LABEL_14:

            continue;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v18;
}

- (void)overflowButtonWillShowContextMenu:(id)a3
{
  v4 = [(AVMobileAuxiliaryControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 auxiliaryControlsViewWillBeginShowingOverflowMenu:self];
  }
}

- (void)overflowButtonDidHideContextMenu:(id)a3
{
  v4 = [(AVMobileAuxiliaryControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 auxiliaryControlsViewDidEndShowingOverflowMenu:self];
  }
}

- (void)auxiliaryControlDidChangeState:(id)a3
{
  [(AVMobileAuxiliaryControlsView *)self _updateHasOverflowOnlyControl];
  [(AVMobileAuxiliaryControlsView *)self setNeedsLayout];

  [(AVMobileAuxiliaryControlsView *)self updateOverflowMenu];
}

- (CGSize)sizeFittingControls:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  hasOverflowOnlyControl = self->_hasOverflowOnlyControl;
  if (!v4 || ![v4 count])
  {
    v12 = 0;
    v15 = 0.0;
    v14 = 0.0;
    if (!hasOverflowOnlyControl)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v31 = hasOverflowOnlyControl;
  v7 = self->_controlsInPriorityOrder;
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v33;
    v14 = 0.0;
    v15 = 0.0;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v32 + 1) + 8 * v16);
      if ([v17 isIncluded] && (objc_msgSend(v17, "canOnlyAppearInOverflowMenu") & 1) == 0)
      {
        v18 = [v17 controlView];
        [v18 intrinsicContentSize];
        v20 = v19;
        v22 = v21;

        v15 = v15 + v20;
        if (v14 < v22)
        {
          v14 = v22;
        }

        ++v12;
      }

      [v8 removeObject:v17];
      if (![v8 count])
      {
        break;
      }

      if (v11 == ++v16)
      {
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
    v14 = 0.0;
    v15 = 0.0;
  }

  v23 = [(NSArray *)v9 count];
  if (v12 < v23 || v31)
  {
LABEL_22:
    v24 = [(AVMobileAuxiliaryControlsView *)self _overflowControl];
    [v24 intrinsicContentSize];
    v15 = v15 + v26;
    if (v14 < v25)
    {
      v14 = v25;
    }

    ++v12;
  }

LABEL_25:
  if (v12 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v12;
  }

  controlSpacing = self->_controlSpacing;

  v29 = v15 + controlSpacing * (v27 - 1);
  v30 = v14;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)setControlSpacing:(double)a3
{
  if (self->_controlSpacing != a3)
  {
    self->_controlSpacing = a3;
    [(AVMobileAuxiliaryControlsView *)self setNeedsLayout];
  }
}

- (void)setControls:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  controls = self->_controls;
  if (controls != v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = controls;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          if (![(NSArray *)v5 containsObject:v12])
          {
            [v12 setDelegate:0];
            if (([v12 canOnlyAppearInOverflowMenu] & 1) == 0)
            {
              v13 = [v12 controlView];
              [v13 removeFromSuperview];
            }
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    v14 = self->_controls;
    objc_storeStrong(&self->_controls, a3);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v5;
    v15 = v5;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * j);
          v21 = [v20 controlView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v23 = [v20 controlView];
            [v23 setPointerInteractionEnabled:1];
            [v23 setAvkit_extendedDynamicRangeGain:self->_extendedDynamicRangeGain];
          }

          if (![(NSArray *)v14 containsObject:v20])
          {
            [v20 setDelegate:self];
            if (([v20 canOnlyAppearInOverflowMenu] & 1) == 0)
            {
              v24 = [v20 controlView];
              [(AVMobileAuxiliaryControlsView *)self addSubview:v24];
            }
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
    }

    [(AVMobileAuxiliaryControlsView *)self _updateHasOverflowOnlyControl];
    [(AVMobileAuxiliaryControlsView *)self _updatePriorityOrderControlsList];
    [(AVMobileAuxiliaryControlsView *)self updateOverflowMenu];
    [(AVMobileAuxiliaryControlsView *)self setNeedsLayout];

    v5 = v25;
  }
}

- (AVMobileAuxiliaryControlsView)init
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = AVMobileAuxiliaryControlsView;
  v2 = [(AVView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    controls = v2->_controls;
    v2->_controls = MEMORY[0x1E695E0F0];

    [(AVView *)v3 setIgnoresTouches:1];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(AVMobileAuxiliaryControlsView *)v3 registerForTraitChanges:v5 withHandler:&__block_literal_global_19753];
  }

  return v3;
}

@end