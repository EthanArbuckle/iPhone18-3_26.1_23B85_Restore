@interface AVMobileGlassDisplayModeControlsView
- (AVButton)doneButton;
- (AVButton)fullScreenButton;
- (AVButton)multiviewButton;
- (AVButton)pictureInPictureButton;
- (AVMobileGlassContainerView)leftContainerView;
- (AVMobileGlassContainerView)rightContainerView;
- (AVMobileGlassDisplayModeControlsView)initWithStyleSheet:(id)a3;
- (AVMobileGlassDisplayModeControlsViewDelegate)delegate;
- (AVRoutePickerView)routePickerButton;
- (AVRoutePickerView)routePickerView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_effectiveWindowControlInsets;
- (double)_insetsForContainerView;
- (id)menuForMenuButton:(id)a3;
- (void)_doneButtonWasPressed;
- (void)_fullScreenButtonWasPressed;
- (void)_multiviewControlWasPressed;
- (void)_pictureInPictureControlWasPressed;
- (void)_updateContainerView:(uint64_t)a1;
- (void)_updateItemViewsIfNeeded;
- (void)containerView:(id)a3 didUpdateHiddenViews:(id)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)menuButtonWillHideMenu:(id)a3 animator:(id)a4;
- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4;
- (void)setCustomActions:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFullscreen:(BOOL)a3;
- (void)setIncludesEnterFullscreenControl:(BOOL)a3;
- (void)setIncludesExitFullscreenControl:(BOOL)a3;
- (void)setIncludesMultiviewControl:(BOOL)a3;
- (void)setIncludesPictureInPictureControl:(BOOL)a3;
- (void)setIncludesRoutePickerControl:(BOOL)a3;
- (void)setRoutingConfiguration:(id)a3;
- (void)setStyleSheet:(id)a3;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassDisplayModeControlsView

- (AVMobileGlassDisplayModeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)menuButtonWillHideMenu:(id)a3 animator:(id)a4
{
  v6 = a4;
  v5 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 displayModeControlsViewWillDismissContextMenu:self animator:v6];
  }
}

- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4
{
  v6 = a4;
  v5 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 displayModeControlsViewWillPresentContextMenu:self animator:v6];
  }
}

- (id)menuForMenuButton:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(NSMapTable *)self->_viewToIdentifierMap objectForKey:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_customActions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v6 = [v9 contextMenu];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)containerView:(id)a3 didUpdateHiddenViews:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMapTable *)self->_viewToIdentifierMap objectForKey:*(*(&v16 + 1) + 8 * v11)];
        if (v12)
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__AVMobileGlassDisplayModeControlsView_containerView_didUpdateHiddenViews___block_invoke;
  v14[3] = &unk_1E7209FB0;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __75__AVMobileGlassDisplayModeControlsView_containerView_didUpdateHiddenViews___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 displayModeControlsView:*(a1 + 32) layoutWithHiddenIdentifiers:*(a1 + 40)];
  }
}

- (void)_doneButtonWasPressed
{
  v3 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 displayModeControlsViewDoneButtonWasPressed:self];
  }
}

- (void)_fullScreenButtonWasPressed
{
  v3 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 displayModeControlsViewFullscreenButtonWasPressed:self];
  }
}

- (void)_multiviewControlWasPressed
{
  v3 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 displayModeControlsViewMultiviewButtonWasPressed:self];
  }
}

- (void)_pictureInPictureControlWasPressed
{
  v3 = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 displayModeControlsViewPictureInPictureButtonWasPressed:self];
  }
}

- (void)updateBackgroundMaterial
{
  v3 = [(AVGlassBackedView *)self backgroundMaterialStyle];
  v4 = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_leftContainerView setBackgroundMaterialStyle:v3];
  [(AVGlassBackedView *)self->_rightContainerView setBackgroundMaterialStyle:v3];
  [(AVGlassBackedView *)self->_leftContainerView setBackgroundMaterialized:v4];
  rightContainerView = self->_rightContainerView;

  [(AVGlassBackedView *)rightContainerView setBackgroundMaterialized:v4];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = AVMobileGlassDisplayModeControlsView;
  [(AVView *)&v33 layoutSubviews];
  [(AVMobileGlassDisplayModeControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(AVMobileGlassDisplayModeControlsView *)self effectiveUserInterfaceLayoutDirection];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (v4 == *MEMORY[0x1E695F060] && v6 == v9)
  {
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    [(UIView *)self->_leftContainerView avkit_setFrame:v7 inLayoutDirection:*MEMORY[0x1E695F058], v23, v24, v25];
    rightContainerView = self->_rightContainerView;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v25;
  }

  else
  {
    v11 = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
    v13 = v12;
    [(AVMobileGlassDisplayModeControlsView *)self _updateContainerView:?];
    [(AVMobileGlassDisplayModeControlsView *)self _updateContainerView:?];
    v14 = *(MEMORY[0x1E695F058] + 8);
    if (v7)
    {
      v11 = v13;
    }

    [(AVMobileGlassContainerView *)self->_leftContainerView sizeThatFits:v4, v6];
    v16 = v15;
    v18 = v17;
    [(UIView *)self->_leftContainerView avkit_setFrame:v7 inLayoutDirection:v11, v14, v15, v17];
    if (v16 == v8 && v18 == v9)
    {
      v21 = 0.0;
    }

    else
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet standardPaddingFullScreen];
      v21 = v11 + v16 + v20;
      v4 = v4 - v21;
    }

    [(AVMobileGlassContainerView *)self->_rightContainerView sizeThatFits:v4, v6];
    v29 = v31;
    v30 = v32;
    rightContainerView = self->_rightContainerView;
    v28 = 0.0;
    v27 = v21;
  }

  [(UIView *)rightContainerView avkit_setFrame:v7 inLayoutDirection:v27, v28, v29, v30];
}

- (double)_effectiveWindowControlInsets
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [a1 window];
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v7 = [MEMORY[0x1E69DD270] safeAreaLayoutRegionWithCornerAdaptation:1];
      [v5 edgeInsetsForLayoutRegion:v7];
      v6 = v8;
    }

    [a1 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [a1 window];
    [a1 convertRect:v17 toView:{v10, v12, v14, v16}];
    v19 = v18;

    if (v19 < v6 && vabdd_f64(v19, v6) >= 2.22044605e-16)
    {
      return v6;
    }
  }

  return v2;
}

- (void)_updateContainerView:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = *(a1 + 584);
    if (*(a1 + 512) == 1)
    {
      [v4 controlsFullscreenInternalSpacing];
    }

    else
    {
      [v4 controlsInlineInternalSpacing];
    }

    [v5 setSpacing:?];
    [v5 setLayoutMargins:-[AVMobileGlassDisplayModeControlsView _insetsForContainerView](a1)];
    [*(a1 + 584) controlsPlatterInlineHeight];
    if (*(a1 + 512) == 1)
    {
      [*(a1 + 584) controlsPlatterFullscreenHeight];
    }

    [v5 setMaximumHeight:?];
    v3 = v5;
  }
}

- (double)_insetsForContainerView
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 584) controlsPlatterInlineEdgeInsets];
  if (*(a1 + 512) == 1)
  {
    [*(a1 + 584) controlsPlatterFullscreenEdgeInsets];
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (a3.width != *MEMORY[0x1E695F060] || a3.height != v4)
  {
    height = a3.height;
    width = a3.width;
    v9 = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
    v11 = v10;
    [(AVMobileGlassContainerView *)self->_leftContainerView sizeThatFits:width, height];
    if (v12 != v3 || v13 != v4)
    {
      v15 = v12;
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet standardPaddingFullScreen];
      v3 = v3 + v15 + v16;
    }

    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
    }

    v4 = v17;
    [(AVMobileGlassContainerView *)self->_rightContainerView sizeThatFits:width, height];
    v19 = v18;
    *&v20 = v20;
    v21 = vabds_f32(v19, *&v20);
    if (v18 < v4 && v21 < 0.00000011921)
    {
      v18 = v4;
    }

    v3 = v9 + v11 + v3 + v18;
  }

  v23 = v3;
  v24 = v4;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
  v5 = v4;
  v6 = MEMORY[0x1E695F060];
  v7 = *MEMORY[0x1E695F060];
  [(AVMobileGlassContainerView *)self->_leftContainerView intrinsicContentSize];
  v10 = v9;
  if (v9 != v7 || v8 != *(v6 + 8))
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet standardPaddingFullScreen];
    v7 = v7 + v10 + v12;
  }

  [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
  if (self->_fullscreen)
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
  }

  v14 = v13;
  [(AVMobileGlassContainerView *)self->_rightContainerView sizeThatFits:1.79769313e308, v13];
  v17 = v15;
  v18 = v16;
  v19 = vabds_f32(v17, v18);
  if (v16 < v14)
  {
    v16 = v14;
  }

  if (v15 < v16 && v19 < 0.00000011921)
  {
    v15 = v16;
  }

  v21 = v3 + v5 + v7 + v15;
  v22 = v14;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassDisplayModeControlsView;
  [(AVGlassBackedView *)&v3 didMoveToWindow];
  [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
}

- (void)_updateItemViewsIfNeeded
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 window];

    if (v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([a1 includesExitFullscreenControl] && *(a1 + 512) == 1)
      {
        v4 = [a1 doneButton];
        [v3 addObject:v4];
      }

      if ([a1 includesEnterFullscreenControl] && (*(a1 + 512) & 1) == 0)
      {
        v5 = [a1 fullScreenButton];
        [v47 addObject:v5];
      }

      if ([a1 includesMultiviewControl])
      {
        v6 = [a1 multiviewButton];
        [v47 addObject:v6];
      }

      if ([a1 includesPictureInPictureControl])
      {
        v7 = [a1 pictureInPictureButton];
        [v47 addObject:v7];
      }

      v44 = v3;
      if ([a1 includesRoutePickerControl])
      {
        v8 = [a1 routePickerButton];
        [v47 addObject:v8];
      }

      v9 = [a1 customActions];

      if (v9)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = [a1 customActions];
        v10 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v49;
          v13 = *MEMORY[0x1E69DDDC8];
          v14 = *MEMORY[0x1E69DB978];
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v48 + 1) + 8 * i);
              v17 = [v16 contextMenu];

              v18 = [v16 accessibilityIdentifier];
              v19 = [v16 accessibilityLabel];
              if (v17)
              {
                v20 = [AVMenuButton buttonWithAccessibilityIdentifier:v18 accessibilityLabel:v19 isFirstGeneration:0];

                v21 = [v16 contextMenu];
                [v20 setMenu:v21];

                [v20 setShowsMenuAsPrimaryAction:1];
                [v20 setAppliesTransformToImageViewWhenHighlighted:1];
                [v20 setDelegate:a1];
              }

              else
              {
                v20 = [AVButton buttonWithAccessibilityIdentifier:v18 accessibilityLabel:v19 isFirstGeneration:0];

                [v20 addAction:v16 forControlEvents:64];
                [v20 setShowsMenuAsPrimaryAction:0];
              }

              [v20 setAutoresizingMask:0];
              v22 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v13 weight:v14];
              [v20 setInlineFont:v22];
              v23 = [v16 tintColor];
              if (v23)
              {
                [v20 setTintColor:v23];
              }

              else
              {
                v24 = [MEMORY[0x1E69DC888] whiteColor];
                [v20 setTintColor:v24];
              }

              v25 = [v16 image];

              if (v25)
              {
                v26 = [v16 image];
                [v20 setImage:v26 forState:0];
              }

              else
              {
                v26 = [v16 title];
                [v20 setTitle:v26 forState:0];
              }

              v27 = [v16 accessibilityLabel];
              [v20 setAccessibilityLabel:v27];

              v28 = [v16 accessibilityHint];
              [v20 setAccessibilityHint:v28];

              if (v20)
              {
                [v47 addObject:v20];
                v29 = *(a1 + 504);
                v30 = [v16 identifier];
                [v29 setObject:v30 forKey:v20];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v11);
        }
      }

      obja = [a1 leftContainerView];
      v31 = [a1 rightContainerView];
      v32 = v47;
      objc_opt_class();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v53;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v53 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v52 + 1) + 8 * j);
            if (objc_opt_isKindOfClass())
            {
              v39 = *(a1 + 584);
              v40 = v38;
              v41 = [v39 buttonFont];
              [v40 setFullScreenFont:v41];

              v42 = [*(a1 + 584) inlineButtonFont];
              [v40 setInlineFont:v42];

              [v40 setHasFullScreenAppearance:*(a1 + 512)];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v35);
      }

      [obja setItemViews:v44];
      [v31 setItemViews:v33];
      [a1 setNeedsLayout];
      [a1 invalidateIntrinsicContentSize];
      v43 = [a1 superview];
      [v43 avkit_intrinsicContentSizeOfSubviewWasInvalidated:a1];
    }
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  [v5 setDelegate:v4];
}

- (void)setRoutingConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  [v5 setRoutingConfiguration:v4];
}

- (void)setIncludesRoutePickerControl:(BOOL)a3
{
  if (self->_includesRoutePickerControl != a3)
  {
    self->_includesRoutePickerControl = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesMultiviewControl:(BOOL)a3
{
  if (self->_includesMultiviewControl != a3)
  {
    self->_includesMultiviewControl = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesPictureInPictureControl:(BOOL)a3
{
  if (self->_includesPictureInPictureControl != a3)
  {
    self->_includesPictureInPictureControl = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesExitFullscreenControl:(BOOL)a3
{
  if (self->_includesExitFullscreenControl != a3)
  {
    self->_includesExitFullscreenControl = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesEnterFullscreenControl:(BOOL)a3
{
  if (self->_includesEnterFullscreenControl != a3)
  {
    self->_includesEnterFullscreenControl = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setFullscreen:(BOOL)a3
{
  if (self->_fullscreen != a3)
  {
    self->_fullscreen = a3;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassDisplayModeControlsView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setCustomActions:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_customActions] & 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6 copyItems:1];
    customActions = self->_customActions;
    self->_customActions = v4;

    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (AVMobileGlassContainerView)rightContainerView
{
  rightContainerView = self->_rightContainerView;
  if (!rightContainerView)
  {
    v4 = objc_alloc_init(AVMobileGlassContainerView);
    v5 = self->_rightContainerView;
    self->_rightContainerView = v4;

    [(AVMobileGlassContainerView *)self->_rightContainerView setAutoresizingMask:0];
    v6 = self->_rightContainerView;
    styleSheet = self->_styleSheet;
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)styleSheet controlsFullscreenInternalSpacing];
    }

    else
    {
      [(AVMobileGlassControlsStyleSheet *)styleSheet controlsInlineInternalSpacing];
    }

    [(AVMobileGlassContainerView *)v6 setSpacing:?];
    [(AVMobileGlassContainerView *)self->_rightContainerView setLayoutMargins:[(AVMobileGlassDisplayModeControlsView *)self _insetsForContainerView]];
    [(AVMobileGlassContainerView *)self->_rightContainerView setInsetsLayoutMarginsFromSafeArea:0];
    [(AVView *)self->_rightContainerView setIgnoresTouches:1];
    [(AVMobileGlassContainerView *)self->_rightContainerView setDelegate:self];
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
    }

    [(AVMobileGlassContainerView *)self->_rightContainerView setMaximumHeight:?];
    [(AVGlassBackedView *)self->_rightContainerView setWantsCapsuleShape:1];
    [(AVMobileGlassDisplayModeControlsView *)self addSubview:self->_rightContainerView];
    rightContainerView = self->_rightContainerView;
  }

  return rightContainerView;
}

- (AVMobileGlassContainerView)leftContainerView
{
  leftContainerView = self->_leftContainerView;
  if (!leftContainerView)
  {
    v4 = objc_alloc_init(AVMobileGlassContainerView);
    v5 = self->_leftContainerView;
    self->_leftContainerView = v4;

    [(AVMobileGlassContainerView *)self->_leftContainerView setAutoresizingMask:0];
    [(AVMobileGlassContainerView *)self->_leftContainerView setLayoutMargins:[(AVMobileGlassDisplayModeControlsView *)self _insetsForContainerView]];
    [(AVMobileGlassContainerView *)self->_leftContainerView setInsetsLayoutMarginsFromSafeArea:0];
    [(AVView *)self->_leftContainerView setIgnoresTouches:1];
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
    }

    [(AVMobileGlassContainerView *)self->_leftContainerView setMaximumHeight:?];
    [(AVGlassBackedView *)self->_leftContainerView setWantsCapsuleShape:1];
    [(AVMobileGlassDisplayModeControlsView *)self addSubview:self->_leftContainerView];
    leftContainerView = self->_leftContainerView;
  }

  return leftContainerView;
}

- (AVRoutePickerView)routePickerView
{
  if ([(AVMobileGlassDisplayModeControlsView *)self includesRoutePickerControl])
  {
    v3 = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AVRoutePickerView)routePickerButton
{
  routePickerButton = self->_routePickerButton;
  if (!routePickerButton)
  {
    v4 = objc_alloc_init(AVRoutePickerView);
    v5 = self->_routePickerButton;
    self->_routePickerButton = v4;

    [(AVRoutePickerView *)self->_routePickerButton setAutoresizingMask:0];
    [(AVRoutePickerView *)self->_routePickerButton setPrioritizesVideoDevices:1];
    v6 = self->_routePickerButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVRoutePickerView *)v6 setTintColor:v7];

    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVRoutePickerControl" forKey:self->_routePickerButton];
    routePickerButton = self->_routePickerButton;
  }

  return routePickerButton;
}

- (AVButton)multiviewButton
{
  multiviewButton = self->_multiviewButton;
  if (!multiviewButton)
  {
    v4 = [AVButton buttonWithAccessibilityIdentifier:@"Multiview Button" isFirstGeneration:0];
    v5 = self->_multiviewButton;
    self->_multiviewButton = v4;

    [(AVButton *)self->_multiviewButton addTarget:self action:sel__multiviewControlWasPressed forControlEvents:64];
    [(AVButton *)self->_multiviewButton setImageName:@"square.grid.2x2"];
    v6 = self->_multiviewButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_multiviewButton setAutoresizingMask:0];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVMultiviewControl" forKey:self->_multiviewButton];
    multiviewButton = self->_multiviewButton;
  }

  return multiviewButton;
}

- (AVButton)pictureInPictureButton
{
  pictureInPictureButton = self->_pictureInPictureButton;
  if (!pictureInPictureButton)
  {
    v4 = [AVButton buttonWithAccessibilityIdentifier:@"PIP Button" isFirstGeneration:0];
    v5 = self->_pictureInPictureButton;
    self->_pictureInPictureButton = v4;

    [(AVButton *)self->_pictureInPictureButton addTarget:self action:sel__pictureInPictureControlWasPressed forControlEvents:64];
    [(AVButton *)self->_pictureInPictureButton setImageName:@"pip.enter"];
    v6 = self->_pictureInPictureButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_pictureInPictureButton setAutoresizingMask:0];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVPictureInPictureControl" forKey:self->_pictureInPictureButton];
    pictureInPictureButton = self->_pictureInPictureButton;
  }

  return pictureInPictureButton;
}

- (AVButton)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [AVButton buttonWithAccessibilityIdentifier:@"Close Button" isFirstGeneration:0];
    v5 = self->_doneButton;
    self->_doneButton = v4;

    [(AVButton *)self->_doneButton addTarget:self action:sel__doneButtonWasPressed forControlEvents:64];
    [(AVButton *)self->_doneButton setImageName:@"xmark"];
    v6 = self->_doneButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_doneButton setAutoresizingMask:0];
    v8 = self->_doneButton;
    v9 = [(AVMobileGlassControlsStyleSheet *)self->_styleSheet buttonFont];
    [(AVButton *)v8 setFullScreenFont:v9];

    [(AVButton *)self->_doneButton setHasFullScreenAppearance:1];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVDoneControl" forKey:self->_doneButton];
    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (AVButton)fullScreenButton
{
  fullScreenButton = self->_fullScreenButton;
  if (!fullScreenButton)
  {
    v4 = [AVButton buttonWithAccessibilityIdentifier:@"Fullscreen Button" isFirstGeneration:0];
    v5 = self->_fullScreenButton;
    self->_fullScreenButton = v4;

    [(AVButton *)self->_fullScreenButton addTarget:self action:sel__fullScreenButtonWasPressed forControlEvents:64];
    [(AVButton *)self->_fullScreenButton setImageName:@"arrow.up.left.and.arrow.down.right"];
    v6 = self->_fullScreenButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_fullScreenButton setAutoresizingMask:0];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVFullScreenControl" forKey:self->_fullScreenButton];
    fullScreenButton = self->_fullScreenButton;
  }

  return fullScreenButton;
}

- (AVMobileGlassDisplayModeControlsView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AVMobileGlassDisplayModeControlsView;
  v6 = [(AVGlassBackedView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v7->_includesPictureInPictureControl = 0;
    v7->_includesEnterFullscreenControl = 1;
    v7->_includesExitFullscreenControl = 1;
    v7->_includesRoutePickerControl = 0;
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
    viewToIdentifierMap = v7->_viewToIdentifierMap;
    v7->_viewToIdentifierMap = v8;

    [(AVMobileGlassDisplayModeControlsView *)v7 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v10 = [(AVMobileGlassDisplayModeControlsView *)v7 traitCollection];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      [(AVMobileGlassDisplayModeControlsView *)v7 setInsetsLayoutMarginsFromSafeArea:1];
      [(AVMobileGlassDisplayModeControlsView *)v7 _setSafeAreaCornerAdaptation:3];
    }

    else
    {
      [(AVMobileGlassDisplayModeControlsView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
    }

    [(AVView *)v7 setIgnoresTouches:1];
  }

  return v7;
}

@end