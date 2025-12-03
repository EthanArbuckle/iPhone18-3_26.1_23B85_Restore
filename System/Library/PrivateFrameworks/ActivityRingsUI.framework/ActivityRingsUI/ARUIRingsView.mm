@interface ARUIRingsView
+ (id)ringsViewConfiguredForCompanionOfType:(int64_t)type withRenderer:(id)renderer;
+ (id)ringsViewConfiguredForWatchOfType:(int64_t)type withIcon:(BOOL)icon renderer:(id)renderer;
- (ARUIRingsView)initWithRingGroup:(id)group;
- (ARUIRingsView)initWithRingGroup:(id)group renderer:(id)renderer;
- (ARUIRingsView)initWithRingGroupController:(id)controller;
- (ARUIRingsView)initWithRingGroupController:(id)controller renderer:(id)renderer;
- (ARUIRingsView)initWithRingGroupControllers:(id)controllers;
- (ARUIRingsView)initWithRingGroupControllers:(id)controllers renderer:(id)renderer;
- (ARUIRingsView)initWithRingGroups:(id)groups;
- (ARUIRingsView)initWithRingGroups:(id)groups renderer:(id)renderer;
- (BOOL)_shouldAllowRendering;
- (UIImage)snapshot;
- (id)_allRings;
- (id)_anySpriteSheet;
- (void)_discardBackBuffers;
- (void)_sharedInitWithRingGroups:(id)groups renderer:(id)renderer;
- (void)_sharedInitWithWithRingGroupControllers:(id)controllers renderer:(id)renderer;
- (void)_updateRenderContext;
- (void)_updateRingGroupPauseState;
- (void)layoutSubviews;
- (void)setActiveEnergyPercentage:(double)percentage animated:(BOOL)animated;
- (void)setActiveEnergyPercentage:(double)percentage briskPercentage:(double)briskPercentage movingHoursPercentage:(double)hoursPercentage animated:(BOOL)animated completion:(id)completion;
- (void)setBounds:(CGRect)bounds;
- (void)setBriskPercentage:(double)percentage animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setMovingHoursPercentage:(double)percentage animated:(BOOL)animated;
- (void)setOpaque:(BOOL)opaque;
- (void)willMoveToWindow:(id)window;
@end

@implementation ARUIRingsView

- (id)_allRings
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_ringGroups;
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

        rings = [*(*(&v11 + 1) + 8 * i) rings];
        [array addObjectsFromArray:rings];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v15 layoutSubviews];
  if ([(ARUIRingsView *)self _shouldAllowRendering])
  {
    metalLayer = [(ARUIRingsView *)self metalLayer];
    if ([metalLayer isDrawableAvailable])
    {
      metalLayer2 = [(ARUIRingsView *)self metalLayer];
      nextDrawable = [metalLayer2 nextDrawable];

      if (!nextDrawable)
      {
        return;
      }

      objc_initWeak(&location, self);
      discardBackBuffers = self->_discardBackBuffers;
      if (discardBackBuffers)
      {
        v7 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __31__ARUIRingsView_layoutSubviews__block_invoke;
        v12[3] = &unk_1E83CE390;
        metalLayer = &v13;
        objc_copyWeak(&v13, &location);
      }

      else
      {
        v7 = 0;
      }

      v8 = MEMORY[0x1D3875270](v7);
      renderer = self->_renderer;
      _allRings = [(ARUIRingsView *)self _allRings];
      _anySpriteSheet = [(ARUIRingsView *)self _anySpriteSheet];
      [(ARUIRenderer *)renderer renderRings:_allRings spriteSheet:_anySpriteSheet intoDrawable:nextDrawable withContext:self->_renderContext completion:v8];

      if (discardBackBuffers)
      {
        objc_destroyWeak(metalLayer);
      }

      objc_destroyWeak(&location);
    }

    else
    {
      nextDrawable = metalLayer;
    }
  }
}

- (BOOL)_shouldAllowRendering
{
  if (!self->_shouldBypassApplicationStateChecking && self->_backgrounded || !self->_inViewHierarchy || !self->_shouldRenderOnLayout)
  {
    return 0;
  }

  if (!self->_shouldCheckDrawableAvailable)
  {
    return 1;
  }

  metalLayer = [(ARUIRingsView *)self metalLayer];
  isDrawableAvailable = [metalLayer isDrawableAvailable];

  return isDrawableAvailable;
}

- (id)_anySpriteSheet
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_ringGroups;
  spriteSheet2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (spriteSheet2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != spriteSheet2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        spriteSheet = [v6 spriteSheet];

        if (spriteSheet)
        {
          spriteSheet2 = [v6 spriteSheet];
          goto LABEL_11;
        }
      }

      spriteSheet2 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (spriteSheet2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return spriteSheet2;
}

void __31__ARUIRingsView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained ringGroup];
  v4 = [v3 animating];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _discardBackBuffers];
  }
}

- (ARUIRingsView)initWithRingGroupController:(id)controller
{
  v12[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v12[0] = controllerCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    ringGroupControllers = v5->_ringGroupControllers;
    v5->_ringGroupControllers = v6;

    v11 = controllerCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [(ARUIRingsView *)v5 _sharedInitWithWithRingGroupControllers:v8 renderer:0];
  }

  return v5;
}

- (ARUIRingsView)initWithRingGroupController:(id)controller renderer:(id)renderer
{
  v15[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  rendererCopy = renderer;
  v13.receiver = self;
  v13.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v15[0] = controllerCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    ringGroupControllers = v8->_ringGroupControllers;
    v8->_ringGroupControllers = v9;

    v14 = controllerCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(ARUIRingsView *)v8 _sharedInitWithWithRingGroupControllers:v11 renderer:rendererCopy];
  }

  return v8;
}

- (ARUIRingsView)initWithRingGroupControllers:(id)controllers
{
  controllersCopy = controllers;
  v9.receiver = self;
  v9.super_class = ARUIRingsView;
  v6 = [(ARUIRingsView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ringGroupControllers, controllers);
    [(ARUIRingsView *)v7 _sharedInitWithWithRingGroupControllers:controllersCopy renderer:0];
  }

  return v7;
}

- (ARUIRingsView)initWithRingGroupControllers:(id)controllers renderer:(id)renderer
{
  controllersCopy = controllers;
  rendererCopy = renderer;
  v12.receiver = self;
  v12.super_class = ARUIRingsView;
  v9 = [(ARUIRingsView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ringGroupControllers, controllers);
    [(ARUIRingsView *)v10 _sharedInitWithWithRingGroupControllers:controllersCopy renderer:rendererCopy];
  }

  return v10;
}

- (void)_sharedInitWithWithRingGroupControllers:(id)controllers renderer:(id)renderer
{
  v20 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  rendererCopy = renderer;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(controllersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = controllersCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        ringGroup = [*(*(&v15 + 1) + 8 * v13) ringGroup];
        [v8 addObject:ringGroup];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(ARUIRingsView *)self _sharedInitWithRingGroups:v8 renderer:rendererCopy];
}

- (ARUIRingsView)initWithRingGroup:(id)group
{
  v9[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v8.receiver = self;
  v8.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v9[0] = groupCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(ARUIRingsView *)v5 _sharedInitWithRingGroups:v6 renderer:0];
  }

  return v5;
}

- (ARUIRingsView)initWithRingGroup:(id)group renderer:(id)renderer
{
  v12[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  rendererCopy = renderer;
  v11.receiver = self;
  v11.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v12[0] = groupCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(ARUIRingsView *)v8 _sharedInitWithRingGroups:v9 renderer:rendererCopy];
  }

  return v8;
}

- (ARUIRingsView)initWithRingGroups:(id)groups
{
  groupsCopy = groups;
  v8.receiver = self;
  v8.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(ARUIRingsView *)v5 _sharedInitWithRingGroups:groupsCopy renderer:0];
  }

  return v6;
}

- (ARUIRingsView)initWithRingGroups:(id)groups renderer:(id)renderer
{
  groupsCopy = groups;
  rendererCopy = renderer;
  v11.receiver = self;
  v11.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(ARUIRingsView *)v8 _sharedInitWithRingGroups:groupsCopy renderer:rendererCopy];
  }

  return v9;
}

- (void)_sharedInitWithRingGroups:(id)groups renderer:(id)renderer
{
  groupsCopy = groups;
  rendererCopy = renderer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__ARUIRingsView__sharedInitWithRingGroups_renderer___block_invoke;
  v13[3] = &unk_1E83CE368;
  v13[4] = self;
  [groupsCopy enumerateObjectsUsingBlock:v13];
  objc_storeStrong(&self->_ringGroups, groups);
  v9 = rendererCopy;
  if (!rendererCopy)
  {
    v9 = objc_alloc_init(ARUIRenderer);
  }

  objc_storeStrong(&self->_renderer, v9);
  if (!rendererCopy)
  {
  }

  [(ARUIRingsView *)self _updateRenderContext];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  applicationState = [mEMORY[0x1E69DC668] applicationState];

  self->_backgrounded = applicationState == 2;
  self->_discardBackBuffers = 1;
  self->_shouldRenderOnLayout = 1;
  self->_shouldCheckDrawableAvailable = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

void __52__ARUIRingsView__sharedInitWithRingGroups_renderer___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDelegate:v2];
  [v3 setPaused:1];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ARUIRingsView *)self _updateRenderContext];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(ARUIRingsView *)self _updateRenderContext];
}

- (void)_updateRenderContext
{
  [(ARUIRingsView *)self bounds];
  v5 = [[ARUIRenderContext alloc] initWithSize:v3, v4];
  [(ARUIRenderContext *)v5 setOpaque:[(ARUIRingsView *)self isOpaque]];
  metalLayer = [(ARUIRingsView *)self metalLayer];
  [(ARUIRenderContext *)v5 drawableSize];
  v8 = v7;
  [(ARUIRenderContext *)v5 drawableSize];
  [metalLayer setDrawableSize:{v8, v9}];

  renderContext = self->_renderContext;
  self->_renderContext = v5;

  [(ARUIRingsView *)self setNeedsLayout];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v5.receiver = self;
  v5.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v5 setOpaque:?];
  [(ARUIRenderContext *)self->_renderContext setOpaque:opaqueCopy];
  [(ARUIRingsView *)self setNeedsLayout];
}

- (void)_discardBackBuffers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ARUIRingsView__discardBackBuffers__block_invoke;
  block[3] = &unk_1E83CDFF0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __36__ARUIRingsView__discardBackBuffers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metalLayer];
  [v1 removeBackBuffers];
}

- (void)willMoveToWindow:(id)window
{
  self->_inViewHierarchy = window != 0;
  windowCopy = window;
  [(ARUIRingsView *)self _updateRingGroupPauseState];
  v5.receiver = self;
  v5.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v5 willMoveToWindow:windowCopy];
}

- (void)_updateRingGroupPauseState
{
  if (self->_inViewHierarchy)
  {
    v3 = !self->_shouldBypassApplicationStateChecking && self->_backgrounded;
  }

  else
  {
    v3 = 1;
  }

  ringGroup = [(ARUIRingsView *)self ringGroup];
  paused = [ringGroup paused];

  ringGroups = self->_ringGroups;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ARUIRingsView__updateRingGroupPauseState__block_invoke;
  v7[3] = &__block_descriptor_33_e30_v32__0__ARUIRingGroup_8Q16_B24l;
  v8 = v3;
  [(NSArray *)ringGroups enumerateObjectsUsingBlock:v7];
  if (paused)
  {
    if (!v3)
    {
      [(ARUIRingsView *)self setNeedsLayout];
    }
  }
}

- (UIImage)snapshot
{
  renderer = self->_renderer;
  _allRings = [(ARUIRingsView *)self _allRings];
  _anySpriteSheet = [(ARUIRingsView *)self _anySpriteSheet];
  v6 = [(ARUIRenderer *)renderer snapshotRings:_allRings spriteSheet:_anySpriteSheet withContext:self->_renderContext];

  return v6;
}

+ (id)ringsViewConfiguredForWatchOfType:(int64_t)type withIcon:(BOOL)icon renderer:(id)renderer
{
  iconCopy = icon;
  rendererCopy = renderer;
  v8 = [ARUIRingGroupController ringGroupControllerConfiguredForWatchWithRingType:type withIcon:iconCopy];
  v9 = [[ARUIRingsView alloc] initWithRingGroupController:v8 renderer:rendererCopy];

  return v9;
}

+ (id)ringsViewConfiguredForCompanionOfType:(int64_t)type withRenderer:(id)renderer
{
  rendererCopy = renderer;
  v6 = [ARUIRingGroupController ringGroupControllerConfiguredForCompanionWithRingType:type withIcon:1];
  v7 = [[ARUIRingsView alloc] initWithRingGroupController:v6 renderer:rendererCopy];

  return v7;
}

- (void)setActiveEnergyPercentage:(double)percentage animated:(BOOL)animated
{
  animatedCopy = animated;
  ringGroupController = [(ARUIRingsView *)self ringGroupController];
  [ringGroupController setActiveEnergyPercentage:animatedCopy animated:percentage];
}

- (void)setMovingHoursPercentage:(double)percentage animated:(BOOL)animated
{
  animatedCopy = animated;
  ringGroupController = [(ARUIRingsView *)self ringGroupController];
  [ringGroupController setMovingHoursPercentage:animatedCopy animated:percentage];
}

- (void)setBriskPercentage:(double)percentage animated:(BOOL)animated
{
  animatedCopy = animated;
  ringGroupController = [(ARUIRingsView *)self ringGroupController];
  [ringGroupController setBriskPercentage:animatedCopy animated:percentage];
}

- (void)setActiveEnergyPercentage:(double)percentage briskPercentage:(double)briskPercentage movingHoursPercentage:(double)hoursPercentage animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  ringGroupController = [(ARUIRingsView *)self ringGroupController];
  [ringGroupController setActiveEnergyPercentage:animatedCopy briskPercentage:completionCopy movingHoursPercentage:percentage animated:briskPercentage completion:hoursPercentage];
}

@end