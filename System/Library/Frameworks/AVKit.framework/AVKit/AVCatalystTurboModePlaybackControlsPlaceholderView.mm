@interface AVCatalystTurboModePlaybackControlsPlaceholderView
- (AVButton)prominentPlayButton;
- (AVCatalystTurboModePlaybackControlsPlaceholderView)initWithFrame:(CGRect)a3 styleSheet:(id)a4;
- (AVVolumeButtonControl)volumeButton;
- (BOOL)hasVisibleControls;
- (CGAffineTransform)overrideTransformForProminentPlayButton;
- (CGRect)_frameForIncludedViewType:(int64_t)a3;
- (id)_makeProminentPlayButtonAndContainer;
- (id)_makeVolumeButtonAndContainer;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_makeProminentPlayButtonAndContainerIfNeeded;
- (void)_makeVolumeButtonAndContainerIfNeeded;
- (void)_updateFramesAndHitRectInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setIncludedControlType:(int64_t)a3;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3;
- (void)setPlayerController:(id)a3;
- (void)setPreferredUnobscuredArea:(int64_t)a3;
- (void)setVolumeButtonMicaPackageStateName:(id)a3;
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
  v8 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self traitCollection];
  v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
  [v5 setInlineFont:v9];

  [v5 setTintEffectStyle:0];
  [(AVLayoutView *)v4 bounds];
  [v5 setFrame:?];
  [(AVLayoutView *)v4 addSubview:v5];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setProminentPlayButtonContainer:v4];
  [(AVView *)v4 setIgnoresTouches:1];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setProminentPlayButton:v5];
  v10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [v10 addSubview:v4];

  v11 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideTransformForProminentPlayButton];
  [v11 setTransform:&v13];

  return v4;
}

- (void)_makeProminentPlayButtonAndContainerIfNeeded
{
  v3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];

  if (!v3)
  {
    v4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeProminentPlayButtonAndContainer];
    prominentPlayButtonContainer = self->_prominentPlayButtonContainer;
    self->_prominentPlayButtonContainer = v4;

    MEMORY[0x1EEE66BB8](v4, prominentPlayButtonContainer);
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
  v7 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
  v8 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonMicaPackageStateName];
  [v7 setMicaPackageStateName:v8];

  v9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [v9 addSubview:v4];

  return v4;
}

- (void)_makeVolumeButtonAndContainerIfNeeded
{
  v3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];

  if (!v3)
  {
    v4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeVolumeButtonAndContainer];
    volumeButtonContainer = self->_volumeButtonContainer;
    self->_volumeButtonContainer = v4;

    MEMORY[0x1EEE66BB8](v4, volumeButtonContainer);
  }
}

- (CGRect)_frameForIncludedViewType:(int64_t)a3
{
  if (a3 == 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v39 standardPaddingInline];
    v41 = v40;
    v42 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v42 standardPaddingInline];
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

    v51 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v51 maximumProminentPlayButtonDimension];
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
    v55 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v55 minimumProminentPlayButtonDimension];
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
    v63 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
    v64 = v63;
    if (v63)
    {
      [v63 transform];
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

  if (a3 != 2)
  {
    goto LABEL_32;
  }

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [v12 standardPaddingInline];
  v14 = v13;
  v15 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [v15 standardPaddingInline];
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
  v23 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
  [v23 defaultItemInlineSize];
  if (v22 >= v24)
  {
    v84.origin.x = v18;
    v84.origin.y = v19;
    v84.size.width = v20;
    v84.size.height = v21;
    v25 = CGRectGetHeight(v84);
    v26 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v26 defaultItemInlineSize];
    v28 = v27;

    if (v25 < v28)
    {
      goto LABEL_7;
    }

    v23 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v23 defaultItemInlineSize];
  }

LABEL_7:
  v29 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (v29)
  {
    v30 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [v30 UIEdgeInsetsValue];
  }

  else
  {
    v30 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v30 standardPaddingInline];
  }

  v65 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (v65)
  {
    v66 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [v66 UIEdgeInsetsValue];
  }

  else
  {
    v66 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v66 standardPaddingInline];
  }

  v67 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
  if (v67)
  {
    v68 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [v68 UIEdgeInsetsValue];
  }

  else
  {
    v68 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v68 standardPaddingInline];
  }

  if ([(AVCatalystTurboModePlaybackControlsPlaceholderView *)self effectiveUserInterfaceLayoutDirection]!= 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    CGRectGetMaxX(v95);
    v69 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v69 defaultItemInlineSize];
  }

  if ([(AVCatalystTurboModePlaybackControlsPlaceholderView *)self preferredUnobscuredArea]== 1)
  {
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
    CGRectGetMaxY(v97);
    v64 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self styleSheet];
    [v64 defaultItemInlineSize];
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
  v3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self bounds];
  [v3 setFrame:?];

  v4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:1];
  [v4 setFrame:?];

  v5 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  v6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [v6 bounds];
  [v5 setFrame:?];

  v7 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  v8 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [v8 frame];
  v9 = -CGRectGetMinY(v20);
  v10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [v10 frame];
  v11 = -CGRectGetMinX(v21);
  v12 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [v12 frame];
  v13 = -CGRectGetMinY(v22);
  v14 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
  [v14 frame];
  [v7 setHitRectInsets:{v9, v11, v13, -CGRectGetMinX(v23)}];

  v15 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  [v15 setClampsHitRectInsetsWhenContainedInScrollableView:1];

  v16 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _frameForIncludedViewType:2];
  [v16 setFrame:?];

  v18 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
  v17 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
  [v17 bounds];
  [v18 setFrame:?];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self avkit_hitTestControlForPoint:v7 withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
    v10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v13 hitTest:v7 withEvent:x, y];
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

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v4 setHidden:a3];
  [(UIView *)self avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)setVolumeButtonMicaPackageStateName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_volumeButtonMicaPackageStateName isEqualToString:?])
  {
    v4 = [v7 copy];
    volumeButtonMicaPackageStateName = self->_volumeButtonMicaPackageStateName;
    self->_volumeButtonMicaPackageStateName = v4;

    v6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButton];
    [v6 setMicaPackageStateName:v7];
  }
}

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3
{
  v5 = a3;
  if (![(NSValue *)self->_overrideLayoutMarginsWhenEmbeddedInline isEqualToValue:?])
  {
    objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, a3);
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3
{
  v5 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&a3->c;
  *&v13.a = *&a3->a;
  *&v13.c = v7;
  *&v13.tx = *&a3->tx;
  v8 = CGAffineTransformEqualToTransform(&t1, &v13);

  if (!v8)
  {
    v10 = *&a3->c;
    v9 = *&a3->tx;
    *&self->_overrideTransformForProminentPlayButton.a = *&a3->a;
    *&self->_overrideTransformForProminentPlayButton.c = v10;
    *&self->_overrideTransformForProminentPlayButton.tx = v9;
    v11 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButton];
    v12 = *&self->_overrideTransformForProminentPlayButton.c;
    *&t1.a = *&self->_overrideTransformForProminentPlayButton.a;
    *&t1.c = v12;
    *&t1.tx = *&self->_overrideTransformForProminentPlayButton.tx;
    [v11 setTransform:&t1];

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setIncludedControlType:(int64_t)a3
{
  if (self->_includedControlType == a3)
  {
    return;
  }

  v14 = v4;
  v15 = v3;
  self->_includedControlType = a3;
  switch(a3)
  {
    case 0:
      v13 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      [v13 setHidden:1];

      v9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
      v11 = v9;
      v12 = 1;
      goto LABEL_9;
    case 2:
      v10 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
      [v10 setHidden:1];

      [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeVolumeButtonAndContainerIfNeeded];
      v9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      goto LABEL_7;
    case 1:
      v8 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self volumeButtonContainer];
      [v8 setHidden:1];

      [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self _makeProminentPlayButtonAndContainerIfNeeded];
      v9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self prominentPlayButtonContainer];
LABEL_7:
      v11 = v9;
      v12 = 0;
LABEL_9:
      [v9 setHidden:{v12, v14, v15, v5}];

      break;
  }

  [(UIView *)self avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)setPreferredUnobscuredArea:(int64_t)a3
{
  if (self->_preferredUnobscuredArea != a3)
  {
    self->_preferredUnobscuredArea = a3;
    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setNeedsLayout];
  }
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (self->_playerController != v5)
  {
    objc_storeStrong(&self->_playerController, a3);
    v6 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
    [v6 stopAllObservation];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
        v8 = [v7 startObserving:v11 keyPath:@"timeControlStatus" includeInitialValue:1 observationHandler:&__block_literal_global_12918];

        v9 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
        v10 = [v9 startObserving:v11 keyPath:@"muted" includeInitialValue:1 observationHandler:&__block_literal_global_14_12920];

        goto LABEL_8;
      }
    }

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setIncludedControlType:1];
    v5 = v11;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self setIncludedControlType:1];
LABEL_8:
  v5 = v11;
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

  v4 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self contentView];
  v3 = ([v4 isHidden] & 1) == 0 && -[AVCatalystTurboModePlaybackControlsPlaceholderView includedControlType](self, "includedControlType") != 0;

  return v3;
}

- (void)dealloc
{
  v3 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v4 dealloc];
}

- (AVCatalystTurboModePlaybackControlsPlaceholderView)initWithFrame:(CGRect)a3 styleSheet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = AVCatalystTurboModePlaybackControlsPlaceholderView;
  v11 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)&v19 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_styleSheet, a4);
    v13 = [AVTouchIgnoringView alloc];
    v14 = [(AVTouchIgnoringView *)v13 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    contentView = v12->_contentView;
    v12->_contentView = v14;

    v16 = [[AVObservationController alloc] initWithOwner:v12];
    observationController = v12->_observationController;
    v12->_observationController = v16;

    [(AVCatalystTurboModePlaybackControlsPlaceholderView *)v12 addSubview:v12->_contentView];
  }

  return v12;
}

@end