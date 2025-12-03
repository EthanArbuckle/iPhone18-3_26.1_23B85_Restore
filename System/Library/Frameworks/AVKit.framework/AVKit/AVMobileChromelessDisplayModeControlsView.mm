@interface AVMobileChromelessDisplayModeControlsView
- (AVButton)fullScreenButton;
- (AVButton)multiviewButton;
- (AVButton)pictureInPictureButton;
- (AVMobileChromelessContainerView)containerView;
- (AVMobileChromelessDisplayModeControlsView)initWithStyleSheet:(id)sheet;
- (AVMobileChromelessDisplayModeControlsViewDelegate)delegate;
- (AVRoutePickerView)routePickerButton;
- (AVRoutePickerView)routePickerView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)menuForMenuButton:(id)button;
- (void)_updateFullscreenControlIcon;
- (void)_updateItemViewsIfNeeded;
- (void)containerView:(id)view layoutWithHiddenViews:(id)views;
- (void)didMoveToWindow;
- (void)fullScreenButtonWasPressed;
- (void)layoutSubviews;
- (void)menuButtonDidHideMenu:(id)menu;
- (void)menuButtonWillShowMenu:(id)menu animator:(id)animator;
- (void)multiviewControlWasPressed;
- (void)pictureInPictureControlWasPressed;
- (void)setCustomActions:(id)actions;
- (void)setDelegate:(id)delegate;
- (void)setFullscreenIcon:(unint64_t)icon;
- (void)setIncludesFullscreenControl:(BOOL)control;
- (void)setIncludesMultiviewControl:(BOOL)control;
- (void)setIncludesPictureInPictureControl:(BOOL)control;
- (void)setIncludesRoutePickerControl:(BOOL)control;
- (void)setRoutingConfiguration:(id)configuration;
- (void)setStyleSheet:(id)sheet;
@end

@implementation AVMobileChromelessDisplayModeControlsView

- (AVMobileChromelessDisplayModeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)menuButtonDidHideMenu:(id)menu
{
  delegate = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [delegate2 displayModeControlsViewDidDismissContextMenu:self];
  }
}

- (void)menuButtonWillShowMenu:(id)menu animator:(id)animator
{
  v5 = [(AVMobileChromelessDisplayModeControlsView *)self delegate:menu];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [delegate displayModeControlsViewWillPresentContextMenu:self];
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

- (void)containerView:(id)view layoutWithHiddenViews:(id)views
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
  delegate = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [delegate2 displayModeControlsViewFullscreenButtonWasPressed:self];
  }
}

- (void)multiviewControlWasPressed
{
  delegate = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [delegate2 displayModeControlsViewMultiviewButtonWasPressed:self];
  }
}

- (void)pictureInPictureControlWasPressed
{
  delegate = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessDisplayModeControlsView *)self delegate];
    [delegate2 displayModeControlsViewPictureInPictureButtonWasPressed:self];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVMobileChromelessDisplayModeControlsView;
  [(AVView *)&v8 layoutSubviews];
  containerView = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [(AVMobileChromelessDisplayModeControlsView *)self bounds];
  [containerView avkit_setFrame:-[AVMobileChromelessDisplayModeControlsView effectiveUserInterfaceLayoutDirection](self inLayoutDirection:{"effectiveUserInterfaceLayoutDirection"), v4, v5, v6, v7}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  containerView = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [containerView sizeThatFits:{width, height}];
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
  containerView = [(AVMobileChromelessDisplayModeControlsView *)self containerView];
  [containerView intrinsicContentSize];
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
    fullScreenButton = [result fullScreenButton];
    [fullScreenButton setImageName:*v4];

    fullScreenButton2 = [v1 fullScreenButton];
    [fullScreenButton2 setAccessibilityIdentifier:*v3];
  }

  return [v1 setNeedsLayout];
}

- (void)_updateItemViewsIfNeeded
{
  v46 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  window = [self window];

  if (!window)
  {
    return;
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([selfCopy includesFullscreenControl])
  {
    fullScreenButton = [selfCopy fullScreenButton];
    [v39 addObject:fullScreenButton];
  }

  if ([selfCopy includesPictureInPictureControl])
  {
    pictureInPictureButton = [selfCopy pictureInPictureButton];
    [v39 addObject:pictureInPictureButton];
  }

  multiviewButton = +[AVKitGlobalSettings shared];
  if (![multiviewButton experienceControllerEnabled])
  {
    goto LABEL_10;
  }

  includesMultiviewControl = [selfCopy includesMultiviewControl];

  if (includesMultiviewControl)
  {
    multiviewButton = [selfCopy multiviewButton];
    [v39 addObject:multiviewButton];
LABEL_10:
  }

  if ([selfCopy includesRoutePickerControl])
  {
    routePickerButton = [selfCopy routePickerButton];
    [v39 addObject:routePickerButton];
  }

  customActions = [selfCopy customActions];

  if (customActions)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [selfCopy customActions];
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
            [v20 setDelegate:selfCopy];
          }

          else
          {
            v20 = [AVButton buttonWithAccessibilityIdentifier:accessibilityIdentifier accessibilityLabel:accessibilityLabel isFirstGeneration:0];

            [v20 addAction:v16 forControlEvents:64];
            [v20 setShowsMenuAsPrimaryAction:0];
          }

          [v20 setAutoresizingMask:0];
          v22 = [*(v14 + 2168) avkit_nonScalingFontWithTextStyle:v12 weight:v13];
          [v20 setInlineFont:v22];
          tintColor = [v16 tintColor];
          if (tintColor)
          {
            [v20 setTintColor:tintColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] whiteColor];
            v40 = v22;
            v24 = v10;
            v25 = v12;
            v26 = v11;
            v27 = selfCopy;
            v29 = v28 = v14;
            [v20 setTintColor:v29];

            v14 = v28;
            selfCopy = v27;
            v11 = v26;
            v12 = v25;
            v10 = v24;
            v22 = v40;
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
            [v39 addObject:v20];
            v34 = selfCopy[60];
            identifier = [v16 identifier];
            [v34 setObject:identifier forKey:v20];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v10);
    }
  }

  containerView = [selfCopy containerView];
  [containerView setItemViews:v39];

  [selfCopy invalidateIntrinsicContentSize];
  superview = [selfCopy superview];
  [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:selfCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  routePickerButton = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
  [routePickerButton setDelegate:delegateCopy];
}

- (void)setRoutingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  routePickerButton = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
  [routePickerButton setRoutingConfiguration:configurationCopy];
}

- (void)setIncludesRoutePickerControl:(BOOL)control
{
  if (self->_includesRoutePickerControl != control)
  {
    self->_includesRoutePickerControl = control;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesMultiviewControl:(BOOL)control
{
  if (self->_includesMultiviewControl != control)
  {
    self->_includesMultiviewControl = control;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesPictureInPictureControl:(BOOL)control
{
  if (self->_includesPictureInPictureControl != control)
  {
    self->_includesPictureInPictureControl = control;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setIncludesFullscreenControl:(BOOL)control
{
  if (self->_includesFullscreenControl != control)
  {
    self->_includesFullscreenControl = control;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateItemViewsIfNeeded];
  }
}

- (void)setFullscreenIcon:(unint64_t)icon
{
  if (self->_fullscreenIcon != icon)
  {
    self->_fullscreenIcon = icon;
    [(AVMobileChromelessDisplayModeControlsView *)self _updateFullscreenControlIcon];
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileChromelessDisplayModeControlsView *)self setNeedsLayout];
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
    routePickerButton = [(AVMobileChromelessDisplayModeControlsView *)self routePickerButton];
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

    [(AVButton *)self->_multiviewButton addTarget:self action:sel_multiviewControlWasPressed forControlEvents:64];
    [(AVButton *)self->_multiviewButton setImageName:@"square.grid.2x2"];
    v6 = self->_multiviewButton;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v6 setTintColor:whiteColor];

    [(AVButton *)self->_fullScreenButton setAutoresizingMask:0];
    v8 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB978]];
    [(AVButton *)self->_fullScreenButton setInlineFont:v8];
    [(NSMapTable *)self->_viewToIdentifierMap setObject:@"AVFullScreenControl" forKey:self->_fullScreenButton];

    fullScreenButton = self->_fullScreenButton;
  }

  return fullScreenButton;
}

- (AVMobileChromelessDisplayModeControlsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessDisplayModeControlsView;
  v6 = [(AVView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
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