@interface AVMobileGlassDisplayModeControlsView
- (AVButton)doneButton;
- (AVButton)fullScreenButton;
- (AVButton)multiviewButton;
- (AVButton)pictureInPictureButton;
- (AVMobileGlassContainerView)leftContainerView;
- (AVMobileGlassContainerView)rightContainerView;
- (AVMobileGlassDisplayModeControlsView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassDisplayModeControlsViewDelegate)delegate;
- (AVRoutePickerView)routePickerButton;
- (AVRoutePickerView)routePickerView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_effectiveWindowControlInsets;
- (double)_insetsForContainerView;
- (id)menuForMenuButton:(id)button;
- (void)_doneButtonWasPressed;
- (void)_fullScreenButtonWasPressed;
- (void)_multiviewControlWasPressed;
- (void)_pictureInPictureControlWasPressed;
- (void)_updateContainerView:(uint64_t)view;
- (void)_updateItemViewsIfNeeded;
- (void)containerView:(id)view didUpdateHiddenViews:(id)views;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)menuButtonWillHideMenu:(id)menu animator:(id)animator;
- (void)menuButtonWillShowMenu:(id)menu animator:(id)animator;
- (void)setCustomActions:(id)actions;
- (void)setDelegate:(id)delegate;
- (void)setFullscreen:(BOOL)fullscreen;
- (void)setIncludesEnterFullscreenControl:(BOOL)control;
- (void)setIncludesExitFullscreenControl:(BOOL)control;
- (void)setIncludesMultiviewControl:(BOOL)control;
- (void)setIncludesPictureInPictureControl:(BOOL)control;
- (void)setIncludesRoutePickerControl:(BOOL)control;
- (void)setRoutingConfiguration:(id)configuration;
- (void)setStyleSheet:(id)sheet;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassDisplayModeControlsView

- (AVMobileGlassDisplayModeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)menuButtonWillHideMenu:(id)menu animator:(id)animator
{
  animatorCopy = animator;
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewWillDismissContextMenu:self animator:animatorCopy];
  }
}

- (void)menuButtonWillShowMenu:(id)menu animator:(id)animator
{
  animatorCopy = animator;
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewWillPresentContextMenu:self animator:animatorCopy];
  }
}

- (id)menuForMenuButton:(id)button
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(NSMapTable *)self->_viewToIdentifierMap objectForKey:button];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_customActions;
  contextMenu = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (contextMenu)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != contextMenu; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [v4 isEqualToString:identifier];

        if (v11)
        {
          contextMenu = [v9 contextMenu];
          goto LABEL_11;
        }
      }

      contextMenu = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (contextMenu)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return contextMenu;
}

- (void)containerView:(id)view didUpdateHiddenViews:(id)views
{
  v21 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = viewsCopy;
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
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewDoneButtonWasPressed:self];
  }
}

- (void)_fullScreenButtonWasPressed
{
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewFullscreenButtonWasPressed:self];
  }
}

- (void)_multiviewControlWasPressed
{
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewMultiviewButtonWasPressed:self];
  }
}

- (void)_pictureInPictureControlWasPressed
{
  delegate = [(AVMobileGlassDisplayModeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate displayModeControlsViewPictureInPictureButtonWasPressed:self];
  }
}

- (void)updateBackgroundMaterial
{
  backgroundMaterialStyle = [(AVGlassBackedView *)self backgroundMaterialStyle];
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_leftContainerView setBackgroundMaterialStyle:backgroundMaterialStyle];
  [(AVGlassBackedView *)self->_rightContainerView setBackgroundMaterialStyle:backgroundMaterialStyle];
  [(AVGlassBackedView *)self->_leftContainerView setBackgroundMaterialized:backgroundMaterialized];
  rightContainerView = self->_rightContainerView;

  [(AVGlassBackedView *)rightContainerView setBackgroundMaterialized:backgroundMaterialized];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = AVMobileGlassDisplayModeControlsView;
  [(AVView *)&v33 layoutSubviews];
  [(AVMobileGlassDisplayModeControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  effectiveUserInterfaceLayoutDirection = [(AVMobileGlassDisplayModeControlsView *)self effectiveUserInterfaceLayoutDirection];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (v4 == *MEMORY[0x1E695F060] && v6 == v9)
  {
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    [(UIView *)self->_leftContainerView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:*MEMORY[0x1E695F058], v23, v24, v25];
    rightContainerView = self->_rightContainerView;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v25;
  }

  else
  {
    _effectiveWindowControlInsets = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
    v13 = v12;
    [(AVMobileGlassDisplayModeControlsView *)self _updateContainerView:?];
    [(AVMobileGlassDisplayModeControlsView *)self _updateContainerView:?];
    v14 = *(MEMORY[0x1E695F058] + 8);
    if (effectiveUserInterfaceLayoutDirection)
    {
      _effectiveWindowControlInsets = v13;
    }

    [(AVMobileGlassContainerView *)self->_leftContainerView sizeThatFits:v4, v6];
    v16 = v15;
    v18 = v17;
    [(UIView *)self->_leftContainerView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:_effectiveWindowControlInsets, v14, v15, v17];
    if (v16 == v8 && v18 == v9)
    {
      v21 = 0.0;
    }

    else
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet standardPaddingFullScreen];
      v21 = _effectiveWindowControlInsets + v16 + v20;
      v4 = v4 - v21;
    }

    [(AVMobileGlassContainerView *)self->_rightContainerView sizeThatFits:v4, v6];
    v29 = v31;
    v30 = v32;
    rightContainerView = self->_rightContainerView;
    v28 = 0.0;
    v27 = v21;
  }

  [(UIView *)rightContainerView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v27, v28, v29, v30];
}

- (double)_effectiveWindowControlInsets
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    window = [self window];
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v7 = [MEMORY[0x1E69DD270] safeAreaLayoutRegionWithCornerAdaptation:1];
      [window edgeInsetsForLayoutRegion:v7];
      v6 = v8;
    }

    [self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    window2 = [self window];
    [self convertRect:window2 toView:{v10, v12, v14, v16}];
    v19 = v18;

    if (v19 < v6 && vabdd_f64(v19, v6) >= 2.22044605e-16)
    {
      return v6;
    }
  }

  return v2;
}

- (void)_updateContainerView:(uint64_t)view
{
  v3 = a2;
  if (view)
  {
    v5 = v3;
    v4 = *(view + 584);
    if (*(view + 512) == 1)
    {
      [v4 controlsFullscreenInternalSpacing];
    }

    else
    {
      [v4 controlsInlineInternalSpacing];
    }

    [v5 setSpacing:?];
    [v5 setLayoutMargins:-[AVMobileGlassDisplayModeControlsView _insetsForContainerView](view)];
    [*(view + 584) controlsPlatterInlineHeight];
    if (*(view + 512) == 1)
    {
      [*(view + 584) controlsPlatterFullscreenHeight];
    }

    [v5 setMaximumHeight:?];
    v3 = v5;
  }
}

- (double)_insetsForContainerView
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 584) controlsPlatterInlineEdgeInsets];
  if (*(self + 512) == 1)
  {
    [*(self + 584) controlsPlatterFullscreenEdgeInsets];
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (fits.width != *MEMORY[0x1E695F060] || fits.height != v4)
  {
    height = fits.height;
    width = fits.width;
    _effectiveWindowControlInsets = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
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

    v3 = _effectiveWindowControlInsets + v11 + v3 + v18;
  }

  v23 = v3;
  v24 = v4;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)intrinsicContentSize
{
  _effectiveWindowControlInsets = [(AVMobileGlassDisplayModeControlsView *)self _effectiveWindowControlInsets];
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

  v21 = _effectiveWindowControlInsets + v5 + v7 + v15;
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
  if (self)
  {
    window = [self window];

    if (window)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([self includesExitFullscreenControl] && *(self + 512) == 1)
      {
        doneButton = [self doneButton];
        [v3 addObject:doneButton];
      }

      if ([self includesEnterFullscreenControl] && (*(self + 512) & 1) == 0)
      {
        fullScreenButton = [self fullScreenButton];
        [v47 addObject:fullScreenButton];
      }

      if ([self includesMultiviewControl])
      {
        multiviewButton = [self multiviewButton];
        [v47 addObject:multiviewButton];
      }

      if ([self includesPictureInPictureControl])
      {
        pictureInPictureButton = [self pictureInPictureButton];
        [v47 addObject:pictureInPictureButton];
      }

      v44 = v3;
      if ([self includesRoutePickerControl])
      {
        routePickerButton = [self routePickerButton];
        [v47 addObject:routePickerButton];
      }

      customActions = [self customActions];

      if (customActions)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = [self customActions];
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
              contextMenu = [v16 contextMenu];

              accessibilityIdentifier = [v16 accessibilityIdentifier];
              accessibilityLabel = [v16 accessibilityLabel];
              if (contextMenu)
              {
                v20 = [AVMenuButton buttonWithAccessibilityIdentifier:accessibilityIdentifier accessibilityLabel:accessibilityLabel isFirstGeneration:0];

                contextMenu2 = [v16 contextMenu];
                [v20 setMenu:contextMenu2];

                [v20 setShowsMenuAsPrimaryAction:1];
                [v20 setAppliesTransformToImageViewWhenHighlighted:1];
                [v20 setDelegate:self];
              }

              else
              {
                v20 = [AVButton buttonWithAccessibilityIdentifier:accessibilityIdentifier accessibilityLabel:accessibilityLabel isFirstGeneration:0];

                [v20 addAction:v16 forControlEvents:64];
                [v20 setShowsMenuAsPrimaryAction:0];
              }

              [v20 setAutoresizingMask:0];
              v22 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v13 weight:v14];
              [v20 setInlineFont:v22];
              tintColor = [v16 tintColor];
              if (tintColor)
              {
                [v20 setTintColor:tintColor];
              }

              else
              {
                whiteColor = [MEMORY[0x1E69DC888] whiteColor];
                [v20 setTintColor:whiteColor];
              }

              image = [v16 image];

              if (image)
              {
                image2 = [v16 image];
                [v20 setImage:image2 forState:0];
              }

              else
              {
                image2 = [v16 title];
                [v20 setTitle:image2 forState:0];
              }

              accessibilityLabel2 = [v16 accessibilityLabel];
              [v20 setAccessibilityLabel:accessibilityLabel2];

              accessibilityHint = [v16 accessibilityHint];
              [v20 setAccessibilityHint:accessibilityHint];

              if (v20)
              {
                [v47 addObject:v20];
                v29 = *(self + 504);
                identifier = [v16 identifier];
                [v29 setObject:identifier forKey:v20];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v11);
        }
      }

      obja = [self leftContainerView];
      rightContainerView = [self rightContainerView];
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
              v39 = *(self + 584);
              v40 = v38;
              buttonFont = [v39 buttonFont];
              [v40 setFullScreenFont:buttonFont];

              inlineButtonFont = [*(self + 584) inlineButtonFont];
              [v40 setInlineFont:inlineButtonFont];

              [v40 setHasFullScreenAppearance:*(self + 512)];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v35);
      }

      [obja setItemViews:v44];
      [rightContainerView setItemViews:v33];
      [self setNeedsLayout];
      [self invalidateIntrinsicContentSize];
      superview = [self superview];
      [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  routePickerButton = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  [routePickerButton setDelegate:delegateCopy];
}

- (void)setRoutingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  routePickerButton = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  [routePickerButton setRoutingConfiguration:configurationCopy];
}

- (void)setIncludesRoutePickerControl:(BOOL)control
{
  if (self->_includesRoutePickerControl != control)
  {
    self->_includesRoutePickerControl = control;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesMultiviewControl:(BOOL)control
{
  if (self->_includesMultiviewControl != control)
  {
    self->_includesMultiviewControl = control;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesPictureInPictureControl:(BOOL)control
{
  if (self->_includesPictureInPictureControl != control)
  {
    self->_includesPictureInPictureControl = control;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesExitFullscreenControl:(BOOL)control
{
  if (self->_includesExitFullscreenControl != control)
  {
    self->_includesExitFullscreenControl = control;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesEnterFullscreenControl:(BOOL)control
{
  if (self->_includesEnterFullscreenControl != control)
  {
    self->_includesEnterFullscreenControl = control;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setFullscreen:(BOOL)fullscreen
{
  if (self->_fullscreen != fullscreen)
  {
    self->_fullscreen = fullscreen;
    [(AVMobileGlassDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileGlassDisplayModeControlsView *)self setNeedsLayout];
    sheetCopy = v6;
  }
}

- (void)setCustomActions:(id)actions
{
  actionsCopy = actions;
  if (([actionsCopy isEqualToArray:self->_customActions] & 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:actionsCopy copyItems:1];
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
    routePickerButton = [(AVMobileGlassDisplayModeControlsView *)self routePickerButton];
  }

  else
  {
    routePickerButton = 0;
  }

  return routePickerButton;
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVRoutePickerView *)v6 setTintColor:whiteColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

    [(AVButton *)self->_doneButton setAutoresizingMask:0];
    v8 = self->_doneButton;
    buttonFont = [(AVMobileGlassControlsStyleSheet *)self->_styleSheet buttonFont];
    [(AVButton *)v8 setFullScreenFont:buttonFont];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

    [(AVButton *)self->_fullScreenButton setAutoresizingMask:0];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVFullScreenControl" forKey:self->_fullScreenButton];
    fullScreenButton = self->_fullScreenButton;
  }

  return fullScreenButton;
}

- (AVMobileGlassDisplayModeControlsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v13.receiver = self;
  v13.super_class = AVMobileGlassDisplayModeControlsView;
  v6 = [(AVGlassBackedView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    v7->_includesPictureInPictureControl = 0;
    v7->_includesEnterFullscreenControl = 1;
    v7->_includesExitFullscreenControl = 1;
    v7->_includesRoutePickerControl = 0;
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
    viewToIdentifierMap = v7->_viewToIdentifierMap;
    v7->_viewToIdentifierMap = v8;

    [(AVMobileGlassDisplayModeControlsView *)v7 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    traitCollection = [(AVMobileGlassDisplayModeControlsView *)v7 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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