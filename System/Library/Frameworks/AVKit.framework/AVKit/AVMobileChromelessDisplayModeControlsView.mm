@interface AVMobileChromelessDisplayModeControlsView
- (AVButton)fullScreenButton;
- (AVButton)multiviewButton;
- (AVButton)pictureInPictureButton;
- (AVMobileChromelessContainerView)containerView;
- (AVMobileChromelessDisplayModeControlsView)initWithStyleSheet:(id)a3;
- (AVMobileChromelessDisplayModeControlsViewDelegate)delegate;
- (AVRoutePickerView)routePickerButton;
- (AVRoutePickerView)routePickerView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)menuForMenuButton:(id)a3;
- (void)_updateFullscreenControlIcon;
- (void)_updateItemViewsIfNeeded;
- (void)containerView:(id)a3 layoutWithHiddenViews:(id)a4;
- (void)didMoveToWindow;
- (void)fullScreenButtonWasPressed;
- (void)layoutSubviews;
- (void)menuButtonDidHideMenu:(id)a3;
- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4;
- (void)multiviewControlWasPressed;
- (void)pictureInPictureControlWasPressed;
- (void)setCustomActions:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFullscreenIcon:(unint64_t)a3;
- (void)setIncludesFullscreenControl:(BOOL)a3;
- (void)setIncludesMultiviewControl:(BOOL)a3;
- (void)setIncludesPictureInPictureControl:(BOOL)a3;
- (void)setIncludesRoutePickerControl:(BOOL)a3;
- (void)setRoutingConfiguration:(id)a3;
- (void)setStyleSheet:(id)a3;
@end

@implementation AVMobileChromelessDisplayModeControlsView

- (AVMobileChromelessDisplayModeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)menuButtonDidHideMenu:(id)a3
{
  v4 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [v6 displayModeControlsViewDidDismissContextMenu:self];
  }
}

- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4
{
  v5 = [(AVMobileChromelessDisplayModeControlsView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [v7 displayModeControlsViewWillPresentContextMenu:self];
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

- (void)containerView:(id)a3 layoutWithHiddenViews:(id)a4
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
  v14[2] = __81__AVMobileChromelessDisplayModeControlsView_containerView_layoutWithHiddenViews___block_invoke;
  v14[3] = &unk_1E7209FB0;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __81__AVMobileChromelessDisplayModeControlsView_containerView_layoutWithHiddenViews___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 displayModeControlsView:*(a1 + 32) layoutWithHiddenIdentifiers:*(a1 + 40)];
  }
}

- (void)fullScreenButtonWasPressed
{
  v3 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [v5 displayModeControlsViewFullscreenButtonWasPressed:self];
  }
}

- (void)multiviewControlWasPressed
{
  v3 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [v5 displayModeControlsViewMultiviewButtonWasPressed:self];
  }
}

- (void)pictureInPictureControlWasPressed
{
  v3 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [v5 displayModeControlsViewPictureInPictureButtonWasPressed:self];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVMobileChromelessDisplayModeControlsView;
  [(AVView *)&v8 layoutSubviews];
  v3 = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [(AVMobileChromelessDisplayModeControlsView *)self bounds];
  [v3 avkit_setFrame:-[AVMobileChromelessDisplayModeControlsView effectiveUserInterfaceLayoutDirection](self inLayoutDirection:{"effectiveUserInterfaceLayoutDirection"), v4, v5, v6, v7}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didMoveToWindow
{
  [(AVMobileChromelessDisplayModeControlsView *)self _updateFullscreenControlIcon];

  [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
}

- (void)_updateFullscreenControlIcon
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result[69];
  if (!v2)
  {
    v3 = AVMobileAccessibilityIdentifierCloseButton;
    v4 = &AVMobileImageNameDone;
    goto LABEL_6;
  }

  if (v2 == 1)
  {
    v3 = AVMobileAccessibilityIdentifierFullScreenButton;
    v4 = AVMobileImageNameEnterFullScreen;
LABEL_6:
    v5 = [result fullScreenButton];
    [v5 setImageName:*v4];

    v6 = [v1 fullScreenButton];
    [v6 setAccessibilityIdentifier:*v3];
  }

  return [v1 setNeedsLayout];
}

- (void)_updateItemViewsIfNeeded
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [a1 window];

  if (!v2)
  {
    return;
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v1 includesFullscreenControl])
  {
    v3 = [v1 fullScreenButton];
    [v39 addObject:v3];
  }

  if ([v1 includesPictureInPictureControl])
  {
    v4 = [v1 pictureInPictureButton];
    [v39 addObject:v4];
  }

  v5 = +[AVKitGlobalSettings shared];
  if (![v5 experienceControllerEnabled])
  {
    goto LABEL_10;
  }

  v6 = [v1 includesMultiviewControl];

  if (v6)
  {
    v5 = [v1 multiviewButton];
    [v39 addObject:v5];
LABEL_10:
  }

  if ([v1 includesRoutePickerControl])
  {
    v7 = [v1 routePickerButton];
    [v39 addObject:v7];
  }

  v8 = [v1 customActions];

  if (v8)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [v1 customActions];
    v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      v12 = *MEMORY[0x1E69DDDC8];
      v13 = *MEMORY[0x1E69DB978];
      v14 = 0x1E69DB000uLL;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
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
            [v20 setDelegate:v1];
          }

          else
          {
            v20 = [AVButton buttonWithAccessibilityIdentifier:v18 accessibilityLabel:v19 isFirstGeneration:0];

            [v20 addAction:v16 forControlEvents:64];
            [v20 setShowsMenuAsPrimaryAction:0];
          }

          [v20 setAutoresizingMask:0];
          v22 = [*(v14 + 2168) avkit_nonScalingFontWithTextStyle:v12 weight:v13];
          [v20 setInlineFont:v22];
          v23 = [v16 tintColor];
          if (v23)
          {
            [v20 setTintColor:v23];
          }

          else
          {
            [MEMORY[0x1E69DC888] whiteColor];
            v40 = v22;
            v24 = v10;
            v25 = v12;
            v26 = v11;
            v27 = v1;
            v29 = v28 = v14;
            [v20 setTintColor:v29];

            v14 = v28;
            v1 = v27;
            v11 = v26;
            v12 = v25;
            v10 = v24;
            v22 = v40;
          }

          v30 = [v16 image];

          if (v30)
          {
            v31 = [v16 image];
            [v20 setImage:v31 forState:0];
          }

          else
          {
            v31 = [v16 title];
            [v20 setTitle:v31 forState:0];
          }

          v32 = [v16 accessibilityLabel];
          [v20 setAccessibilityLabel:v32];

          v33 = [v16 accessibilityHint];
          [v20 setAccessibilityHint:v33];

          if (v20)
          {
            [v39 addObject:v20];
            v34 = v1[60];
            v35 = [v16 identifier];
            [v34 setObject:v35 forKey:v20];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v10);
    }
  }

  v36 = [v1 containerView];
  [v36 setItemViews:v39];

  [v1 invalidateIntrinsicContentSize];
  v37 = [v1 superview];
  [v37 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v1];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
  [v5 setDelegate:v4];
}

- (void)setRoutingConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
  [v5 setRoutingConfiguration:v4];
}

- (void)setIncludesRoutePickerControl:(BOOL)a3
{
  if (self->_includesRoutePickerControl != a3)
  {
    self->_includesRoutePickerControl = a3;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesMultiviewControl:(BOOL)a3
{
  if (self->_includesMultiviewControl != a3)
  {
    self->_includesMultiviewControl = a3;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesPictureInPictureControl:(BOOL)a3
{
  if (self->_includesPictureInPictureControl != a3)
  {
    self->_includesPictureInPictureControl = a3;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesFullscreenControl:(BOOL)a3
{
  if (self->_includesFullscreenControl != a3)
  {
    self->_includesFullscreenControl = a3;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setFullscreenIcon:(unint64_t)a3
{
  if (self->_fullscreenIcon != a3)
  {
    self->_fullscreenIcon = a3;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateFullscreenControlIcon];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileChromelessDisplayModeControlsView *)self setNeedsLayout];
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

    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (AVMobileChromelessContainerView)containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = objc_alloc_init(AVMobileChromelessContainerView);
    v5 = self->_containerView;
    self->_containerView = v4;

    [(AVMobileChromelessContainerView *)self->_containerView setSpacing:26.0];
    [(AVMobileChromelessContainerView *)self->_containerView setDelegate:self];
    [(AVMobileChromelessContainerView *)self->_containerView setAutoresizingMask:0];
    [(AVMobileChromelessDisplayModeControlsView *)self addSubview:self->_containerView];
    containerView = self->_containerView;
  }

  return containerView;
}

- (AVRoutePickerView)routePickerView
{
  if ([(AVMobileChromelessDisplayModeControlsView *)self includesRoutePickerControl])
  {
    v3 = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
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

    [(AVButton *)self->_multiviewButton addTarget:self action:sel_multiviewControlWasPressed forControlEvents:64];
    [(AVButton *)self->_multiviewButton setImageName:@"square.grid.2x2"];
    v6 = self->_multiviewButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_multiviewButton setAutoresizingMask:0];
    v8 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB978]];
    [(AVButton *)self->_multiviewButton setInlineFont:v8];
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

    [(AVButton *)self->_pictureInPictureButton addTarget:self action:sel_pictureInPictureControlWasPressed forControlEvents:64];
    [(AVButton *)self->_pictureInPictureButton setImageName:@"pip.enter"];
    v6 = self->_pictureInPictureButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_pictureInPictureButton setAutoresizingMask:0];
    v8 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB978]];
    [(AVButton *)self->_pictureInPictureButton setInlineFont:v8];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVPictureInPictureControl" forKey:self->_pictureInPictureButton];

    pictureInPictureButton = self->_pictureInPictureButton;
  }

  return pictureInPictureButton;
}

- (AVButton)fullScreenButton
{
  fullScreenButton = self->_fullScreenButton;
  if (!fullScreenButton)
  {
    v4 = [AVButton buttonWithAccessibilityIdentifier:@"Fullscreen Button" isFirstGeneration:0];
    v5 = self->_fullScreenButton;
    self->_fullScreenButton = v4;

    [(AVButton *)self->_fullScreenButton addTarget:self action:sel_fullScreenButtonWasPressed forControlEvents:64];
    [(AVButton *)self->_fullScreenButton setImageName:@"xmark"];
    v6 = self->_fullScreenButton;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:v7];

    [(AVButton *)self->_fullScreenButton setAutoresizingMask:0];
    v8 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB978]];
    [(AVButton *)self->_fullScreenButton setInlineFont:v8];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVFullScreenControl" forKey:self->_fullScreenButton];

    fullScreenButton = self->_fullScreenButton;
  }

  return fullScreenButton;
}

- (AVMobileChromelessDisplayModeControlsView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessDisplayModeControlsView;
  v6 = [(AVView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v7->_includesPictureInPictureControl = 0;
    v7->_includesFullscreenControl = 1;
    v7->_includesRoutePickerControl = 0;
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
    viewToIdentifierMap = v7->_viewToIdentifierMap;
    v7->_viewToIdentifierMap = v8;

    [(AVView *)v7 setIgnoresTouches:1];
  }

  return v7;
}

@end