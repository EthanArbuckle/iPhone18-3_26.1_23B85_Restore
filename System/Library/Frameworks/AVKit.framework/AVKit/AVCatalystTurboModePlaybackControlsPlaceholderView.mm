@interface AVCatalystTurboModePlaybackControlsPlaceholderView
- (AVButton)prominentPlayButton;
- (AVCatalystTurboModePlaybackControlsPlaceholderView)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
- (AVVolumeButtonControl)volumeButton;
- (BOOL)hasVisibleControls;
- (CGAffineTransform)overrideTransformForProminentPlayButton;
- (CGRect)_frameForIncludedViewType:(int64_t)type;
- (id)_makeProminentPlayButtonAndContainer;
- (id)_makeVolumeButtonAndContainer;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_makeProminentPlayButtonAndContainerIfNeeded;
- (void)_makeVolumeButtonAndContainerIfNeeded;
- (void)_updateFramesAndHitRectInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setIncludedControlType:(int64_t)type;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button;
- (void)setPlayerController:(id)controller;
- (void)setPreferredUnobscuredArea:(int64_t)area;
- (void)setVolumeButtonMicaPackageStateName:(id)name;
@end

@implementation AVCatalystTurboModePlaybackControlsPlaceholderView

- (AVButton)prominentPlayButton
{
  WeakRetained = objc_loadWeakRetained(&self->_prominentPlayButton);

  return WeakRetained;
}

- (AVVolumeButtonControl)volumeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeButton);

  return WeakRetained;
}

- (CGAffineTransform)overrideTransformForProminentPlayButton
{
  v3 = *&self[10].ty;
  *&retstr->a = *&self[10].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].b;
  return self;
}

- (id)_makeProminentPlayButtonAndContainer
{
  v3 = [AVLayoutView alloc];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:1];
  v4 = [(AVLayoutView *)v3 initWithFrame:?];
  [(AVLayoutView *)v4 setShapeStyle:1];
  v5 = [AVButton buttonWithAccessibilityIdentifier:@"Central Play" isFirstGeneration:1];
  [v5 setImageName:@"play.fill"];
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDD58];
  traitCollection = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self traitCollection];
  v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:traitCollection];
  [v5 setInlineFont:v9];

  [v5 setTintEffectStyle:0];
  [(AVLayoutView *)v4 bounds];
  [v5 setFrame:?];
  [(AVLayoutView *)v4 addSubview:v5];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setProminentPlayButtonContainer:v4];
  [(AVView *)v4 setIgnoresTouches:1];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setProminentPlayButton:v5];
  contentView = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [contentView addSubview:v4];

  prominentPlayButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideTransformForProminentPlayButton];
  [prominentPlayButton setTransform:&v13];

  return v4;
}

- (void)_makeProminentPlayButtonAndContainerIfNeeded
{
  prominentPlayButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];

  if (!prominentPlayButtonContainer)
  {
    _makeProminentPlayButtonAndContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeProminentPlayButtonAndContainer];
    prominentPlayButtonContainer = self->_prominentPlayButtonContainer;
    self->_prominentPlayButtonContainer = _makeProminentPlayButtonAndContainer;

    MEMORY[0x1EEE66BB8](_makeProminentPlayButtonAndContainer, prominentPlayButtonContainer);
  }
}

- (id)_makeVolumeButtonAndContainer
{
  v3 = [AVLayoutView alloc];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:2];
  v4 = [(AVLayoutView *)v3 initWithFrame:?];
  v5 = [AVVolumeButtonControl alloc];
  [(AVLayoutView *)v4 bounds];
  v6 = [(AVVolumeButtonControl *)v5 initWithFrame:?];
  [(AVLayoutView *)v4 addSubview:v6];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setVolumeButtonContainer:v4];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setVolumeButton:v6];
  volumeButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
  volumeButtonMicaPackageStateName = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonMicaPackageStateName];
  [volumeButton setMicaPackageStateName:volumeButtonMicaPackageStateName];

  contentView = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [contentView addSubview:v4];

  return v4;
}

- (void)_makeVolumeButtonAndContainerIfNeeded
{
  volumeButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];

  if (!volumeButtonContainer)
  {
    _makeVolumeButtonAndContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeVolumeButtonAndContainer];
    volumeButtonContainer = self->_volumeButtonContainer;
    self->_volumeButtonContainer = _makeVolumeButtonAndContainer;

    MEMORY[0x1EEE66BB8](_makeVolumeButtonAndContainer, volumeButtonContainer);
  }
}

- (CGRect)_frameForIncludedViewType:(int64_t)type
{
  if (type == 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    styleSheet = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet standardPaddingInline];
    v41 = v40;
    styleSheet2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet2 standardPaddingInline];
    v44 = v43;
    v85.origin.x = v32;
    v85.origin.y = v34;
    v85.size.width = v36;
    v85.size.height = v38;
    v86 = CGRectInset(v85, v41, v44);
    x = v86.origin.x;
    y = v86.origin.y;
    width = v86.size.width;
    height = v86.size.height;

    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v49 = CGRectGetWidth(v87);
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v50 = CGRectGetHeight(v88);
    if (v49 >= v50)
    {
      v49 = v50;
    }

    styleSheet3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet3 maximumProminentPlayButtonDimension];
    v53 = v52;

    if (v49 < v53)
    {
      v53 = v49;
    }

    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = v53;
    v89.size.height = height;
    v54 = CGRectGetHeight(v89);
    styleSheet4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet4 minimumProminentPlayButtonDimension];
    v57 = v56;

    if (v54 < v57)
    {
      v53 = 0.0;
    }

    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = v53;
    v90.size.height = height;
    v58 = CGRectGetWidth(v90);
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    MidX = CGRectGetMidX(v91);
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = v53;
    v92.size.height = v58;
    v60 = MidX - CGRectGetWidth(v92) * 0.5;
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    MidY = CGRectGetMidY(v93);
    v94.origin.x = v60;
    v94.origin.y = y;
    v94.size.width = v53;
    v94.size.height = v58;
    v62 = MidY - CGRectGetHeight(v94) * 0.5;
    prominentPlayButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
    styleSheet10 = prominentPlayButton;
    if (prominentPlayButton)
    {
      [prominentPlayButton transform];
    }

    else
    {
      memset(&v80, 0, sizeof(v80));
    }

    v96.origin.x = v60;
    v96.origin.y = v62;
    v96.size.width = v53;
    v96.size.height = v58;
    CGRectApplyAffineTransform(v96, &v80);
    goto LABEL_31;
  }

  if (type != 2)
  {
    goto LABEL_32;
  }

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  styleSheet5 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [styleSheet5 standardPaddingInline];
  v14 = v13;
  styleSheet6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [styleSheet6 standardPaddingInline];
  v17 = v16;
  v81.origin.x = v5;
  v81.origin.y = v7;
  v81.size.width = v9;
  v81.size.height = v11;
  v82 = CGRectInset(v81, v14, v17);
  v18 = v82.origin.x;
  v19 = v82.origin.y;
  v20 = v82.size.width;
  v21 = v82.size.height;

  v83.origin.x = v18;
  v83.origin.y = v19;
  v83.size.width = v20;
  v83.size.height = v21;
  v22 = CGRectGetWidth(v83);
  styleSheet7 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [styleSheet7 defaultItemInlineSize];
  if (v22 >= v24)
  {
    v84.origin.x = v18;
    v84.origin.y = v19;
    v84.size.width = v20;
    v84.size.height = v21;
    v25 = CGRectGetHeight(v84);
    styleSheet8 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet8 defaultItemInlineSize];
    v28 = v27;

    if (v25 < v28)
    {
      goto LABEL_7;
    }

    styleSheet7 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet7 defaultItemInlineSize];
  }

LABEL_7:
  overrideLayoutMarginsWhenEmbeddedInline = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (overrideLayoutMarginsWhenEmbeddedInline)
  {
    overrideLayoutMarginsWhenEmbeddedInline2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [overrideLayoutMarginsWhenEmbeddedInline2 UIEdgeInsetsValue];
  }

  else
  {
    overrideLayoutMarginsWhenEmbeddedInline2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [overrideLayoutMarginsWhenEmbeddedInline2 standardPaddingInline];
  }

  overrideLayoutMarginsWhenEmbeddedInline3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (overrideLayoutMarginsWhenEmbeddedInline3)
  {
    overrideLayoutMarginsWhenEmbeddedInline4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [overrideLayoutMarginsWhenEmbeddedInline4 UIEdgeInsetsValue];
  }

  else
  {
    overrideLayoutMarginsWhenEmbeddedInline4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [overrideLayoutMarginsWhenEmbeddedInline4 standardPaddingInline];
  }

  overrideLayoutMarginsWhenEmbeddedInline5 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (overrideLayoutMarginsWhenEmbeddedInline5)
  {
    overrideLayoutMarginsWhenEmbeddedInline6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [overrideLayoutMarginsWhenEmbeddedInline6 UIEdgeInsetsValue];
  }

  else
  {
    overrideLayoutMarginsWhenEmbeddedInline6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [overrideLayoutMarginsWhenEmbeddedInline6 standardPaddingInline];
  }

  if ([(AVCatalystTurboModePlaybackControlsPlaceholderView *)self effectiveUserInterfaceLayoutDirection]!= 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    CGRectGetMaxX(v95);
    styleSheet9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet9 defaultItemInlineSize];
  }

  if ([(AVCatalystTurboModePlaybackControlsPlaceholderView *)self preferredUnobscuredArea]== 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    CGRectGetMaxY(v97);
    styleSheet10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [styleSheet10 defaultItemInlineSize];
LABEL_31:
  }

LABEL_32:
  UIPointRoundToViewScale();
  v71 = v70;
  v73 = v72;
  UISizeRoundToViewScale();
  v75 = v74;
  v77 = v76;
  v78 = v71;
  v79 = v73;
  result.size.height = v77;
  result.size.width = v75;
  result.origin.y = v79;
  result.origin.x = v78;
  return result;
}

- (void)_updateFramesAndHitRectInsets
{
  contentView = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
  [contentView setFrame:?];

  prominentPlayButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:1];
  [prominentPlayButtonContainer setFrame:?];

  prominentPlayButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  prominentPlayButtonContainer2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [prominentPlayButtonContainer2 bounds];
  [prominentPlayButton setFrame:?];

  prominentPlayButton2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  prominentPlayButtonContainer3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [prominentPlayButtonContainer3 frame];
  v9 = -CGRectGetMinY(v20);
  prominentPlayButtonContainer4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [prominentPlayButtonContainer4 frame];
  v11 = -CGRectGetMinX(v21);
  prominentPlayButtonContainer5 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [prominentPlayButtonContainer5 frame];
  v13 = -CGRectGetMinY(v22);
  prominentPlayButtonContainer6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [prominentPlayButtonContainer6 frame];
  [prominentPlayButton2 setHitRectInsets:{v9, v11, v13, -CGRectGetMinX(v23)}];

  prominentPlayButton3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  [prominentPlayButton3 setClampsHitRectInsetsWhenContainedInScrollableView:1];

  volumeButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:2];
  [volumeButtonContainer setFrame:?];

  volumeButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
  volumeButtonContainer2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
  [volumeButtonContainer2 bounds];
  [volumeButton setFrame:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(UIView *)self avkit_hitTestControlForPoint:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
    v10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v3 layoutSubviews];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _updateFramesAndHitRectInsets];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v4 setHidden:hidden];
  [(UIView *)self avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)setVolumeButtonMicaPackageStateName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_volumeButtonMicaPackageStateName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    volumeButtonMicaPackageStateName = self->_volumeButtonMicaPackageStateName;
    self->_volumeButtonMicaPackageStateName = v4;

    volumeButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
    [volumeButton setMicaPackageStateName:nameCopy];
  }
}

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline
{
  inlineCopy = inline;
  if (![(NSValue *)self->_overrideLayoutMarginsWhenEmbeddedInline isEqualToValue:?])
  {
    objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, inline);
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button
{
  prominentPlayButton = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  v6 = prominentPlayButton;
  if (prominentPlayButton)
  {
    [prominentPlayButton transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&button->c;
  *&v13.a = *&button->a;
  *&v13.c = v7;
  *&v13.tx = *&button->tx;
  v8 = CGAffineTransformEqualToTransform(&t1, &v13);

  if (!v8)
  {
    v10 = *&button->c;
    v9 = *&button->tx;
    *&self->_overrideTransformForProminentPlayButton.a = *&button->a;
    *&self->_overrideTransformForProminentPlayButton.c = v10;
    *&self->_overrideTransformForProminentPlayButton.tx = v9;
    prominentPlayButton2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
    v12 = *&self->_overrideTransformForProminentPlayButton.c;
    *&t1.a = *&self->_overrideTransformForProminentPlayButton.a;
    *&t1.c = v12;
    *&t1.tx = *&self->_overrideTransformForProminentPlayButton.tx;
    [prominentPlayButton2 setTransform:&t1];

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setIncludedControlType:(int64_t)type
{
  if (self->_includedControlType == type)
  {
    return;
  }

  v14 = v4;
  v15 = v3;
  self->_includedControlType = type;
  switch(type)
  {
    case 0:
      volumeButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      [volumeButtonContainer setHidden:1];

      prominentPlayButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
      v11 = prominentPlayButtonContainer;
      v12 = 1;
      goto LABEL_9;
    case 2:
      prominentPlayButtonContainer2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
      [prominentPlayButtonContainer2 setHidden:1];

      [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeVolumeButtonAndContainerIfNeeded];
      prominentPlayButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      goto LABEL_7;
    case 1:
      volumeButtonContainer2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      [volumeButtonContainer2 setHidden:1];

      [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeProminentPlayButtonAndContainerIfNeeded];
      prominentPlayButtonContainer = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
LABEL_7:
      v11 = prominentPlayButtonContainer;
      v12 = 0;
LABEL_9:
      [prominentPlayButtonContainer setHidden:{v12, v14, v15, v5}];

      break;
  }

  [(UIView *)self avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)setPreferredUnobscuredArea:(int64_t)area
{
  if (self->_preferredUnobscuredArea != area)
  {
    self->_preferredUnobscuredArea = area;
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  v11 = controllerCopy;
  if (self->_playerController != controllerCopy)
  {
    objc_storeStrong(&self->_playerController, controller);
    observationController = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
    [observationController stopAllObservation];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        observationController2 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
        v8 = [observationController2 startObserving:v11 keyPath:@"timeControlStatus" includeInitialValue:1 observationHandler:&__block_literal_global_12918];

        observationController3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
        v10 = [observationController3 startObserving:v11 keyPath:@"muted" includeInitialValue:1 observationHandler:&__block_literal_global_14_12920];

        goto LABEL_8;
      }
    }

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setIncludedControlType:1];
    controllerCopy = v11;
  }

  if (controllerCopy)
  {
    goto LABEL_9;
  }

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setIncludedControlType:1];
LABEL_8:
  controllerCopy = v11;
LABEL_9:
}

void __74__AVCatalystTurboModePlaybackControlsPlaceholderView_setPlayerController___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v7 = [a4 value];
  if ([v7 BOOLValue])
  {
    v6 = @"mute";
  }

  else
  {
    v6 = @"half";
  }

  [v5 setVolumeButtonMicaPackageStateName:v6];
}

void __74__AVCatalystTurboModePlaybackControlsPlaceholderView_setPlayerController___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 value];
  v6 = [v5 integerValue];

  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v8 setIncludedControlType:v7];
}

- (BOOL)hasVisibleControls
{
  if (([(AVCatalystTurboModePlaybackControlsPlaceholderView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  contentView = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  v3 = ([contentView isHidden] & 1) == 0 && -[AVCatalystTurboModePlaybackControlsPlaceholderView includedControlType](self, "includedControlType") != 0;

  return v3;
}

- (void)dealloc
{
  observationController = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v4 dealloc];
}

- (AVCatalystTurboModePlaybackControlsPlaceholderView)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sheetCopy = sheet;
  v19.receiver = self;
  v19.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  height = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v19 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_styleSheet, sheet);
    v13 = [AVTouchIgnoringView alloc];
    height2 = [(AVTouchIgnoringView *)v13 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    contentView = v12->_contentView;
    v12->_contentView = height2;

    v16 = [[AVObservationController alloc] initWithOwner:v12];
    observationController = v12->_observationController;
    v12->_observationController = v16;

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)v12 addSubview:v12->_contentView];
  }

  return v12;
}

@end